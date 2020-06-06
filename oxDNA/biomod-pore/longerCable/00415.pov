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
	<24.209854, 35.314785, 35.196911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.500809, 35.069275, 35.074150>,  <24.675381, 34.921967, 35.000496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.500809, 35.069275, 35.074150>,  <24.209854, 35.314785, 35.196911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.500809, 35.069275, 35.074150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343308, 0.061757, -0.937190,
		0.594181, 0.787059, -0.165794,
		0.727385, -0.613779, -0.306899,
		24.719025, 34.885139, 34.982082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.869919, 35.345715, 35.468380>,  <24.209854, 35.314785, 35.196911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.869919, 35.345715, 35.468380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203320, 35.478569, 35.644997>,  <25.403360, 35.558281, 35.750969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203320, 35.478569, 35.644997>,  <24.869919, 35.345715, 35.468380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203320, 35.478569, 35.644997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327217, -0.347200, 0.878852,
		0.445205, -0.877004, -0.180710,
		0.833499, 0.332138, 0.441546,
		25.453369, 35.578209, 35.777462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330206, 34.761398, 35.842056>,  <24.869919, 35.345715, 35.468380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330206, 34.761398, 35.842056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.428558, 35.100029, 36.030880>,  <25.487570, 35.303207, 36.144176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.428558, 35.100029, 36.030880>,  <25.330206, 34.761398, 35.842056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.428558, 35.100029, 36.030880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520632, -0.295449, 0.801032,
		0.817609, -0.442730, 0.368111,
		0.245883, 0.846581, 0.472062,
		25.502323, 35.354004, 36.172497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.421082, 34.661976, 36.551064>,  <25.330206, 34.761398, 35.842056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.421082, 34.661976, 36.551064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.413750, 35.060074, 36.589321>,  <25.409351, 35.298935, 36.612278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.413750, 35.060074, 36.589321>,  <25.421082, 34.661976, 36.551064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.413750, 35.060074, 36.589321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467011, -0.093108, 0.879336,
		0.884062, -0.028551, 0.466498,
		-0.018329, 0.995247, 0.095647,
		25.408251, 35.358646, 36.618015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.772812, 34.804832, 37.097523>,  <25.421082, 34.661976, 36.551064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.772812, 34.804832, 37.097523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521290, 35.110764, 37.041454>,  <25.370377, 35.294323, 37.007812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521290, 35.110764, 37.041454>,  <25.772812, 34.804832, 37.097523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521290, 35.110764, 37.041454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354284, -0.121341, 0.927232,
		0.692160, 0.632710, 0.347264,
		-0.628806, 0.764823, -0.140171,
		25.332647, 35.340210, 36.999405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862022, 35.314919, 37.578762>,  <25.772812, 34.804832, 37.097523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862022, 35.314919, 37.578762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484055, 35.306431, 37.448116>,  <25.257275, 35.301338, 37.369728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484055, 35.306431, 37.448116>,  <25.862022, 35.314919, 37.578762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.484055, 35.306431, 37.448116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323895, -0.082968, 0.942448,
		-0.047098, 0.996326, 0.071525,
		-0.944920, -0.021220, -0.326613,
		25.200579, 35.300064, 37.350132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.464334, 35.815521, 37.966167>,  <25.862022, 35.314919, 37.578762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.464334, 35.815521, 37.966167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280836, 35.488243, 37.827534>,  <25.170738, 35.291878, 37.744354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280836, 35.488243, 37.827534>,  <25.464334, 35.815521, 37.966167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.280836, 35.488243, 37.827534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308312, -0.219246, 0.925676,
		-0.833365, 0.531503, -0.151680,
		-0.458744, -0.818191, -0.346580,
		25.143213, 35.242786, 37.723560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.874798, 35.780605, 38.307053>,  <25.464334, 35.815521, 37.966167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.874798, 35.780605, 38.307053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.974224, 35.406773, 38.205242>,  <25.033880, 35.182472, 38.144157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.974224, 35.406773, 38.205242>,  <24.874798, 35.780605, 38.307053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.974224, 35.406773, 38.205242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091577, -0.284266, 0.954362,
		-0.964277, -0.213911, -0.156244,
		0.248564, -0.934577, -0.254522,
		25.048794, 35.126400, 38.128887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.338385, 35.326588, 38.532463>,  <24.874798, 35.780605, 38.307053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.338385, 35.326588, 38.532463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.657255, 35.089405, 38.487019>,  <24.848577, 34.947094, 38.459751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.657255, 35.089405, 38.487019>,  <24.338385, 35.326588, 38.532463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.657255, 35.089405, 38.487019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151655, -0.378813, 0.912963,
		-0.584388, -0.710564, -0.391906,
		0.797178, -0.592959, -0.113613,
		24.896408, 34.911518, 38.452934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.066103, 34.632900, 38.660660>,  <24.338385, 35.326588, 38.532463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.066103, 34.632900, 38.660660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460426, 34.620186, 38.726601>,  <24.697020, 34.612556, 38.766163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460426, 34.620186, 38.726601>,  <24.066103, 34.632900, 38.660660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.460426, 34.620186, 38.726601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163865, -0.395812, 0.903594,
		0.036527, -0.917781, -0.395403,
		0.985806, -0.031787, 0.164850,
		24.756168, 34.610649, 38.776054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.157732, 34.056248, 38.928192>,  <24.066103, 34.632900, 38.660660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.157732, 34.056248, 38.928192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487219, 34.238544, 39.063122>,  <24.684910, 34.347923, 39.144081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487219, 34.238544, 39.063122>,  <24.157732, 34.056248, 38.928192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.487219, 34.238544, 39.063122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209467, -0.308254, 0.927956,
		0.526893, -0.835031, -0.158451,
		0.823716, 0.455743, 0.337328,
		24.734333, 34.375267, 39.164322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.598803, 33.617439, 39.259224>,  <24.157732, 34.056248, 38.928192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.598803, 33.617439, 39.259224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695620, 33.967564, 39.426674>,  <24.753710, 34.177639, 39.527142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695620, 33.967564, 39.426674>,  <24.598803, 33.617439, 39.259224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.695620, 33.967564, 39.426674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174873, -0.385032, 0.906184,
		0.954376, -0.292542, 0.059874,
		0.242043, 0.875311, 0.418623,
		24.768232, 34.230156, 39.552261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.873251, 33.446880, 39.850964>,  <24.598803, 33.617439, 39.259224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.873251, 33.446880, 39.850964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783068, 33.833664, 39.898575>,  <24.728958, 34.065735, 39.927139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783068, 33.833664, 39.898575>,  <24.873251, 33.446880, 39.850964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.783068, 33.833664, 39.898575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195922, -0.164675, 0.966694,
		0.954350, 0.194628, 0.226575,
		-0.225457, 0.966955, 0.119026,
		24.715431, 34.123749, 39.934284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.336918, 33.744461, 40.308704>,  <24.873251, 33.446880, 39.850964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.336918, 33.744461, 40.308704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.971567, 33.907063, 40.317638>,  <24.752357, 34.004623, 40.322998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.971567, 33.907063, 40.317638>,  <25.336918, 33.744461, 40.308704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.971567, 33.907063, 40.317638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147726, -0.382044, 0.912261,
		0.379366, 0.829940, 0.409001,
		-0.913378, 0.406501, 0.022331,
		24.697554, 34.029015, 40.324337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.336725, 34.330967, 40.777763>,  <25.336918, 33.744461, 40.308704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.336725, 34.330967, 40.777763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.996017, 34.124336, 40.742813>,  <24.791594, 34.000359, 40.721844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.996017, 34.124336, 40.742813>,  <25.336725, 34.330967, 40.777763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.996017, 34.124336, 40.742813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081276, -0.295042, 0.952021,
		-0.517576, 0.803800, 0.293293,
		-0.851768, -0.516581, -0.087377,
		24.740486, 33.969360, 40.716599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.516825, 34.944641, 40.212620>,  <25.336725, 34.330967, 40.777763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.516825, 34.944641, 40.212620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362692, 34.667099, 39.969280>,  <25.270212, 34.500572, 39.823277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362692, 34.667099, 39.969280>,  <25.516825, 34.944641, 40.212620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.362692, 34.667099, 39.969280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453290, 0.431909, -0.779732,
		0.803771, -0.576213, 0.148089,
		-0.385331, -0.693854, -0.608348,
		25.247093, 34.458942, 39.786777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.812151, 34.994949, 39.620247>,  <25.516825, 34.944641, 40.212620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.812151, 34.994949, 39.620247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491138, 34.801994, 39.479824>,  <25.298531, 34.686218, 39.395573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491138, 34.801994, 39.479824>,  <25.812151, 34.994949, 39.620247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491138, 34.801994, 39.479824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242763, 0.273465, -0.930743,
		0.544985, -0.832174, -0.102357,
		-0.802532, -0.482393, -0.351055,
		25.250380, 34.657276, 39.374508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.081102, 34.523212, 39.001064>,  <25.812151, 34.994949, 39.620247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.081102, 34.523212, 39.001064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688587, 34.532421, 38.924595>,  <25.453079, 34.537949, 38.878716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688587, 34.532421, 38.924595>,  <26.081102, 34.523212, 39.001064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688587, 34.532421, 38.924595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191640, 0.213314, -0.958004,
		0.018719, -0.976712, -0.213735,
		-0.981287, 0.023027, -0.191170,
		25.394201, 34.539330, 38.867245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926235, 34.147472, 38.373798>,  <26.081102, 34.523212, 39.001064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926235, 34.147472, 38.373798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600416, 34.377678, 38.402908>,  <25.404924, 34.515800, 38.420376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600416, 34.377678, 38.402908>,  <25.926235, 34.147472, 38.373798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.600416, 34.377678, 38.402908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031805, 0.080959, -0.996210,
		-0.579223, -0.813776, -0.047641,
		-0.814548, 0.575513, 0.072776,
		25.356052, 34.550331, 38.424740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.455486, 33.895081, 37.863087>,  <25.926235, 34.147472, 38.373798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.455486, 33.895081, 37.863087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334614, 34.270641, 37.928989>,  <25.262091, 34.495979, 37.968529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334614, 34.270641, 37.928989>,  <25.455486, 33.895081, 37.863087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.334614, 34.270641, 37.928989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202172, 0.105777, -0.973621,
		-0.931564, -0.327520, 0.157856,
		-0.302183, 0.938905, 0.164754,
		25.243959, 34.552311, 37.978416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.791965, 33.890938, 37.508415>,  <25.455486, 33.895081, 37.863087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.791965, 33.890938, 37.508415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.942257, 34.259525, 37.547848>,  <25.032433, 34.480679, 37.571507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.942257, 34.259525, 37.547848>,  <24.791965, 33.890938, 37.508415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.942257, 34.259525, 37.547848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300498, 0.221774, -0.927641,
		-0.876657, 0.318918, 0.360228,
		0.375730, 0.921470, 0.098586,
		25.054976, 34.535965, 37.577423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.418245, 34.162521, 37.093452>,  <24.791965, 33.890938, 37.508415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.418245, 34.162521, 37.093452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.701086, 34.437778, 37.158535>,  <24.870790, 34.602932, 37.197586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.701086, 34.437778, 37.158535>,  <24.418245, 34.162521, 37.093452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.701086, 34.437778, 37.158535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224471, 0.436645, -0.871180,
		-0.670538, 0.579488, 0.463219,
		0.707101, 0.688139, 0.162709,
		24.913216, 34.644218, 37.207348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.121155, 34.849354, 37.149208>,  <24.418245, 34.162521, 37.093452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.121155, 34.849354, 37.149208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.499355, 34.825516, 37.021164>,  <24.726276, 34.811214, 36.944336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.499355, 34.825516, 37.021164>,  <24.121155, 34.849354, 37.149208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.499355, 34.825516, 37.021164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271550, 0.398190, -0.876188,
		0.179682, 0.915365, 0.360307,
		0.945503, -0.059594, -0.320114,
		24.783007, 34.807636, 36.925129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.241796, 35.630493, 37.003109>,  <24.121155, 34.849354, 37.149208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.241796, 35.630493, 37.003109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.602200, 35.661556, 37.173828>,  <24.818441, 35.680195, 37.276260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.602200, 35.661556, 37.173828>,  <24.241796, 35.630493, 37.003109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.602200, 35.661556, 37.173828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430222, -0.033712, -0.902094,
		-0.055665, 0.996410, -0.063784,
		0.901005, 0.077656, 0.426800,
		24.872501, 35.684853, 37.301868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.494083, 36.210373, 36.699310>,  <24.241796, 35.630493, 37.003109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.494083, 36.210373, 36.699310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.789024, 35.965691, 36.813942>,  <24.965988, 35.818882, 36.882721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.789024, 35.965691, 36.813942>,  <24.494083, 36.210373, 36.699310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.789024, 35.965691, 36.813942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425041, 0.090397, -0.900649,
		0.525028, 0.785902, 0.326656,
		0.737350, -0.611708, 0.286580,
		25.010229, 35.782177, 36.899918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.097178, 36.626850, 36.643475>,  <24.494083, 36.210373, 36.699310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.097178, 36.626850, 36.643475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.192579, 36.238953, 36.622669>,  <25.249821, 36.006214, 36.610188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.192579, 36.238953, 36.622669>,  <25.097178, 36.626850, 36.643475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.192579, 36.238953, 36.622669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480432, 0.164361, -0.861493,
		0.843980, 0.180481, 0.505099,
		0.238502, -0.969748, -0.052009,
		25.264130, 35.948029, 36.607067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866558, 36.575424, 36.670776>,  <25.097178, 36.626850, 36.643475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.866558, 36.575424, 36.670776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.723175, 36.245972, 36.494987>,  <25.637146, 36.048298, 36.389515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.723175, 36.245972, 36.494987>,  <25.866558, 36.575424, 36.670776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.723175, 36.245972, 36.494987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479793, 0.241285, -0.843552,
		0.800817, -0.513231, 0.308685,
		-0.358456, -0.823636, -0.439470,
		25.615639, 35.998882, 36.363148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460373, 36.268490, 36.308701>,  <25.866558, 36.575424, 36.670776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460373, 36.268490, 36.308701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113752, 36.173855, 36.132919>,  <25.905781, 36.117073, 36.027451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113752, 36.173855, 36.132919>,  <26.460373, 36.268490, 36.308701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113752, 36.173855, 36.132919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354564, 0.327847, -0.875672,
		0.351254, -0.914624, -0.200207,
		-0.866548, -0.236597, -0.439451,
		25.853786, 36.102879, 36.001083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726521, 35.500648, 36.066593>,  <26.460373, 36.268490, 36.308701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726521, 35.500648, 36.066593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578375, 35.152271, 35.937416>,  <26.489489, 34.943245, 35.859909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578375, 35.152271, 35.937416>,  <26.726521, 35.500648, 36.066593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578375, 35.152271, 35.937416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487707, 0.478215, -0.730378,
		0.790553, -0.113004, -0.601877,
		-0.370362, -0.870942, -0.322941,
		26.467266, 34.890987, 35.840534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.802437, 35.369812, 35.359417>,  <26.726521, 35.500648, 36.066593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.802437, 35.369812, 35.359417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471193, 35.167965, 35.457062>,  <26.272448, 35.046856, 35.515648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471193, 35.167965, 35.457062>,  <26.802437, 35.369812, 35.359417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471193, 35.167965, 35.457062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497731, 0.461584, -0.734305,
		0.257869, -0.729587, -0.633408,
		-0.828111, -0.504622, 0.244110,
		26.222759, 35.016579, 35.530296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077057, 34.663280, 35.573429>,  <26.802437, 35.369812, 35.359417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077057, 34.663280, 35.573429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906927, 34.677528, 35.211693>,  <26.804850, 34.686077, 34.994652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906927, 34.677528, 35.211693>,  <27.077057, 34.663280, 35.573429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906927, 34.677528, 35.211693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903318, 0.044933, 0.426612,
		0.055832, 0.998355, 0.013067,
		-0.425323, 0.035622, -0.904341,
		26.779331, 34.688213, 34.940392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810219, 34.371910, 35.844189>,  <27.077057, 34.663280, 35.573429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810219, 34.371910, 35.844189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126959, 34.483551, 35.626904>,  <28.317003, 34.550533, 35.496532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126959, 34.483551, 35.626904>,  <27.810219, 34.371910, 35.844189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126959, 34.483551, 35.626904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050029, 0.856833, 0.513162,
		0.608665, -0.433522, 0.664519,
		0.791848, 0.279099, -0.543213,
		28.364513, 34.567280, 35.463940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323164, 34.627213, 36.322315>,  <27.810219, 34.371910, 35.844189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323164, 34.627213, 36.322315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389238, 34.805386, 35.970337>,  <28.428883, 34.912289, 35.759151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389238, 34.805386, 35.970337>,  <28.323164, 34.627213, 36.322315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389238, 34.805386, 35.970337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016219, 0.890856, 0.453997,
		0.986129, -0.089265, 0.139931,
		0.165184, 0.445430, -0.879947,
		28.438793, 34.939014, 35.706352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005384, 34.962753, 36.459641>,  <28.323164, 34.627213, 36.322315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005384, 34.962753, 36.459641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781200, 35.130039, 36.173710>,  <28.646690, 35.230412, 36.002151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781200, 35.130039, 36.173710>,  <29.005384, 34.962753, 36.459641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781200, 35.130039, 36.173710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057409, 0.880671, 0.470236,
		0.826189, 0.222512, -0.517592,
		-0.560461, 0.418218, -0.714826,
		28.613062, 35.255505, 35.959263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117237, 34.949871, 35.698658>,  <29.005384, 34.962753, 36.459641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117237, 34.949871, 35.698658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113920, 35.192398, 35.380589>,  <29.111931, 35.337914, 35.189747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113920, 35.192398, 35.380589>,  <29.117237, 34.949871, 35.698658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113920, 35.192398, 35.380589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262952, 0.765895, 0.586737,
		0.964773, 0.213958, 0.153084,
		-0.008291, 0.606322, -0.795176,
		29.111433, 35.374294, 35.142036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439186, 35.634533, 35.858807>,  <29.117237, 34.949871, 35.698658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439186, 35.634533, 35.858807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172987, 35.714493, 35.571152>,  <29.013268, 35.762466, 35.398560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172987, 35.714493, 35.571152>,  <29.439186, 35.634533, 35.858807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172987, 35.714493, 35.571152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311838, 0.800892, 0.511204,
		0.678135, 0.564458, -0.470658,
		-0.665500, 0.199896, -0.719133,
		28.973337, 35.774460, 35.355412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511786, 36.339611, 35.616505>,  <29.439186, 35.634533, 35.858807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511786, 36.339611, 35.616505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138081, 36.197052, 35.611862>,  <28.913858, 36.111515, 35.609077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138081, 36.197052, 35.611862>,  <29.511786, 36.339611, 35.616505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138081, 36.197052, 35.611862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303194, 0.776807, 0.551947,
		-0.187698, 0.519181, -0.833799,
		-0.934261, -0.356402, -0.011607,
		28.857803, 36.090130, 35.608379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028791, 36.993183, 35.467167>,  <29.511786, 36.339611, 35.616505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028791, 36.993183, 35.467167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805262, 36.701702, 35.625511>,  <28.671144, 36.526814, 35.720520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805262, 36.701702, 35.625511>,  <29.028791, 36.993183, 35.467167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805262, 36.701702, 35.625511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408329, 0.657262, 0.633462,
		-0.721792, 0.192350, -0.664844,
		-0.558823, -0.728703, 0.395864,
		28.637615, 36.483089, 35.744270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446169, 37.341736, 35.750042>,  <29.028791, 36.993183, 35.467167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446169, 37.341736, 35.750042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399065, 36.988350, 35.931423>,  <28.370802, 36.776318, 36.040253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399065, 36.988350, 35.931423>,  <28.446169, 37.341736, 35.750042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399065, 36.988350, 35.931423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521141, 0.443675, 0.729085,
		-0.845308, -0.150452, -0.512659,
		-0.117761, -0.883469, 0.453448,
		28.363737, 36.723309, 36.067459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820532, 37.287624, 36.140030>,  <28.446169, 37.341736, 35.750042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820532, 37.287624, 36.140030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060900, 37.016850, 36.310043>,  <28.205120, 36.854385, 36.412052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060900, 37.016850, 36.310043>,  <27.820532, 37.287624, 36.140030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060900, 37.016850, 36.310043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377927, 0.227939, 0.897338,
		-0.704321, -0.699861, -0.118858,
		0.600919, -0.676933, 0.425038,
		28.241175, 36.813770, 36.437553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689676, 37.777100, 36.691494>,  <27.820532, 37.287624, 36.140030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689676, 37.777100, 36.691494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465450, 37.445969, 36.682823>,  <27.330915, 37.247292, 36.677620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465450, 37.445969, 36.682823>,  <27.689676, 37.777100, 36.691494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465450, 37.445969, 36.682823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795791, -0.531261, -0.290650,
		0.229090, -0.180181, 0.956584,
		-0.560566, -0.827826, -0.021680,
		27.297281, 37.197620, 36.676319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078697, 37.299526, 37.090733>,  <27.689676, 37.777100, 36.691494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078697, 37.299526, 37.090733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835258, 37.107616, 36.837933>,  <27.689196, 36.992470, 36.686253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835258, 37.107616, 36.837933>,  <28.078697, 37.299526, 37.090733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835258, 37.107616, 36.837933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739708, -0.631264, -0.233106,
		-0.287123, -0.609365, 0.739077,
		-0.608599, -0.479771, -0.632003,
		27.652679, 36.963684, 36.648331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254503, 36.586075, 37.068272>,  <28.078697, 37.299526, 37.090733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254503, 36.586075, 37.068272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.048420, 36.649204, 36.731308>,  <27.924770, 36.687084, 36.529129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.048420, 36.649204, 36.731308>,  <28.254503, 36.586075, 37.068272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.048420, 36.649204, 36.731308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529479, -0.714292, -0.457646,
		-0.673954, -0.681820, 0.284442,
		-0.515207, 0.157826, -0.842409,
		27.893858, 36.696552, 36.478584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275314, 35.901405, 36.768055>,  <28.254503, 36.586075, 37.068272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275314, 35.901405, 36.768055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161016, 36.145531, 36.472523>,  <28.092438, 36.292007, 36.295204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161016, 36.145531, 36.472523>,  <28.275314, 35.901405, 36.768055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161016, 36.145531, 36.472523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376457, -0.637504, -0.672212,
		-0.881266, -0.470219, -0.047593,
		-0.285746, 0.610314, -0.738827,
		28.075293, 36.328625, 36.250874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858185, 35.585415, 36.301838>,  <28.275314, 35.901405, 36.768055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858185, 35.585415, 36.301838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064434, 35.860931, 36.097996>,  <28.188183, 36.026241, 35.975689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064434, 35.860931, 36.097996>,  <27.858185, 35.585415, 36.301838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064434, 35.860931, 36.097996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317038, -0.705931, -0.633363,
		-0.796004, 0.165009, -0.582366,
		0.515621, 0.688791, -0.509609,
		28.219120, 36.067570, 35.945114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628960, 35.613167, 35.535767>,  <27.858185, 35.585415, 36.301838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628960, 35.613167, 35.535767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012144, 35.711163, 35.595482>,  <28.242056, 35.769958, 35.631310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012144, 35.711163, 35.595482>,  <27.628960, 35.613167, 35.535767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012144, 35.711163, 35.595482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286790, -0.803853, -0.521125,
		-0.007665, 0.542032, -0.840323,
		0.957963, 0.244991, 0.149288,
		28.299534, 35.784660, 35.640266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024033, 35.692715, 34.848545>,  <27.628960, 35.613167, 35.535767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024033, 35.692715, 34.848545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249208, 35.596207, 35.164745>,  <28.384314, 35.538300, 35.354465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249208, 35.596207, 35.164745>,  <28.024033, 35.692715, 34.848545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249208, 35.596207, 35.164745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290192, -0.837849, -0.462381,
		0.773876, 0.489690, -0.401645,
		0.562942, -0.241272, 0.790496,
		28.418091, 35.523827, 35.401894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756634, 35.514366, 34.577816>,  <28.024033, 35.692715, 34.848545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756634, 35.514366, 34.577816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686850, 35.335083, 34.928513>,  <28.644979, 35.227512, 35.138931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686850, 35.335083, 34.928513>,  <28.756634, 35.514366, 34.577816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686850, 35.335083, 34.928513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311682, -0.869749, -0.382610,
		0.934033, 0.206514, 0.291435,
		-0.174461, -0.448206, 0.876741,
		28.634512, 35.200623, 35.191536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318445, 35.093269, 34.734653>,  <28.756634, 35.514366, 34.577816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318445, 35.093269, 34.734653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020763, 34.925205, 34.942356>,  <28.842155, 34.824368, 35.066978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020763, 34.925205, 34.942356>,  <29.318445, 35.093269, 34.734653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020763, 34.925205, 34.942356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158570, -0.866295, -0.473696,
		0.648858, -0.270187, 0.711325,
		-0.744204, -0.420157, 0.519259,
		28.797503, 34.799160, 35.098133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516689, 34.450390, 35.036022>,  <29.318445, 35.093269, 34.734653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516689, 34.450390, 35.036022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.117138, 34.444023, 35.018181>,  <28.877407, 34.440201, 35.007477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.117138, 34.444023, 35.018181>,  <29.516689, 34.450390, 35.036022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117138, 34.444023, 35.018181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035656, -0.872661, -0.487024,
		-0.031169, -0.488068, 0.872249,
		-0.998878, -0.015921, -0.044603,
		28.817474, 34.439247, 35.004799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884142, 33.938923, 34.705574>,  <29.516689, 34.450390, 35.036022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884142, 33.938923, 34.705574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075338, 34.273125, 34.597157>,  <30.190056, 34.473644, 34.532104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075338, 34.273125, 34.597157>,  <29.884142, 33.938923, 34.705574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075338, 34.273125, 34.597157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665516, -0.143097, 0.732538,
		0.573250, -0.530530, -0.624438,
		0.477989, 0.835500, -0.271046,
		30.218735, 34.523773, 34.515842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626062, 33.912018, 34.581036>,  <29.884142, 33.938923, 34.705574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626062, 33.912018, 34.581036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526060, 34.255856, 34.759289>,  <30.466059, 34.462158, 34.866241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526060, 34.255856, 34.759289>,  <30.626062, 33.912018, 34.581036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526060, 34.255856, 34.759289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646540, -0.194396, 0.737696,
		0.720752, 0.472547, -0.507165,
		-0.250005, 0.859598, 0.445632,
		30.451059, 34.513737, 34.892979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235739, 34.299747, 34.571075>,  <30.626062, 33.912018, 34.581036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235739, 34.299747, 34.571075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991032, 34.403049, 34.870152>,  <30.844208, 34.465031, 35.049599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991032, 34.403049, 34.870152>,  <31.235739, 34.299747, 34.571075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991032, 34.403049, 34.870152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777820, 0.024335, 0.628016,
		0.143994, 0.965770, -0.215764,
		-0.611770, 0.258256, 0.747691,
		30.807501, 34.480526, 35.094460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632133, 34.793697, 35.034512>,  <31.235739, 34.299747, 34.571075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632133, 34.793697, 35.034512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323721, 34.675682, 35.260242>,  <31.138674, 34.604874, 35.395679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323721, 34.675682, 35.260242>,  <31.632133, 34.793697, 35.034512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323721, 34.675682, 35.260242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577427, 0.049715, 0.814927,
		-0.268488, 0.954192, 0.132029,
		-0.771033, -0.295036, 0.564325,
		31.092411, 34.587170, 35.429539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784904, 35.342407, 35.603882>,  <31.632133, 34.793697, 35.034512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784904, 35.342407, 35.603882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476145, 35.490871, 35.810341>,  <31.290888, 35.579952, 35.934216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476145, 35.490871, 35.810341>,  <31.784904, 35.342407, 35.603882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476145, 35.490871, 35.810341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341379, 0.926890, -0.155996,
		-0.536311, 0.055788, -0.842175,
		-0.771901, 0.371163, 0.516146,
		31.244574, 35.602219, 35.965183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339548, 35.870716, 35.222038>,  <31.784904, 35.342407, 35.603882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339548, 35.870716, 35.222038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350286, 35.923985, 35.618328>,  <31.356730, 35.955948, 35.856102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350286, 35.923985, 35.618328>,  <31.339548, 35.870716, 35.222038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350286, 35.923985, 35.618328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403018, 0.905528, -0.132644,
		-0.914798, 0.402843, -0.029361,
		0.026847, 0.133176, 0.990729,
		31.358341, 35.963936, 35.915546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536121, 36.361385, 34.822208>,  <31.339548, 35.870716, 35.222038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536121, 36.361385, 34.822208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740622, 36.581478, 35.086288>,  <31.863321, 36.713531, 35.244736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740622, 36.581478, 35.086288>,  <31.536121, 36.361385, 34.822208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740622, 36.581478, 35.086288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058181, -0.788584, 0.612169,
		0.857459, -0.274562, -0.435178,
		0.511253, 0.550229, 0.660204,
		31.893997, 36.746548, 35.284351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276474, 36.130199, 34.895870>,  <31.536121, 36.361385, 34.822208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276474, 36.130199, 34.895870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147991, 36.292625, 35.238083>,  <32.070900, 36.390079, 35.443413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147991, 36.292625, 35.238083>,  <32.276474, 36.130199, 34.895870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147991, 36.292625, 35.238083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205199, -0.852101, 0.481474,
		0.924509, 0.330209, 0.190381,
		-0.321211, 0.406061, 0.855534,
		32.051628, 36.414444, 35.494743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506615, 35.684029, 35.471394>,  <32.276474, 36.130199, 34.895870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506615, 35.684029, 35.471394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265537, 35.934109, 35.669743>,  <32.120892, 36.084156, 35.788750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265537, 35.934109, 35.669743>,  <32.506615, 35.684029, 35.471394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265537, 35.934109, 35.669743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010951, -0.614872, 0.788550,
		0.797900, 0.480682, 0.363731,
		-0.602690, 0.625202, 0.495870,
		32.084732, 36.121670, 35.818504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203850, 35.495213, 35.614605>,  <32.506615, 35.684029, 35.471394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203850, 35.495213, 35.614605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086674, 35.167931, 35.416725>,  <33.016369, 34.971561, 35.297997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086674, 35.167931, 35.416725>,  <33.203850, 35.495213, 35.614605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086674, 35.167931, 35.416725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673306, 0.190819, -0.714316,
		0.678855, -0.542335, 0.495004,
		-0.292943, -0.818206, -0.494695,
		32.998791, 34.922470, 35.268318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814903, 35.002026, 35.357323>,  <33.203850, 35.495213, 35.614605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814903, 35.002026, 35.357323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490509, 34.960159, 35.127071>,  <33.295872, 34.935040, 34.988918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490509, 34.960159, 35.127071>,  <33.814903, 35.002026, 35.357323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490509, 34.960159, 35.127071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541784, 0.237047, -0.806399,
		0.220845, -0.965845, -0.135541,
		-0.810986, -0.104655, -0.575630,
		33.247215, 34.928757, 34.954384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642963, 35.068741, 34.697037>,  <33.814903, 35.002026, 35.357323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642963, 35.068741, 34.697037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792908, 35.428135, 34.605648>,  <33.882874, 35.643772, 34.550816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792908, 35.428135, 34.605648>,  <33.642963, 35.068741, 34.697037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792908, 35.428135, 34.605648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535713, -0.411064, -0.737589,
		-0.756633, 0.154093, -0.635422,
		0.374857, 0.898488, -0.228475,
		33.905365, 35.697681, 34.537106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484390, 35.392502, 33.979004>,  <33.642963, 35.068741, 34.697037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484390, 35.392502, 33.979004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859718, 35.453854, 34.102959>,  <34.084915, 35.490665, 34.177330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859718, 35.453854, 34.102959>,  <33.484390, 35.392502, 33.979004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859718, 35.453854, 34.102959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345666, -0.394305, -0.851492,
		-0.008410, 0.906090, -0.423002,
		0.938320, 0.153378, 0.309888,
		34.141212, 35.499866, 34.195927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889896, 35.636299, 33.452938>,  <33.484390, 35.392502, 33.979004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889896, 35.636299, 33.452938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131340, 35.430153, 33.696262>,  <34.276207, 35.306465, 33.842258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131340, 35.430153, 33.696262>,  <33.889896, 35.636299, 33.452938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131340, 35.430153, 33.696262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369403, -0.495368, -0.786227,
		0.706535, 0.699290, -0.108633,
		0.603614, -0.515368, 0.608314,
		34.312424, 35.275543, 33.878757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597141, 35.824787, 33.182163>,  <33.889896, 35.636299, 33.452938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597141, 35.824787, 33.182163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562355, 35.447826, 33.311356>,  <34.541481, 35.221649, 33.388870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562355, 35.447826, 33.311356>,  <34.597141, 35.824787, 33.182163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562355, 35.447826, 33.311356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250567, -0.334481, -0.908482,
		0.964185, 0.001918, 0.265224,
		-0.086970, -0.942401, 0.322982,
		34.536263, 35.165108, 33.408249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279613, 35.403786, 33.132023>,  <34.597141, 35.824787, 33.182163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279613, 35.403786, 33.132023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939297, 35.197781, 33.090248>,  <34.735107, 35.074177, 33.065182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939297, 35.197781, 33.090248>,  <35.279613, 35.403786, 33.132023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939297, 35.197781, 33.090248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362786, -0.431861, -0.825762,
		0.380175, -0.740444, 0.554265,
		-0.850796, -0.515013, -0.104440,
		34.684059, 35.043278, 33.058914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567020, 34.690586, 32.981812>,  <35.279613, 35.403786, 33.132023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567020, 34.690586, 32.981812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188110, 34.745522, 32.866013>,  <34.960766, 34.778484, 32.796535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188110, 34.745522, 32.866013>,  <35.567020, 34.690586, 32.981812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188110, 34.745522, 32.866013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163397, -0.570124, -0.805146,
		-0.275627, -0.809997, 0.517623,
		-0.947276, 0.137342, -0.289493,
		34.903927, 34.786724, 32.779163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145771, 34.083229, 32.933983>,  <35.567020, 34.690586, 32.981812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145771, 34.083229, 32.933983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030575, 34.357773, 32.666859>,  <34.961456, 34.522499, 32.506584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030575, 34.357773, 32.666859>,  <35.145771, 34.083229, 32.933983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030575, 34.357773, 32.666859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067649, -0.681032, -0.729122,
		-0.955242, -0.255154, 0.149697,
		-0.287987, 0.686361, -0.667811,
		34.944180, 34.563683, 32.466515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606300, 33.786015, 32.572311>,  <35.145771, 34.083229, 32.933983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606300, 33.786015, 32.572311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776321, 34.055611, 32.330627>,  <34.878334, 34.217369, 32.185616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776321, 34.055611, 32.330627>,  <34.606300, 33.786015, 32.572311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776321, 34.055611, 32.330627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041437, -0.681300, -0.730830,
		-0.904221, 0.285602, -0.317514,
		0.425049, 0.673989, -0.604212,
		34.903835, 34.257809, 32.149364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303715, 33.713356, 32.021755>,  <34.606300, 33.786015, 32.572311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303715, 33.713356, 32.021755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646145, 33.884506, 31.905788>,  <34.851604, 33.987198, 31.836208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646145, 33.884506, 31.905788>,  <34.303715, 33.713356, 32.021755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646145, 33.884506, 31.905788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036999, -0.508757, -0.860115,
		-0.515520, 0.747052, -0.419705,
		0.856078, 0.427878, -0.289914,
		34.902969, 34.012871, 31.818813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111614, 34.044674, 31.337677>,  <34.303715, 33.713356, 32.021755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111614, 34.044674, 31.337677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503933, 33.980396, 31.381886>,  <34.739323, 33.941830, 31.408411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503933, 33.980396, 31.381886>,  <34.111614, 34.044674, 31.337677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503933, 33.980396, 31.381886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006769, -0.538294, -0.842730,
		0.194915, 0.827295, -0.526870,
		0.980797, -0.160695, 0.110521,
		34.798172, 33.932186, 31.415043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413612, 34.286549, 30.688931>,  <34.111614, 34.044674, 31.337677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413612, 34.286549, 30.688931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673485, 34.033016, 30.856821>,  <34.829411, 33.880898, 30.957556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673485, 34.033016, 30.856821>,  <34.413612, 34.286549, 30.688931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673485, 34.033016, 30.856821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028184, -0.571828, -0.819889,
		0.759682, 0.520839, -0.389371,
		0.649683, -0.633829, 0.419729,
		34.868389, 33.842869, 30.982740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968987, 34.263031, 30.088722>,  <34.413612, 34.286549, 30.688931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968987, 34.263031, 30.088722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047535, 33.956356, 30.333223>,  <35.094662, 33.772350, 30.479923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047535, 33.956356, 30.333223>,  <34.968987, 34.263031, 30.088722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047535, 33.956356, 30.333223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105110, -0.603337, -0.790529,
		0.974880, 0.219482, -0.037888,
		0.196367, -0.766689, 0.611252,
		35.106445, 33.726349, 30.516600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552395, 33.872066, 29.823565>,  <34.968987, 34.263031, 30.088722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552395, 33.872066, 29.823565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374290, 33.586403, 30.039612>,  <35.267429, 33.415005, 30.169239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374290, 33.586403, 30.039612>,  <35.552395, 33.872066, 29.823565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374290, 33.586403, 30.039612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060716, -0.577742, -0.813958,
		0.893342, -0.395215, 0.213883,
		-0.445257, -0.714157, 0.540117,
		35.240715, 33.372154, 30.201647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898682, 33.242867, 29.721336>,  <35.552395, 33.872066, 29.823565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898682, 33.242867, 29.721336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543968, 33.122105, 29.861315>,  <35.331139, 33.049648, 29.945301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543968, 33.122105, 29.861315>,  <35.898682, 33.242867, 29.721336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543968, 33.122105, 29.861315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034593, -0.711682, -0.701649,
		0.460882, -0.634318, 0.620667,
		-0.886787, -0.301907, 0.349945,
		35.277931, 33.031532, 29.966299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940990, 32.464504, 29.850094>,  <35.898682, 33.242867, 29.721336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940990, 32.464504, 29.850094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556297, 32.561363, 29.798813>,  <35.325481, 32.619476, 29.768044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556297, 32.561363, 29.798813>,  <35.940990, 32.464504, 29.850094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556297, 32.561363, 29.798813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065455, -0.657415, -0.750681,
		-0.266057, -0.713562, 0.648107,
		-0.961732, 0.242145, -0.128204,
		35.267776, 32.634007, 29.760351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621941, 31.794937, 29.792170>,  <35.940990, 32.464504, 29.850094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621941, 31.794937, 29.792170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351166, 32.067051, 29.679762>,  <35.188702, 32.230320, 29.612316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351166, 32.067051, 29.679762>,  <35.621941, 31.794937, 29.792170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351166, 32.067051, 29.679762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177897, -0.521696, -0.834378,
		-0.714223, -0.514825, 0.474174,
		-0.676933, 0.680286, -0.281021,
		35.148087, 32.271137, 29.595455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035103, 31.417322, 29.512302>,  <35.621941, 31.794937, 29.792170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035103, 31.417322, 29.512302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019711, 31.777802, 29.339624>,  <35.010475, 31.994089, 29.236017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019711, 31.777802, 29.339624>,  <35.035103, 31.417322, 29.512302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019711, 31.777802, 29.339624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050123, -0.429728, -0.901566,
		-0.998001, -0.056330, -0.028635,
		-0.038480, 0.901200, -0.431693,
		35.008167, 32.048161, 29.210117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419868, 31.367849, 29.035999>,  <35.035103, 31.417322, 29.512302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419868, 31.367849, 29.035999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660141, 31.664532, 28.916634>,  <34.804306, 31.842541, 28.845015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660141, 31.664532, 28.916634>,  <34.419868, 31.367849, 29.035999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660141, 31.664532, 28.916634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069332, -0.420177, -0.904790,
		-0.796476, 0.522801, -0.303817,
		0.600681, 0.741708, -0.298414,
		34.840347, 31.887045, 28.827110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188976, 31.595797, 28.308968>,  <34.419868, 31.367849, 29.035999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188976, 31.595797, 28.308968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540520, 31.786564, 28.314047>,  <34.751446, 31.901024, 28.317095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540520, 31.786564, 28.314047>,  <34.188976, 31.595797, 28.308968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540520, 31.786564, 28.314047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072238, -0.106718, -0.991662,
		-0.471588, 0.872444, -0.128241,
		0.878855, 0.476920, 0.012697,
		34.804176, 31.929640, 28.317856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198555, 32.077385, 27.737953>,  <34.188976, 31.595797, 28.308968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198555, 32.077385, 27.737953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581741, 32.004158, 27.826302>,  <34.811653, 31.960220, 27.879311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581741, 32.004158, 27.826302>,  <34.198555, 32.077385, 27.737953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581741, 32.004158, 27.826302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192981, -0.158440, -0.968326,
		0.212268, 0.970248, -0.116451,
		0.957967, -0.183072, 0.220871,
		34.869133, 31.949236, 27.892563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572685, 32.539577, 27.346407>,  <34.198555, 32.077385, 27.737953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572685, 32.539577, 27.346407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809616, 32.228977, 27.432384>,  <34.951775, 32.042618, 27.483971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809616, 32.228977, 27.432384>,  <34.572685, 32.539577, 27.346407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809616, 32.228977, 27.432384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164716, -0.144439, -0.975708,
		0.788683, 0.613340, 0.042347,
		0.592324, -0.776499, 0.214943,
		34.987312, 31.996027, 27.496868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022312, 32.727119, 26.891159>,  <34.572685, 32.539577, 27.346407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022312, 32.727119, 26.891159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108181, 32.350693, 26.995707>,  <35.159702, 32.124836, 27.058435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108181, 32.350693, 26.995707>,  <35.022312, 32.727119, 26.891159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108181, 32.350693, 26.995707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057951, -0.279409, -0.958422,
		0.974965, 0.190602, -0.114517,
		0.214674, -0.941064, 0.261368,
		35.172585, 32.068375, 27.074118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575581, 32.529163, 26.469742>,  <35.022312, 32.727119, 26.891159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575581, 32.529163, 26.469742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388142, 32.200912, 26.600582>,  <35.275681, 32.003963, 26.679087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388142, 32.200912, 26.600582>,  <35.575581, 32.529163, 26.469742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388142, 32.200912, 26.600582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113463, -0.311295, -0.943516,
		0.876097, -0.479239, 0.052760,
		-0.468593, -0.820625, 0.327101,
		35.247562, 31.954725, 26.698711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922054, 31.905987, 26.189651>,  <35.575581, 32.529163, 26.469742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922054, 31.905987, 26.189651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544479, 31.792847, 26.257753>,  <35.317936, 31.724962, 26.298615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544479, 31.792847, 26.257753>,  <35.922054, 31.905987, 26.189651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544479, 31.792847, 26.257753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050431, -0.386125, -0.921067,
		0.326263, -0.878011, 0.350212,
		-0.943933, -0.282849, 0.170257,
		35.261299, 31.707993, 26.308830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920902, 31.167562, 26.001511>,  <35.922054, 31.905987, 26.189651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920902, 31.167562, 26.001511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544930, 31.303389, 25.987543>,  <35.319344, 31.384884, 25.979162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544930, 31.303389, 25.987543>,  <35.920902, 31.167562, 26.001511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544930, 31.303389, 25.987543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127739, -0.444745, -0.886502,
		-0.316554, -0.828793, 0.461406,
		-0.939934, 0.339565, -0.034917,
		35.262951, 31.405258, 25.977068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511253, 30.724003, 25.774506>,  <35.920902, 31.167562, 26.001511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511253, 30.724003, 25.774506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291500, 31.046139, 25.685415>,  <35.159649, 31.239420, 25.631962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291500, 31.046139, 25.685415>,  <35.511253, 30.724003, 25.774506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291500, 31.046139, 25.685415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209798, -0.390965, -0.896176,
		-0.808805, -0.445614, 0.383747,
		-0.549381, 0.805341, -0.222726,
		35.126686, 31.287741, 25.618597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962509, 30.351576, 25.488676>,  <35.511253, 30.724003, 25.774506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962509, 30.351576, 25.488676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915810, 30.733999, 25.381105>,  <34.887791, 30.963453, 25.316563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915810, 30.733999, 25.381105>,  <34.962509, 30.351576, 25.488676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915810, 30.733999, 25.381105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357515, -0.293083, -0.886728,
		-0.926581, -0.007383, 0.376023,
		-0.116752, 0.956059, -0.268926,
		34.880783, 31.020817, 25.300428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340488, 30.342346, 25.152870>,  <34.962509, 30.351576, 25.488676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340488, 30.342346, 25.152870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516460, 30.678581, 25.026457>,  <34.622044, 30.880322, 24.950609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516460, 30.678581, 25.026457>,  <34.340488, 30.342346, 25.152870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516460, 30.678581, 25.026457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250462, -0.223105, -0.942069,
		-0.862398, 0.493599, 0.112384,
		0.439930, 0.840586, -0.316032,
		34.648441, 30.930758, 24.931646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965111, 30.559286, 24.660295>,  <34.340488, 30.342346, 25.152870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965111, 30.559286, 24.660295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306114, 30.757219, 24.592932>,  <34.510715, 30.875980, 24.552513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306114, 30.757219, 24.592932>,  <33.965111, 30.559286, 24.660295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306114, 30.757219, 24.592932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221949, 0.050990, -0.973724,
		-0.473245, 0.867490, 0.153298,
		0.852513, 0.494834, -0.168408,
		34.561867, 30.905670, 24.542410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781048, 30.906637, 24.147924>,  <33.965111, 30.559286, 24.660295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781048, 30.906637, 24.147924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180092, 30.904430, 24.120375>,  <34.419518, 30.903107, 24.103846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180092, 30.904430, 24.120375>,  <33.781048, 30.906637, 24.147924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180092, 30.904430, 24.120375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068839, 0.005913, -0.997610,
		0.005913, 0.999967, 0.005519,
		0.997610, -0.005519, -0.068872,
		34.479374, 30.902775, 24.099712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987751, 31.365681, 23.671263>,  <33.781048, 30.906637, 24.147924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987751, 31.365681, 23.671263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321873, 31.145824, 23.676395>,  <34.522346, 31.013910, 23.679474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321873, 31.145824, 23.676395>,  <33.987751, 31.365681, 23.671263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321873, 31.145824, 23.676395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123498, 0.164841, -0.978558,
		0.535738, 0.818978, 0.205572,
		0.835304, -0.549639, 0.012830,
		34.572464, 30.980932, 23.680244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456226, 31.753323, 23.232466>,  <33.987751, 31.365681, 23.671263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456226, 31.753323, 23.232466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590820, 31.376764, 23.241837>,  <34.671577, 31.150829, 23.247459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590820, 31.376764, 23.241837>,  <34.456226, 31.753323, 23.232466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590820, 31.376764, 23.241837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065862, -0.001292, -0.997828,
		0.939381, 0.337301, 0.061568,
		0.336489, -0.941396, 0.023429,
		34.691769, 31.094345, 23.248865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157291, 31.723873, 22.867001>,  <34.456226, 31.753323, 23.232466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157291, 31.723873, 22.867001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032467, 31.344070, 22.854044>,  <34.957573, 31.116188, 22.846270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032467, 31.344070, 22.854044>,  <35.157291, 31.723873, 22.867001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032467, 31.344070, 22.854044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278550, -0.058845, -0.958617,
		0.908309, -0.308174, 0.282849,
		-0.312065, -0.949508, -0.032393,
		34.938847, 31.059217, 22.844326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592896, 31.374813, 22.480749>,  <35.157291, 31.723873, 22.867001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592896, 31.374813, 22.480749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296219, 31.106550, 22.485079>,  <35.118214, 30.945593, 22.487677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296219, 31.106550, 22.485079>,  <35.592896, 31.374813, 22.480749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296219, 31.106550, 22.485079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181024, -0.215682, -0.959537,
		0.645853, -0.709720, 0.281374,
		-0.741690, -0.670655, 0.010823,
		35.073711, 30.905354, 22.488325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792099, 30.868851, 22.082205>,  <35.592896, 31.374813, 22.480749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792099, 30.868851, 22.082205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398304, 30.798882, 22.087696>,  <35.162025, 30.756901, 22.090990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398304, 30.798882, 22.087696>,  <35.792099, 30.868851, 22.082205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398304, 30.798882, 22.087696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058800, -0.402622, -0.913476,
		0.165315, -0.898497, 0.406661,
		-0.984486, -0.174923, 0.013727,
		35.102959, 30.746405, 22.091814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562134, 30.129047, 22.137598>,  <35.792099, 30.868851, 22.082205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562134, 30.129047, 22.137598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264729, 30.331167, 21.962389>,  <35.086285, 30.452438, 21.857264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264729, 30.331167, 21.962389>,  <35.562134, 30.129047, 22.137598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264729, 30.331167, 21.962389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151534, -0.510665, -0.846321,
		-0.651329, -0.695624, 0.303115,
		-0.743511, 0.505301, -0.438021,
		35.041676, 30.482758, 21.830982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323967, 29.630518, 21.700958>,  <35.562134, 30.129047, 22.137598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323967, 29.630518, 21.700958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190880, 29.986458, 21.576082>,  <35.111027, 30.200022, 21.501158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190880, 29.986458, 21.576082>,  <35.323967, 29.630518, 21.700958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190880, 29.986458, 21.576082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269637, -0.227459, -0.935713,
		-0.903655, -0.395510, -0.164256,
		-0.332722, 0.889851, -0.312189,
		35.091064, 30.253412, 21.482426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952103, 29.440596, 21.125404>,  <35.323967, 29.630518, 21.700958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952103, 29.440596, 21.125404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996441, 29.837095, 21.096733>,  <35.023045, 30.074995, 21.079531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996441, 29.837095, 21.096733>,  <34.952103, 29.440596, 21.125404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996441, 29.837095, 21.096733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000715, -0.072045, -0.997401,
		-0.993838, 0.110605, -0.007276,
		0.110841, 0.991250, -0.071680,
		35.029694, 30.134470, 21.075230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621666, 29.597622, 20.501415>,  <34.952103, 29.440596, 21.125404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621666, 29.597622, 20.501415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864666, 29.910194, 20.558413>,  <35.010468, 30.097738, 20.592611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864666, 29.910194, 20.558413>,  <34.621666, 29.597622, 20.501415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864666, 29.910194, 20.558413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321718, -0.078043, -0.943613,
		-0.726249, 0.619091, -0.298812,
		0.607502, 0.781432, 0.142494,
		35.046917, 30.144625, 20.601160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569885, 29.979095, 19.877474>,  <34.621666, 29.597622, 20.501415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569885, 29.979095, 19.877474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899338, 30.111437, 20.061718>,  <35.097012, 30.190842, 20.172264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899338, 30.111437, 20.061718>,  <34.569885, 29.979095, 19.877474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899338, 30.111437, 20.061718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463686, 0.074771, -0.882839,
		-0.326532, 0.940715, -0.091829,
		0.823634, 0.330855, 0.460611,
		35.146427, 30.210693, 20.199902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830345, 30.445187, 19.486849>,  <34.569885, 29.979095, 19.877474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830345, 30.445187, 19.486849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155182, 30.391069, 19.713900>,  <35.350082, 30.358599, 19.850130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155182, 30.391069, 19.713900>,  <34.830345, 30.445187, 19.486849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155182, 30.391069, 19.713900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581587, 0.108390, -0.806231,
		0.047554, 0.984859, 0.166708,
		0.812093, -0.135295, 0.567626,
		35.398811, 30.350481, 19.884188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351337, 31.035940, 19.369162>,  <34.830345, 30.445187, 19.486849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351337, 31.035940, 19.369162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508270, 30.686277, 19.483650>,  <35.602428, 30.476479, 19.552343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508270, 30.686277, 19.483650>,  <35.351337, 31.035940, 19.369162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508270, 30.686277, 19.483650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549251, -0.026963, -0.835222,
		0.737834, 0.484891, 0.469554,
		0.392331, -0.874159, 0.286222,
		35.625969, 30.424030, 19.569517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962799, 31.263361, 19.266712>,  <35.351337, 31.035940, 19.369162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962799, 31.263361, 19.266712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971169, 30.863745, 19.282084>,  <35.976192, 30.623974, 19.291306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971169, 30.863745, 19.282084>,  <35.962799, 31.263361, 19.266712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971169, 30.863745, 19.282084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633156, -0.016503, -0.773848,
		0.773741, 0.040524, 0.632205,
		0.020926, -0.999042, 0.038427,
		35.977448, 30.564032, 19.293612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642296, 31.136244, 19.060665>,  <35.962799, 31.263361, 19.266712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642296, 31.136244, 19.060665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449821, 30.791855, 18.994715>,  <36.334335, 30.585220, 18.955145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449821, 30.791855, 18.994715>,  <36.642296, 31.136244, 19.060665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449821, 30.791855, 18.994715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638487, -0.215342, -0.738893,
		0.600662, -0.460817, 0.653340,
		-0.481185, -0.860974, -0.164878,
		36.305466, 30.533564, 18.945251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108284, 30.648415, 19.042583>,  <36.642296, 31.136244, 19.060665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108284, 30.648415, 19.042583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800331, 30.505468, 18.831085>,  <36.615559, 30.419701, 18.704187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800331, 30.505468, 18.831085>,  <37.108284, 30.648415, 19.042583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800331, 30.505468, 18.831085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610790, -0.172467, -0.772781,
		0.184975, -0.917902, 0.351055,
		-0.769883, -0.357366, -0.528744,
		36.569366, 30.398258, 18.672462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415527, 30.084717, 18.697670>,  <37.108284, 30.648415, 19.042583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415527, 30.084717, 18.697670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088116, 30.124420, 18.471340>,  <36.891670, 30.148243, 18.335543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088116, 30.124420, 18.471340>,  <37.415527, 30.084717, 18.697670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088116, 30.124420, 18.471340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561817, -0.067235, -0.824525,
		-0.119884, -0.992787, -0.000732,
		-0.818529, 0.099258, -0.565825,
		36.842556, 30.154198, 18.301592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377506, 29.530964, 18.301065>,  <37.415527, 30.084717, 18.697670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377506, 29.530964, 18.301065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170368, 29.794657, 18.082981>,  <37.046085, 29.952873, 17.952131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170368, 29.794657, 18.082981>,  <37.377506, 29.530964, 18.301065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170368, 29.794657, 18.082981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606411, -0.166664, -0.777489,
		-0.603413, -0.733236, -0.313461,
		-0.517841, 0.659232, -0.545210,
		37.015015, 29.992426, 17.919418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362316, 29.280378, 17.644423>,  <37.377506, 29.530964, 18.301065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362316, 29.280378, 17.644423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283241, 29.664356, 17.565001>,  <37.235798, 29.894743, 17.517347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283241, 29.664356, 17.565001>,  <37.362316, 29.280378, 17.644423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283241, 29.664356, 17.565001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610099, -0.038053, -0.791411,
		-0.767268, -0.277587, -0.578140,
		-0.197685, 0.959947, -0.198553,
		37.223934, 29.952341, 17.505434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122101, 29.385202, 16.863829>,  <37.362316, 29.280378, 17.644423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122101, 29.385202, 16.863829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280884, 29.711143, 17.032797>,  <37.376152, 29.906708, 17.134178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280884, 29.711143, 17.032797>,  <37.122101, 29.385202, 16.863829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280884, 29.711143, 17.032797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557654, 0.151428, -0.816144,
		-0.729005, 0.559537, -0.394297,
		0.396955, 0.814854, 0.422420,
		37.399971, 29.955601, 17.159523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050983, 30.047247, 16.427305>,  <37.122101, 29.385202, 16.863829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050983, 30.047247, 16.427305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380238, 30.043230, 16.654408>,  <37.577789, 30.040821, 16.790668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380238, 30.043230, 16.654408>,  <37.050983, 30.047247, 16.427305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380238, 30.043230, 16.654408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554900, 0.226495, -0.800491,
		-0.120557, 0.973961, 0.192008,
		0.823136, -0.010040, 0.567756,
		37.627178, 30.040218, 16.824734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439957, 30.220186, 15.932409>,  <37.050983, 30.047247, 16.427305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439957, 30.220186, 15.932409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705040, 30.115412, 16.213041>,  <37.864090, 30.052547, 16.381420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705040, 30.115412, 16.213041>,  <37.439957, 30.220186, 15.932409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705040, 30.115412, 16.213041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707581, -0.087807, -0.701156,
		0.245261, 0.961083, 0.127150,
		0.662704, -0.261935, 0.701579,
		37.903851, 30.036831, 16.423515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389156, 30.531002, 15.179164>,  <37.439957, 30.220186, 15.932409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389156, 30.531002, 15.179164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532570, 30.659307, 15.529836>,  <37.618618, 30.736290, 15.740238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532570, 30.659307, 15.529836>,  <37.389156, 30.531002, 15.179164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532570, 30.659307, 15.529836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725777, -0.686412, -0.045672,
		0.587113, 0.652648, -0.478903,
		0.358533, 0.320762, 0.876679,
		37.640129, 30.755537, 15.792839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302353, 29.911486, 14.679277>,  <37.389156, 30.531002, 15.179164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302353, 29.911486, 14.679277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973133, 29.700420, 14.763332>,  <36.775600, 29.573782, 14.813766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973133, 29.700420, 14.763332>,  <37.302353, 29.911486, 14.679277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973133, 29.700420, 14.763332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373665, -0.224426, 0.900004,
		-0.427738, 0.819272, 0.381883,
		-0.823052, -0.527662, 0.210137,
		36.726219, 29.542122, 14.826374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489265, 30.418209, 14.009064>,  <37.302353, 29.911486, 14.679277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489265, 30.418209, 14.009064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771206, 30.348091, 14.284004>,  <37.940372, 30.306021, 14.448968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771206, 30.348091, 14.284004>,  <37.489265, 30.418209, 14.009064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771206, 30.348091, 14.284004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108952, 0.984241, 0.139282,
		-0.700933, -0.023286, 0.712846,
		0.704856, -0.175293, 0.687350,
		37.982662, 30.295504, 14.490210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519184, 31.055698, 14.533240>,  <37.489265, 30.418209, 14.009064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519184, 31.055698, 14.533240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874969, 30.876078, 14.567192>,  <38.088440, 30.768305, 14.587564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874969, 30.876078, 14.567192>,  <37.519184, 31.055698, 14.533240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874969, 30.876078, 14.567192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447650, 0.893485, 0.035963,
		-0.091988, 0.006009, 0.995742,
		0.889465, -0.449052, 0.084880,
		38.141808, 30.741362, 14.592656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006832, 31.348043, 15.043810>,  <37.519184, 31.055698, 14.533240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006832, 31.348043, 15.043810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203400, 31.208073, 14.724796>,  <38.321339, 31.124090, 14.533388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203400, 31.208073, 14.724796>,  <38.006832, 31.348043, 15.043810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203400, 31.208073, 14.724796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535997, 0.843284, -0.039732,
		0.686451, -0.407950, 0.601965,
		0.491419, -0.349926, -0.797533,
		38.350826, 31.103094, 14.485537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734161, 31.409777, 15.189777>,  <38.006832, 31.348043, 15.043810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734161, 31.409777, 15.189777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660847, 31.446968, 14.798316>,  <38.616859, 31.469282, 14.563439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660847, 31.446968, 14.798316>,  <38.734161, 31.409777, 15.189777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660847, 31.446968, 14.798316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473863, 0.880584, -0.005087,
		0.861313, -0.464680, -0.205457,
		-0.183286, 0.092977, -0.978653,
		38.605862, 31.474861, 14.504720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770451, 31.105701, 15.865658>,  <38.734161, 31.409777, 15.189777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770451, 31.105701, 15.865658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085747, 30.922525, 15.701239>,  <39.274925, 30.812620, 15.602587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085747, 30.922525, 15.701239>,  <38.770451, 31.105701, 15.865658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085747, 30.922525, 15.701239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292113, -0.866377, 0.405045,
		-0.541609, -0.199202, -0.816687,
		0.788245, -0.457941, -0.411048,
		39.322220, 30.785143, 15.577924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700386, 31.789890, 15.989359>,  <38.770451, 31.105701, 15.865658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700386, 31.789890, 15.989359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508011, 31.584799, 16.273840>,  <38.392586, 31.461744, 16.444529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508011, 31.584799, 16.273840>,  <38.700386, 31.789890, 15.989359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508011, 31.584799, 16.273840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099363, 0.837825, 0.536821,
		-0.871106, 0.187511, -0.453888,
		-0.480938, -0.512728, 0.711202,
		38.363728, 31.430981, 16.487200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452053, 32.326626, 16.316578>,  <38.700386, 31.789890, 15.989359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452053, 32.326626, 16.316578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329575, 32.043491, 16.571205>,  <38.256088, 31.873611, 16.723980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329575, 32.043491, 16.571205>,  <38.452053, 32.326626, 16.316578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329575, 32.043491, 16.571205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268189, 0.705738, 0.655750,
		-0.913411, 0.030066, -0.405926,
		-0.306193, -0.707835, 0.636566,
		38.237717, 31.831141, 16.762175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756718, 32.518200, 16.542007>,  <38.452053, 32.326626, 16.316578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756718, 32.518200, 16.542007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903797, 32.256634, 16.806488>,  <37.992046, 32.099693, 16.965176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903797, 32.256634, 16.806488>,  <37.756718, 32.518200, 16.542007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903797, 32.256634, 16.806488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087091, 0.683672, 0.724574,
		-0.925856, -0.324012, 0.194438,
		0.367703, -0.653918, 0.661200,
		38.014107, 32.060459, 17.004848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267105, 32.484924, 17.044767>,  <37.756718, 32.518200, 16.542007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267105, 32.484924, 17.044767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613171, 32.381767, 17.216803>,  <37.820812, 32.319874, 17.320024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613171, 32.381767, 17.216803>,  <37.267105, 32.484924, 17.044767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613171, 32.381767, 17.216803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152666, 0.681485, 0.715732,
		-0.477679, -0.684888, 0.550228,
		0.865168, -0.257889, 0.430090,
		37.872723, 32.304401, 17.345829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065132, 32.507725, 17.681477>,  <37.267105, 32.484924, 17.044767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065132, 32.507725, 17.681477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459206, 32.508018, 17.750086>,  <37.695648, 32.508194, 17.791250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459206, 32.508018, 17.750086>,  <37.065132, 32.507725, 17.681477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459206, 32.508018, 17.750086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145271, 0.535263, 0.832100,
		-0.091195, -0.844686, 0.527437,
		0.985180, 0.000738, 0.171521,
		37.754761, 32.508240, 17.801542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212624, 32.309414, 18.395447>,  <37.065132, 32.507725, 17.681477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212624, 32.309414, 18.395447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545284, 32.496262, 18.275347>,  <37.744881, 32.608368, 18.203287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545284, 32.496262, 18.275347>,  <37.212624, 32.309414, 18.395447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545284, 32.496262, 18.275347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120504, 0.376003, 0.918749,
		0.542058, -0.800265, 0.256416,
		0.831656, 0.467117, -0.300251,
		37.794781, 32.636398, 18.185272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788719, 32.133518, 18.907356>,  <37.212624, 32.309414, 18.395447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788719, 32.133518, 18.907356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858528, 32.476875, 18.714397>,  <37.900414, 32.682888, 18.598623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858528, 32.476875, 18.714397>,  <37.788719, 32.133518, 18.907356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858528, 32.476875, 18.714397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068118, 0.478216, 0.875597,
		0.982294, -0.185670, 0.024987,
		0.174521, 0.858392, -0.482396,
		37.910885, 32.734394, 18.569679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237114, 32.427258, 19.311153>,  <37.788719, 32.133518, 18.907356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237114, 32.427258, 19.311153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120789, 32.745934, 19.099222>,  <38.050995, 32.937138, 18.972063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120789, 32.745934, 19.099222>,  <38.237114, 32.427258, 19.311153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120789, 32.745934, 19.099222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107720, 0.522979, 0.845511,
		0.950697, 0.302957, -0.066269,
		-0.290811, 0.796687, -0.529830,
		38.033546, 32.984940, 18.940273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657696, 32.920643, 19.455753>,  <38.237114, 32.427258, 19.311153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657696, 32.920643, 19.455753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323887, 33.114258, 19.350462>,  <38.123604, 33.230427, 19.287287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323887, 33.114258, 19.350462>,  <38.657696, 32.920643, 19.455753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323887, 33.114258, 19.350462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078813, 0.367967, 0.926493,
		0.545313, 0.793922, -0.268928,
		-0.834519, 0.484033, -0.263228,
		38.073532, 33.259468, 19.271494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698112, 33.531193, 19.800543>,  <38.657696, 32.920643, 19.455753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698112, 33.531193, 19.800543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312096, 33.526730, 19.695801>,  <38.080486, 33.524052, 19.632956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312096, 33.526730, 19.695801>,  <38.698112, 33.531193, 19.800543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312096, 33.526730, 19.695801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236655, 0.466469, 0.852292,
		0.112633, 0.884467, -0.452805,
		-0.965043, -0.011163, -0.261853,
		38.022583, 33.523380, 19.617245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391075, 34.280193, 19.939581>,  <38.698112, 33.531193, 19.800543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391075, 34.280193, 19.939581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118122, 33.987850, 19.933790>,  <37.954350, 33.812447, 19.930317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118122, 33.987850, 19.933790>,  <38.391075, 34.280193, 19.939581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118122, 33.987850, 19.933790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354297, 0.313349, 0.881071,
		-0.639398, 0.606354, -0.472762,
		-0.682381, -0.730853, -0.014475,
		37.913406, 33.768593, 19.929447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829762, 34.579159, 20.128593>,  <38.391075, 34.280193, 19.939581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829762, 34.579159, 20.128593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739765, 34.195576, 20.197611>,  <37.685768, 33.965424, 20.239021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739765, 34.195576, 20.197611>,  <37.829762, 34.579159, 20.128593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739765, 34.195576, 20.197611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415084, 0.254546, 0.873448,
		-0.881524, 0.124896, -0.455320,
		-0.224991, -0.958961, 0.172546,
		37.672268, 33.907887, 20.249374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138004, 34.681385, 20.379440>,  <37.829762, 34.579159, 20.128593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138004, 34.681385, 20.379440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261417, 34.318409, 20.493534>,  <37.335464, 34.100624, 20.561991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261417, 34.318409, 20.493534>,  <37.138004, 34.681385, 20.379440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261417, 34.318409, 20.493534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465026, 0.117695, 0.877439,
		-0.829794, -0.403362, -0.385670,
		0.308534, -0.907440, 0.285236,
		37.353977, 34.046177, 20.579105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550133, 34.347637, 20.723873>,  <37.138004, 34.681385, 20.379440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550133, 34.347637, 20.723873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851341, 34.124794, 20.863926>,  <37.032066, 33.991089, 20.947958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851341, 34.124794, 20.863926>,  <36.550133, 34.347637, 20.723873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851341, 34.124794, 20.863926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394219, 0.044072, 0.917959,
		-0.526831, -0.829271, -0.186435,
		0.753021, -0.557106, 0.350133,
		37.077248, 33.957661, 20.968966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207253, 33.770462, 21.209740>,  <36.550133, 34.347637, 20.723873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207253, 33.770462, 21.209740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587849, 33.832935, 21.315777>,  <36.816208, 33.870419, 21.379400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587849, 33.832935, 21.315777>,  <36.207253, 33.770462, 21.209740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587849, 33.832935, 21.315777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291726, 0.184087, 0.938620,
		0.097793, -0.970423, 0.220719,
		0.951489, 0.156180, 0.265095,
		36.873295, 33.879791, 21.395306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274906, 33.271343, 21.796476>,  <36.207253, 33.770462, 21.209740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274906, 33.271343, 21.796476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575886, 33.534477, 21.809551>,  <36.756474, 33.692356, 21.817396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575886, 33.534477, 21.809551>,  <36.274906, 33.271343, 21.796476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575886, 33.534477, 21.809551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150992, 0.123976, 0.980730,
		0.641106, -0.742888, 0.192614,
		0.752452, 0.657835, 0.032688,
		36.801620, 33.731827, 21.819357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778065, 32.992897, 22.296598>,  <36.274906, 33.271343, 21.796476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778065, 32.992897, 22.296598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806072, 33.390339, 22.261152>,  <36.822876, 33.628803, 22.239885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806072, 33.390339, 22.261152>,  <36.778065, 32.992897, 22.296598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806072, 33.390339, 22.261152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078289, 0.094032, 0.992486,
		0.994469, -0.062555, 0.084372,
		0.070019, 0.993602, -0.088614,
		36.827080, 33.688419, 22.234568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222755, 33.162487, 22.894684>,  <36.778065, 32.992897, 22.296598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222755, 33.162487, 22.894684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045345, 33.505085, 22.789078>,  <36.938900, 33.710644, 22.725714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045345, 33.505085, 22.789078>,  <37.222755, 33.162487, 22.894684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045345, 33.505085, 22.789078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074445, 0.328759, 0.941475,
		0.893165, 0.397912, -0.209575,
		-0.443524, 0.856495, -0.264013,
		36.912289, 33.762032, 22.709873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541176, 33.679386, 23.392183>,  <37.222755, 33.162487, 22.894684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541176, 33.679386, 23.392183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225811, 33.875889, 23.244089>,  <37.036591, 33.993790, 23.155233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225811, 33.875889, 23.244089>,  <37.541176, 33.679386, 23.392183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225811, 33.875889, 23.244089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030750, 0.569638, 0.821320,
		0.614375, 0.658926, -0.434005,
		-0.788415, 0.491253, -0.370234,
		36.989288, 34.023266, 23.133018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633476, 34.357212, 23.565754>,  <37.541176, 33.679386, 23.392183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633476, 34.357212, 23.565754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237408, 34.332161, 23.515739>,  <36.999767, 34.317131, 23.485731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237408, 34.332161, 23.515739>,  <37.633476, 34.357212, 23.565754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237408, 34.332161, 23.515739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139805, 0.464407, 0.874517,
		0.003294, 0.883404, -0.468600,
		-0.990174, -0.062632, -0.125034,
		36.940357, 34.313370, 23.478230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393383, 35.059406, 23.668285>,  <37.633476, 34.357212, 23.565754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393383, 35.059406, 23.668285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084641, 34.809113, 23.713358>,  <36.899395, 34.658936, 23.740402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084641, 34.809113, 23.713358>,  <37.393383, 35.059406, 23.668285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084641, 34.809113, 23.713358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199780, 0.406946, 0.891338,
		-0.603594, 0.665474, -0.439112,
		-0.771857, -0.625732, 0.112681,
		36.853085, 34.621391, 23.747162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952381, 35.519924, 24.029247>,  <37.393383, 35.059406, 23.668285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952381, 35.519924, 24.029247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820114, 35.148098, 24.094444>,  <36.740753, 34.925003, 24.133562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820114, 35.148098, 24.094444>,  <36.952381, 35.519924, 24.029247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820114, 35.148098, 24.094444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281905, 0.262109, 0.922946,
		-0.900661, 0.259237, -0.348719,
		-0.330664, -0.929567, 0.162991,
		36.720917, 34.869228, 24.143341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425621, 35.556072, 24.483099>,  <36.952381, 35.519924, 24.029247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425621, 35.556072, 24.483099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468616, 35.159267, 24.509480>,  <36.494415, 34.921185, 24.525307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468616, 35.159267, 24.509480>,  <36.425621, 35.556072, 24.483099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468616, 35.159267, 24.509480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401578, 0.017360, 0.915660,
		-0.909495, -0.124908, -0.396506,
		0.107490, -0.992016, 0.065949,
		36.500862, 34.861664, 24.529264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742718, 35.215519, 24.771585>,  <36.425621, 35.556072, 24.483099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742718, 35.215519, 24.771585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042030, 34.959270, 24.840498>,  <36.221619, 34.805523, 24.881845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042030, 34.959270, 24.840498>,  <35.742718, 35.215519, 24.771585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042030, 34.959270, 24.840498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144348, 0.096242, 0.984836,
		-0.647485, -0.761804, -0.020456,
		0.748282, -0.640619, 0.172280,
		36.266514, 34.767086, 24.892181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479309, 34.826820, 25.276318>,  <35.742718, 35.215519, 24.771585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479309, 34.826820, 25.276318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879196, 34.817310, 25.276817>,  <36.119129, 34.811604, 25.277117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879196, 34.817310, 25.276817>,  <35.479309, 34.826820, 25.276318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879196, 34.817310, 25.276817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001450, -0.008379, 0.999964,
		-0.023783, -0.999682, -0.008411,
		0.999716, -0.023795, 0.001250,
		36.179111, 34.810177, 25.277193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594685, 34.441074, 25.877747>,  <35.479309, 34.826820, 25.276318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594685, 34.441074, 25.877747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958302, 34.587208, 25.797581>,  <36.176472, 34.674889, 25.749481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958302, 34.587208, 25.797581>,  <35.594685, 34.441074, 25.877747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958302, 34.587208, 25.797581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228945, -0.036027, 0.972772,
		0.348165, -0.930180, -0.116391,
		0.909046, 0.365332, -0.200417,
		36.231014, 34.696808, 25.737455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145859, 33.987644, 26.187452>,  <35.594685, 34.441074, 25.877747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145859, 33.987644, 26.187452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229443, 34.376923, 26.149040>,  <36.279594, 34.610489, 26.125994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229443, 34.376923, 26.149040>,  <36.145859, 33.987644, 26.187452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229443, 34.376923, 26.149040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038802, 0.089867, 0.995198,
		0.977154, -0.211684, -0.018983,
		0.208961, 0.973198, -0.096028,
		36.292130, 34.668880, 26.120232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576283, 34.147816, 26.704460>,  <36.145859, 33.987644, 26.187452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576283, 34.147816, 26.704460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458054, 34.509995, 26.582603>,  <36.387115, 34.727303, 26.509489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458054, 34.509995, 26.582603>,  <36.576283, 34.147816, 26.704460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458054, 34.509995, 26.582603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027009, 0.310840, 0.950078,
		0.954938, 0.289048, -0.067422,
		-0.295575, 0.905444, -0.304640,
		36.369381, 34.781628, 26.491211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818035, 34.517868, 27.266638>,  <36.576283, 34.147816, 26.704460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818035, 34.517868, 27.266638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614494, 34.798042, 27.066454>,  <36.492371, 34.966148, 26.946344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614494, 34.798042, 27.066454>,  <36.818035, 34.517868, 27.266638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614494, 34.798042, 27.066454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066317, 0.547729, 0.834023,
		0.858295, 0.457585, -0.232263,
		-0.508854, 0.700435, -0.500459,
		36.461838, 35.008171, 26.916317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084236, 35.187054, 27.582294>,  <36.818035, 34.517868, 27.266638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084236, 35.187054, 27.582294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734596, 35.270912, 27.407022>,  <36.524815, 35.321228, 27.301859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734596, 35.270912, 27.407022>,  <37.084236, 35.187054, 27.582294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734596, 35.270912, 27.407022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267590, 0.545029, 0.794569,
		0.405401, 0.811783, -0.420308,
		-0.874097, 0.209649, -0.438180,
		36.472366, 35.333805, 27.275568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962746, 35.840134, 27.471603>,  <37.084236, 35.187054, 27.582294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962746, 35.840134, 27.471603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585228, 35.711918, 27.503845>,  <36.358715, 35.634987, 27.523191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585228, 35.711918, 27.503845>,  <36.962746, 35.840134, 27.471603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585228, 35.711918, 27.503845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121730, 0.563838, 0.816865,
		-0.307288, 0.761144, -0.571169,
		-0.943799, -0.320541, 0.080606,
		36.302090, 35.615757, 27.528027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562702, 36.409992, 27.613342>,  <36.962746, 35.840134, 27.471603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562702, 36.409992, 27.613342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315514, 36.110706, 27.709915>,  <36.167202, 35.931133, 27.767859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315514, 36.110706, 27.709915>,  <36.562702, 36.409992, 27.613342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315514, 36.110706, 27.709915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114313, 0.389334, 0.913976,
		-0.777849, 0.537208, -0.326126,
		-0.617967, -0.748216, 0.241433,
		36.130123, 35.886242, 27.782345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266106, 36.695427, 28.208427>,  <36.562702, 36.409992, 27.613342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266106, 36.695427, 28.208427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145233, 36.314426, 28.223564>,  <36.072708, 36.085827, 28.232647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145233, 36.314426, 28.223564>,  <36.266106, 36.695427, 28.208427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145233, 36.314426, 28.223564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245614, 0.116156, 0.962383,
		-0.921065, 0.281519, -0.269048,
		-0.302181, -0.952499, 0.037842,
		36.054581, 36.028675, 28.234917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551991, 36.694443, 28.347750>,  <36.266106, 36.695427, 28.208427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551991, 36.694443, 28.347750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724892, 36.358147, 28.478167>,  <35.828632, 36.156368, 28.556417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724892, 36.358147, 28.478167>,  <35.551991, 36.694443, 28.347750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724892, 36.358147, 28.478167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411472, 0.137834, 0.900940,
		-0.802400, -0.523594, -0.286363,
		0.432256, -0.840745, 0.326042,
		35.854568, 36.105923, 28.575979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068062, 36.442532, 28.826359>,  <35.551991, 36.694443, 28.347750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068062, 36.442532, 28.826359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390465, 36.220329, 28.908106>,  <35.583908, 36.087006, 28.957153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390465, 36.220329, 28.908106>,  <35.068062, 36.442532, 28.826359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390465, 36.220329, 28.908106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122621, 0.181074, 0.975795,
		-0.579068, -0.811556, 0.077830,
		0.806006, -0.555508, 0.204368,
		35.632267, 36.053677, 28.969416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828297, 35.898155, 29.374630>,  <35.068062, 36.442532, 28.826359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828297, 35.898155, 29.374630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227531, 35.908451, 29.397139>,  <35.467072, 35.914627, 29.410645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227531, 35.908451, 29.397139>,  <34.828297, 35.898155, 29.374630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227531, 35.908451, 29.397139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055909, -0.014640, 0.998329,
		0.026527, -0.999561, -0.013172,
		0.998083, 0.025746, 0.056273,
		35.526955, 35.916172, 29.414021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121510, 35.243774, 29.696178>,  <34.828297, 35.898155, 29.374630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121510, 35.243774, 29.696178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398121, 35.526073, 29.757761>,  <35.564087, 35.695454, 29.794710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398121, 35.526073, 29.757761>,  <35.121510, 35.243774, 29.696178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398121, 35.526073, 29.757761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099185, -0.118344, 0.988007,
		0.715505, -0.698507, -0.011838,
		0.691531, 0.705749, 0.153957,
		35.605579, 35.737797, 29.803947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471992, 35.044899, 30.279381>,  <35.121510, 35.243774, 29.696178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471992, 35.044899, 30.279381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606335, 35.421204, 30.260769>,  <35.686939, 35.646988, 30.249601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606335, 35.421204, 30.260769>,  <35.471992, 35.044899, 30.279381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606335, 35.421204, 30.260769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065719, 0.025874, 0.997502,
		0.939617, -0.338077, -0.053136,
		0.335858, 0.940762, -0.046529,
		35.707092, 35.703434, 30.246811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989906, 35.054035, 30.809423>,  <35.471992, 35.044899, 30.279381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989906, 35.054035, 30.809423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886002, 35.436409, 30.754707>,  <35.823658, 35.665833, 30.721878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886002, 35.436409, 30.754707>,  <35.989906, 35.054035, 30.809423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886002, 35.436409, 30.754707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177644, 0.186540, 0.966253,
		0.949192, 0.226697, -0.218273,
		-0.259764, 0.955935, -0.136791,
		35.808071, 35.723190, 30.713671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523949, 35.452637, 31.024448>,  <35.989906, 35.054035, 30.809423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523949, 35.452637, 31.024448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212437, 35.702541, 31.046989>,  <36.025528, 35.852482, 31.060514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212437, 35.702541, 31.046989>,  <36.523949, 35.452637, 31.024448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212437, 35.702541, 31.046989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336437, 0.340172, 0.878119,
		0.529443, 0.702822, -0.475112,
		-0.778782, 0.624759, 0.056354,
		35.978802, 35.889969, 31.063896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779613, 36.173790, 30.894974>,  <36.523949, 35.452637, 31.024448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779613, 36.173790, 30.894974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078964, 35.988865, 31.085215>,  <37.258575, 35.877911, 31.199358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078964, 35.988865, 31.085215>,  <36.779613, 36.173790, 30.894974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078964, 35.988865, 31.085215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620445, 0.234470, -0.748380,
		0.234470, 0.855157, 0.462311,
		0.748380, -0.462311, 0.475601,
		37.303478, 35.850170, 31.227896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296165, 36.524063, 30.668627>,  <36.779613, 36.173790, 30.894974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296165, 36.524063, 30.668627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471127, 36.199135, 30.822931>,  <37.576103, 36.004177, 30.915514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471127, 36.199135, 30.822931>,  <37.296165, 36.524063, 30.668627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471127, 36.199135, 30.822931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752534, 0.095800, -0.651548,
		0.492311, 0.575288, 0.653203,
		0.437405, -0.812321, 0.385760,
		37.602348, 35.955437, 30.938660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972809, 36.587967, 30.549917>,  <37.296165, 36.524063, 30.668627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972809, 36.587967, 30.549917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984390, 36.198303, 30.639511>,  <37.991341, 35.964504, 30.693268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984390, 36.198303, 30.639511>,  <37.972809, 36.587967, 30.549917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984390, 36.198303, 30.639511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770004, -0.121145, -0.626433,
		0.637382, 0.190609, 0.746601,
		0.028956, -0.974162, 0.223985,
		37.993076, 35.906055, 30.706707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645142, 36.469528, 30.288006>,  <37.972809, 36.587967, 30.549917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645142, 36.469528, 30.288006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445213, 36.126667, 30.337759>,  <38.325256, 35.920952, 30.367611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445213, 36.126667, 30.337759>,  <38.645142, 36.469528, 30.288006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445213, 36.126667, 30.337759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530419, -0.416449, -0.738394,
		0.684715, -0.303090, 0.662799,
		-0.499822, -0.857150, 0.124385,
		38.295265, 35.869522, 30.375074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120201, 35.906025, 30.248737>,  <38.645142, 36.469528, 30.288006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120201, 35.906025, 30.248737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754993, 35.767475, 30.162554>,  <38.535870, 35.684345, 30.110844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754993, 35.767475, 30.162554>,  <39.120201, 35.906025, 30.248737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754993, 35.767475, 30.162554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358951, -0.431285, -0.827736,
		0.193781, -0.833078, 0.518102,
		-0.913019, -0.346373, -0.215459,
		38.481087, 35.663563, 30.097916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244118, 35.200100, 30.043474>,  <39.120201, 35.906025, 30.248737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244118, 35.200100, 30.043474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896526, 35.322247, 29.887718>,  <38.687969, 35.395535, 29.794266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896526, 35.322247, 29.887718>,  <39.244118, 35.200100, 30.043474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896526, 35.322247, 29.887718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294291, -0.313701, -0.902765,
		-0.397824, -0.899079, 0.182734,
		-0.868982, 0.305365, -0.389389,
		38.635830, 35.413857, 29.770901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953033, 34.621044, 29.840792>,  <39.244118, 35.200100, 30.043474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953033, 34.621044, 29.840792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774651, 34.917728, 29.640396>,  <38.667622, 35.095737, 29.520159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774651, 34.917728, 29.640396>,  <38.953033, 34.621044, 29.840792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774651, 34.917728, 29.640396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232183, -0.444703, -0.865061,
		-0.864415, -0.502102, 0.026107,
		-0.445958, 0.741709, -0.500987,
		38.640862, 35.140240, 29.490101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535488, 34.305828, 29.409487>,  <38.953033, 34.621044, 29.840792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535488, 34.305828, 29.409487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579716, 34.661045, 29.230980>,  <38.606255, 34.874176, 29.123875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579716, 34.661045, 29.230980>,  <38.535488, 34.305828, 29.409487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579716, 34.661045, 29.230980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196716, -0.459695, -0.866016,
		-0.974205, 0.007970, -0.225522,
		0.110574, 0.888041, -0.446269,
		38.612888, 34.927456, 29.097099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083321, 34.202477, 28.855774>,  <38.535488, 34.305828, 29.409487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083321, 34.202477, 28.855774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332397, 34.501087, 28.762001>,  <38.481842, 34.680252, 28.705738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332397, 34.501087, 28.762001>,  <38.083321, 34.202477, 28.855774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332397, 34.501087, 28.762001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005704, -0.295266, -0.955398,
		-0.782447, 0.596255, -0.179601,
		0.622691, 0.746524, -0.234431,
		38.519203, 34.725044, 28.691671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794373, 34.689209, 28.307692>,  <38.083321, 34.202477, 28.855774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794373, 34.689209, 28.307692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192837, 34.688980, 28.272673>,  <38.431915, 34.688843, 28.251661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192837, 34.688980, 28.272673>,  <37.794373, 34.689209, 28.307692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192837, 34.688980, 28.272673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087245, -0.089797, -0.992131,
		-0.007291, 0.995960, -0.089502,
		0.996160, -0.000575, -0.087548,
		38.491684, 34.688808, 28.246408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844868, 35.042866, 27.697783>,  <37.794373, 34.689209, 28.307692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844868, 35.042866, 27.697783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214973, 34.900074, 27.749094>,  <38.437035, 34.814400, 27.779881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214973, 34.900074, 27.749094>,  <37.844868, 35.042866, 27.697783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214973, 34.900074, 27.749094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104217, -0.085932, -0.990835,
		0.364732, 0.930151, -0.042306,
		0.925262, -0.356980, 0.128279,
		38.492554, 34.792980, 27.787579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191929, 35.375446, 27.256834>,  <37.844868, 35.042866, 27.697783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191929, 35.375446, 27.256834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427238, 35.058372, 27.320824>,  <38.568424, 34.868130, 27.359217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427238, 35.058372, 27.320824>,  <38.191929, 35.375446, 27.256834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427238, 35.058372, 27.320824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138713, -0.095980, -0.985671,
		0.796679, 0.602031, 0.053493,
		0.588270, -0.792683, 0.159975,
		38.603718, 34.820568, 27.368816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771008, 35.516266, 26.871067>,  <38.191929, 35.375446, 27.256834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771008, 35.516266, 26.871067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782547, 35.122738, 26.941792>,  <38.789471, 34.886620, 26.984226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782547, 35.122738, 26.941792>,  <38.771008, 35.516266, 26.871067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782547, 35.122738, 26.941792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244231, -0.164586, -0.955648,
		0.969288, 0.070751, 0.235531,
		0.028848, -0.983822, 0.176811,
		38.791203, 34.827591, 26.994835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329453, 35.302258, 26.503853>,  <38.771008, 35.516266, 26.871067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329453, 35.302258, 26.503853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134003, 34.962025, 26.581581>,  <39.016731, 34.757885, 26.628218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134003, 34.962025, 26.581581>,  <39.329453, 35.302258, 26.503853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134003, 34.962025, 26.581581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298388, -0.372197, -0.878882,
		0.819884, -0.371462, 0.435668,
		-0.488626, -0.850579, 0.194319,
		38.987415, 34.706852, 26.639877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760868, 34.757278, 26.306763>,  <39.329453, 35.302258, 26.503853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760868, 34.757278, 26.306763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430653, 34.531898, 26.319494>,  <39.232525, 34.396671, 26.327133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430653, 34.531898, 26.319494>,  <39.760868, 34.757278, 26.306763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430653, 34.531898, 26.319494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198975, -0.343375, -0.917879,
		0.528112, -0.751408, 0.395581,
		-0.825534, -0.563454, 0.031829,
		39.182991, 34.362862, 26.329042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891529, 34.028290, 26.150064>,  <39.760868, 34.757278, 26.306763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891529, 34.028290, 26.150064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507584, 34.073025, 26.047180>,  <39.277218, 34.099865, 25.985449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507584, 34.073025, 26.047180>,  <39.891529, 34.028290, 26.150064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507584, 34.073025, 26.047180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153098, -0.559474, -0.814586,
		-0.235000, -0.821269, 0.519896,
		-0.959862, 0.111833, -0.257211,
		39.219624, 34.106575, 25.970016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639954, 33.367626, 25.821081>,  <39.891529, 34.028290, 26.150064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639954, 33.367626, 25.821081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366226, 33.643734, 25.727074>,  <39.201992, 33.809399, 25.670670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366226, 33.643734, 25.727074>,  <39.639954, 33.367626, 25.821081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366226, 33.643734, 25.727074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172222, -0.466186, -0.867762,
		-0.708556, -0.553348, 0.437898,
		-0.684316, 0.690274, -0.235020,
		39.160931, 33.850815, 25.656569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972996, 33.043587, 25.665045>,  <39.639954, 33.367626, 25.821081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972996, 33.043587, 25.665045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012367, 33.389034, 25.467270>,  <39.035992, 33.596302, 25.348604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012367, 33.389034, 25.467270>,  <38.972996, 33.043587, 25.665045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012367, 33.389034, 25.467270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106446, -0.484863, -0.868089,
		-0.989435, 0.138076, 0.044205,
		0.098429, 0.863622, -0.494437,
		39.041897, 33.648121, 25.318939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408703, 33.062569, 25.130615>,  <38.972996, 33.043587, 25.665045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408703, 33.062569, 25.130615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668770, 33.340866, 25.008492>,  <38.824810, 33.507847, 24.935217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668770, 33.340866, 25.008492>,  <38.408703, 33.062569, 25.130615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668770, 33.340866, 25.008492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097565, -0.474960, -0.874582,
		-0.753499, 0.538839, -0.376685,
		0.650169, 0.695748, -0.305310,
		38.863819, 33.549591, 24.916899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231079, 33.150517, 24.430819>,  <38.408703, 33.062569, 25.130615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231079, 33.150517, 24.430819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589226, 33.322392, 24.477631>,  <38.804111, 33.425514, 24.505718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589226, 33.322392, 24.477631>,  <38.231079, 33.150517, 24.430819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589226, 33.322392, 24.477631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256822, -0.283508, -0.923940,
		-0.363825, 0.857318, -0.364195,
		0.895362, 0.429685, 0.117031,
		38.857834, 33.451298, 24.512739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381313, 33.657875, 23.892574>,  <38.231079, 33.150517, 24.430819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381313, 33.657875, 23.892574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734459, 33.514378, 24.013798>,  <38.946346, 33.428280, 24.086533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734459, 33.514378, 24.013798>,  <38.381313, 33.657875, 23.892574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734459, 33.514378, 24.013798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171227, -0.355006, -0.919050,
		0.437292, 0.863292, -0.251997,
		0.882869, -0.358744, 0.303060,
		38.999321, 33.406754, 24.104715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962902, 33.961441, 23.481331>,  <38.381313, 33.657875, 23.892574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962902, 33.961441, 23.481331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034027, 33.591469, 23.615723>,  <39.076702, 33.369484, 23.696358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034027, 33.591469, 23.615723>,  <38.962902, 33.961441, 23.481331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034027, 33.591469, 23.615723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213503, -0.297029, -0.930693,
		0.960624, 0.237223, 0.144660,
		0.177813, -0.924932, 0.335981,
		39.087372, 33.313988, 23.716516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650703, 33.701603, 23.264320>,  <38.962902, 33.961441, 23.481331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650703, 33.701603, 23.264320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430347, 33.373962, 23.328316>,  <39.298134, 33.177380, 23.366713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430347, 33.373962, 23.328316>,  <39.650703, 33.701603, 23.264320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430347, 33.373962, 23.328316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233804, -0.335493, -0.912568,
		0.801160, -0.465316, 0.376328,
		-0.550888, -0.819100, 0.159991,
		39.265079, 33.128231, 23.376312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979172, 33.098484, 22.978605>,  <39.650703, 33.701603, 23.264320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979172, 33.098484, 22.978605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602695, 32.963398, 22.982689>,  <39.376808, 32.882347, 22.985140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602695, 32.963398, 22.982689>,  <39.979172, 33.098484, 22.978605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602695, 32.963398, 22.982689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151852, -0.449815, -0.880118,
		0.301818, -0.826812, 0.474645,
		-0.941194, -0.337711, 0.010209,
		39.320335, 32.862083, 22.985752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041790, 32.509964, 22.608919>,  <39.979172, 33.098484, 22.978605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041790, 32.509964, 22.608919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642937, 32.538315, 22.619446>,  <39.403625, 32.555325, 22.625761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642937, 32.538315, 22.619446>,  <40.041790, 32.509964, 22.608919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642937, 32.538315, 22.619446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049205, -0.344080, -0.937650,
		-0.057404, -0.936262, 0.346582,
		-0.997138, 0.070878, 0.026318,
		39.343796, 32.559578, 22.627340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864632, 31.952293, 22.407167>,  <40.041790, 32.509964, 22.608919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864632, 31.952293, 22.407167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527660, 32.157990, 22.342825>,  <39.325478, 32.281406, 22.304220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527660, 32.157990, 22.342825>,  <39.864632, 31.952293, 22.407167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527660, 32.157990, 22.342825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176284, -0.545155, -0.819591,
		-0.509154, -0.662092, 0.549906,
		-0.842429, 0.514238, -0.160852,
		39.274933, 32.312263, 22.294569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370739, 31.442497, 22.197298>,  <39.864632, 31.952293, 22.407167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370739, 31.442497, 22.197298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238506, 31.791025, 22.052238>,  <39.159164, 32.000141, 21.965202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238506, 31.791025, 22.052238>,  <39.370739, 31.442497, 22.197298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238506, 31.791025, 22.052238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180428, -0.435515, -0.881914,
		-0.926369, -0.226116, 0.301186,
		-0.330586, 0.871320, -0.362650,
		39.139332, 32.052422, 21.943443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743954, 31.350027, 21.884342>,  <39.370739, 31.442497, 22.197298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743954, 31.350027, 21.884342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874733, 31.688356, 21.715731>,  <38.953201, 31.891354, 21.614563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874733, 31.688356, 21.715731>,  <38.743954, 31.350027, 21.884342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874733, 31.688356, 21.715731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148694, -0.394447, -0.906809,
		-0.933273, 0.359154, -0.003193,
		0.326944, 0.845825, -0.421530,
		38.972816, 31.942104, 21.589272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321217, 31.413225, 21.356277>,  <38.743954, 31.350027, 21.884342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321217, 31.413225, 21.356277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641930, 31.635633, 21.268660>,  <38.834358, 31.769077, 21.216089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641930, 31.635633, 21.268660>,  <38.321217, 31.413225, 21.356277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641930, 31.635633, 21.268660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020054, -0.391364, -0.920017,
		-0.597275, 0.733264, -0.324941,
		0.801786, 0.556020, -0.219047,
		38.882465, 31.802439, 21.202946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122837, 31.618235, 20.704388>,  <38.321217, 31.413225, 21.356277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122837, 31.618235, 20.704388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517960, 31.670826, 20.737743>,  <38.755032, 31.702381, 20.757757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517960, 31.670826, 20.737743>,  <38.122837, 31.618235, 20.704388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517960, 31.670826, 20.737743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132887, -0.432935, -0.891576,
		-0.081121, 0.891785, -0.445127,
		0.987806, 0.131477, 0.083387,
		38.814301, 31.710270, 20.762760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303631, 31.896206, 20.074371>,  <38.122837, 31.618235, 20.704388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303631, 31.896206, 20.074371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656746, 31.761166, 20.205036>,  <38.868614, 31.680141, 20.283434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656746, 31.761166, 20.205036>,  <38.303631, 31.896206, 20.074371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656746, 31.761166, 20.205036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187569, -0.384220, -0.903987,
		0.430695, 0.859303, -0.275863,
		0.882791, -0.337599, 0.326660,
		38.921585, 31.659885, 20.303034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720528, 31.971058, 19.560213>,  <38.303631, 31.896206, 20.074371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720528, 31.971058, 19.560213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963573, 31.730335, 19.767532>,  <39.109402, 31.585901, 19.891924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963573, 31.730335, 19.767532>,  <38.720528, 31.971058, 19.560213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963573, 31.730335, 19.767532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224938, -0.495464, -0.838998,
		0.761714, 0.626372, -0.165681,
		0.607614, -0.601809, 0.518297,
		39.145859, 31.549793, 19.923021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427223, 32.006554, 19.194080>,  <38.720528, 31.971058, 19.560213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427223, 32.006554, 19.194080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416401, 31.662046, 19.397049>,  <39.409908, 31.455341, 19.518831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416401, 31.662046, 19.397049>,  <39.427223, 32.006554, 19.194080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416401, 31.662046, 19.397049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366517, -0.480805, -0.796550,
		0.930018, 0.164431, 0.328678,
		-0.027053, -0.861272, 0.507424,
		39.408283, 31.403666, 19.549276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178333, 31.785009, 19.212559>,  <39.427223, 32.006554, 19.194080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178333, 31.785009, 19.212559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936413, 31.474417, 19.283319>,  <39.791260, 31.288061, 19.325775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936413, 31.474417, 19.283319>,  <40.178333, 31.785009, 19.212559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936413, 31.474417, 19.283319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446511, -0.514557, -0.732024,
		0.659429, -0.363739, 0.657911,
		-0.604798, -0.776482, 0.176901,
		39.754974, 31.241472, 19.336390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530720, 31.114191, 19.367289>,  <40.178333, 31.785009, 19.212559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530720, 31.114191, 19.367289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161533, 31.027216, 19.240259>,  <39.940022, 30.975031, 19.164042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161533, 31.027216, 19.240259>,  <40.530720, 31.114191, 19.367289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161533, 31.027216, 19.240259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380233, -0.642958, -0.664852,
		-0.059621, -0.734388, 0.676106,
		-0.922967, -0.217439, -0.317573,
		39.884644, 30.961985, 19.144987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769886, 30.482893, 19.049074>,  <40.530720, 31.114191, 19.367289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769886, 30.482893, 19.049074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389687, 30.546833, 18.942488>,  <40.161568, 30.585197, 18.878536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389687, 30.546833, 18.942488>,  <40.769886, 30.482893, 19.049074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389687, 30.546833, 18.942488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112663, -0.621900, -0.774950,
		-0.289590, -0.766608, 0.573105,
		-0.950497, 0.159850, -0.266465,
		40.104538, 30.594788, 18.862549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470749, 29.837761, 18.978178>,  <40.769886, 30.482893, 19.049074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470749, 29.837761, 18.978178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229443, 30.067728, 18.757072>,  <40.084660, 30.205708, 18.624409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229443, 30.067728, 18.757072>,  <40.470749, 29.837761, 18.978178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229443, 30.067728, 18.757072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136520, -0.608415, -0.781789,
		-0.785772, -0.547087, 0.288546,
		-0.603262, 0.574916, -0.552763,
		40.048466, 30.240202, 18.591244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291317, 29.412525, 18.585367>,  <40.470749, 29.837761, 18.978178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291317, 29.412525, 18.585367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202564, 29.750593, 18.390860>,  <40.149311, 29.953434, 18.274155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202564, 29.750593, 18.390860>,  <40.291317, 29.412525, 18.585367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202564, 29.750593, 18.390860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274201, -0.424492, -0.862914,
		-0.935726, -0.324800, -0.137559,
		-0.221881, 0.845170, -0.486269,
		40.136002, 30.004145, 18.244980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531010, 28.690403, 18.760159>,  <40.291317, 29.412525, 18.585367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531010, 28.690403, 18.760159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859051, 28.463062, 18.786726>,  <41.055874, 28.326658, 18.802668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859051, 28.463062, 18.786726>,  <40.531010, 28.690403, 18.760159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859051, 28.463062, 18.786726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000253, 0.116433, 0.993199,
		-0.572221, -0.814505, 0.095630,
		0.820099, -0.568353, 0.066420,
		41.105080, 28.292557, 18.806652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441608, 28.227179, 19.399521>,  <40.531010, 28.690403, 18.760159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441608, 28.227179, 19.399521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828846, 28.266216, 19.307203>,  <41.061188, 28.289639, 19.251814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828846, 28.266216, 19.307203>,  <40.441608, 28.227179, 19.399521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828846, 28.266216, 19.307203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221370, 0.098453, 0.970207,
		0.117416, -0.990344, 0.073706,
		0.968095, 0.097602, -0.230792,
		41.119274, 28.295494, 19.237967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771797, 27.745049, 19.823977>,  <40.441608, 28.227179, 19.399521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771797, 27.745049, 19.823977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044189, 28.026379, 19.742393>,  <41.207626, 28.195177, 19.693443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044189, 28.026379, 19.742393>,  <40.771797, 27.745049, 19.823977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044189, 28.026379, 19.742393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235168, 0.053728, 0.970469,
		0.693512, -0.708836, -0.128812,
		0.680983, 0.703324, -0.203957,
		41.248486, 28.237375, 19.681206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265278, 27.505426, 20.224936>,  <40.771797, 27.745049, 19.823977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265278, 27.505426, 20.224936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357357, 27.885120, 20.139183>,  <41.412605, 28.112938, 20.087732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357357, 27.885120, 20.139183>,  <41.265278, 27.505426, 20.224936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357357, 27.885120, 20.139183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218399, 0.164283, 0.961932,
		0.948319, -0.268259, -0.169494,
		0.230201, 0.949236, -0.214380,
		41.426418, 28.169891, 20.074869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826019, 27.704630, 20.598654>,  <41.265278, 27.505426, 20.224936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826019, 27.704630, 20.598654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695244, 28.071569, 20.507809>,  <41.616779, 28.291733, 20.453302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695244, 28.071569, 20.507809>,  <41.826019, 27.704630, 20.598654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695244, 28.071569, 20.507809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201555, 0.302472, 0.931604,
		0.923302, 0.258801, -0.283787,
		-0.326938, 0.917351, -0.227110,
		41.597164, 28.346775, 20.439676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326275, 28.232040, 20.848915>,  <41.826019, 27.704630, 20.598654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326275, 28.232040, 20.848915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976818, 28.422606, 20.809362>,  <41.767143, 28.536943, 20.785631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976818, 28.422606, 20.809362>,  <42.326275, 28.232040, 20.848915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976818, 28.422606, 20.809362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063436, 0.313014, 0.947627,
		0.482411, 0.821617, -0.303685,
		-0.873645, 0.476410, -0.098881,
		41.714725, 28.565529, 20.779697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403740, 28.903126, 21.216825>,  <42.326275, 28.232040, 20.848915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403740, 28.903126, 21.216825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008247, 28.865522, 21.170238>,  <41.770950, 28.842960, 21.142286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008247, 28.865522, 21.170238>,  <42.403740, 28.903126, 21.216825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008247, 28.865522, 21.170238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146400, 0.445518, 0.883222,
		-0.031141, 0.890324, -0.454262,
		-0.988735, -0.094009, -0.116469,
		41.711628, 28.837320, 21.135298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181110, 29.535013, 21.481499>,  <42.403740, 28.903126, 21.216825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181110, 29.535013, 21.481499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864410, 29.290815, 21.473263>,  <41.674389, 29.144297, 21.468321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864410, 29.290815, 21.473263>,  <42.181110, 29.535013, 21.481499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864410, 29.290815, 21.473263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212766, 0.244028, 0.946140,
		-0.572589, 0.753489, -0.323102,
		-0.791753, -0.610495, -0.020589,
		41.626884, 29.107666, 21.467087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651386, 29.946377, 21.685886>,  <42.181110, 29.535013, 21.481499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651386, 29.946377, 21.685886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488792, 29.587421, 21.754547>,  <41.391235, 29.372047, 21.795744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488792, 29.587421, 21.754547>,  <41.651386, 29.946377, 21.685886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488792, 29.587421, 21.754547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389983, 0.340311, 0.855629,
		-0.826249, 0.280855, -0.488296,
		-0.406480, -0.897390, 0.171653,
		41.366848, 29.318205, 21.806044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967709, 30.066380, 21.799532>,  <41.651386, 29.946377, 21.685886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967709, 30.066380, 21.799532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065411, 29.715904, 21.965729>,  <41.124031, 29.505619, 22.065447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065411, 29.715904, 21.965729>,  <40.967709, 30.066380, 21.799532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065411, 29.715904, 21.965729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263326, 0.352438, 0.898024,
		-0.933272, -0.328760, -0.144637,
		0.244259, -0.876188, 0.415492,
		41.138687, 29.453049, 22.090376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438385, 29.917986, 22.221725>,  <40.967709, 30.066380, 21.799532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438385, 29.917986, 22.221725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728531, 29.695305, 22.383677>,  <40.902618, 29.561695, 22.480848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728531, 29.695305, 22.383677>,  <40.438385, 29.917986, 22.221725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728531, 29.695305, 22.383677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207489, 0.383997, 0.899719,
		-0.656350, -0.736632, 0.163027,
		0.725364, -0.556705, 0.404880,
		40.946140, 29.528294, 22.505140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074413, 29.552273, 22.685720>,  <40.438385, 29.917986, 22.221725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074413, 29.552273, 22.685720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460804, 29.536671, 22.787989>,  <40.692638, 29.527309, 22.849350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460804, 29.536671, 22.787989>,  <40.074413, 29.552273, 22.685720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460804, 29.536671, 22.787989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220833, 0.390137, 0.893883,
		-0.134614, -0.919930, 0.368249,
		0.965977, -0.039007, 0.255669,
		40.750599, 29.524969, 22.864689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049839, 29.393940, 23.357586>,  <40.074413, 29.552273, 22.685720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049839, 29.393940, 23.357586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414288, 29.549786, 23.303843>,  <40.632957, 29.643293, 23.271597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414288, 29.549786, 23.303843>,  <40.049839, 29.393940, 23.357586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414288, 29.549786, 23.303843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128687, 0.578659, 0.805353,
		0.391524, -0.716487, 0.577369,
		0.911125, 0.389615, -0.134357,
		40.687626, 29.666670, 23.263535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392994, 29.379126, 23.986546>,  <40.049839, 29.393940, 23.357586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392994, 29.379126, 23.986546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619637, 29.648544, 23.796688>,  <40.755623, 29.810196, 23.682774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619637, 29.648544, 23.796688>,  <40.392994, 29.379126, 23.986546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619637, 29.648544, 23.796688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036754, 0.596119, 0.802054,
		0.823166, -0.437006, 0.362523,
		0.566610, 0.673548, -0.474644,
		40.789619, 29.850609, 23.654295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069630, 29.492029, 24.398279>,  <40.392994, 29.379126, 23.986546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069630, 29.492029, 24.398279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969654, 29.809307, 24.176155>,  <40.909668, 29.999674, 24.042881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969654, 29.809307, 24.176155>,  <41.069630, 29.492029, 24.398279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969654, 29.809307, 24.176155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008794, 0.571628, 0.820465,
		0.968221, 0.209951, -0.135897,
		-0.249940, 0.793197, -0.555309,
		40.894672, 30.047266, 24.009562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231941, 29.984993, 24.825708>,  <41.069630, 29.492029, 24.398279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231941, 29.984993, 24.825708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033360, 30.193605, 24.548138>,  <40.914211, 30.318773, 24.381596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033360, 30.193605, 24.548138>,  <41.231941, 29.984993, 24.825708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033360, 30.193605, 24.548138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122186, 0.749457, 0.650681,
		0.859419, 0.407823, -0.308349,
		-0.496457, 0.521532, -0.693928,
		40.884422, 30.350065, 24.339960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449318, 30.716747, 24.884895>,  <41.231941, 29.984993, 24.825708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449318, 30.716747, 24.884895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089382, 30.711874, 24.710474>,  <40.873421, 30.708950, 24.605822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089382, 30.711874, 24.710474>,  <41.449318, 30.716747, 24.884895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089382, 30.711874, 24.710474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354651, 0.602464, 0.715024,
		0.253995, 0.798053, -0.546441,
		-0.899838, -0.012183, -0.436054,
		40.819431, 30.708220, 24.579659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329643, 31.419542, 24.734144>,  <41.449318, 30.716747, 24.884895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329643, 31.419542, 24.734144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973392, 31.238293, 24.749392>,  <40.759640, 31.129543, 24.758539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973392, 31.238293, 24.749392>,  <41.329643, 31.419542, 24.734144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973392, 31.238293, 24.749392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276410, 0.606034, 0.745869,
		-0.361073, 0.653758, -0.665001,
		-0.890631, -0.453126, 0.038117,
		40.706203, 31.102354, 24.760826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924934, 31.968552, 24.877035>,  <41.329643, 31.419542, 24.734144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924934, 31.968552, 24.877035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691784, 31.655535, 24.964560>,  <40.551891, 31.467724, 25.017075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691784, 31.655535, 24.964560>,  <40.924934, 31.968552, 24.877035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691784, 31.655535, 24.964560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436226, 0.528556, 0.728241,
		-0.685534, 0.329026, -0.649450,
		-0.582880, -0.782541, 0.218813,
		40.516918, 31.420773, 25.030203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286808, 32.158337, 24.828781>,  <40.924934, 31.968552, 24.877035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286808, 32.158337, 24.828781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299545, 31.848345, 25.081253>,  <40.307186, 31.662350, 25.232737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299545, 31.848345, 25.081253>,  <40.286808, 32.158337, 24.828781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299545, 31.848345, 25.081253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409753, 0.565873, 0.715465,
		-0.911641, -0.281409, -0.299533,
		0.031840, -0.774981, 0.631181,
		40.309097, 31.615850, 25.270607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697861, 32.130650, 25.219751>,  <40.286808, 32.158337, 24.828781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697861, 32.130650, 25.219751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902515, 31.875479, 25.449976>,  <40.025307, 31.722376, 25.588112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902515, 31.875479, 25.449976>,  <39.697861, 32.130650, 25.219751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902515, 31.875479, 25.449976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291697, 0.501128, 0.814729,
		-0.808170, -0.584737, 0.070313,
		0.511638, -0.637930, 0.575563,
		40.056007, 31.684099, 25.622644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183487, 31.706787, 25.738176>,  <39.697861, 32.130650, 25.219751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183487, 31.706787, 25.738176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561398, 31.724520, 25.868053>,  <39.788143, 31.735159, 25.945980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561398, 31.724520, 25.868053>,  <39.183487, 31.706787, 25.738176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561398, 31.724520, 25.868053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285932, 0.595599, 0.750670,
		-0.160109, -0.802058, 0.575386,
		0.944779, 0.044332, 0.324694,
		39.844830, 31.737820, 25.965462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003666, 31.617367, 26.429031>,  <39.183487, 31.706787, 25.738176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003666, 31.617367, 26.429031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381477, 31.748331, 26.418682>,  <39.608166, 31.826910, 26.412472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381477, 31.748331, 26.418682>,  <39.003666, 31.617367, 26.429031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381477, 31.748331, 26.418682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063130, 0.258299, 0.964000,
		0.322309, -0.908891, 0.264640,
		0.944527, 0.327412, -0.025874,
		39.664837, 31.846554, 26.410919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240437, 31.333349, 27.049290>,  <39.003666, 31.617367, 26.429031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240437, 31.333349, 27.049290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499260, 31.617882, 26.939510>,  <39.654556, 31.788601, 26.873642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499260, 31.617882, 26.939510>,  <39.240437, 31.333349, 27.049290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499260, 31.617882, 26.939510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048416, 0.320901, 0.945875,
		0.760900, -0.625326, 0.173202,
		0.647060, 0.711330, -0.274449,
		39.693378, 31.831282, 26.857176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841072, 31.371761, 27.550402>,  <39.240437, 31.333349, 27.049290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841072, 31.371761, 27.550402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854549, 31.715462, 27.346226>,  <39.862637, 31.921682, 27.223721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854549, 31.715462, 27.346226>,  <39.841072, 31.371761, 27.550402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854549, 31.715462, 27.346226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039105, 0.509206, 0.859756,
		0.998667, -0.048931, -0.016443,
		0.033696, 0.859253, -0.510440,
		39.864658, 31.973238, 27.193094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250286, 31.711800, 27.999964>,  <39.841072, 31.371761, 27.550402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250286, 31.711800, 27.999964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079102, 31.987679, 27.766325>,  <39.976391, 32.153206, 27.626143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079102, 31.987679, 27.766325>,  <40.250286, 31.711800, 27.999964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079102, 31.987679, 27.766325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098791, 0.678094, 0.728306,
		0.898383, 0.253981, -0.358331,
		-0.427958, 0.689698, -0.584097,
		39.950714, 32.194588, 27.591095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652897, 32.278099, 27.661545>,  <40.250286, 31.711800, 27.999964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652897, 32.278099, 27.661545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284389, 32.401932, 27.755720>,  <40.063286, 32.476231, 27.812225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284389, 32.401932, 27.755720>,  <40.652897, 32.278099, 27.661545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284389, 32.401932, 27.755720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376162, 0.555350, 0.741679,
		0.098860, 0.771845, -0.628077,
		-0.921265, 0.309581, 0.235437,
		40.008011, 32.494804, 27.826351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761433, 32.774956, 28.155771>,  <40.652897, 32.278099, 27.661545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761433, 32.774956, 28.155771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370052, 32.740017, 28.230614>,  <40.135223, 32.719055, 28.275520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370052, 32.740017, 28.230614>,  <40.761433, 32.774956, 28.155771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370052, 32.740017, 28.230614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096316, 0.608468, 0.787712,
		-0.182652, 0.788757, -0.586941,
		-0.978449, -0.087345, 0.187108,
		40.076519, 32.713814, 28.286745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495644, 33.441765, 28.209089>,  <40.761433, 32.774956, 28.155771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495644, 33.441765, 28.209089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247372, 33.200630, 28.409628>,  <40.098408, 33.055950, 28.529951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247372, 33.200630, 28.409628>,  <40.495644, 33.441765, 28.209089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247372, 33.200630, 28.409628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000731, 0.638974, 0.769228,
		-0.784065, 0.477810, -0.396156,
		-0.620678, -0.602835, 0.501347,
		40.061169, 33.019779, 28.560032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101524, 33.928898, 28.554878>,  <40.495644, 33.441765, 28.209089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101524, 33.928898, 28.554878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039738, 33.580845, 28.742075>,  <40.002666, 33.372013, 28.854393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039738, 33.580845, 28.742075>,  <40.101524, 33.928898, 28.554878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039738, 33.580845, 28.742075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158416, 0.445733, 0.881037,
		-0.975215, 0.210229, 0.068991,
		-0.154468, -0.870130, 0.467989,
		39.993397, 33.319805, 28.882471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578590, 34.116268, 29.120466>,  <40.101524, 33.928898, 28.554878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578590, 34.116268, 29.120466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753891, 33.769966, 29.217133>,  <39.859070, 33.562183, 29.275133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753891, 33.769966, 29.217133>,  <39.578590, 34.116268, 29.120466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753891, 33.769966, 29.217133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020378, 0.278361, 0.960260,
		-0.898621, -0.415912, 0.139634,
		0.438252, -0.865755, 0.241666,
		39.885368, 33.510239, 29.289633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220291, 33.914543, 29.655750>,  <39.578590, 34.116268, 29.120466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220291, 33.914543, 29.655750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572346, 33.730461, 29.702337>,  <39.783581, 33.620010, 29.730289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572346, 33.730461, 29.702337>,  <39.220291, 33.914543, 29.655750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572346, 33.730461, 29.702337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070470, 0.369279, 0.926643,
		-0.469456, -0.807367, 0.357448,
		0.880139, -0.460208, 0.116465,
		39.836388, 33.592400, 29.737276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096748, 33.596130, 30.269167>,  <39.220291, 33.914543, 29.655750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096748, 33.596130, 30.269167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494446, 33.570736, 30.234657>,  <39.733067, 33.555500, 30.213951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494446, 33.570736, 30.234657>,  <39.096748, 33.596130, 30.269167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494446, 33.570736, 30.234657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094646, 0.143566, 0.985105,
		-0.050154, -0.987603, 0.148748,
		0.994247, -0.063485, -0.086273,
		39.792721, 33.551689, 30.208775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417767, 33.051338, 30.844683>,  <39.096748, 33.596130, 30.269167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417767, 33.051338, 30.844683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736637, 33.269432, 30.740961>,  <39.927959, 33.400288, 30.678728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736637, 33.269432, 30.740961>,  <39.417767, 33.051338, 30.844683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736637, 33.269432, 30.740961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309317, 0.000013, 0.950959,
		0.518495, -0.838286, -0.168639,
		0.797173, 0.545231, -0.259303,
		39.975788, 33.433002, 30.663170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992878, 32.760162, 31.144232>,  <39.417767, 33.051338, 30.844683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992878, 32.760162, 31.144232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122028, 33.132290, 31.074656>,  <40.199516, 33.355568, 31.032909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122028, 33.132290, 31.074656>,  <39.992878, 32.760162, 31.144232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122028, 33.132290, 31.074656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355651, 0.051051, 0.933224,
		0.877077, -0.363175, -0.314387,
		0.322874, 0.930321, -0.173940,
		40.218891, 33.411385, 31.022474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617775, 32.829880, 31.289013>,  <39.992878, 32.760162, 31.144232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617775, 32.829880, 31.289013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546719, 33.222260, 31.320457>,  <40.504086, 33.457687, 31.339323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546719, 33.222260, 31.320457>,  <40.617775, 32.829880, 31.289013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546719, 33.222260, 31.320457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435017, 0.006623, 0.900398,
		0.882725, 0.194145, -0.427907,
		-0.177641, 0.980951, 0.078610,
		40.493427, 33.516544, 31.344040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259117, 33.170959, 31.625238>,  <40.617775, 32.829880, 31.289013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259117, 33.170959, 31.625238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929035, 33.391151, 31.675840>,  <40.730984, 33.523266, 31.706202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929035, 33.391151, 31.675840>,  <41.259117, 33.170959, 31.625238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929035, 33.391151, 31.675840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195091, 0.067594, 0.978453,
		0.530070, 0.832106, -0.163172,
		-0.825207, 0.550482, 0.126507,
		40.681473, 33.556297, 31.713793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517990, 33.766285, 31.937927>,  <41.259117, 33.170959, 31.625238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517990, 33.766285, 31.937927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124077, 33.742435, 32.003212>,  <40.887730, 33.728127, 32.042381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124077, 33.742435, 32.003212>,  <41.517990, 33.766285, 31.937927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124077, 33.742435, 32.003212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169362, -0.119321, 0.978304,
		-0.038854, 0.991064, 0.127603,
		-0.984788, -0.059622, 0.163212,
		40.828640, 33.724548, 32.052177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361004, 34.274773, 32.441544>,  <41.517990, 33.766285, 31.937927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361004, 34.274773, 32.441544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056259, 34.015694, 32.444576>,  <40.873413, 33.860245, 32.446396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056259, 34.015694, 32.444576>,  <41.361004, 34.274773, 32.441544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056259, 34.015694, 32.444576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018251, -0.009764, 0.999786,
		-0.647486, 0.761834, 0.019260,
		-0.761859, -0.647699, 0.007582,
		40.827702, 33.821384, 32.446850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851650, 34.516743, 32.887291>,  <41.361004, 34.274773, 32.441544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851650, 34.516743, 32.887291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790039, 34.121914, 32.869587>,  <40.753071, 33.885017, 32.858963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790039, 34.121914, 32.869587>,  <40.851650, 34.516743, 32.887291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790039, 34.121914, 32.869587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013591, -0.046908, 0.998807,
		-0.987972, 0.153247, 0.020641,
		-0.154033, -0.987074, -0.044261,
		40.743828, 33.825790, 32.856308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268578, 34.280685, 33.311745>,  <40.851650, 34.516743, 32.887291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268578, 34.280685, 33.311745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530663, 33.978756, 33.299492>,  <40.687916, 33.797600, 33.292141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530663, 33.978756, 33.299492>,  <40.268578, 34.280685, 33.311745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530663, 33.978756, 33.299492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087283, -0.115912, 0.989417,
		-0.750382, -0.645609, -0.141831,
		0.655216, -0.754820, -0.030628,
		40.727226, 33.752312, 33.290302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959568, 33.779686, 33.694054>,  <40.268578, 34.280685, 33.311745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959568, 33.779686, 33.694054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353382, 33.710136, 33.685448>,  <40.589668, 33.668407, 33.680283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353382, 33.710136, 33.685448>,  <39.959568, 33.779686, 33.694054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353382, 33.710136, 33.685448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004749, -0.149266, 0.988786,
		-0.175143, -0.973388, -0.147783,
		0.984531, -0.173881, -0.021520,
		40.648743, 33.657974, 33.678993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039856, 33.195862, 34.063065>,  <39.959568, 33.779686, 33.694054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039856, 33.195862, 34.063065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407265, 33.353844, 34.055717>,  <40.627708, 33.448631, 34.051311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407265, 33.353844, 34.055717>,  <40.039856, 33.195862, 34.063065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407265, 33.353844, 34.055717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115929, -0.224620, 0.967526,
		0.378000, -0.890820, -0.252104,
		0.918519, 0.394950, -0.018366,
		40.682819, 33.472328, 34.050209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217583, 32.799503, 34.684906>,  <40.039856, 33.195862, 34.063065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217583, 32.799503, 34.684906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499428, 33.075562, 34.618919>,  <40.668537, 33.241196, 34.579327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499428, 33.075562, 34.618919>,  <40.217583, 32.799503, 34.684906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499428, 33.075562, 34.618919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314049, -0.094830, 0.944659,
		0.636310, -0.717429, -0.283559,
		0.704616, 0.690147, -0.164966,
		40.710812, 33.282604, 34.569431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957729, 32.602451, 34.944237>,  <40.217583, 32.799503, 34.684906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957729, 32.602451, 34.944237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956825, 33.002117, 34.960541>,  <40.956284, 33.241917, 34.970322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956825, 33.002117, 34.960541>,  <40.957729, 32.602451, 34.944237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956825, 33.002117, 34.960541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452040, -0.035338, 0.891297,
		0.891995, 0.020439, -0.451584,
		-0.002259, 0.999166, 0.040760,
		40.956146, 33.301868, 34.972771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594955, 32.899712, 34.955467>,  <40.957729, 32.602451, 34.944237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594955, 32.899712, 34.955467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343937, 33.145130, 35.147198>,  <41.193325, 33.292381, 35.262238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343937, 33.145130, 35.147198>,  <41.594955, 32.899712, 34.955467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343937, 33.145130, 35.147198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523257, -0.123531, 0.843174,
		0.576535, 0.779940, -0.243519,
		-0.627543, 0.613542, 0.479329,
		41.155674, 33.329193, 35.290997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967327, 33.108727, 35.472382>,  <41.594955, 32.899712, 34.955467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967327, 33.108727, 35.472382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617020, 33.275028, 35.570507>,  <41.406834, 33.374809, 35.629383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617020, 33.275028, 35.570507>,  <41.967327, 33.108727, 35.472382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617020, 33.275028, 35.570507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336221, 0.160682, 0.927975,
		0.346388, 0.895172, -0.280505,
		-0.875769, 0.415751, 0.245317,
		41.354290, 33.399754, 35.644104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191593, 33.649899, 35.812904>,  <41.967327, 33.108727, 35.472382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191593, 33.649899, 35.812904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827538, 33.559078, 35.951523>,  <41.609104, 33.504585, 36.034695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827538, 33.559078, 35.951523>,  <42.191593, 33.649899, 35.812904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827538, 33.559078, 35.951523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292210, 0.241165, 0.925447,
		-0.293696, 0.943551, -0.153148,
		-0.910141, -0.227049, 0.346544,
		41.554497, 33.490963, 36.055485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809158, 34.264511, 36.104038>,  <42.191593, 33.649899, 35.812904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809158, 34.264511, 36.104038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663948, 33.934456, 36.277176>,  <41.576824, 33.736420, 36.381058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663948, 33.934456, 36.277176>,  <41.809158, 34.264511, 36.104038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663948, 33.934456, 36.277176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144663, 0.408992, 0.900998,
		-0.920483, 0.389698, -0.029105,
		-0.363021, -0.825143, 0.432845,
		41.555042, 33.686913, 36.407028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442463, 34.548477, 36.670547>,  <41.809158, 34.264511, 36.104038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442463, 34.548477, 36.670547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559891, 34.169727, 36.723068>,  <41.630348, 33.942478, 36.754581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559891, 34.169727, 36.723068>,  <41.442463, 34.548477, 36.670547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559891, 34.169727, 36.723068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532804, 0.276111, 0.799927,
		-0.793686, -0.164879, 0.585558,
		0.293570, -0.946878, 0.131297,
		41.647961, 33.885666, 36.762459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373699, 34.508152, 37.389870>,  <41.442463, 34.548477, 36.670547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373699, 34.508152, 37.389870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421070, 34.115498, 37.330051>,  <41.449493, 33.879906, 37.294159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421070, 34.115498, 37.330051>,  <41.373699, 34.508152, 37.389870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421070, 34.115498, 37.330051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592513, -0.050993, 0.803945,
		-0.796808, -0.183821, 0.575593,
		0.118430, -0.981636, -0.149548,
		41.456600, 33.821007, 37.285187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326962, 34.070934, 38.017223>,  <41.373699, 34.508152, 37.389870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326962, 34.070934, 38.017223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521561, 33.836777, 37.757801>,  <41.638321, 33.696281, 37.602146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521561, 33.836777, 37.757801>,  <41.326962, 34.070934, 38.017223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521561, 33.836777, 37.757801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667837, -0.229442, 0.708061,
		-0.563303, -0.777603, 0.279326,
		0.486501, -0.585397, -0.648557,
		41.667511, 33.661156, 37.563232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482430, 33.337597, 38.280449>,  <41.326962, 34.070934, 38.017223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482430, 33.337597, 38.280449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744156, 33.441936, 37.996529>,  <41.901192, 33.504539, 37.826176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744156, 33.441936, 37.996529>,  <41.482430, 33.337597, 38.280449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744156, 33.441936, 37.996529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739187, -0.022541, 0.673122,
		0.159583, -0.965117, -0.207564,
		0.654320, 0.260848, -0.709805,
		41.940453, 33.520191, 37.783588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093391, 33.074768, 38.579983>,  <41.482430, 33.337597, 38.280449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093391, 33.074768, 38.579983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.213001, 33.350437, 38.315975>,  <42.284767, 33.515839, 38.157570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.213001, 33.350437, 38.315975>,  <42.093391, 33.074768, 38.579983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213001, 33.350437, 38.315975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734282, 0.275557, 0.620402,
		0.609436, -0.670157, -0.423648,
		0.299027, 0.689172, -0.660018,
		42.302708, 33.557190, 38.117970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834351, 32.928711, 38.411709>,  <42.093391, 33.074768, 38.579983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834351, 32.928711, 38.411709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725719, 33.310322, 38.360985>,  <42.660542, 33.539288, 38.330551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725719, 33.310322, 38.360985>,  <42.834351, 32.928711, 38.411709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725719, 33.310322, 38.360985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784411, 0.295764, 0.545182,
		0.557622, 0.048590, -0.828671,
		-0.271581, 0.954024, -0.126810,
		42.644245, 33.596531, 38.322941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825802, 32.841236, 39.170158>,  <42.834351, 32.928711, 38.411709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825802, 32.841236, 39.170158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.539711, 33.120262, 39.152897>,  <42.368057, 33.287678, 39.142540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.539711, 33.120262, 39.152897>,  <42.825802, 32.841236, 39.170158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539711, 33.120262, 39.152897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652304, 0.688437, 0.317103,
		0.250905, 0.198653, -0.947409,
		-0.715225, 0.697561, -0.043150,
		42.325142, 33.329529, 39.139954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142029, 33.450222, 39.036102>,  <42.825802, 32.841236, 39.170158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142029, 33.450222, 39.036102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791069, 33.615406, 39.133778>,  <42.580494, 33.714516, 39.192383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791069, 33.615406, 39.133778>,  <43.142029, 33.450222, 39.036102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791069, 33.615406, 39.133778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469974, 0.842111, 0.264526,
		-0.096398, 0.346859, -0.932950,
		-0.877401, 0.412963, 0.244192,
		42.527847, 33.739296, 39.207035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126472, 34.199032, 38.821163>,  <43.142029, 33.450222, 39.036102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126472, 34.199032, 38.821163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844440, 34.170990, 39.103424>,  <42.675220, 34.154167, 39.272781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844440, 34.170990, 39.103424>,  <43.126472, 34.199032, 38.821163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844440, 34.170990, 39.103424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306177, 0.867474, 0.392102,
		-0.639625, 0.492518, -0.590174,
		-0.705078, -0.070101, 0.705656,
		42.632915, 34.149960, 39.315121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661777, 34.834099, 38.764076>,  <43.126472, 34.199032, 38.821163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661777, 34.834099, 38.764076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644707, 34.677914, 39.131927>,  <42.634464, 34.584202, 39.352638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644707, 34.677914, 39.131927>,  <42.661777, 34.834099, 38.764076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644707, 34.677914, 39.131927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426185, 0.825406, 0.370232,
		-0.903629, 0.407734, 0.131181,
		-0.042679, -0.390460, 0.919630,
		42.631905, 34.560776, 39.407818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237873, 35.376781, 39.232067>,  <42.661777, 34.834099, 38.764076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237873, 35.376781, 39.232067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446857, 35.138832, 39.476410>,  <42.572250, 34.996063, 39.623016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446857, 35.138832, 39.476410>,  <42.237873, 35.376781, 39.232067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446857, 35.138832, 39.476410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432450, 0.802310, 0.411444,
		-0.734858, 0.049202, 0.676434,
		0.522465, -0.594877, 0.610861,
		42.603596, 34.960369, 39.659668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230259, 35.534492, 39.959503>,  <42.237873, 35.376781, 39.232067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230259, 35.534492, 39.959503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589687, 35.380405, 39.875420>,  <42.805344, 35.287952, 39.824970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589687, 35.380405, 39.875420>,  <42.230259, 35.534492, 39.959503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589687, 35.380405, 39.875420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434721, 0.846816, 0.306463,
		0.059950, -0.366758, 0.928383,
		0.898568, -0.385215, -0.210204,
		42.859257, 35.264839, 39.812359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651073, 35.889954, 40.316795>,  <42.230259, 35.534492, 39.959503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651073, 35.889954, 40.316795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911499, 35.743706, 40.050728>,  <43.067753, 35.655956, 39.891087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911499, 35.743706, 40.050728>,  <42.651073, 35.889954, 40.316795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911499, 35.743706, 40.050728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576440, 0.808290, 0.119929,
		0.493800, -0.461510, 0.737001,
		0.651059, -0.365616, -0.665167,
		43.106815, 35.634022, 39.851177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346203, 35.764874, 40.616833>,  <42.651073, 35.889954, 40.316795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346203, 35.764874, 40.616833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333149, 35.856663, 40.227726>,  <43.325317, 35.911736, 39.994263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333149, 35.856663, 40.227726>,  <43.346203, 35.764874, 40.616833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333149, 35.856663, 40.227726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360831, 0.910350, 0.202642,
		0.932060, -0.344392, -0.112508,
		-0.032633, 0.229471, -0.972768,
		43.323360, 35.925503, 39.935894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667393, 35.249081, 40.260723>,  <43.346203, 35.764874, 40.616833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667393, 35.249081, 40.260723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295609, 35.262054, 40.407719>,  <43.072536, 35.269840, 40.495914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295609, 35.262054, 40.407719>,  <43.667393, 35.249081, 40.260723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295609, 35.262054, 40.407719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255387, -0.775423, -0.577492,
		0.266227, -0.630609, 0.729010,
		-0.929463, 0.032435, 0.367488,
		43.016769, 35.271786, 40.517963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686485, 34.655258, 40.200546>,  <43.667393, 35.249081, 40.260723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686485, 34.655258, 40.200546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316277, 34.802761, 40.235027>,  <43.094151, 34.891262, 40.255714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316277, 34.802761, 40.235027>,  <43.686485, 34.655258, 40.200546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316277, 34.802761, 40.235027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345288, -0.728238, -0.591984,
		-0.155524, -0.577657, 0.801327,
		-0.925521, 0.368756, 0.086200,
		43.038620, 34.913387, 40.260887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207130, 34.226597, 40.440022>,  <43.686485, 34.655258, 40.200546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207130, 34.226597, 40.440022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002926, 34.482670, 40.210400>,  <42.880402, 34.636314, 40.072624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002926, 34.482670, 40.210400>,  <43.207130, 34.226597, 40.440022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002926, 34.482670, 40.210400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397903, -0.767712, -0.502286,
		-0.762255, -0.028018, 0.646670,
		-0.510530, 0.640182, -0.574044,
		42.849770, 34.674725, 40.038181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442848, 33.985245, 40.555420>,  <43.207130, 34.226597, 40.440022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442848, 33.985245, 40.555420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493290, 34.184761, 40.212421>,  <42.523556, 34.304470, 40.006622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493290, 34.184761, 40.212421>,  <42.442848, 33.985245, 40.555420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493290, 34.184761, 40.212421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567042, -0.673023, -0.474872,
		-0.813979, 0.546121, 0.197965,
		0.126102, 0.498791, -0.857500,
		42.531120, 34.334396, 39.955170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816044, 34.138905, 40.290115>,  <42.442848, 33.985245, 40.555420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816044, 34.138905, 40.290115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.071201, 34.151234, 39.982311>,  <42.224297, 34.158630, 39.797630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.071201, 34.151234, 39.982311>,  <41.816044, 34.138905, 40.290115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071201, 34.151234, 39.982311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592140, -0.619237, -0.515670,
		-0.492402, 0.784599, -0.376755,
		0.637895, 0.030825, -0.769506,
		42.262569, 34.160480, 39.751461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423237, 34.163143, 39.678032>,  <41.816044, 34.138905, 40.290115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423237, 34.163143, 39.678032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775829, 34.021568, 39.552998>,  <41.987385, 33.936623, 39.477978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775829, 34.021568, 39.552998>,  <41.423237, 34.163143, 39.678032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775829, 34.021568, 39.552998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465881, -0.759883, -0.453357,
		-0.077066, 0.545256, -0.834720,
		0.881485, -0.353942, -0.312586,
		42.040276, 33.915386, 39.459221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443687, 34.360931, 38.954346>,  <41.423237, 34.163143, 39.678032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443687, 34.360931, 38.954346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619144, 34.040791, 39.117825>,  <41.724419, 33.848705, 39.215912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619144, 34.040791, 39.117825>,  <41.443687, 34.360931, 38.954346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619144, 34.040791, 39.117825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580722, -0.599520, -0.550762,
		0.685821, 0.004253, -0.727758,
		0.438647, -0.800349, 0.408694,
		41.750740, 33.800686, 39.240433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119930, 34.273197, 38.571877>,  <41.443687, 34.360931, 38.954346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119930, 34.273197, 38.571877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479034, 34.229317, 38.401234>,  <42.694496, 34.202988, 38.298847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479034, 34.229317, 38.401234>,  <42.119930, 34.273197, 38.571877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479034, 34.229317, 38.401234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433040, -0.397139, -0.809170,
		-0.080657, 0.911179, -0.404040,
		0.897759, -0.109700, -0.426609,
		42.748363, 34.196407, 38.273251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090324, 34.592403, 37.905251>,  <42.119930, 34.273197, 38.571877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090324, 34.592403, 37.905251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363277, 34.302391, 37.942532>,  <42.527050, 34.128384, 37.964901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363277, 34.302391, 37.942532>,  <42.090324, 34.592403, 37.905251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363277, 34.302391, 37.942532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341076, -0.428566, -0.836659,
		0.646549, 0.539130, -0.539735,
		0.682380, -0.725031, 0.093205,
		42.567993, 34.084881, 37.970493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544109, 34.511196, 37.188057>,  <42.090324, 34.592403, 37.905251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544109, 34.511196, 37.188057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488754, 34.202095, 37.435833>,  <42.455540, 34.016636, 37.584499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488754, 34.202095, 37.435833>,  <42.544109, 34.511196, 37.188057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488754, 34.202095, 37.435833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585982, -0.440340, -0.680239,
		0.798420, -0.457115, -0.391882,
		-0.138386, -0.772752, 0.619437,
		42.447239, 33.970268, 37.621666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807930, 33.794842, 36.872562>,  <42.544109, 34.511196, 37.188057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807930, 33.794842, 36.872562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515717, 33.755699, 37.142895>,  <42.340389, 33.732216, 37.305096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515717, 33.755699, 37.142895>,  <42.807930, 33.794842, 36.872562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515717, 33.755699, 37.142895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588394, -0.412084, -0.695686,
		0.346573, -0.905876, 0.243466,
		-0.730534, -0.097852, 0.675829,
		42.296555, 33.726345, 37.345642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555038, 33.079273, 36.910603>,  <42.807930, 33.794842, 36.872562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555038, 33.079273, 36.910603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263565, 33.319313, 37.042603>,  <42.088680, 33.463337, 37.121803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263565, 33.319313, 37.042603>,  <42.555038, 33.079273, 36.910603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263565, 33.319313, 37.042603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622685, -0.379965, -0.684024,
		-0.285092, -0.703926, 0.650547,
		-0.728687, 0.600096, 0.330000,
		42.044960, 33.499340, 37.141602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914276, 32.656830, 37.108044>,  <42.555038, 33.079273, 36.910603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914276, 32.656830, 37.108044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829136, 33.028168, 36.986141>,  <41.778053, 33.250969, 36.912998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829136, 33.028168, 36.986141>,  <41.914276, 32.656830, 37.108044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829136, 33.028168, 36.986141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622370, -0.369259, -0.690147,
		-0.753227, 0.042776, 0.656368,
		-0.212848, 0.928342, -0.304758,
		41.765282, 33.306671, 36.894714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107094, 32.783844, 37.187756>,  <41.914276, 32.656830, 37.108044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107094, 32.783844, 37.187756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259624, 33.045319, 36.926289>,  <41.351143, 33.202206, 36.769409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259624, 33.045319, 36.926289>,  <41.107094, 32.783844, 37.187756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259624, 33.045319, 36.926289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565477, -0.394437, -0.724331,
		-0.731317, 0.645841, 0.219236,
		0.381328, 0.653689, -0.653666,
		41.374023, 33.241425, 36.730190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548466, 33.199047, 36.851635>,  <41.107094, 32.783844, 37.187756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548466, 33.199047, 36.851635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875717, 33.172859, 36.623119>,  <41.072067, 33.157146, 36.486008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875717, 33.172859, 36.623119>,  <40.548466, 33.199047, 36.851635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875717, 33.172859, 36.623119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573717, -0.160083, -0.803257,
		-0.038868, 0.984930, -0.168527,
		0.818131, -0.065466, -0.571294,
		41.121155, 33.153221, 36.451733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324455, 33.160759, 36.218086>,  <40.548466, 33.199047, 36.851635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324455, 33.160759, 36.218086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676235, 33.347507, 36.180992>,  <40.887302, 33.459557, 36.158737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676235, 33.347507, 36.180992>,  <40.324455, 33.160759, 36.218086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676235, 33.347507, 36.180992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224782, 0.235628, -0.945491,
		-0.419575, 0.852355, 0.312167,
		0.879448, 0.466874, -0.092730,
		40.940071, 33.487568, 36.153172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283619, 33.883041, 35.961525>,  <40.324455, 33.160759, 36.218086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283619, 33.883041, 35.961525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651337, 33.770645, 35.851292>,  <40.871967, 33.703209, 35.785152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651337, 33.770645, 35.851292>,  <40.283619, 33.883041, 35.961525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651337, 33.770645, 35.851292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185400, 0.308490, -0.932985,
		0.347173, 0.908779, 0.231497,
		0.919292, -0.280988, -0.275587,
		40.927124, 33.686348, 35.768616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321350, 34.197475, 35.248734>,  <40.283619, 33.883041, 35.961525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321350, 34.197475, 35.248734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653439, 33.979858, 35.297321>,  <40.852692, 33.849289, 35.326473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653439, 33.979858, 35.297321>,  <40.321350, 34.197475, 35.248734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653439, 33.979858, 35.297321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249663, 0.168074, -0.953635,
		0.498403, 0.822051, 0.275365,
		0.830219, -0.544043, 0.121467,
		40.902504, 33.816647, 35.333763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906986, 34.589684, 35.037151>,  <40.321350, 34.197475, 35.248734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906986, 34.589684, 35.037151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912495, 34.191269, 35.001991>,  <40.915802, 33.952221, 34.980896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912495, 34.191269, 35.001991>,  <40.906986, 34.589684, 35.037151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912495, 34.191269, 35.001991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180064, 0.088942, -0.979625,
		0.983558, -0.002334, 0.180575,
		0.013775, -0.996034, -0.087900,
		40.916626, 33.892460, 34.975620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463379, 34.465477, 34.571739>,  <40.906986, 34.589684, 35.037151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463379, 34.465477, 34.571739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249619, 34.129093, 34.537796>,  <41.121365, 33.927261, 34.517429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249619, 34.129093, 34.537796>,  <41.463379, 34.465477, 34.571739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249619, 34.129093, 34.537796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128141, 0.018623, -0.991581,
		0.835464, -0.540771, 0.097810,
		-0.534397, -0.840963, -0.084854,
		41.089298, 33.876804, 34.512341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842491, 34.011082, 34.105499>,  <41.463379, 34.465477, 34.571739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842491, 34.011082, 34.105499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493870, 33.816284, 34.082756>,  <41.284698, 33.699406, 34.069111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493870, 33.816284, 34.082756>,  <41.842491, 34.011082, 34.105499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493870, 33.816284, 34.082756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135782, -0.128307, -0.982395,
		0.471128, -0.863928, 0.177951,
		-0.871551, -0.486997, -0.056857,
		41.232403, 33.670185, 34.065701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935413, 33.428242, 33.700344>,  <41.842491, 34.011082, 34.105499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935413, 33.428242, 33.700344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546989, 33.523773, 33.701874>,  <41.313934, 33.581093, 33.702793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546989, 33.523773, 33.701874>,  <41.935413, 33.428242, 33.700344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546989, 33.523773, 33.701874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051905, -0.195349, -0.979359,
		-0.233154, -0.951209, 0.202091,
		-0.971053, 0.238831, 0.003826,
		41.255672, 33.595421, 33.703022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648697, 32.858463, 33.281471>,  <41.935413, 33.428242, 33.700344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648697, 32.858463, 33.281471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346771, 33.120831, 33.279552>,  <41.165615, 33.278252, 33.278400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346771, 33.120831, 33.279552>,  <41.648697, 32.858463, 33.281471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346771, 33.120831, 33.279552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385710, -0.449759, -0.805571,
		-0.530547, -0.606208, 0.592480,
		-0.754817, 0.655918, -0.004798,
		41.120327, 33.317604, 33.278114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944126, 32.984779, 32.622356>,  <41.648697, 32.858463, 33.281471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944126, 32.984779, 32.622356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150864, 32.700729, 32.813599>,  <42.274906, 32.530300, 32.928345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150864, 32.700729, 32.813599>,  <41.944126, 32.984779, 32.622356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150864, 32.700729, 32.813599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849736, 0.357698, -0.387298,
		0.104013, 0.606439, 0.788297,
		0.516846, -0.710129, 0.478108,
		42.305916, 32.487690, 32.957031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536831, 33.315777, 32.974667>,  <41.944126, 32.984779, 32.622356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536831, 33.315777, 32.974667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680042, 32.946522, 32.918610>,  <42.765968, 32.724968, 32.884975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680042, 32.946522, 32.918610>,  <42.536831, 33.315777, 32.974667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680042, 32.946522, 32.918610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878707, 0.383876, -0.283749,
		0.315736, -0.021554, 0.948602,
		0.358030, -0.923133, -0.140143,
		42.787453, 32.669582, 32.876568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267872, 33.246208, 33.347763>,  <42.536831, 33.315777, 32.974667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267872, 33.246208, 33.347763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170776, 33.028095, 33.026829>,  <43.112518, 32.897228, 32.834267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170776, 33.028095, 33.026829>,  <43.267872, 33.246208, 33.347763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170776, 33.028095, 33.026829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870143, 0.243259, -0.428574,
		0.428870, -0.802181, 0.415424,
		-0.242738, -0.545281, -0.802339,
		43.097954, 32.864510, 32.786129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762360, 32.649841, 33.229446>,  <43.267872, 33.246208, 33.347763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762360, 32.649841, 33.229446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600235, 32.733395, 32.873447>,  <43.502960, 32.783527, 32.659847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600235, 32.733395, 32.873447>,  <43.762360, 32.649841, 33.229446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.600235, 32.733395, 32.873447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913436, 0.131734, -0.385072,
		0.036807, -0.969027, -0.244195,
		-0.405314, 0.208883, -0.889993,
		43.478642, 32.796059, 32.606449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811832, 32.100895, 32.702259>,  <43.762360, 32.649841, 33.229446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811832, 32.100895, 32.702259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.865501, 32.482201, 32.593967>,  <43.897701, 32.710983, 32.528992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.865501, 32.482201, 32.593967>,  <43.811832, 32.100895, 32.702259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.865501, 32.482201, 32.593967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954481, -0.197757, -0.223290,
		-0.266392, -0.228446, -0.936402,
		0.134170, 0.953260, -0.270728,
		43.905754, 32.768177, 32.512749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266056, 32.190266, 32.028996>,  <43.811832, 32.100895, 32.702259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266056, 32.190266, 32.028996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.289433, 32.485939, 32.297379>,  <44.303459, 32.663345, 32.458408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.289433, 32.485939, 32.297379>,  <44.266056, 32.190266, 32.028996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289433, 32.485939, 32.297379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975299, -0.185692, 0.119630,
		0.213021, 0.647396, -0.731779,
		0.058438, 0.739186, 0.670961,
		44.306965, 32.707695, 32.498669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731293, 32.751690, 31.763556>,  <44.266056, 32.190266, 32.028996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731293, 32.751690, 31.763556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770458, 32.817139, 32.156216>,  <44.793957, 32.856407, 32.391811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770458, 32.817139, 32.156216>,  <44.731293, 32.751690, 31.763556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770458, 32.817139, 32.156216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969631, -0.237820, -0.057072,
		0.224118, 0.957428, -0.181939,
		0.097911, 0.163623, 0.981652,
		44.799831, 32.866226, 32.450710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.371078, 33.228355, 31.936527>,  <44.731293, 32.751690, 31.763556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.371078, 33.228355, 31.936527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.262550, 32.960342, 32.212917>,  <45.197433, 32.799534, 32.378750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.262550, 32.960342, 32.212917>,  <45.371078, 33.228355, 31.936527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.262550, 32.960342, 32.212917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845138, -0.509381, -0.162089,
		0.460575, 0.539993, 0.704470,
		-0.271317, -0.670029, 0.690977,
		45.181156, 32.759335, 32.420212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792831, 33.257408, 32.527409>,  <45.371078, 33.228355, 31.936527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.792831, 33.257408, 32.527409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655354, 32.898182, 32.417610>,  <45.572868, 32.682644, 32.351730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655354, 32.898182, 32.417610>,  <45.792831, 33.257408, 32.527409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.655354, 32.898182, 32.417610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928374, -0.280925, -0.243316,
		0.141403, -0.338458, 0.930296,
		-0.343696, -0.898069, -0.274492,
		45.552246, 32.628761, 32.335262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.244099, 32.728870, 32.892494>,  <45.792831, 33.257408, 32.527409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.244099, 32.728870, 32.892494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.108032, 32.625423, 32.530853>,  <46.026390, 32.563354, 32.313869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.108032, 32.625423, 32.530853>,  <46.244099, 32.728870, 32.892494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.108032, 32.625423, 32.530853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921399, -0.283782, -0.265503,
		-0.187904, -0.923355, 0.334825,
		-0.340171, -0.258618, -0.904102,
		46.005981, 32.547836, 32.259624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.554817, 32.073040, 32.775833>,  <46.244099, 32.728870, 32.892494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.554817, 32.073040, 32.775833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452896, 32.271389, 32.443764>,  <46.391743, 32.390396, 32.244522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452896, 32.271389, 32.443764>,  <46.554817, 32.073040, 32.775833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452896, 32.271389, 32.443764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937190, -0.084868, -0.338337,
		-0.238227, -0.864240, -0.443100,
		-0.254800, 0.495870, -0.830175,
		46.376457, 32.420151, 32.194710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.878384, 31.595613, 32.783287>,  <46.554817, 32.073040, 32.775833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.878384, 31.595613, 32.783287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.046333, 31.447878, 33.114899>,  <46.147102, 31.359236, 33.313866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.046333, 31.447878, 33.114899>,  <45.878384, 31.595613, 32.783287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.046333, 31.447878, 33.114899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403475, 0.742264, 0.535026,
		-0.812967, -0.559136, 0.162637,
		0.419872, -0.369339, 0.829033,
		46.172295, 31.337076, 33.363609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.353527, 31.474072, 33.287560>,  <45.878384, 31.595613, 32.783287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.353527, 31.474072, 33.287560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.698196, 31.547991, 33.476604>,  <45.904999, 31.592342, 33.590031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.698196, 31.547991, 33.476604>,  <45.353527, 31.474072, 33.287560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.698196, 31.547991, 33.476604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460241, 0.676899, 0.574444,
		-0.213756, -0.712501, 0.668319,
		0.861677, 0.184797, 0.472614,
		45.956699, 31.603430, 33.618389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.255203, 31.524281, 33.901543>,  <45.353527, 31.474072, 33.287560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.255203, 31.524281, 33.901543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566814, 31.769224, 33.847675>,  <45.753780, 31.916189, 33.815353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566814, 31.769224, 33.847675>,  <45.255203, 31.524281, 33.901543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.566814, 31.769224, 33.847675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498588, 0.735261, 0.459131,
		0.380168, -0.290532, 0.878102,
		0.779027, 0.612358, -0.134667,
		45.800522, 31.952932, 33.807274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.653271, 31.860889, 34.508450>,  <45.255203, 31.524281, 33.901543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.653271, 31.860889, 34.508450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.661137, 32.111557, 34.196835>,  <45.665855, 32.261959, 34.009865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.661137, 32.111557, 34.196835>,  <45.653271, 31.860889, 34.508450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.661137, 32.111557, 34.196835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350506, 0.734057, 0.581641,
		0.936354, 0.261618, 0.234088,
		0.019667, 0.626671, -0.779035,
		45.667038, 32.299557, 33.963123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.155834, 32.389755, 34.385231>,  <45.653271, 31.860889, 34.508450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.155834, 32.389755, 34.385231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778622, 32.447136, 34.265156>,  <45.552292, 32.481564, 34.193111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778622, 32.447136, 34.265156>,  <46.155834, 32.389755, 34.385231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.778622, 32.447136, 34.265156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092655, 0.753338, 0.651074,
		0.319537, 0.641797, -0.697132,
		-0.943033, 0.143449, -0.300185,
		45.495712, 32.490170, 34.175102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.909439, 33.074471, 34.059399>,  <46.155834, 32.389755, 34.385231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.909439, 33.074471, 34.059399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.625401, 32.873653, 34.256870>,  <45.454979, 32.753162, 34.375351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.625401, 32.873653, 34.256870>,  <45.909439, 33.074471, 34.059399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.625401, 32.873653, 34.256870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094103, 0.762518, 0.640086,
		-0.697787, 0.408067, -0.588706,
		-0.710097, -0.502043, 0.493675,
		45.412373, 32.723042, 34.404972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.402580, 33.491135, 34.333179>,  <45.909439, 33.074471, 34.059399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.402580, 33.491135, 34.333179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.639214, 33.341202, 34.047657>,  <46.781193, 33.251244, 33.876343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.639214, 33.341202, 34.047657>,  <46.402580, 33.491135, 34.333179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.639214, 33.341202, 34.047657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803865, -0.206305, -0.557888,
		0.061852, 0.903847, -0.423361,
		0.591587, -0.374832, -0.713811,
		46.816689, 33.228752, 33.833515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.045643, 33.873852, 34.737610>,  <46.402580, 33.491135, 34.333179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.045643, 33.873852, 34.737610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.257481, 33.875008, 35.076908>,  <47.384583, 33.875702, 35.280487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.257481, 33.875008, 35.076908>,  <47.045643, 33.873852, 34.737610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.257481, 33.875008, 35.076908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676008, -0.605486, -0.420000,
		0.512386, 0.795851, -0.322618,
		0.529598, 0.002890, 0.848244,
		47.416359, 33.875874, 35.331383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.837959, 33.926636, 34.635181>,  <47.045643, 33.873852, 34.737610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.837959, 33.926636, 34.635181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.808937, 33.750908, 34.993340>,  <47.791523, 33.645470, 35.208233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.808937, 33.750908, 34.993340>,  <47.837959, 33.926636, 34.635181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.808937, 33.750908, 34.993340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729329, -0.635736, -0.252824,
		0.680306, 0.634696, 0.366532,
		-0.072551, -0.439320, 0.895396,
		47.787170, 33.619110, 35.261959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.820148, 34.503624, 35.101620>,  <47.837959, 33.926636, 34.635181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.820148, 34.503624, 35.101620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.750980, 34.847103, 34.908649>,  <47.709480, 35.053192, 34.792870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.750980, 34.847103, 34.908649>,  <47.820148, 34.503624, 35.101620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.750980, 34.847103, 34.908649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934933, -0.010972, -0.354655,
		-0.309835, -0.512361, -0.800930,
		-0.172923, 0.858700, -0.482423,
		47.699104, 35.104713, 34.763924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.058273, 27.882622, 25.222349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.891571, 28.240307, 25.156994>,  <35.791550, 28.454918, 25.117781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.891571, 28.240307, 25.156994>,  <36.058273, 27.882622, 25.222349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891571, 28.240307, 25.156994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109097, 0.227646, 0.967613,
		0.902448, 0.385433, -0.192429,
		-0.416755, 0.894214, -0.163389,
		35.766544, 28.508572, 25.107977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508995, 28.513494, 25.484695>,  <36.058273, 27.882622, 25.222349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508995, 28.513494, 25.484695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.140465, 28.666973, 25.459612>,  <35.919346, 28.759060, 25.444563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.140465, 28.666973, 25.459612>,  <36.508995, 28.513494, 25.484695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140465, 28.666973, 25.459612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029789, 0.230483, 0.972620,
		0.387644, 0.894234, -0.223780,
		-0.921328, 0.383696, -0.062707,
		35.864067, 28.782082, 25.440800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566124, 29.153881, 25.611988>,  <36.508995, 28.513494, 25.484695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566124, 29.153881, 25.611988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175156, 29.131842, 25.693586>,  <35.940575, 29.118618, 25.742544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175156, 29.131842, 25.693586>,  <36.566124, 29.153881, 25.611988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175156, 29.131842, 25.693586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161804, 0.425742, 0.890260,
		-0.135900, 0.903166, -0.407214,
		-0.977421, -0.055097, 0.203994,
		35.881931, 29.115313, 25.754784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409409, 29.770235, 25.915560>,  <36.566124, 29.153881, 25.611988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409409, 29.770235, 25.915560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099640, 29.548548, 26.037613>,  <35.913776, 29.415535, 26.110844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099640, 29.548548, 26.037613>,  <36.409409, 29.770235, 25.915560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099640, 29.548548, 26.037613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122706, 0.341560, 0.931815,
		-0.620651, 0.759064, -0.196507,
		-0.774426, -0.554219, 0.305131,
		35.867313, 29.382282, 26.129152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063721, 30.223503, 26.289026>,  <36.409409, 29.770235, 25.915560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063721, 30.223503, 26.289026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954666, 29.857325, 26.407434>,  <35.889233, 29.637617, 26.478479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954666, 29.857325, 26.407434>,  <36.063721, 30.223503, 26.289026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954666, 29.857325, 26.407434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099241, 0.279277, 0.955068,
		-0.956986, 0.289762, 0.014709,
		-0.272634, -0.915447, 0.296020,
		35.872875, 29.582691, 26.496241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614700, 30.392282, 26.811783>,  <36.063721, 30.223503, 26.289026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614700, 30.392282, 26.811783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.721420, 30.009272, 26.855520>,  <35.785454, 29.779465, 26.881762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.721420, 30.009272, 26.855520>,  <35.614700, 30.392282, 26.811783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721420, 30.009272, 26.855520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105686, 0.141839, 0.984232,
		-0.957940, -0.251037, 0.139040,
		0.266800, -0.957529, 0.109342,
		35.801460, 29.722013, 26.888323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282185, 30.097069, 27.363306>,  <35.614700, 30.392282, 26.811783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282185, 30.097069, 27.363306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.598015, 29.856737, 27.313395>,  <35.787514, 29.712538, 27.283447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.598015, 29.856737, 27.313395>,  <35.282185, 30.097069, 27.363306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598015, 29.856737, 27.313395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204169, 0.065460, 0.976745,
		-0.578689, -0.796692, 0.174356,
		0.789578, -0.600830, -0.124779,
		35.834888, 29.676489, 27.275961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221027, 29.718998, 27.964241>,  <35.282185, 30.097069, 27.363306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221027, 29.718998, 27.964241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.596256, 29.636461, 27.852928>,  <35.821396, 29.586939, 27.786140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.596256, 29.636461, 27.852928>,  <35.221027, 29.718998, 27.964241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596256, 29.636461, 27.852928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265257, -0.088882, 0.960072,
		-0.222837, -0.974435, -0.028644,
		0.938074, -0.206341, -0.278282,
		35.877678, 29.574560, 27.769444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577244, 29.119120, 28.393534>,  <35.221027, 29.718998, 27.964241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577244, 29.119120, 28.393534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.846375, 29.384222, 28.262045>,  <36.007854, 29.543283, 28.183151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.846375, 29.384222, 28.262045>,  <35.577244, 29.119120, 28.393534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846375, 29.384222, 28.262045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339856, 0.117778, 0.933074,
		0.657118, -0.739513, -0.145998,
		0.672825, 0.662758, -0.328722,
		36.048222, 29.583050, 28.163427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197918, 29.036491, 28.869392>,  <35.577244, 29.119120, 28.393534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197918, 29.036491, 28.869392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.263725, 29.383551, 28.681725>,  <36.303211, 29.591785, 28.569124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.263725, 29.383551, 28.681725>,  <36.197918, 29.036491, 28.869392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263725, 29.383551, 28.681725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366862, 0.387704, 0.845634,
		0.915612, -0.311246, -0.254521,
		0.164521, 0.867647, -0.469171,
		36.313084, 29.643845, 28.540974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924351, 29.251474, 28.952591>,  <36.197918, 29.036491, 28.869392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924351, 29.251474, 28.952591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714485, 29.588470, 28.903702>,  <36.588566, 29.790668, 28.874369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714485, 29.588470, 28.903702>,  <36.924351, 29.251474, 28.952591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714485, 29.588470, 28.903702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470292, 0.406512, 0.783309,
		0.709617, 0.353490, -0.609498,
		-0.524660, 0.842492, -0.122225,
		36.557087, 29.841219, 28.867035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431072, 29.827175, 28.886942>,  <36.924351, 29.251474, 28.952591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431072, 29.827175, 28.886942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.092575, 30.008503, 28.998926>,  <36.889477, 30.117300, 29.066116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.092575, 30.008503, 28.998926>,  <37.431072, 29.827175, 28.886942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092575, 30.008503, 28.998926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521481, 0.596968, 0.609661,
		0.109243, 0.661914, -0.741576,
		-0.846241, 0.453319, 0.279961,
		36.838703, 30.144499, 29.082914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636337, 30.526402, 28.829668>,  <37.431072, 29.827175, 28.886942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636337, 30.526402, 28.829668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302063, 30.543633, 29.048672>,  <37.101498, 30.553970, 29.180075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302063, 30.543633, 29.048672>,  <37.636337, 30.526402, 28.829668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302063, 30.543633, 29.048672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421742, 0.688910, 0.589522,
		-0.351792, 0.723566, -0.593881,
		-0.835689, 0.043076, 0.547512,
		37.051357, 30.556555, 29.212925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438263, 31.268257, 28.953461>,  <37.636337, 30.526402, 28.829668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438263, 31.268257, 28.953461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274979, 31.035412, 29.234745>,  <37.177006, 30.895704, 29.403515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274979, 31.035412, 29.234745>,  <37.438263, 31.268257, 28.953461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274979, 31.035412, 29.234745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239859, 0.674855, 0.697881,
		-0.880812, 0.453555, -0.135859,
		-0.408212, -0.582116, 0.703210,
		37.152515, 30.860777, 29.445707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080551, 31.738277, 29.327385>,  <37.438263, 31.268257, 28.953461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080551, 31.738277, 29.327385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.131104, 31.435947, 29.584370>,  <37.161434, 31.254549, 29.738560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.131104, 31.435947, 29.584370>,  <37.080551, 31.738277, 29.327385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131104, 31.435947, 29.584370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292242, 0.647280, 0.704006,
		-0.947957, 0.098780, 0.302688,
		0.126382, -0.755825, 0.642461,
		37.169018, 31.209200, 29.777107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678928, 31.805532, 29.897566>,  <37.080551, 31.738277, 29.327385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678928, 31.805532, 29.897566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.967777, 31.558630, 30.022490>,  <37.141087, 31.410488, 30.097443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.967777, 31.558630, 30.022490>,  <36.678928, 31.805532, 29.897566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967777, 31.558630, 30.022490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099239, 0.539230, 0.836291,
		-0.684611, -0.572911, 0.450645,
		0.722122, -0.617256, 0.312307,
		37.184414, 31.373453, 30.116182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609695, 31.795774, 30.640978>,  <36.678928, 31.805532, 29.897566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609695, 31.795774, 30.640978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.975319, 31.643637, 30.584641>,  <37.194691, 31.552353, 30.550838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.975319, 31.643637, 30.584641>,  <36.609695, 31.795774, 30.640978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975319, 31.643637, 30.584641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337396, 0.520335, 0.784484,
		-0.225089, -0.764583, 0.603943,
		0.914056, -0.380347, -0.140845,
		37.249535, 31.529533, 30.542387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848492, 31.795589, 31.235735>,  <36.609695, 31.795774, 30.640978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848492, 31.795589, 31.235735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.193722, 31.729006, 31.044994>,  <37.400860, 31.689054, 30.930550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.193722, 31.729006, 31.044994>,  <36.848492, 31.795589, 31.235735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193722, 31.729006, 31.044994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490707, 0.499935, 0.713633,
		0.119603, -0.849915, 0.513166,
		0.863077, -0.166462, -0.476853,
		37.452644, 31.679068, 30.901937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202881, 31.611767, 31.850689>,  <36.848492, 31.795589, 31.235735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202881, 31.611767, 31.850689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.439991, 31.730993, 31.551418>,  <37.582256, 31.802530, 31.371857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.439991, 31.730993, 31.551418>,  <37.202881, 31.611767, 31.850689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439991, 31.730993, 31.551418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462364, 0.634688, 0.619185,
		0.659419, -0.712970, 0.238414,
		0.592778, 0.298068, -0.748177,
		37.617825, 31.820414, 31.326965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873867, 31.718327, 32.118114>,  <37.202881, 31.611767, 31.850689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873867, 31.718327, 32.118114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.916615, 31.925858, 31.778845>,  <37.942261, 32.050377, 31.575283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.916615, 31.925858, 31.778845>,  <37.873867, 31.718327, 32.118114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916615, 31.925858, 31.778845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472921, 0.723857, 0.502370,
		0.874600, -0.454804, -0.168011,
		0.106865, 0.518829, -0.848172,
		37.948673, 32.081505, 31.524393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534466, 31.884998, 32.097439>,  <37.873867, 31.718327, 32.118114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534466, 31.884998, 32.097439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350368, 32.141682, 31.852037>,  <38.239910, 32.295692, 31.704796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350368, 32.141682, 31.852037>,  <38.534466, 31.884998, 32.097439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350368, 32.141682, 31.852037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556157, 0.747045, 0.364161,
		0.692000, -0.173602, -0.700713,
		-0.460245, 0.641706, -0.613505,
		38.212296, 32.334194, 31.667986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015675, 32.275154, 31.854839>,  <38.534466, 31.884998, 32.097439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015675, 32.275154, 31.854839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.684181, 32.493145, 31.803930>,  <38.485283, 32.623940, 31.773384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.684181, 32.493145, 31.803930>,  <39.015675, 32.275154, 31.854839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684181, 32.493145, 31.803930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466019, 0.797940, 0.382253,
		0.309874, 0.257475, -0.915251,
		-0.828736, 0.544975, -0.127273,
		38.435562, 32.656639, 31.765749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272564, 31.458302, 31.860300>,  <39.015675, 32.275154, 31.854839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272564, 31.458302, 31.860300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.653160, 31.540836, 31.951595>,  <39.881519, 31.590357, 32.006371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.653160, 31.540836, 31.951595>,  <39.272564, 31.458302, 31.860300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653160, 31.540836, 31.951595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307118, -0.592144, -0.745013,
		-0.018574, 0.778968, -0.626788,
		0.951490, 0.206335, 0.228237,
		39.938606, 31.602737, 32.020065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656578, 31.730484, 31.228580>,  <39.272564, 31.458302, 31.860300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656578, 31.730484, 31.228580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.935505, 31.577435, 31.471020>,  <40.102859, 31.485605, 31.616484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.935505, 31.577435, 31.471020>,  <39.656578, 31.730484, 31.228580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935505, 31.577435, 31.471020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390985, -0.505665, -0.769047,
		0.600738, 0.773242, -0.203006,
		0.697312, -0.382623, 0.606098,
		40.144699, 31.462648, 31.652849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311588, 31.847065, 30.952866>,  <39.656578, 31.730484, 31.228580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311588, 31.847065, 30.952866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.376945, 31.538227, 31.198524>,  <40.416161, 31.352924, 31.345921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.376945, 31.538227, 31.198524>,  <40.311588, 31.847065, 30.952866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376945, 31.538227, 31.198524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460610, -0.490799, -0.739564,
		0.872434, 0.403719, 0.275443,
		0.163389, -0.772093, 0.614147,
		40.425961, 31.306599, 31.382769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034267, 31.743082, 30.879232>,  <40.311588, 31.847065, 30.952866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034267, 31.743082, 30.879232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.858612, 31.419106, 31.034746>,  <40.753220, 31.224720, 31.128054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.858612, 31.419106, 31.034746>,  <41.034267, 31.743082, 30.879232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858612, 31.419106, 31.034746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493609, -0.579085, -0.648853,
		0.750672, -0.093030, 0.654093,
		-0.439138, -0.809942, 0.388782,
		40.726871, 31.176123, 31.151381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538387, 31.189594, 30.690216>,  <41.034267, 31.743082, 30.879232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538387, 31.189594, 30.690216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.205944, 30.989269, 30.786919>,  <41.006477, 30.869074, 30.844940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.205944, 30.989269, 30.786919>,  <41.538387, 31.189594, 30.690216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205944, 30.989269, 30.786919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296009, -0.766419, -0.570071,
		0.470786, -0.402228, 0.785222,
		-0.831107, -0.500814, 0.241756,
		40.956612, 30.839025, 30.859446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718357, 30.579082, 30.658281>,  <41.538387, 31.189594, 30.690216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718357, 30.579082, 30.658281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.321590, 30.533703, 30.635517>,  <41.083530, 30.506475, 30.621859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.321590, 30.533703, 30.635517>,  <41.718357, 30.579082, 30.658281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321590, 30.533703, 30.635517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118066, -0.660153, -0.741794,
		0.046586, -0.742514, 0.668209,
		-0.991913, -0.113450, -0.056912,
		41.024017, 30.499668, 30.618443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583611, 29.804670, 30.601372>,  <41.718357, 30.579082, 30.658281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583611, 29.804670, 30.601372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.271042, 30.010052, 30.459532>,  <41.083500, 30.133282, 30.374428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.271042, 30.010052, 30.459532>,  <41.583611, 29.804670, 30.601372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271042, 30.010052, 30.459532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066423, -0.633484, -0.770899,
		-0.620448, -0.578851, 0.529128,
		-0.781430, 0.513449, -0.354595,
		41.036613, 30.164089, 30.353151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105743, 29.309025, 30.461914>,  <41.583611, 29.804670, 30.601372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105743, 29.309025, 30.461914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.007305, 29.623894, 30.235710>,  <40.948242, 29.812815, 30.099989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.007305, 29.623894, 30.235710>,  <41.105743, 29.309025, 30.461914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007305, 29.623894, 30.235710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231584, -0.614307, -0.754318,
		-0.941173, -0.054669, 0.333473,
		-0.246092, 0.787171, -0.565509,
		40.933475, 29.860044, 30.066057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547661, 29.094378, 30.036411>,  <41.105743, 29.309025, 30.461914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547661, 29.094378, 30.036411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.689331, 29.414248, 29.842470>,  <40.774334, 29.606169, 29.726105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.689331, 29.414248, 29.842470>,  <40.547661, 29.094378, 30.036411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689331, 29.414248, 29.842470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198210, -0.442493, -0.874593,
		-0.913933, 0.405861, 0.001784,
		0.354174, 0.799673, -0.484855,
		40.795582, 29.654150, 29.697014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161747, 29.203554, 29.496122>,  <40.547661, 29.094378, 30.036411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161747, 29.203554, 29.496122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.466797, 29.421045, 29.355970>,  <40.649826, 29.551540, 29.271879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.466797, 29.421045, 29.355970>,  <40.161747, 29.203554, 29.496122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466797, 29.421045, 29.355970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269793, -0.224935, -0.936277,
		-0.587895, 0.808556, -0.024846,
		0.762621, 0.543730, -0.350381,
		40.695583, 29.584164, 29.250856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914928, 29.563116, 29.022451>,  <40.161747, 29.203554, 29.496122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914928, 29.563116, 29.022451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.297337, 29.534552, 28.908665>,  <40.526783, 29.517414, 28.840393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.297337, 29.534552, 28.908665>,  <39.914928, 29.563116, 29.022451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297337, 29.534552, 28.908665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292293, -0.311984, -0.904008,
		-0.024194, 0.947400, -0.319136,
		0.956023, -0.071410, -0.284467,
		40.584145, 29.513128, 28.823324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943184, 29.827776, 28.341513>,  <39.914928, 29.563116, 29.022451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943184, 29.827776, 28.341513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.307926, 29.663998, 28.353287>,  <40.526772, 29.565731, 28.360352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.307926, 29.663998, 28.353287>,  <39.943184, 29.827776, 28.341513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307926, 29.663998, 28.353287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044383, -0.169620, -0.984510,
		0.408097, 0.896428, -0.172842,
		0.911859, -0.409447, 0.029436,
		40.581486, 29.541164, 28.362118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282875, 30.124207, 27.851625>,  <39.943184, 29.827776, 28.341513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282875, 30.124207, 27.851625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.458004, 29.767099, 27.894110>,  <40.563080, 29.552835, 27.919600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.458004, 29.767099, 27.894110>,  <40.282875, 30.124207, 27.851625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458004, 29.767099, 27.894110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035956, -0.100652, -0.994272,
		0.898343, 0.439132, -0.011967,
		0.437821, -0.892766, 0.106209,
		40.589352, 29.499269, 27.925972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551094, 30.048149, 27.240574>,  <40.282875, 30.124207, 27.851625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551094, 30.048149, 27.240574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.552628, 29.674440, 27.383188>,  <40.553547, 29.450214, 27.468758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.552628, 29.674440, 27.383188>,  <40.551094, 30.048149, 27.240574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552628, 29.674440, 27.383188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090605, -0.355398, -0.930313,
		0.995880, -0.028738, -0.086012,
		0.003833, -0.934273, 0.356538,
		40.553776, 29.394159, 27.490150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012928, 29.640493, 26.836338>,  <40.551094, 30.048149, 27.240574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012928, 29.640493, 26.836338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.770699, 29.365702, 26.997007>,  <40.625362, 29.200827, 27.093409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.770699, 29.365702, 26.997007>,  <41.012928, 29.640493, 26.836338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770699, 29.365702, 26.997007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092954, -0.440227, -0.893062,
		0.790341, -0.578153, 0.202734,
		-0.605575, -0.686978, 0.401671,
		40.589027, 29.159609, 27.117508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080765, 29.007837, 26.459728>,  <41.012928, 29.640493, 26.836338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080765, 29.007837, 26.459728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.722538, 28.956772, 26.630217>,  <40.507603, 28.926132, 26.732510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.722538, 28.956772, 26.630217>,  <41.080765, 29.007837, 26.459728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722538, 28.956772, 26.630217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331487, -0.447535, -0.830559,
		0.296781, -0.885107, 0.358478,
		-0.895565, -0.127663, 0.426222,
		40.453869, 28.918472, 26.758083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806347, 28.332933, 26.150665>,  <41.080765, 29.007837, 26.459728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806347, 28.332933, 26.150665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.498432, 28.521463, 26.322842>,  <40.313683, 28.634581, 26.426147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.498432, 28.521463, 26.322842>,  <40.806347, 28.332933, 26.150665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498432, 28.521463, 26.322842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626633, -0.429680, -0.650159,
		-0.121485, -0.770213, 0.626110,
		-0.769788, 0.471326, 0.430441,
		40.267494, 28.662861, 26.451973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307564, 27.849424, 26.460535>,  <40.806347, 28.332933, 26.150665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307564, 27.849424, 26.460535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.106613, 28.182089, 26.365911>,  <39.986042, 28.381687, 26.309137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.106613, 28.182089, 26.365911>,  <40.307564, 27.849424, 26.460535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106613, 28.182089, 26.365911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669420, -0.547265, -0.502373,
		-0.547265, -0.094021, 0.831662,
		0.502373, -0.831662, 0.236559,
		39.955902, 28.431587, 26.294945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.484783, 27.648054, 26.543571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.512074, 27.982351, 26.325624>,  <39.528450, 28.182930, 26.194857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.512074, 27.982351, 26.325624>,  <39.484783, 27.648054, 26.543571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512074, 27.982351, 26.325624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635044, -0.384833, -0.669793,
		-0.769457, 0.391715, 0.504475,
		0.068230, 0.835741, -0.544869,
		39.532543, 28.233074, 26.162165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759121, 27.795021, 26.253689>,  <39.484783, 27.648054, 26.543571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759121, 27.795021, 26.253689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.984249, 28.043896, 26.036024>,  <39.119328, 28.193220, 25.905426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.984249, 28.043896, 26.036024>,  <38.759121, 27.795021, 26.253689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984249, 28.043896, 26.036024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582138, -0.168998, -0.795333,
		-0.586809, 0.764410, 0.267082,
		0.562824, 0.622187, -0.544161,
		39.153095, 28.230553, 25.872776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269997, 28.242065, 25.814213>,  <38.759121, 27.795021, 26.253689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269997, 28.242065, 25.814213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.631638, 28.246021, 25.643333>,  <38.848621, 28.248396, 25.540806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.631638, 28.246021, 25.643333>,  <38.269997, 28.242065, 25.814213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631638, 28.246021, 25.643333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419570, -0.168912, -0.891869,
		-0.080981, 0.985581, -0.148564,
		0.904104, 0.009891, -0.427199,
		38.902870, 28.248989, 25.515173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045692, 28.633421, 25.295246>,  <38.269997, 28.242065, 25.814213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045692, 28.633421, 25.295246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.402859, 28.479490, 25.201775>,  <38.617161, 28.387133, 25.145691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.402859, 28.479490, 25.201775>,  <38.045692, 28.633421, 25.295246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402859, 28.479490, 25.201775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320117, -0.177699, -0.930564,
		0.316580, 0.905722, -0.281860,
		0.892918, -0.384825, -0.233681,
		38.670734, 28.364042, 25.131670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149799, 28.780535, 24.594172>,  <38.045692, 28.633421, 25.295246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149799, 28.780535, 24.594172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.408485, 28.480642, 24.650267>,  <38.563698, 28.300707, 24.683924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.408485, 28.480642, 24.650267>,  <38.149799, 28.780535, 24.594172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408485, 28.480642, 24.650267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173450, -0.323603, -0.930159,
		0.742748, 0.577224, -0.339320,
		0.646715, -0.749729, 0.140236,
		38.602501, 28.255724, 24.692337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754490, 28.825764, 24.055143>,  <38.149799, 28.780535, 24.594172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754490, 28.825764, 24.055143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.677452, 28.447287, 24.159166>,  <38.631229, 28.220201, 24.221581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.677452, 28.447287, 24.159166>,  <38.754490, 28.825764, 24.055143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677452, 28.447287, 24.159166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233545, -0.213203, -0.948684,
		0.953081, -0.243450, -0.179915,
		-0.192599, -0.946191, 0.260056,
		38.619671, 28.163429, 24.237183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976883, 28.441206, 23.488804>,  <38.754490, 28.825764, 24.055143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976883, 28.441206, 23.488804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.758572, 28.173426, 23.690382>,  <38.627583, 28.012758, 23.811329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.758572, 28.173426, 23.690382>,  <38.976883, 28.441206, 23.488804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758572, 28.173426, 23.690382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222129, -0.464309, -0.857366,
		0.807949, -0.579875, 0.104708,
		-0.545782, -0.669449, 0.503945,
		38.594837, 27.972591, 23.841566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260979, 27.840601, 23.214884>,  <38.976883, 28.441206, 23.488804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260979, 27.840601, 23.214884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.907078, 27.780134, 23.391226>,  <38.694736, 27.743855, 23.497032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.907078, 27.780134, 23.391226>,  <39.260979, 27.840601, 23.214884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907078, 27.780134, 23.391226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259575, -0.625799, -0.735524,
		0.387074, -0.765195, 0.514441,
		-0.884757, -0.151167, 0.440856,
		38.641651, 27.734785, 23.523483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275597, 27.173883, 23.446009>,  <39.260979, 27.840601, 23.214884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275597, 27.173883, 23.446009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.905796, 27.306799, 23.371305>,  <38.683914, 27.386549, 23.326483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.905796, 27.306799, 23.371305>,  <39.275597, 27.173883, 23.446009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905796, 27.306799, 23.371305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064236, -0.618768, -0.782943,
		-0.375723, -0.711836, 0.593398,
		-0.924503, 0.332288, -0.186760,
		38.628445, 27.406485, 23.315277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913124, 26.536655, 23.297052>,  <39.275597, 27.173883, 23.446009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913124, 26.536655, 23.297052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.708466, 26.846519, 23.148396>,  <38.585670, 27.032438, 23.059200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.708466, 26.846519, 23.148396>,  <38.913124, 26.536655, 23.297052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708466, 26.846519, 23.148396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070345, -0.468864, -0.880464,
		-0.856311, -0.424344, 0.294387,
		-0.511648, 0.774660, -0.371643,
		38.554970, 27.078917, 23.036903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500458, 26.181767, 22.723782>,  <38.913124, 26.536655, 23.297052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500458, 26.181767, 22.723782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.500336, 26.579226, 22.678762>,  <38.500263, 26.817701, 22.651751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.500336, 26.579226, 22.678762>,  <38.500458, 26.181767, 22.723782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500336, 26.579226, 22.678762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089794, -0.112068, -0.989635,
		-0.995960, -0.010406, -0.089189,
		-0.000302, 0.993646, -0.112549,
		38.500244, 26.877319, 22.644999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065601, 26.261988, 22.286055>,  <38.500458, 26.181767, 22.723782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065601, 26.261988, 22.286055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.301109, 26.584572, 22.264244>,  <38.442413, 26.778122, 22.251158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.301109, 26.584572, 22.264244>,  <38.065601, 26.261988, 22.286055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301109, 26.584572, 22.264244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122958, -0.156032, -0.980069,
		-0.798894, 0.570330, -0.191028,
		0.588769, 0.806460, -0.054526,
		38.477741, 26.826509, 22.247887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976231, 26.558584, 21.672560>,  <38.065601, 26.261988, 22.286055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976231, 26.558584, 21.672560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.335529, 26.703112, 21.772635>,  <38.551109, 26.789827, 21.832680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.335529, 26.703112, 21.772635>,  <37.976231, 26.558584, 21.672560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335529, 26.703112, 21.772635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370396, -0.316003, -0.873470,
		-0.236540, 0.877264, -0.417680,
		0.898252, 0.361318, 0.250188,
		38.605003, 26.811506, 21.847691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136864, 27.032814, 21.184557>,  <37.976231, 26.558584, 21.672560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136864, 27.032814, 21.184557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.491016, 26.932762, 21.341291>,  <38.703506, 26.872732, 21.435331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.491016, 26.932762, 21.341291>,  <38.136864, 27.032814, 21.184557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491016, 26.932762, 21.341291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352307, -0.188872, -0.916628,
		0.303281, 0.949612, -0.079102,
		0.885381, -0.250127, 0.391837,
		38.756630, 26.857723, 21.458843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586655, 27.421581, 20.702291>,  <38.136864, 27.032814, 21.184557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586655, 27.421581, 20.702291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.811947, 27.144012, 20.881735>,  <38.947121, 26.977470, 20.989401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.811947, 27.144012, 20.881735>,  <38.586655, 27.421581, 20.702291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811947, 27.144012, 20.881735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444532, -0.203192, -0.872413,
		0.696540, 0.690786, 0.194027,
		0.563226, -0.693922, 0.448608,
		38.980915, 26.935837, 21.016317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313969, 27.464123, 20.326435>,  <38.586655, 27.421581, 20.702291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313969, 27.464123, 20.326435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.289474, 27.118633, 20.526529>,  <39.274776, 26.911341, 20.646585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.289474, 27.118633, 20.526529>,  <39.313969, 27.464123, 20.326435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289474, 27.118633, 20.526529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686670, -0.400182, -0.606909,
		0.724385, 0.306329, 0.617599,
		-0.061238, -0.863723, 0.500233,
		39.271103, 26.859516, 20.676600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147968, 27.345922, 20.453112>,  <39.313969, 27.464123, 20.326435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147968, 27.345922, 20.453112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.899681, 27.034966, 20.493839>,  <39.750710, 26.848391, 20.518276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.899681, 27.034966, 20.493839>,  <40.147968, 27.345922, 20.453112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899681, 27.034966, 20.493839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410390, -0.432811, -0.802655,
		0.668046, -0.456439, 0.587688,
		-0.620721, -0.777392, 0.101820,
		39.713467, 26.801748, 20.524385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531765, 26.768200, 20.242149>,  <40.147968, 27.345922, 20.453112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531765, 26.768200, 20.242149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.162163, 26.615391, 20.235638>,  <39.940399, 26.523705, 20.231731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.162163, 26.615391, 20.235638>,  <40.531765, 26.768200, 20.242149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162163, 26.615391, 20.235638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177223, -0.390155, -0.903533,
		0.338820, -0.837757, 0.428210,
		-0.924010, -0.382024, -0.016277,
		39.884960, 26.500784, 20.230755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699608, 26.072765, 20.084703>,  <40.531765, 26.768200, 20.242149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699608, 26.072765, 20.084703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.330109, 26.177000, 19.972425>,  <40.108410, 26.239542, 19.905060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.330109, 26.177000, 19.972425>,  <40.699608, 26.072765, 20.084703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330109, 26.177000, 19.972425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215227, -0.253036, -0.943212,
		-0.316818, -0.931700, 0.177655,
		-0.923744, 0.260591, -0.280694,
		40.052986, 26.255177, 19.888218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466545, 25.553371, 19.668306>,  <40.699608, 26.072765, 20.084703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466545, 25.553371, 19.668306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.206654, 25.840736, 19.568914>,  <40.050720, 26.013155, 19.509279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.206654, 25.840736, 19.568914>,  <40.466545, 25.553371, 19.668306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206654, 25.840736, 19.568914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226044, -0.129499, -0.965471,
		-0.725783, -0.683459, -0.078254,
		-0.649726, 0.718411, -0.248480,
		40.011734, 26.056259, 19.494371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915031, 25.298927, 19.251959>,  <40.466545, 25.553371, 19.668306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915031, 25.298927, 19.251959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.919991, 25.689423, 19.165424>,  <39.922966, 25.923719, 19.113503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.919991, 25.689423, 19.165424>,  <39.915031, 25.298927, 19.251959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919991, 25.689423, 19.165424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028602, -0.216612, -0.975839,
		-0.999514, 0.005913, -0.030609,
		0.012401, 0.976240, -0.216337,
		39.923710, 25.982294, 19.100523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493198, 25.309422, 18.625069>,  <39.915031, 25.298927, 19.251959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493198, 25.309422, 18.625069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.693474, 25.655666, 18.623034>,  <39.813641, 25.863413, 18.621813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.693474, 25.655666, 18.623034>,  <39.493198, 25.309422, 18.625069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693474, 25.655666, 18.623034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041957, -0.030141, -0.998665,
		-0.864611, 0.499806, -0.051409,
		0.500688, 0.865613, -0.005090,
		39.843681, 25.915350, 18.621506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237087, 25.765322, 18.050795>,  <39.493198, 25.309422, 18.625069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237087, 25.765322, 18.050795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.603714, 25.897118, 18.141430>,  <39.823689, 25.976194, 18.195810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.603714, 25.897118, 18.141430>,  <39.237087, 25.765322, 18.050795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603714, 25.897118, 18.141430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169266, 0.193691, -0.966350,
		-0.362290, 0.924078, 0.121760,
		0.916567, 0.329489, 0.226587,
		39.878685, 25.995964, 18.209406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231594, 26.454767, 17.919800>,  <39.237087, 25.765322, 18.050795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231594, 26.454767, 17.919800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.584415, 26.269796, 17.883698>,  <39.796108, 26.158813, 17.862036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.584415, 26.269796, 17.883698>,  <39.231594, 26.454767, 17.919800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584415, 26.269796, 17.883698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047200, 0.103872, -0.993470,
		0.468780, 0.880553, 0.069794,
		0.882053, -0.462425, -0.090256,
		39.849030, 26.131069, 17.856621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584354, 26.780329, 17.868504>,  <39.231594, 26.454767, 17.919800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584354, 26.780329, 17.868504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.368366, 27.077299, 17.709892>,  <38.238773, 27.255482, 17.614725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.368366, 27.077299, 17.709892>,  <38.584354, 26.780329, 17.868504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368366, 27.077299, 17.709892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577711, 0.015701, 0.816091,
		0.612111, 0.669747, 0.420428,
		-0.539973, 0.742424, -0.396531,
		38.206375, 27.300026, 17.590933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412560, 27.317486, 18.445339>,  <38.584354, 26.780329, 17.868504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412560, 27.317486, 18.445339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163921, 27.419592, 18.149107>,  <38.014740, 27.480856, 17.971367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163921, 27.419592, 18.149107>,  <38.412560, 27.317486, 18.445339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163921, 27.419592, 18.149107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656557, 0.345889, 0.670294,
		0.427260, 0.902885, -0.047408,
		-0.621596, 0.255264, -0.740580,
		37.977444, 27.496172, 17.926933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329563, 28.074396, 18.552759>,  <38.412560, 27.317486, 18.445339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329563, 28.074396, 18.552759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.041576, 27.878164, 18.356401>,  <37.868786, 27.760426, 18.238586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.041576, 27.878164, 18.356401>,  <38.329563, 28.074396, 18.552759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041576, 27.878164, 18.356401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643321, 0.206403, 0.737249,
		-0.260358, 0.846598, -0.464205,
		-0.719966, -0.490581, -0.490895,
		37.825588, 27.730989, 18.209133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753281, 28.566282, 18.507856>,  <38.329563, 28.074396, 18.552759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753281, 28.566282, 18.507856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.594803, 28.199762, 18.484451>,  <37.499718, 27.979851, 18.470409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.594803, 28.199762, 18.484451>,  <37.753281, 28.566282, 18.507856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594803, 28.199762, 18.484451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683985, 0.252028, 0.684577,
		-0.612533, 0.311245, -0.726588,
		-0.396191, -0.916302, -0.058511,
		37.475945, 27.924871, 18.466898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056789, 28.716537, 18.586483>,  <37.753281, 28.566282, 18.507856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056789, 28.716537, 18.586483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.115105, 28.330175, 18.672064>,  <37.150093, 28.098358, 18.723412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.115105, 28.330175, 18.672064>,  <37.056789, 28.716537, 18.586483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115105, 28.330175, 18.672064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626131, 0.077357, 0.775871,
		-0.765968, -0.247072, -0.593505,
		0.145785, -0.965904, 0.213952,
		37.158840, 28.040403, 18.736250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302841, 28.448530, 18.765108>,  <37.056789, 28.716537, 18.586483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302841, 28.448530, 18.765108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.591305, 28.209146, 18.904697>,  <36.764381, 28.065516, 18.988451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.591305, 28.209146, 18.904697>,  <36.302841, 28.448530, 18.765108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591305, 28.209146, 18.904697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553857, -0.195470, 0.809342,
		-0.416145, -0.776941, -0.472425,
		0.721156, -0.598459, 0.348970,
		36.807652, 28.029610, 19.009388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957298, 28.075027, 19.250910>,  <36.302841, 28.448530, 18.765108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957298, 28.075027, 19.250910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.340042, 28.006763, 19.344967>,  <36.569687, 27.965805, 19.401402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.340042, 28.006763, 19.344967>,  <35.957298, 28.075027, 19.250910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340042, 28.006763, 19.344967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261824, -0.155630, 0.952485,
		-0.125952, -0.972962, -0.193598,
		0.956861, -0.170656, 0.235143,
		36.627102, 27.955564, 19.415510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854942, 27.468403, 19.626154>,  <35.957298, 28.075027, 19.250910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854942, 27.468403, 19.626154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.193016, 27.658657, 19.723663>,  <36.395863, 27.772810, 19.782169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.193016, 27.658657, 19.723663>,  <35.854942, 27.468403, 19.626154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193016, 27.658657, 19.723663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193581, -0.152716, 0.969126,
		0.498180, -0.866284, -0.037000,
		0.845188, 0.475636, 0.243776,
		36.446571, 27.801348, 19.796797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084267, 27.143709, 20.300827>,  <35.854942, 27.468403, 19.626154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084267, 27.143709, 20.300827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.309700, 27.473358, 20.278223>,  <36.444962, 27.671148, 20.264660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.309700, 27.473358, 20.278223>,  <36.084267, 27.143709, 20.300827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309700, 27.473358, 20.278223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006220, 0.072644, 0.997339,
		0.826034, -0.561734, 0.046067,
		0.563586, 0.824123, -0.056512,
		36.478775, 27.720594, 20.261269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666801, 26.997463, 20.713377>,  <36.084267, 27.143709, 20.300827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666801, 26.997463, 20.713377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.633369, 27.396025, 20.707731>,  <36.613312, 27.635160, 20.704344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.633369, 27.396025, 20.707731>,  <36.666801, 26.997463, 20.713377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633369, 27.396025, 20.707731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075694, 0.020471, 0.996921,
		0.993622, 0.082251, -0.077133,
		-0.083577, 0.996401, -0.014115,
		36.608295, 27.694944, 20.703497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064247, 27.230181, 21.217390>,  <36.666801, 26.997463, 20.713377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064247, 27.230181, 21.217390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.799068, 27.526899, 21.176910>,  <36.639961, 27.704931, 21.152622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.799068, 27.526899, 21.176910>,  <37.064247, 27.230181, 21.217390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799068, 27.526899, 21.176910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078070, 0.202933, 0.976075,
		0.744588, 0.639182, -0.192445,
		-0.662944, 0.741798, -0.101200,
		36.600185, 27.749439, 21.146551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304649, 27.683302, 21.721151>,  <37.064247, 27.230181, 21.217390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304649, 27.683302, 21.721151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.927330, 27.804495, 21.666910>,  <36.700939, 27.877211, 21.634365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.927330, 27.804495, 21.666910>,  <37.304649, 27.683302, 21.721151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927330, 27.804495, 21.666910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033790, 0.318748, 0.947237,
		0.330222, 0.898109, -0.290437,
		-0.943298, 0.302984, -0.135605,
		36.644341, 27.895390, 21.626228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278294, 28.426874, 21.841522>,  <37.304649, 27.683302, 21.721151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278294, 28.426874, 21.841522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918324, 28.265953, 21.908808>,  <36.702343, 28.169401, 21.949179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918324, 28.265953, 21.908808>,  <37.278294, 28.426874, 21.841522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918324, 28.265953, 21.908808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035264, 0.317354, 0.947651,
		-0.434625, 0.858743, -0.271407,
		-0.899921, -0.402302, 0.168213,
		36.648346, 28.145262, 21.959272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040092, 28.808548, 22.401175>,  <37.278294, 28.426874, 21.841522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040092, 28.808548, 22.401175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.763023, 28.520058, 22.398964>,  <36.596783, 28.346964, 22.397636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.763023, 28.520058, 22.398964>,  <37.040092, 28.808548, 22.401175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763023, 28.520058, 22.398964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132904, 0.120102, 0.983825,
		-0.708897, 0.682207, -0.179046,
		-0.692677, -0.721227, -0.005528,
		36.555222, 28.303690, 22.397306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500381, 29.181108, 22.679668>,  <37.040092, 28.808548, 22.401175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500381, 29.181108, 22.679668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.419350, 28.791456, 22.719723>,  <36.370731, 28.557665, 22.743755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.419350, 28.791456, 22.719723>,  <36.500381, 29.181108, 22.679668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419350, 28.791456, 22.719723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202109, 0.141646, 0.969066,
		-0.958182, 0.176075, -0.225576,
		-0.202580, -0.974132, 0.100137,
		36.358574, 28.499216, 22.749763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917889, 29.142698, 23.014578>,  <36.500381, 29.181108, 22.679668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917889, 29.142698, 23.014578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.067787, 28.780100, 23.092379>,  <36.157726, 28.562542, 23.139059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.067787, 28.780100, 23.092379>,  <35.917889, 29.142698, 23.014578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067787, 28.780100, 23.092379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497772, -0.019737, 0.867083,
		-0.782168, -0.421755, -0.458624,
		0.374748, -0.906495, 0.194500,
		36.180210, 28.508152, 23.150728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315456, 28.797838, 23.303507>,  <35.917889, 29.142698, 23.014578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315456, 28.797838, 23.303507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.656494, 28.609919, 23.395052>,  <35.861115, 28.497166, 23.449978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.656494, 28.609919, 23.395052>,  <35.315456, 28.797838, 23.303507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656494, 28.609919, 23.395052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229960, 0.055976, 0.971589,
		-0.469265, -0.880996, -0.060311,
		0.852589, -0.469801, 0.228861,
		35.912270, 28.468979, 23.463711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077877, 28.195543, 23.596653>,  <35.315456, 28.797838, 23.303507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077877, 28.195543, 23.596653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.443172, 28.285545, 23.732521>,  <35.662350, 28.339546, 23.814041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.443172, 28.285545, 23.732521>,  <35.077877, 28.195543, 23.596653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443172, 28.285545, 23.732521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365378, 0.083393, 0.927116,
		0.180282, -0.970782, 0.158370,
		0.913235, 0.225007, 0.339668,
		35.717144, 28.353046, 23.834421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137627, 27.828625, 24.242416>,  <35.077877, 28.195543, 23.596653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137627, 27.828625, 24.242416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.404861, 28.126060, 24.253275>,  <35.565201, 28.304522, 24.259790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.404861, 28.126060, 24.253275>,  <35.137627, 27.828625, 24.242416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404861, 28.126060, 24.253275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162653, 0.110340, 0.980494,
		0.726088, -0.659471, 0.194664,
		0.668087, 0.743588, 0.027149,
		35.605289, 28.349136, 24.261419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431774, 27.696217, 24.933189>,  <35.137627, 27.828625, 24.242416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431774, 27.696217, 24.933189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.532856, 28.062140, 24.807165>,  <35.593506, 28.281694, 24.731550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.532856, 28.062140, 24.807165>,  <35.431774, 27.696217, 24.933189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532856, 28.062140, 24.807165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119104, 0.352566, 0.928176,
		0.960185, -0.197029, 0.198052,
		0.252704, 0.914809, -0.315062,
		35.608665, 28.336582, 24.712646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.772636, 28.969034, 28.287052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.407665, 29.123674, 28.340738>,  <41.188683, 29.216459, 28.372950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.407665, 29.123674, 28.340738>,  <41.772636, 28.969034, 28.287052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407665, 29.123674, 28.340738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348191, 0.561060, 0.750982,
		0.215028, 0.731950, -0.646539,
		-0.912428, 0.386601, 0.134215,
		41.133938, 29.239655, 28.381002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862118, 29.569767, 28.612207>,  <41.772636, 28.969034, 28.287052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862118, 29.569767, 28.612207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.464035, 29.597998, 28.639305>,  <41.225185, 29.614935, 28.655563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.464035, 29.597998, 28.639305>,  <41.862118, 29.569767, 28.612207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464035, 29.597998, 28.639305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092227, 0.445940, 0.890299,
		0.032623, 0.892276, -0.450309,
		-0.995203, 0.070574, 0.067744,
		41.165474, 29.619169, 28.659628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688194, 30.289209, 28.806860>,  <41.862118, 29.569767, 28.612207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688194, 30.289209, 28.806860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.377396, 30.071138, 28.932755>,  <41.190918, 29.940296, 29.008291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.377396, 30.071138, 28.932755>,  <41.688194, 30.289209, 28.806860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377396, 30.071138, 28.932755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041760, 0.454230, 0.889905,
		-0.628119, 0.704596, -0.330168,
		-0.776995, -0.545179, 0.314735,
		41.144299, 29.907585, 29.027176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271168, 30.771124, 29.165962>,  <41.688194, 30.289209, 28.806860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271168, 30.771124, 29.165962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.136681, 30.425407, 29.315605>,  <41.055988, 30.217978, 29.405390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.136681, 30.425407, 29.315605>,  <41.271168, 30.771124, 29.165962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136681, 30.425407, 29.315605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121525, 0.433725, 0.892813,
		-0.933910, 0.254718, -0.250860,
		-0.336220, -0.864292, 0.374106,
		41.035816, 30.166121, 29.427837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515968, 30.796810, 29.314009>,  <41.271168, 30.771124, 29.165962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515968, 30.796810, 29.314009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.647377, 30.497387, 29.544395>,  <40.726223, 30.317734, 29.682627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.647377, 30.497387, 29.544395>,  <40.515968, 30.796810, 29.314009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647377, 30.497387, 29.544395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163235, 0.555639, 0.815242,
		-0.930285, -0.361840, 0.060348,
		0.328519, -0.748557, 0.575967,
		40.745934, 30.272820, 29.717186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949619, 30.658098, 29.846729>,  <40.515968, 30.796810, 29.314009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949619, 30.658098, 29.846729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.299198, 30.544342, 30.004377>,  <40.508945, 30.476088, 30.098967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.299198, 30.544342, 30.004377>,  <39.949619, 30.658098, 29.846729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299198, 30.544342, 30.004377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259912, 0.411739, 0.873451,
		-0.410676, -0.865790, 0.285923,
		0.873951, -0.284391, 0.394121,
		40.561382, 30.459024, 30.122614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729671, 30.350172, 30.460476>,  <39.949619, 30.658098, 29.846729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729671, 30.350172, 30.460476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.121563, 30.389845, 30.530090>,  <40.356697, 30.413649, 30.571859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.121563, 30.389845, 30.530090>,  <39.729671, 30.350172, 30.460476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121563, 30.389845, 30.530090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196286, 0.302052, 0.932865,
		0.039954, -0.948118, 0.315398,
		0.979732, 0.099180, 0.174034,
		40.415482, 30.419600, 30.582300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791267, 30.250917, 31.130850>,  <39.729671, 30.350172, 30.460476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791267, 30.250917, 31.130850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.146896, 30.415112, 31.049809>,  <40.360275, 30.513628, 31.001183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.146896, 30.415112, 31.049809>,  <39.791267, 30.250917, 31.130850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146896, 30.415112, 31.049809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080213, 0.296051, 0.951798,
		0.450682, -0.862470, 0.230285,
		0.889073, 0.410487, -0.202606,
		40.413620, 30.538258, 30.989027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233234, 30.085590, 31.647984>,  <39.791267, 30.250917, 31.130850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233234, 30.085590, 31.647984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.381634, 30.424608, 31.496178>,  <40.470673, 30.628019, 31.405094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.381634, 30.424608, 31.496178>,  <40.233234, 30.085590, 31.647984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381634, 30.424608, 31.496178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203357, 0.472910, 0.857323,
		0.906094, -0.240888, 0.347803,
		0.370998, 0.847543, -0.379514,
		40.492935, 30.678871, 31.382324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687897, 30.434624, 32.292206>,  <40.233234, 30.085590, 31.647984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687897, 30.434624, 32.292206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.605286, 30.707832, 32.011971>,  <40.555717, 30.871758, 31.843828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.605286, 30.707832, 32.011971>,  <40.687897, 30.434624, 32.292206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605286, 30.707832, 32.011971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172778, 0.679318, 0.713215,
		0.963064, 0.268347, -0.022290,
		-0.206531, 0.683020, -0.700591,
		40.543327, 30.912739, 31.801794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125687, 31.183012, 32.433819>,  <40.687897, 30.434624, 32.292206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125687, 31.183012, 32.433819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.820068, 31.261518, 32.187984>,  <40.636700, 31.308622, 32.040482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.820068, 31.261518, 32.187984>,  <41.125687, 31.183012, 32.433819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820068, 31.261518, 32.187984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215047, 0.820655, 0.529414,
		0.608270, 0.536661, -0.584810,
		-0.764043, 0.196265, -0.614588,
		40.590855, 31.320398, 32.003609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235588, 31.830217, 32.223724>,  <41.125687, 31.183012, 32.433819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235588, 31.830217, 32.223724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.842281, 31.760761, 32.201679>,  <40.606297, 31.719088, 32.188450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.842281, 31.760761, 32.201679>,  <41.235588, 31.830217, 32.223724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842281, 31.760761, 32.201679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175583, 0.822574, 0.540873,
		-0.048581, 0.541499, -0.839297,
		-0.983265, -0.173642, -0.055116,
		40.547302, 31.708668, 32.185143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892620, 32.487633, 32.183002>,  <41.235588, 31.830217, 32.223724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892620, 32.487633, 32.183002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.615826, 32.231194, 32.315754>,  <40.449749, 32.077332, 32.395405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.615826, 32.231194, 32.315754>,  <40.892620, 32.487633, 32.183002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615826, 32.231194, 32.315754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341611, 0.695794, 0.631801,
		-0.635968, 0.323824, -0.700488,
		-0.691988, -0.641099, 0.331881,
		40.408230, 32.038864, 32.415318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877792, 32.657166, 32.933399>,  <40.892620, 32.487633, 32.183002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877792, 32.657166, 32.933399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.715820, 32.982288, 33.100914>,  <40.618637, 33.177361, 33.201424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.715820, 32.982288, 33.100914>,  <40.877792, 32.657166, 32.933399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715820, 32.982288, 33.100914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215878, 0.360079, -0.907601,
		-0.888498, -0.457920, 0.029661,
		-0.404928, 0.812805, 0.418785,
		40.594341, 33.226131, 33.226551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280354, 32.611225, 32.674534>,  <40.877792, 32.657166, 32.933399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280354, 32.611225, 32.674534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.392620, 32.986229, 32.756798>,  <40.459980, 33.211231, 32.806156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.392620, 32.986229, 32.756798>,  <40.280354, 32.611225, 32.674534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392620, 32.986229, 32.756798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125828, 0.248365, -0.960459,
		-0.951522, 0.243688, 0.187673,
		0.280664, 0.937513, 0.205662,
		40.476818, 33.267483, 32.818497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690720, 33.094360, 32.405533>,  <40.280354, 32.611225, 32.674534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690720, 33.094360, 32.405533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032154, 33.298733, 32.446205>,  <40.237015, 33.421356, 32.470608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032154, 33.298733, 32.446205>,  <39.690720, 33.094360, 32.405533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032154, 33.298733, 32.446205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103557, 0.357710, -0.928073,
		-0.510557, 0.781659, 0.358247,
		0.853585, 0.510933, 0.101685,
		40.288231, 33.452011, 32.476711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568130, 33.845798, 32.282536>,  <39.690720, 33.094360, 32.405533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568130, 33.845798, 32.282536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.956860, 33.798286, 32.201096>,  <40.190098, 33.769779, 32.152233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.956860, 33.798286, 32.201096>,  <39.568130, 33.845798, 32.282536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956860, 33.798286, 32.201096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175360, 0.212869, -0.961216,
		0.157513, 0.969834, 0.186042,
		0.971822, -0.118779, -0.203600,
		40.248405, 33.762653, 32.140015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711311, 34.363930, 31.801212>,  <39.568130, 33.845798, 32.282536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711311, 34.363930, 31.801212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.038780, 34.135098, 31.781254>,  <40.235264, 33.997799, 31.769278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.038780, 34.135098, 31.781254>,  <39.711311, 34.363930, 31.801212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038780, 34.135098, 31.781254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039134, 0.142269, -0.989054,
		0.572921, 0.807762, 0.138860,
		0.818676, -0.572084, -0.049898,
		40.284382, 33.963470, 31.766285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101650, 34.686375, 31.280251>,  <39.711311, 34.363930, 31.801212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101650, 34.686375, 31.280251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.241055, 34.315071, 31.332205>,  <40.324699, 34.092289, 31.363377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.241055, 34.315071, 31.332205>,  <40.101650, 34.686375, 31.280251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241055, 34.315071, 31.332205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091679, -0.171668, -0.980880,
		0.932810, 0.329942, -0.144930,
		0.348513, -0.928261, 0.129885,
		40.345608, 34.036594, 31.371170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638142, 34.608795, 30.783430>,  <40.101650, 34.686375, 31.280251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638142, 34.608795, 30.783430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.508068, 34.239731, 30.866337>,  <40.430023, 34.018291, 30.916080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.508068, 34.239731, 30.866337>,  <40.638142, 34.608795, 30.783430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508068, 34.239731, 30.866337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049487, -0.235484, -0.970618,
		0.944354, -0.305374, 0.122236,
		-0.325186, -0.922656, 0.207268,
		40.410511, 33.962933, 30.928516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981266, 34.165813, 30.333860>,  <40.638142, 34.608795, 30.783430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981266, 34.165813, 30.333860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.663101, 33.941998, 30.427019>,  <40.472202, 33.807709, 30.482914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.663101, 33.941998, 30.427019>,  <40.981266, 34.165813, 30.333860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663101, 33.941998, 30.427019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008022, -0.393960, -0.919093,
		0.606022, -0.729185, 0.317847,
		-0.795407, -0.559540, 0.232899,
		40.424480, 33.774136, 30.496889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134438, 33.500858, 30.128220>,  <40.981266, 34.165813, 30.333860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134438, 33.500858, 30.128220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.736156, 33.532101, 30.148102>,  <40.497189, 33.550846, 30.160030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.736156, 33.532101, 30.148102>,  <41.134438, 33.500858, 30.128220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736156, 33.532101, 30.148102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071335, -0.305038, -0.949665,
		-0.059015, -0.949132, 0.309300,
		-0.995705, 0.078109, 0.049704,
		40.437447, 33.555534, 30.163013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938705, 32.903118, 29.812452>,  <41.134438, 33.500858, 30.128220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938705, 32.903118, 29.812452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.598049, 33.111622, 29.790537>,  <40.393658, 33.236725, 29.777388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.598049, 33.111622, 29.790537>,  <40.938705, 32.903118, 29.812452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598049, 33.111622, 29.790537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246513, -0.490599, -0.835789,
		-0.462544, -0.698282, 0.546310,
		-0.851636, 0.521262, -0.054788,
		40.342560, 33.268002, 29.774101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505054, 32.449257, 29.706970>,  <40.938705, 32.903118, 29.812452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505054, 32.449257, 29.706970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.321690, 32.783173, 29.584997>,  <40.211670, 32.983524, 29.511812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.321690, 32.783173, 29.584997>,  <40.505054, 32.449257, 29.706970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321690, 32.783173, 29.584997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284191, -0.462779, -0.839685,
		-0.842079, -0.298261, 0.449382,
		-0.458410, 0.834791, -0.304934,
		40.184166, 33.033611, 29.493517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890347, 32.148514, 29.421478>,  <40.505054, 32.449257, 29.706970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890347, 32.148514, 29.421478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.925922, 32.507339, 29.248331>,  <39.947269, 32.722633, 29.144444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.925922, 32.507339, 29.248331>,  <39.890347, 32.148514, 29.421478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925922, 32.507339, 29.248331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152781, -0.417159, -0.895900,
		-0.984250, 0.145814, 0.099952,
		0.088939, 0.897060, -0.432866,
		39.952602, 32.776459, 29.118471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258347, 32.178268, 29.042652>,  <39.890347, 32.148514, 29.421478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258347, 32.178268, 29.042652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.516159, 32.452194, 28.906649>,  <39.670849, 32.616550, 28.825047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.516159, 32.452194, 28.906649>,  <39.258347, 32.178268, 29.042652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516159, 32.452194, 28.906649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248457, -0.232968, -0.940210,
		-0.723079, 0.690476, 0.019991,
		0.644536, 0.684813, -0.340008,
		39.709518, 32.657639, 28.804646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867081, 32.684532, 28.538124>,  <39.258347, 32.178268, 29.042652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867081, 32.684532, 28.538124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.259815, 32.693031, 28.462709>,  <39.495457, 32.698132, 28.417461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.259815, 32.693031, 28.462709>,  <38.867081, 32.684532, 28.538124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259815, 32.693031, 28.462709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183890, -0.138078, -0.973200,
		-0.046707, 0.990193, -0.131664,
		0.981837, 0.021243, -0.188536,
		39.554367, 32.699406, 28.406149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008770, 33.319931, 28.079287>,  <38.867081, 32.684532, 28.538124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008770, 33.319931, 28.079287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.236877, 32.994839, 28.031521>,  <39.373741, 32.799782, 28.002861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.236877, 32.994839, 28.031521>,  <39.008770, 33.319931, 28.079287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236877, 32.994839, 28.031521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087466, 0.084466, -0.992580,
		0.816788, 0.576482, -0.022918,
		0.570269, -0.812732, -0.119414,
		39.407959, 32.751019, 27.995697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428936, 33.924599, 27.689222>,  <39.008770, 33.319931, 28.079287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428936, 33.924599, 27.689222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.182549, 34.223301, 27.588877>,  <39.034714, 34.402523, 27.528669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.182549, 34.223301, 27.588877>,  <39.428936, 33.924599, 27.689222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182549, 34.223301, 27.588877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058312, 0.360795, 0.930821,
		0.785608, 0.558730, -0.265784,
		-0.615971, 0.746758, -0.250862,
		38.997757, 34.447327, 27.513618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777386, 34.632088, 27.876574>,  <39.428936, 33.924599, 27.689222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777386, 34.632088, 27.876574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.378880, 34.653042, 27.849106>,  <39.139778, 34.665615, 27.832626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.378880, 34.653042, 27.849106>,  <39.777386, 34.632088, 27.876574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378880, 34.653042, 27.849106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028595, 0.550142, 0.834582,
		0.081500, 0.833426, -0.546588,
		-0.996263, 0.052389, -0.068668,
		39.080002, 34.668758, 27.828505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680798, 35.173653, 28.219666>,  <39.777386, 34.632088, 27.876574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680798, 35.173653, 28.219666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.310772, 35.022537, 28.203991>,  <39.088757, 34.931870, 28.194586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.310772, 35.022537, 28.203991>,  <39.680798, 35.173653, 28.219666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310772, 35.022537, 28.203991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272815, 0.589131, 0.760590,
		-0.264252, 0.714285, -0.648049,
		-0.925064, -0.377785, -0.039188,
		39.033253, 34.909203, 28.192234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205589, 35.790634, 28.311111>,  <39.680798, 35.173653, 28.219666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205589, 35.790634, 28.311111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.993492, 35.472015, 28.427286>,  <38.866234, 35.280842, 28.496990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.993492, 35.472015, 28.427286>,  <39.205589, 35.790634, 28.311111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993492, 35.472015, 28.427286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299891, 0.496617, 0.814516,
		-0.793039, 0.344790, -0.502205,
		-0.530240, -0.796550, 0.290437,
		38.834419, 35.233051, 28.514418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493031, 36.047684, 28.495165>,  <39.205589, 35.790634, 28.311111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493031, 36.047684, 28.495165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.517403, 35.699223, 28.690050>,  <38.532024, 35.490147, 28.806982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.517403, 35.699223, 28.690050>,  <38.493031, 36.047684, 28.495165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517403, 35.699223, 28.690050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398966, 0.426177, 0.811911,
		-0.914939, -0.243849, -0.321595,
		0.060927, -0.871155, 0.487214,
		38.535683, 35.437878, 28.836214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940235, 35.984234, 28.874939>,  <38.493031, 36.047684, 28.495165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940235, 35.984234, 28.874939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.151321, 35.696877, 29.056238>,  <38.277973, 35.524464, 29.165018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.151321, 35.696877, 29.056238>,  <37.940235, 35.984234, 28.874939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151321, 35.696877, 29.056238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406482, 0.254957, 0.877365,
		-0.745850, -0.647234, -0.157469,
		0.527713, -0.718391, 0.453249,
		38.309635, 35.481358, 29.192213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494099, 35.704582, 29.323526>,  <37.940235, 35.984234, 28.874939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494099, 35.704582, 29.323526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.860806, 35.606327, 29.449507>,  <38.080830, 35.547375, 29.525095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.860806, 35.606327, 29.449507>,  <37.494099, 35.704582, 29.323526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860806, 35.606327, 29.449507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236480, 0.301656, 0.923624,
		-0.321882, -0.921231, 0.218461,
		0.916771, -0.245637, 0.314950,
		38.135838, 35.532635, 29.543991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315201, 35.169998, 29.911846>,  <37.494099, 35.704582, 29.323526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315201, 35.169998, 29.911846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.684616, 35.314880, 29.962254>,  <37.906265, 35.401810, 29.992498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.684616, 35.314880, 29.962254>,  <37.315201, 35.169998, 29.911846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684616, 35.314880, 29.962254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129627, -0.014425, 0.991458,
		0.360931, -0.931986, 0.033630,
		0.923540, 0.362208, 0.126017,
		37.961678, 35.423542, 30.000059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472900, 34.784351, 30.397072>,  <37.315201, 35.169998, 29.911846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472900, 34.784351, 30.397072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.718025, 35.100185, 30.384327>,  <37.865101, 35.289684, 30.376680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.718025, 35.100185, 30.384327>,  <37.472900, 34.784351, 30.397072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718025, 35.100185, 30.384327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134431, 0.143898, 0.980419,
		0.778710, -0.596530, 0.194328,
		0.612813, 0.789586, -0.031863,
		37.901871, 35.337063, 30.374767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021957, 34.596581, 30.938549>,  <37.472900, 34.784351, 30.397072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021957, 34.596581, 30.938549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.993832, 34.989548, 30.869373>,  <37.976955, 35.225327, 30.827868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.993832, 34.989548, 30.869373>,  <38.021957, 34.596581, 30.938549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993832, 34.989548, 30.869373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272135, 0.147897, 0.950825,
		0.959686, 0.113924, 0.256951,
		-0.070319, 0.982419, -0.172937,
		37.972736, 35.284275, 30.817492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345829, 34.963894, 31.471405>,  <38.021957, 34.596581, 30.938549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345829, 34.963894, 31.471405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.087856, 35.221931, 31.307495>,  <37.933075, 35.376755, 31.209148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.087856, 35.221931, 31.307495>,  <38.345829, 34.963894, 31.471405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087856, 35.221931, 31.307495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341940, 0.235954, 0.909617,
		0.683479, 0.726757, 0.068411,
		-0.644928, 0.645097, -0.409777,
		37.894379, 35.415459, 31.184563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199219, 35.432343, 31.971281>,  <38.345829, 34.963894, 31.471405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199219, 35.432343, 31.971281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.897617, 35.508873, 31.719927>,  <37.716656, 35.554790, 31.569115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.897617, 35.508873, 31.719927>,  <38.199219, 35.432343, 31.971281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897617, 35.508873, 31.719927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591137, 0.219477, 0.776136,
		0.286410, 0.956674, -0.052388,
		-0.754007, 0.191325, -0.628386,
		37.671413, 35.566269, 31.531410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.158329, 33.086811, 24.640114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822620, 33.212872, 24.462893>,  <39.621193, 33.288509, 24.356560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822620, 33.212872, 24.462893>,  <40.158329, 33.086811, 24.640114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822620, 33.212872, 24.462893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213765, 0.557984, 0.801846,
		0.499922, 0.767678, -0.400933,
		-0.839275, 0.315155, -0.443052,
		39.570839, 33.307419, 24.329977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080029, 33.897057, 24.486334>,  <40.158329, 33.086811, 24.640114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080029, 33.897057, 24.486334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699081, 33.775120, 24.489559>,  <39.470512, 33.701958, 24.491493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699081, 33.775120, 24.489559>,  <40.080029, 33.897057, 24.486334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699081, 33.775120, 24.489559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228932, 0.732192, 0.641471,
		-0.201448, 0.609072, -0.767105,
		-0.952370, -0.304838, 0.008063,
		39.413372, 33.683670, 24.491978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655449, 34.519547, 24.620998>,  <40.080029, 33.897057, 24.486334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655449, 34.519547, 24.620998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398754, 34.223682, 24.702057>,  <39.244736, 34.046162, 24.750692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398754, 34.223682, 24.702057>,  <39.655449, 34.519547, 24.620998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398754, 34.223682, 24.702057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311412, 0.492791, 0.812514,
		-0.700850, 0.458317, -0.546585,
		-0.641741, -0.739664, 0.202646,
		39.206230, 34.001781, 24.762852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044037, 34.836620, 24.805023>,  <39.655449, 34.519547, 24.620998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044037, 34.836620, 24.805023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013340, 34.465557, 24.951210>,  <38.994923, 34.242920, 25.038921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013340, 34.465557, 24.951210>,  <39.044037, 34.836620, 24.805023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013340, 34.465557, 24.951210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270667, 0.372163, 0.887825,
		-0.959610, -0.030788, -0.279645,
		-0.076739, -0.927656, 0.365465,
		38.990318, 34.187260, 25.060850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386948, 34.771965, 25.120642>,  <39.044037, 34.836620, 24.805023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386948, 34.771965, 25.120642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622353, 34.493950, 25.285843>,  <38.763596, 34.327141, 25.384964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622353, 34.493950, 25.285843>,  <38.386948, 34.771965, 25.120642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622353, 34.493950, 25.285843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384500, 0.208756, 0.899211,
		-0.711204, -0.687998, -0.144387,
		0.588514, -0.695039, 0.413003,
		38.798908, 34.285439, 25.409744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987980, 34.436352, 25.655752>,  <38.386948, 34.771965, 25.120642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987980, 34.436352, 25.655752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354866, 34.310635, 25.753679>,  <38.574997, 34.235203, 25.812435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354866, 34.310635, 25.753679>,  <37.987980, 34.436352, 25.655752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354866, 34.310635, 25.753679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181900, 0.216339, 0.959224,
		-0.354445, -0.924346, 0.141259,
		0.917214, -0.314296, 0.244819,
		38.630032, 34.216347, 25.827126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980839, 33.822742, 26.202740>,  <37.987980, 34.436352, 25.655752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980839, 33.822742, 26.202740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334480, 34.004036, 26.248249>,  <38.546665, 34.112812, 26.275555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334480, 34.004036, 26.248249>,  <37.980839, 33.822742, 26.202740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334480, 34.004036, 26.248249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187042, 0.120108, 0.974982,
		0.428232, -0.883262, 0.190961,
		0.884100, 0.453236, 0.113773,
		38.599709, 34.140007, 26.282381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273571, 33.641174, 26.805611>,  <37.980839, 33.822742, 26.202740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273571, 33.641174, 26.805611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485683, 33.974285, 26.742008>,  <38.612949, 34.174152, 26.703846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485683, 33.974285, 26.742008>,  <38.273571, 33.641174, 26.805611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485683, 33.974285, 26.742008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075628, 0.233263, 0.969468,
		0.844442, -0.502065, 0.186677,
		0.530281, 0.832778, -0.159007,
		38.644768, 34.224117, 26.694305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885384, 33.583473, 27.362873>,  <38.273571, 33.641174, 26.805611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885384, 33.583473, 27.362873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888027, 33.962482, 27.235025>,  <38.889614, 34.189888, 27.158318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888027, 33.962482, 27.235025>,  <38.885384, 33.583473, 27.362873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888027, 33.962482, 27.235025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097468, 0.317493, 0.943238,
		0.995217, -0.037384, -0.090256,
		0.006606, 0.947523, -0.319618,
		38.890007, 34.246738, 27.139139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436832, 33.122227, 26.864092>,  <38.885384, 33.583473, 27.362873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436832, 33.122227, 26.864092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603970, 32.844540, 27.098518>,  <39.704250, 32.677929, 27.239174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603970, 32.844540, 27.098518>,  <39.436832, 33.122227, 26.864092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603970, 32.844540, 27.098518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199388, -0.559283, -0.804641,
		0.886370, 0.453068, -0.095274,
		0.417842, -0.694213, 0.586068,
		39.729321, 32.636276, 27.274338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946194, 33.047550, 26.484818>,  <39.436832, 33.122227, 26.864092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946194, 33.047550, 26.484818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929043, 32.726562, 26.722879>,  <39.918751, 32.533970, 26.865717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929043, 32.726562, 26.722879>,  <39.946194, 33.047550, 26.484818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929043, 32.726562, 26.722879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059813, -0.596696, -0.800235,
		0.997288, 0.001284, 0.073584,
		-0.042880, -0.802467, 0.595154,
		39.916180, 32.485821, 26.901426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569271, 32.764999, 26.400476>,  <39.946194, 33.047550, 26.484818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569271, 32.764999, 26.400476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312748, 32.493122, 26.542879>,  <40.158833, 32.329994, 26.628321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312748, 32.493122, 26.542879>,  <40.569271, 32.764999, 26.400476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312748, 32.493122, 26.542879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244041, -0.620576, -0.745204,
		0.727440, -0.391025, 0.563853,
		-0.641307, -0.679695, 0.356006,
		40.120358, 32.289215, 26.649681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915249, 32.189983, 26.354845>,  <40.569271, 32.764999, 26.400476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915249, 32.189983, 26.354845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536247, 32.068050, 26.393454>,  <40.308846, 31.994892, 26.416618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536247, 32.068050, 26.393454>,  <40.915249, 32.189983, 26.354845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536247, 32.068050, 26.393454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170514, -0.737076, -0.653945,
		0.270483, -0.603158, 0.750360,
		-0.947504, -0.304828, 0.096520,
		40.251995, 31.976603, 26.422409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001678, 31.582644, 26.609150>,  <40.915249, 32.189983, 26.354845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001678, 31.582644, 26.609150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657299, 31.637222, 26.413132>,  <40.450672, 31.669970, 26.295521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657299, 31.637222, 26.413132>,  <41.001678, 31.582644, 26.609150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657299, 31.637222, 26.413132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195030, -0.801196, -0.565728,
		-0.469812, -0.582638, 0.663181,
		-0.860953, 0.136446, -0.490044,
		40.399014, 31.678156, 26.266119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749870, 30.910830, 26.422775>,  <41.001678, 31.582644, 26.609150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749870, 30.910830, 26.422775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544907, 31.155622, 26.181807>,  <40.421928, 31.302498, 26.037226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544907, 31.155622, 26.181807>,  <40.749870, 30.910830, 26.422775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544907, 31.155622, 26.181807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059710, -0.725211, -0.685933,
		-0.856661, -0.315510, 0.408149,
		-0.512413, 0.611982, -0.602420,
		40.391182, 31.339216, 26.001080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360203, 30.469404, 25.980158>,  <40.749870, 30.910830, 26.422775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360203, 30.469404, 25.980158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318916, 30.809496, 25.773682>,  <40.294144, 31.013552, 25.649796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318916, 30.809496, 25.773682>,  <40.360203, 30.469404, 25.980158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318916, 30.809496, 25.773682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049039, -0.513982, -0.856398,
		-0.993449, -0.113708, 0.011357,
		-0.103217, 0.850231, -0.516192,
		40.287952, 31.064566, 25.618824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834423, 30.366512, 25.397135>,  <40.360203, 30.469404, 25.980158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834423, 30.366512, 25.397135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021595, 30.698969, 25.276974>,  <40.133900, 30.898443, 25.204878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021595, 30.698969, 25.276974>,  <39.834423, 30.366512, 25.397135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021595, 30.698969, 25.276974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111891, -0.392893, -0.912752,
		-0.876652, 0.393495, -0.276845,
		0.467933, 0.831142, -0.300401,
		40.161976, 30.948311, 25.186853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527927, 30.585941, 24.779406>,  <39.834423, 30.366512, 25.397135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527927, 30.585941, 24.779406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890797, 30.753725, 24.766146>,  <40.108517, 30.854395, 24.758190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890797, 30.753725, 24.766146>,  <39.527927, 30.585941, 24.779406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890797, 30.753725, 24.766146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181619, -0.461422, -0.868392,
		-0.379550, 0.781758, -0.494769,
		0.907169, 0.419458, -0.033150,
		40.162949, 30.879562, 24.756201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644020, 30.832983, 24.033440>,  <39.527927, 30.585941, 24.779406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644020, 30.832983, 24.033440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999092, 30.760874, 24.202919>,  <40.212135, 30.717607, 24.304607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999092, 30.760874, 24.202919>,  <39.644020, 30.832983, 24.033440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999092, 30.760874, 24.202919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275232, -0.529958, -0.802117,
		0.369143, 0.828641, -0.420818,
		0.887683, -0.180273, 0.423699,
		40.265396, 30.706791, 24.330029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036343, 30.913540, 23.515383>,  <39.644020, 30.832983, 24.033440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036343, 30.913540, 23.515383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279575, 30.718925, 23.766306>,  <40.425514, 30.602158, 23.916861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279575, 30.718925, 23.766306>,  <40.036343, 30.913540, 23.515383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279575, 30.718925, 23.766306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327643, -0.565945, -0.756543,
		0.723106, 0.665576, -0.184733,
		0.608085, -0.486534, 0.627309,
		40.462002, 30.572966, 23.954498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752071, 31.089025, 23.271292>,  <40.036343, 30.913540, 23.515383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752071, 31.089025, 23.271292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789093, 30.760309, 23.496181>,  <40.811306, 30.563080, 23.631115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789093, 30.760309, 23.496181>,  <40.752071, 31.089025, 23.271292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789093, 30.760309, 23.496181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399067, -0.486697, -0.777092,
		0.912238, 0.296291, 0.282901,
		0.092558, -0.821789, 0.562224,
		40.816860, 30.513773, 23.664848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460709, 30.778980, 23.110226>,  <40.752071, 31.089025, 23.271292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460709, 30.778980, 23.110226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261574, 30.480711, 23.287373>,  <41.142094, 30.301748, 23.393660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261574, 30.480711, 23.287373>,  <41.460709, 30.778980, 23.110226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261574, 30.480711, 23.287373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368182, -0.644055, -0.670548,
		0.785241, -0.170767, 0.595177,
		-0.497834, -0.745675, 0.442865,
		41.112225, 30.257008, 23.420233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883801, 30.215273, 23.380106>,  <41.460709, 30.778980, 23.110226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883801, 30.215273, 23.380106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528179, 30.037836, 23.334837>,  <41.314804, 29.931374, 23.307676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528179, 30.037836, 23.334837>,  <41.883801, 30.215273, 23.380106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528179, 30.037836, 23.334837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445979, -0.783408, -0.432869,
		0.103358, -0.435316, 0.894325,
		-0.889056, -0.443590, -0.113171,
		41.261463, 29.904758, 23.300886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.114113, 30.054317, 22.397861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.396328, 30.337418, 22.412355>,  <34.565655, 30.507277, 22.421051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.396328, 30.337418, 22.412355>,  <34.114113, 30.054317, 22.397861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396328, 30.337418, 22.412355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101283, 0.050098, 0.993596,
		0.701401, -0.704686, 0.107028,
		0.705535, 0.707749, 0.036234,
		34.607990, 30.549742, 22.423225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585594, 29.775778, 22.936180>,  <34.114113, 30.054317, 22.397861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585594, 29.775778, 22.936180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.686260, 30.160952, 22.897358>,  <34.746658, 30.392056, 22.874065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.686260, 30.160952, 22.897358>,  <34.585594, 29.775778, 22.936180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686260, 30.160952, 22.897358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225963, 0.039049, 0.973353,
		0.941067, -0.266887, -0.207761,
		0.251662, 0.962936, -0.097054,
		34.761761, 30.449833, 22.868242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167564, 29.879852, 23.325224>,  <34.585594, 29.775778, 22.936180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167564, 29.879852, 23.325224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.047241, 30.258648, 23.280094>,  <34.975048, 30.485926, 23.253017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.047241, 30.258648, 23.280094>,  <35.167564, 29.879852, 23.325224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047241, 30.258648, 23.280094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190805, 0.175670, 0.965781,
		0.934402, 0.268988, -0.233533,
		-0.300808, 0.946988, -0.112822,
		34.956997, 30.542744, 23.246248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677769, 30.283587, 23.733683>,  <35.167564, 29.879852, 23.325224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677769, 30.283587, 23.733683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.348351, 30.508251, 23.701931>,  <35.150700, 30.643051, 23.682880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.348351, 30.508251, 23.701931>,  <35.677769, 30.283587, 23.733683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348351, 30.508251, 23.701931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062422, 0.228820, 0.971465,
		0.563799, 0.795095, -0.223505,
		-0.823549, 0.561663, -0.079377,
		35.101284, 30.676750, 23.678118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797943, 30.879007, 24.154943>,  <35.677769, 30.283587, 23.733683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797943, 30.879007, 24.154943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.400951, 30.902822, 24.112152>,  <35.162758, 30.917110, 24.086477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.400951, 30.902822, 24.112152>,  <35.797943, 30.879007, 24.154943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400951, 30.902822, 24.112152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078052, 0.365520, 0.927525,
		0.094325, 0.928897, -0.358124,
		-0.992477, 0.059536, -0.106980,
		35.103207, 30.920683, 24.080059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664120, 31.579567, 24.252651>,  <35.797943, 30.879007, 24.154943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664120, 31.579567, 24.252651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.327740, 31.380428, 24.337454>,  <35.125912, 31.260946, 24.388334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.327740, 31.380428, 24.337454>,  <35.664120, 31.579567, 24.252651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327740, 31.380428, 24.337454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054207, 0.312317, 0.948430,
		-0.538384, 0.809078, -0.235658,
		-0.840954, -0.497846, 0.212005,
		35.075455, 31.231075, 24.401054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212357, 32.060299, 24.450951>,  <35.664120, 31.579567, 24.252651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212357, 32.060299, 24.450951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.046955, 31.730713, 24.605917>,  <34.947716, 31.532961, 24.698896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.046955, 31.730713, 24.605917>,  <35.212357, 32.060299, 24.450951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046955, 31.730713, 24.605917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045270, 0.443577, 0.895092,
		-0.909376, 0.352585, -0.220722,
		-0.413504, -0.823968, 0.387417,
		34.922905, 31.483522, 24.722141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757549, 32.229660, 24.953941>,  <35.212357, 32.060299, 24.450951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757549, 32.229660, 24.953941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.813599, 31.852531, 25.074903>,  <34.847229, 31.626253, 25.147480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.813599, 31.852531, 25.074903>,  <34.757549, 32.229660, 24.953941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813599, 31.852531, 25.074903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023021, 0.308437, 0.950966,
		-0.989867, -0.126289, 0.064924,
		0.140122, -0.942824, 0.302404,
		34.855637, 31.569685, 25.165625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189640, 32.164276, 25.484169>,  <34.757549, 32.229660, 24.953941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189640, 32.164276, 25.484169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.454472, 31.866741, 25.520735>,  <34.613369, 31.688219, 25.542675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.454472, 31.866741, 25.520735>,  <34.189640, 32.164276, 25.484169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454472, 31.866741, 25.520735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145879, 0.247558, 0.957828,
		-0.735100, -0.620822, 0.272413,
		0.662078, -0.743839, 0.091414,
		34.653095, 31.643589, 25.548159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990902, 31.825508, 26.058580>,  <34.189640, 32.164276, 25.484169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990902, 31.825508, 26.058580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.368347, 31.694994, 26.036221>,  <34.594814, 31.616686, 26.022804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.368347, 31.694994, 26.036221>,  <33.990902, 31.825508, 26.058580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368347, 31.694994, 26.036221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076443, 0.050472, 0.995796,
		-0.322095, -0.943922, 0.072569,
		0.943616, -0.326288, -0.055899,
		34.651432, 31.597109, 26.019451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136448, 31.172276, 26.589794>,  <33.990902, 31.825508, 26.058580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136448, 31.172276, 26.589794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.483383, 31.348293, 26.496771>,  <34.691544, 31.453903, 26.440956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.483383, 31.348293, 26.496771>,  <34.136448, 31.172276, 26.589794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483383, 31.348293, 26.496771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231787, 0.056373, 0.971132,
		0.440450, -0.896206, -0.053102,
		0.867340, 0.440043, -0.232558,
		34.743584, 31.480307, 26.427004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527458, 30.903275, 27.079700>,  <34.136448, 31.172276, 26.589794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527458, 30.903275, 27.079700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.758221, 31.202421, 26.948324>,  <34.896679, 31.381908, 26.869497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.758221, 31.202421, 26.948324>,  <34.527458, 30.903275, 27.079700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758221, 31.202421, 26.948324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386541, 0.104260, 0.916360,
		0.719558, -0.655612, -0.228932,
		0.576908, 0.747866, -0.328442,
		34.931293, 31.426781, 26.849792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230682, 30.791012, 27.257233>,  <34.527458, 30.903275, 27.079700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230682, 30.791012, 27.257233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.222019, 31.187243, 27.203136>,  <35.216824, 31.424980, 27.170679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.222019, 31.187243, 27.203136>,  <35.230682, 30.791012, 27.257233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222019, 31.187243, 27.203136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341310, 0.134471, 0.930283,
		0.939702, -0.026015, -0.341005,
		-0.021654, 0.990576, -0.135241,
		35.215523, 31.484415, 27.162563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791336, 31.002331, 27.783859>,  <35.230682, 30.791012, 27.257233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791336, 31.002331, 27.783859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.565742, 31.319401, 27.691259>,  <35.430386, 31.509644, 27.635698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.565742, 31.319401, 27.691259>,  <35.791336, 31.002331, 27.783859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565742, 31.319401, 27.691259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146462, 0.371911, 0.916641,
		0.812697, 0.483061, -0.325847,
		-0.563980, 0.792675, -0.231501,
		35.396549, 31.557203, 27.621809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524269, 30.763323, 27.929657>,  <35.791336, 31.002331, 27.783859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524269, 30.763323, 27.929657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.458637, 30.411581, 28.108459>,  <36.419258, 30.200537, 28.215740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.458637, 30.411581, 28.108459>,  <36.524269, 30.763323, 27.929657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458637, 30.411581, 28.108459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180960, -0.418623, -0.889948,
		0.969706, -0.226916, -0.090439,
		-0.164083, -0.879354, 0.447004,
		36.409412, 30.147776, 28.242561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843300, 30.333376, 27.502333>,  <36.524269, 30.763323, 27.929657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843300, 30.333376, 27.502333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.615288, 30.095516, 27.729124>,  <36.478481, 29.952801, 27.865198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.615288, 30.095516, 27.729124>,  <36.843300, 30.333376, 27.502333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615288, 30.095516, 27.729124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150058, -0.603113, -0.783414,
		0.807807, -0.531646, 0.254559,
		-0.570027, -0.594648, 0.566976,
		36.444279, 29.917122, 27.899218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156399, 29.590885, 27.399483>,  <36.843300, 30.333376, 27.502333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156399, 29.590885, 27.399483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.770893, 29.587364, 27.506123>,  <36.539589, 29.585251, 27.570107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.770893, 29.587364, 27.506123>,  <37.156399, 29.590885, 27.399483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770893, 29.587364, 27.506123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240199, -0.406010, -0.881737,
		0.116004, -0.913826, 0.389185,
		-0.963768, -0.008803, 0.266599,
		36.481762, 29.584723, 27.586102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892475, 28.982401, 27.109926>,  <37.156399, 29.590885, 27.399483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892475, 28.982401, 27.109926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.556068, 29.191294, 27.166447>,  <36.354225, 29.316629, 27.200359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.556068, 29.191294, 27.166447>,  <36.892475, 28.982401, 27.109926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556068, 29.191294, 27.166447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369684, -0.364043, -0.854872,
		-0.395004, -0.771197, 0.499227,
		-0.841014, 0.522234, 0.141301,
		36.303764, 29.347963, 27.208838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302116, 28.495296, 27.085466>,  <36.892475, 28.982401, 27.109926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302116, 28.495296, 27.085466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.176979, 28.868196, 27.012760>,  <36.101894, 29.091936, 26.969137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.176979, 28.868196, 27.012760>,  <36.302116, 28.495296, 27.085466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176979, 28.868196, 27.012760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353372, -0.291875, -0.888784,
		-0.881621, -0.213822, 0.420743,
		-0.312846, 0.932249, -0.181765,
		36.083126, 29.147871, 26.958231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581806, 28.424210, 27.001026>,  <36.302116, 28.495296, 27.085466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581806, 28.424210, 27.001026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.660572, 28.780754, 26.837709>,  <35.707832, 28.994680, 26.739719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.660572, 28.780754, 26.837709>,  <35.581806, 28.424210, 27.001026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660572, 28.780754, 26.837709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297976, -0.342336, -0.891076,
		-0.934043, 0.297124, 0.198194,
		0.196912, 0.891360, -0.408292,
		35.719646, 29.048162, 26.715221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942757, 28.567719, 26.525654>,  <35.581806, 28.424210, 27.001026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942757, 28.567719, 26.525654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.197109, 28.844761, 26.389444>,  <35.349720, 29.010986, 26.307718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.197109, 28.844761, 26.389444>,  <34.942757, 28.567719, 26.525654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197109, 28.844761, 26.389444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324802, -0.160093, -0.932134,
		-0.700116, 0.703327, 0.123160,
		0.635878, 0.692605, -0.340526,
		35.387871, 29.052542, 26.287287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627274, 29.032061, 26.039070>,  <34.942757, 28.567719, 26.525654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627274, 29.032061, 26.039070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.015457, 29.057585, 25.946005>,  <35.248367, 29.072899, 25.890165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.015457, 29.057585, 25.946005>,  <34.627274, 29.032061, 26.039070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015457, 29.057585, 25.946005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231087, -0.031191, -0.972433,
		-0.069307, 0.997474, -0.015524,
		0.970461, 0.063809, -0.232665,
		35.306595, 29.076727, 25.876205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732536, 29.495810, 25.407368>,  <34.627274, 29.032061, 26.039070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732536, 29.495810, 25.407368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.074718, 29.288830, 25.415815>,  <35.280025, 29.164642, 25.420883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.074718, 29.288830, 25.415815>,  <34.732536, 29.495810, 25.407368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074718, 29.288830, 25.415815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001289, -0.042906, -0.999078,
		0.517880, 0.854636, -0.037371,
		0.855452, -0.517451, 0.021118,
		35.331352, 29.133595, 25.422152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205574, 29.681963, 24.789499>,  <34.732536, 29.495810, 25.407368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205574, 29.681963, 24.789499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.375481, 29.334494, 24.891464>,  <35.477425, 29.126011, 24.952644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.375481, 29.334494, 24.891464>,  <35.205574, 29.681963, 24.789499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375481, 29.334494, 24.891464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218266, -0.175006, -0.960069,
		0.878599, 0.463441, 0.115266,
		0.424763, -0.868674, 0.254914,
		35.502911, 29.073891, 24.967937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903553, 29.606079, 24.455029>,  <35.205574, 29.681963, 24.789499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903553, 29.606079, 24.455029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.780766, 29.229956, 24.513798>,  <35.707092, 29.004282, 24.549059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.780766, 29.229956, 24.513798>,  <35.903553, 29.606079, 24.455029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780766, 29.229956, 24.513798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441004, -0.277339, -0.853580,
		0.843378, -0.197227, 0.499815,
		-0.306967, -0.940311, 0.146924,
		35.688675, 28.947863, 24.557875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544449, 29.229433, 24.413904>,  <35.903553, 29.606079, 24.455029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544449, 29.229433, 24.413904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.238373, 28.981045, 24.345940>,  <36.054726, 28.832012, 24.305161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.238373, 28.981045, 24.345940>,  <36.544449, 29.229433, 24.413904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238373, 28.981045, 24.345940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450629, -0.328119, -0.830223,
		0.459794, -0.711850, 0.530903,
		-0.765194, -0.620973, -0.169913,
		36.008816, 28.794752, 24.294966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900414, 28.551069, 24.220709>,  <36.544449, 29.229433, 24.413904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900414, 28.551069, 24.220709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.523464, 28.490669, 24.101294>,  <36.297295, 28.454430, 24.029644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.523464, 28.490669, 24.101294>,  <36.900414, 28.551069, 24.220709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523464, 28.490669, 24.101294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334215, -0.384835, -0.860350,
		0.015024, -0.910550, 0.413126,
		-0.942377, -0.150999, -0.298538,
		36.240749, 28.445370, 24.011732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956696, 27.895824, 23.891548>,  <36.900414, 28.551069, 24.220709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956696, 27.895824, 23.891548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.612373, 28.055725, 23.765553>,  <36.405781, 28.151665, 23.689955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.612373, 28.055725, 23.765553>,  <36.956696, 27.895824, 23.891548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612373, 28.055725, 23.765553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280215, -0.144391, -0.949016,
		-0.424851, -0.905180, 0.012276,
		-0.860802, 0.399750, -0.314990,
		36.354134, 28.175650, 23.671055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470726, 27.259832, 23.870474>,  <36.956696, 27.895824, 23.891548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470726, 27.259832, 23.870474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.840038, 27.374628, 23.768347>,  <38.061626, 27.443506, 23.707071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.840038, 27.374628, 23.768347>,  <37.470726, 27.259832, 23.870474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840038, 27.374628, 23.768347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172370, 0.284450, 0.943067,
		0.343277, -0.914726, 0.213159,
		0.923282, 0.286991, -0.255317,
		38.117023, 27.460724, 23.691751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963837, 27.049471, 24.428671>,  <37.470726, 27.259832, 23.870474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963837, 27.049471, 24.428671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.163841, 27.332750, 24.229296>,  <38.283844, 27.502718, 24.109671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.163841, 27.332750, 24.229296>,  <37.963837, 27.049471, 24.428671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163841, 27.332750, 24.229296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257930, 0.427647, 0.866366,
		0.826714, -0.561758, 0.031164,
		0.500015, 0.708199, -0.498437,
		38.313847, 27.545210, 24.079765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649509, 26.952185, 24.662973>,  <37.963837, 27.049471, 24.428671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649509, 26.952185, 24.662973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.591862, 27.323559, 24.526012>,  <38.557274, 27.546383, 24.443836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.591862, 27.323559, 24.526012>,  <38.649509, 26.952185, 24.662973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591862, 27.323559, 24.526012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445392, 0.369844, 0.815378,
		0.883661, -0.034994, -0.466818,
		-0.144116, 0.928435, -0.342403,
		38.548626, 27.602089, 24.423292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191936, 27.215374, 24.943081>,  <38.649509, 26.952185, 24.662973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191936, 27.215374, 24.943081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.039139, 27.572458, 24.847456>,  <38.947460, 27.786709, 24.790081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.039139, 27.572458, 24.847456>,  <39.191936, 27.215374, 24.943081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039139, 27.572458, 24.847456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579007, 0.432796, 0.690970,
		0.720299, 0.125530, -0.682210,
		-0.381995, 0.892709, -0.239060,
		38.924541, 27.840271, 24.775738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789394, 27.715473, 24.770960>,  <39.191936, 27.215374, 24.943081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789394, 27.715473, 24.770960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459965, 27.904802, 24.895977>,  <39.262306, 28.018400, 24.970987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459965, 27.904802, 24.895977>,  <39.789394, 27.715473, 24.770960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459965, 27.904802, 24.895977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539261, 0.482594, 0.690145,
		0.175832, 0.736931, -0.652699,
		-0.823578, 0.473325, 0.312543,
		39.212891, 28.046801, 24.989740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107700, 28.330843, 24.966396>,  <39.789394, 27.715473, 24.770960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107700, 28.330843, 24.966396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.738907, 28.312387, 25.120188>,  <39.517632, 28.301315, 25.212463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.738907, 28.312387, 25.120188>,  <40.107700, 28.330843, 24.966396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738907, 28.312387, 25.120188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306726, 0.519049, 0.797814,
		-0.236372, 0.853499, -0.464401,
		-0.921980, -0.046137, 0.384478,
		39.462315, 28.298546, 25.235531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821072, 29.018333, 25.119923>,  <40.107700, 28.330843, 24.966396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821072, 29.018333, 25.119923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.635159, 28.759186, 25.361334>,  <39.523613, 28.603697, 25.506180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.635159, 28.759186, 25.361334>,  <39.821072, 29.018333, 25.119923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635159, 28.759186, 25.361334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319131, 0.513237, 0.796708,
		-0.825914, 0.562899, -0.031788,
		-0.464781, -0.647868, 0.603528,
		39.495724, 28.564825, 25.542393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437714, 29.425259, 25.521112>,  <39.821072, 29.018333, 25.119923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437714, 29.425259, 25.521112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.492607, 29.074331, 25.705059>,  <39.525543, 28.863775, 25.815428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.492607, 29.074331, 25.705059>,  <39.437714, 29.425259, 25.521112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492607, 29.074331, 25.705059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374716, 0.475740, 0.795776,
		-0.916927, 0.063111, 0.394034,
		0.137236, -0.877319, 0.459868,
		39.533779, 28.811136, 25.843019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218151, 29.515007, 26.291941>,  <39.437714, 29.425259, 25.521112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218151, 29.515007, 26.291941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.432861, 29.177576, 26.285646>,  <39.561687, 28.975117, 26.281870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.432861, 29.177576, 26.285646>,  <39.218151, 29.515007, 26.291941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432861, 29.177576, 26.285646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427254, 0.255691, 0.867223,
		-0.727547, -0.472229, 0.497671,
		0.536778, -0.843577, -0.015735,
		39.593895, 28.924503, 26.280926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108898, 29.151995, 26.908844>,  <39.218151, 29.515007, 26.291941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108898, 29.151995, 26.908844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.464016, 29.016474, 26.784241>,  <39.677086, 28.935162, 26.709478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.464016, 29.016474, 26.784241>,  <39.108898, 29.151995, 26.908844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464016, 29.016474, 26.784241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424854, 0.343016, 0.837758,
		-0.176985, -0.876100, 0.448470,
		0.887792, -0.338805, -0.311506,
		39.730354, 28.914833, 26.690788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328163, 28.705851, 27.393118>,  <39.108898, 29.151995, 26.908844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328163, 28.705851, 27.393118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.671337, 28.792124, 27.206604>,  <39.877243, 28.843887, 27.094696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.671337, 28.792124, 27.206604>,  <39.328163, 28.705851, 27.393118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671337, 28.792124, 27.206604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437868, 0.167751, 0.883250,
		0.268724, -0.961945, 0.049479,
		0.857939, 0.215686, -0.466284,
		39.928719, 28.856829, 27.066719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923763, 28.240208, 27.695019>,  <39.328163, 28.705851, 27.393118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923763, 28.240208, 27.695019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.124435, 28.536322, 27.516001>,  <40.244839, 28.713989, 27.408590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.124435, 28.536322, 27.516001>,  <39.923763, 28.240208, 27.695019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124435, 28.536322, 27.516001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585714, 0.090044, 0.805501,
		0.636598, -0.666238, -0.388420,
		0.501680, 0.740283, -0.447547,
		40.274940, 28.758408, 27.381737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599812, 28.199917, 27.998737>,  <39.923763, 28.240208, 27.695019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599812, 28.199917, 27.998737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.550312, 28.561993, 27.836098>,  <40.520615, 28.779238, 27.738514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.550312, 28.561993, 27.836098>,  <40.599812, 28.199917, 27.998737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550312, 28.561993, 27.836098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302068, 0.424664, 0.853472,
		0.945220, -0.017207, -0.325979,
		-0.123746, 0.905188, -0.406599,
		40.513187, 28.833549, 27.714119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233456, 28.431906, 28.221516>,  <40.599812, 28.199917, 27.998737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233456, 28.431906, 28.221516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.007809, 28.744827, 28.115860>,  <40.872421, 28.932581, 28.052467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.007809, 28.744827, 28.115860>,  <41.233456, 28.431906, 28.221516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007809, 28.744827, 28.115860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227830, 0.454956, 0.860877,
		0.793638, 0.425459, -0.434882,
		-0.564120, 0.782304, -0.264138,
		40.838573, 28.979519, 28.036619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.990437, 29.479664, 23.285789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.614273, 29.493347, 23.150461>,  <41.388577, 29.501558, 23.069263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.614273, 29.493347, 23.150461>,  <41.990437, 29.479664, 23.285789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614273, 29.493347, 23.150461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221638, -0.692894, -0.686130,
		-0.257894, -0.720228, 0.644021,
		-0.940408, 0.034209, -0.338322,
		41.332150, 29.503611, 23.048964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802994, 28.751341, 23.082413>,  <41.990437, 29.479664, 23.285789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802994, 28.751341, 23.082413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.546692, 28.994678, 22.895071>,  <41.392910, 29.140680, 22.782667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.546692, 28.994678, 22.895071>,  <41.802994, 28.751341, 23.082413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546692, 28.994678, 22.895071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059363, -0.568951, -0.820226,
		-0.765448, -0.553366, 0.328445,
		-0.640754, 0.608342, -0.468352,
		41.354465, 29.177181, 22.754566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348774, 28.310461, 22.674067>,  <41.802994, 28.751341, 23.082413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348774, 28.310461, 22.674067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.304279, 28.663692, 22.491726>,  <41.277580, 28.875631, 22.382322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.304279, 28.663692, 22.491726>,  <41.348774, 28.310461, 22.674067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304279, 28.663692, 22.491726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062226, -0.451608, -0.890044,
		-0.991844, -0.127373, -0.004714,
		-0.111239, 0.883077, -0.455851,
		41.270908, 28.928616, 22.354971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103432, 28.049650, 22.061346>,  <41.348774, 28.310461, 22.674067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103432, 28.049650, 22.061346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.141212, 28.440971, 21.987585>,  <41.163883, 28.675764, 21.943329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.141212, 28.440971, 21.987585>,  <41.103432, 28.049650, 22.061346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141212, 28.440971, 21.987585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056480, -0.179668, -0.982105,
		-0.993926, 0.103180, 0.038284,
		0.094456, 0.978301, -0.184404,
		41.169548, 28.734461, 21.932264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588562, 28.336349, 21.674192>,  <41.103432, 28.049650, 22.061346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588562, 28.336349, 21.674192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.891605, 28.580326, 21.581245>,  <41.073433, 28.726711, 21.525478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.891605, 28.580326, 21.581245>,  <40.588562, 28.336349, 21.674192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891605, 28.580326, 21.581245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098380, -0.245227, -0.964461,
		-0.645247, 0.753549, -0.125781,
		0.757613, 0.609941, -0.232366,
		41.118889, 28.763308, 21.511536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452396, 28.767527, 21.097492>,  <40.588562, 28.336349, 21.674192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452396, 28.767527, 21.097492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.851875, 28.779234, 21.114223>,  <41.091564, 28.786259, 21.124262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.851875, 28.779234, 21.114223>,  <40.452396, 28.767527, 21.097492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851875, 28.779234, 21.114223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045985, -0.159970, -0.986050,
		-0.022171, 0.986688, -0.161108,
		0.998696, 0.029270, 0.041826,
		41.151485, 28.788015, 21.126772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669983, 29.247370, 20.498764>,  <40.452396, 28.767527, 21.097492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669983, 29.247370, 20.498764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.995628, 29.035675, 20.594366>,  <41.191017, 28.908659, 20.651728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.995628, 29.035675, 20.594366>,  <40.669983, 29.247370, 20.498764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995628, 29.035675, 20.594366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221857, -0.096892, -0.970253,
		0.536652, 0.842923, 0.038533,
		0.814116, -0.529237, 0.239005,
		41.239864, 28.876904, 20.666067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215534, 29.537558, 20.078720>,  <40.669983, 29.247370, 20.498764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215534, 29.537558, 20.078720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.321827, 29.166540, 20.183830>,  <41.385605, 28.943930, 20.246897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.321827, 29.166540, 20.183830>,  <41.215534, 29.537558, 20.078720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321827, 29.166540, 20.183830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240894, -0.200041, -0.949713,
		0.933464, 0.315672, 0.170281,
		0.265734, -0.927542, 0.262775,
		41.401546, 28.888277, 20.262663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659290, 29.419754, 19.527309>,  <41.215534, 29.537558, 20.078720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659290, 29.419754, 19.527309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.613892, 29.061348, 19.699020>,  <41.586651, 28.846304, 19.802046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.613892, 29.061348, 19.699020>,  <41.659290, 29.419754, 19.527309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613892, 29.061348, 19.699020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163295, -0.443016, -0.881517,
		0.980027, -0.029953, 0.196597,
		-0.113500, -0.896013, 0.429276,
		41.579842, 28.792543, 19.827803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139133, 29.020144, 19.195753>,  <41.659290, 29.419754, 19.527309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139133, 29.020144, 19.195753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.867836, 28.774733, 19.357531>,  <41.705059, 28.627487, 19.454597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.867836, 28.774733, 19.357531>,  <42.139133, 29.020144, 19.195753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867836, 28.774733, 19.357531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074354, -0.490260, -0.868399,
		0.731068, -0.619056, 0.286897,
		-0.678241, -0.613526, 0.404443,
		41.664364, 28.590675, 19.478863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390381, 28.292429, 19.118952>,  <42.139133, 29.020144, 19.195753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390381, 28.292429, 19.118952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.991951, 28.281548, 19.152630>,  <41.752892, 28.275019, 19.172836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.991951, 28.281548, 19.152630>,  <42.390381, 28.292429, 19.118952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991951, 28.281548, 19.152630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065204, -0.417569, -0.906303,
		0.059813, -0.908238, 0.414157,
		-0.996077, -0.027204, 0.084197,
		41.693127, 28.273386, 19.177889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175201, 27.548214, 18.972343>,  <42.390381, 28.292429, 19.118952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175201, 27.548214, 18.972343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.877747, 27.809734, 18.916416>,  <41.699272, 27.966646, 18.882860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.877747, 27.809734, 18.916416>,  <42.175201, 27.548214, 18.972343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877747, 27.809734, 18.916416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045492, -0.258125, -0.965040,
		-0.667033, -0.711279, 0.221694,
		-0.743638, 0.653799, -0.139821,
		41.654655, 28.005875, 18.874470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675068, 27.347935, 18.489069>,  <42.175201, 27.548214, 18.972343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675068, 27.347935, 18.489069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.616810, 27.743063, 18.467161>,  <41.581856, 27.980141, 18.454016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.616810, 27.743063, 18.467161>,  <41.675068, 27.347935, 18.489069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616810, 27.743063, 18.467161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155622, -0.077546, -0.984768,
		-0.977021, -0.134899, 0.165020,
		-0.145641, 0.987820, -0.054771,
		41.573116, 28.039410, 18.450729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954781, 27.636600, 18.201096>,  <41.675068, 27.347935, 18.489069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954781, 27.636600, 18.201096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.250553, 27.894451, 18.123428>,  <41.428017, 28.049162, 18.076828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.250553, 27.894451, 18.123428>,  <40.954781, 27.636600, 18.201096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250553, 27.894451, 18.123428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290101, 0.044824, -0.955945,
		-0.607525, 0.763182, 0.220151,
		0.739428, 0.644627, -0.194169,
		41.472382, 28.087839, 18.065178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474335, 27.129902, 18.700731>,  <40.954781, 27.636600, 18.201096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474335, 27.129902, 18.700731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.253563, 26.796490, 18.690935>,  <40.121098, 26.596443, 18.685057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.253563, 26.796490, 18.690935>,  <40.474335, 27.129902, 18.700731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253563, 26.796490, 18.690935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158692, 0.076155, 0.984387,
		-0.818649, 0.547203, -0.174307,
		-0.551934, -0.833528, -0.024493,
		40.087982, 26.546431, 18.683588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824184, 27.265125, 19.020983>,  <40.474335, 27.129902, 18.700731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824184, 27.265125, 19.020983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.853020, 26.866228, 19.028025>,  <39.870319, 26.626890, 19.032249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.853020, 26.866228, 19.028025>,  <39.824184, 27.265125, 19.020983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853020, 26.866228, 19.028025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263207, -0.001994, 0.964737,
		-0.962043, -0.074175, -0.262625,
		0.072083, -0.997243, 0.017605,
		39.874645, 26.567055, 19.033306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181427, 27.025957, 19.279434>,  <39.824184, 27.265125, 19.020983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181427, 27.025957, 19.279434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.449467, 26.734842, 19.337797>,  <39.610291, 26.560173, 19.372814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.449467, 26.734842, 19.337797>,  <39.181427, 27.025957, 19.279434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449467, 26.734842, 19.337797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369835, -0.156931, 0.915748,
		-0.643572, -0.667607, -0.374320,
		0.670103, -0.727787, 0.145908,
		39.650497, 26.516506, 19.381569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838974, 26.399057, 19.483589>,  <39.181427, 27.025957, 19.279434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838974, 26.399057, 19.483589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.206142, 26.385860, 19.641747>,  <39.426445, 26.377943, 19.736641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.206142, 26.385860, 19.641747>,  <38.838974, 26.399057, 19.483589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206142, 26.385860, 19.641747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396765, -0.074135, 0.914922,
		-0.000863, -0.996703, -0.081136,
		0.917920, -0.032981, 0.395393,
		39.481518, 26.375963, 19.760365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728336, 26.015812, 20.141634>,  <38.838974, 26.399057, 19.483589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728336, 26.015812, 20.141634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.090584, 26.184048, 20.163363>,  <39.307934, 26.284990, 20.176399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.090584, 26.184048, 20.163363>,  <38.728336, 26.015812, 20.141634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090584, 26.184048, 20.163363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134182, 0.162677, 0.977513,
		0.402297, -0.892546, 0.203760,
		0.905622, 0.420591, 0.054320,
		39.362270, 26.310225, 20.179659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050613, 25.653576, 20.627241>,  <38.728336, 26.015812, 20.141634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050613, 25.653576, 20.627241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.228737, 26.010744, 20.600729>,  <39.335613, 26.225044, 20.584822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.228737, 26.010744, 20.600729>,  <39.050613, 25.653576, 20.627241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228737, 26.010744, 20.600729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115335, 0.130611, 0.984702,
		0.887916, -0.430855, 0.161147,
		0.445311, 0.892919, -0.066279,
		39.362331, 26.278620, 20.580845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516663, 25.673904, 21.169060>,  <39.050613, 25.653576, 20.627241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516663, 25.673904, 21.169060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.430626, 26.050215, 21.064234>,  <39.379005, 26.276001, 21.001339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.430626, 26.050215, 21.064234>,  <39.516663, 25.673904, 21.169060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430626, 26.050215, 21.064234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155437, 0.231945, 0.960230,
		0.964146, 0.247268, 0.096343,
		-0.215088, 0.940776, -0.262064,
		39.366100, 26.332447, 20.985615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741177, 26.072701, 21.677456>,  <39.516663, 25.673904, 21.169060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741177, 26.072701, 21.677456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.524261, 26.343096, 21.477873>,  <39.394112, 26.505333, 21.358122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.524261, 26.343096, 21.477873>,  <39.741177, 26.072701, 21.677456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524261, 26.343096, 21.477873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294637, 0.403148, 0.866407,
		0.786836, 0.616856, -0.019452,
		-0.542290, 0.675989, -0.498960,
		39.361576, 26.545893, 21.328184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929729, 26.743086, 21.906607>,  <39.741177, 26.072701, 21.677456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929729, 26.743086, 21.906607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.556782, 26.757231, 21.762699>,  <39.333012, 26.765717, 21.676355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.556782, 26.757231, 21.762699>,  <39.929729, 26.743086, 21.906607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556782, 26.757231, 21.762699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321815, 0.372157, 0.870594,
		0.164674, 0.927496, -0.335609,
		-0.932372, 0.035360, -0.359767,
		39.277069, 26.767839, 21.654770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724876, 27.420046, 22.173019>,  <39.929729, 26.743086, 21.906607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724876, 27.420046, 22.173019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.385353, 27.252188, 22.044378>,  <39.181641, 27.151474, 21.967194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.385353, 27.252188, 22.044378>,  <39.724876, 27.420046, 22.173019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385353, 27.252188, 22.044378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501973, 0.448678, 0.739399,
		-0.165988, 0.789042, -0.591490,
		-0.848806, -0.419643, -0.321603,
		39.130711, 27.126295, 21.947897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081699, 27.983307, 22.086605>,  <39.724876, 27.420046, 22.173019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081699, 27.983307, 22.086605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.914066, 27.624653, 22.143753>,  <38.813484, 27.409460, 22.178041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.914066, 27.624653, 22.143753>,  <39.081699, 27.983307, 22.086605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914066, 27.624653, 22.143753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566610, 0.381227, 0.730493,
		-0.709452, 0.225187, -0.667809,
		-0.419084, -0.896637, 0.142868,
		38.788342, 27.355661, 22.186613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355766, 28.139149, 22.294514>,  <39.081699, 27.983307, 22.086605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355766, 28.139149, 22.294514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.389969, 27.759878, 22.416924>,  <38.410492, 27.532316, 22.490368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.389969, 27.759878, 22.416924>,  <38.355766, 28.139149, 22.294514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389969, 27.759878, 22.416924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485795, 0.228486, 0.843681,
		-0.869880, -0.220806, -0.441082,
		0.085508, -0.948176, 0.306022,
		38.415623, 27.475426, 22.508730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772156, 28.018105, 22.580656>,  <38.355766, 28.139149, 22.294514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772156, 28.018105, 22.580656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.012505, 27.730536, 22.720428>,  <38.156715, 27.557995, 22.804293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.012505, 27.730536, 22.720428>,  <37.772156, 28.018105, 22.580656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012505, 27.730536, 22.720428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295717, 0.206204, 0.932755,
		-0.742632, -0.663800, -0.088695,
		0.600873, -0.718922, 0.349431,
		38.192768, 27.514858, 22.825258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394875, 27.625103, 23.071238>,  <37.772156, 28.018105, 22.580656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394875, 27.625103, 23.071238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.784451, 27.581789, 23.150948>,  <38.018196, 27.555801, 23.198772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.784451, 27.581789, 23.150948>,  <37.394875, 27.625103, 23.071238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784451, 27.581789, 23.150948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186703, 0.116008, 0.975543,
		-0.128756, -0.987328, 0.092767,
		0.973942, -0.108287, 0.199274,
		38.076633, 27.549303, 23.210730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743683, 27.379593, 23.344950>,  <37.394875, 27.625103, 23.071238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743683, 27.379593, 23.344950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.563251, 27.735090, 23.312311>,  <36.454990, 27.948389, 23.292728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.563251, 27.735090, 23.312311>,  <36.743683, 27.379593, 23.344950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563251, 27.735090, 23.312311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032821, -0.107885, -0.993622,
		-0.891879, -0.445527, 0.077834,
		-0.451082, 0.888745, -0.081598,
		36.427925, 28.001713, 23.287832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265644, 27.180954, 22.787119>,  <36.743683, 27.379593, 23.344950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265644, 27.180954, 22.787119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.295094, 27.579809, 22.794041>,  <36.312763, 27.819122, 22.798193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.295094, 27.579809, 22.794041>,  <36.265644, 27.180954, 22.787119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295094, 27.579809, 22.794041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034290, 0.019873, -0.999214,
		-0.996696, 0.072973, 0.035655,
		0.073624, 0.997136, 0.017305,
		36.317181, 27.878950, 22.799232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685001, 27.357838, 22.391489>,  <36.265644, 27.180954, 22.787119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685001, 27.357838, 22.391489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.955334, 27.652645, 22.394497>,  <36.117535, 27.829529, 22.396301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.955334, 27.652645, 22.394497>,  <35.685001, 27.357838, 22.391489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955334, 27.652645, 22.394497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130742, 0.129918, -0.982867,
		-0.725367, 0.663270, 0.184162,
		0.675832, 0.737017, 0.007521,
		36.158085, 27.873751, 22.396753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408268, 27.861351, 21.943743>,  <35.685001, 27.357838, 22.391489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408268, 27.861351, 21.943743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.803772, 27.918716, 21.960644>,  <36.041073, 27.953136, 21.970783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.803772, 27.918716, 21.960644>,  <35.408268, 27.861351, 21.943743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803772, 27.918716, 21.960644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031923, 0.073567, -0.996779,
		-0.146061, 0.986924, 0.068162,
		0.988760, 0.143415, 0.042251,
		36.100399, 27.961740, 21.973318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444218, 28.301334, 21.435181>,  <35.408268, 27.861351, 21.943743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444218, 28.301334, 21.435181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.827366, 28.196152, 21.481384>,  <36.057255, 28.133043, 21.509106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.827366, 28.196152, 21.481384>,  <35.444218, 28.301334, 21.435181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827366, 28.196152, 21.481384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157055, 0.142853, -0.977203,
		0.240461, 0.954174, 0.178133,
		0.957869, -0.262956, 0.115507,
		36.114727, 28.117266, 21.516037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729439, 28.672749, 21.032547>,  <35.444218, 28.301334, 21.435181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729439, 28.672749, 21.032547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.032574, 28.414017, 21.066711>,  <36.214455, 28.258778, 21.087210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.032574, 28.414017, 21.066711>,  <35.729439, 28.672749, 21.032547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032574, 28.414017, 21.066711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159900, 0.057217, -0.985474,
		0.632546, 0.760486, 0.146789,
		0.757838, -0.646828, 0.085410,
		36.259926, 28.219969, 21.092335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366936, 28.962433, 20.746824>,  <35.729439, 28.672749, 21.032547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366936, 28.962433, 20.746824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.435402, 28.569122, 20.721951>,  <36.476482, 28.333136, 20.707027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.435402, 28.569122, 20.721951>,  <36.366936, 28.962433, 20.746824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435402, 28.569122, 20.721951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200365, 0.096536, -0.974953,
		0.964653, 0.154421, 0.213539,
		0.171168, -0.983277, -0.062183,
		36.486752, 28.274139, 20.703295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284744, 29.824286, 20.667000>,  <36.366936, 28.962433, 20.746824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284744, 29.824286, 20.667000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.043259, 30.026386, 20.420343>,  <35.898369, 30.147646, 20.272348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.043259, 30.026386, 20.420343>,  <36.284744, 29.824286, 20.667000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043259, 30.026386, 20.420343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632328, 0.167560, 0.756363,
		0.485479, 0.846548, 0.218326,
		-0.603715, 0.505252, -0.616643,
		35.862144, 30.177961, 20.235350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238373, 30.577736, 20.771397>,  <36.284744, 29.824286, 20.667000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238373, 30.577736, 20.771397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899891, 30.450859, 20.600134>,  <35.696800, 30.374733, 20.497375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899891, 30.450859, 20.600134>,  <36.238373, 30.577736, 20.771397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899891, 30.450859, 20.600134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524931, 0.358209, 0.772097,
		-0.091533, 0.878109, -0.469623,
		-0.846208, -0.317192, -0.428159,
		35.646027, 30.355701, 20.471685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819183, 31.152821, 20.760839>,  <36.238373, 30.577736, 20.771397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819183, 31.152821, 20.760839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595348, 30.821836, 20.742197>,  <35.461048, 30.623245, 20.731012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595348, 30.821836, 20.742197>,  <35.819183, 31.152821, 20.760839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595348, 30.821836, 20.742197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508514, 0.298399, 0.807696,
		-0.654430, 0.475674, -0.587755,
		-0.559585, -0.827462, -0.046605,
		35.427471, 30.573599, 20.728216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168022, 31.421509, 20.870714>,  <35.819183, 31.152821, 20.760839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168022, 31.421509, 20.870714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.131508, 31.030445, 20.946445>,  <35.109600, 30.795807, 20.991884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.131508, 31.030445, 20.946445>,  <35.168022, 31.421509, 20.870714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131508, 31.030445, 20.946445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627464, 0.204104, 0.751419,
		-0.773276, -0.050204, -0.632079,
		-0.091286, -0.977661, 0.189330,
		35.104122, 30.737146, 21.003244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426304, 31.246468, 20.950954>,  <35.168022, 31.421509, 20.870714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426304, 31.246468, 20.950954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.660263, 30.984655, 21.142572>,  <34.800636, 30.827568, 21.257544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.660263, 30.984655, 21.142572>,  <34.426304, 31.246468, 20.950954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660263, 30.984655, 21.142572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510199, 0.162248, 0.844614,
		-0.630551, -0.738420, -0.239043,
		0.584895, -0.654531, 0.479047,
		34.835732, 30.788296, 21.286287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961758, 31.011589, 21.391554>,  <34.426304, 31.246468, 20.950954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961758, 31.011589, 21.391554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.301331, 30.837530, 21.511530>,  <34.505074, 30.733095, 21.583515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.301331, 30.837530, 21.511530>,  <33.961758, 31.011589, 21.391554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301331, 30.837530, 21.511530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284438, 0.102143, 0.953237,
		-0.445436, -0.894546, -0.037060,
		0.848930, -0.435148, 0.299942,
		34.556011, 30.706985, 21.601513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836655, 30.535395, 21.940241>,  <33.961758, 31.011589, 21.391554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836655, 30.535395, 21.940241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228218, 30.599716, 21.990637>,  <34.463158, 30.638309, 22.020874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228218, 30.599716, 21.990637>,  <33.836655, 30.535395, 21.940241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228218, 30.599716, 21.990637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130563, 0.018160, 0.991274,
		0.157113, -0.986819, 0.038772,
		0.978912, 0.160804, 0.125989,
		34.521893, 30.647957, 22.028433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.930927, 30.972486, 17.520554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.850891, 30.635555, 17.720732>,  <39.802872, 30.433395, 17.840839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.850891, 30.635555, 17.720732>,  <39.930927, 30.972486, 17.520554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850891, 30.635555, 17.720732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110807, 0.526953, 0.842640,
		-0.973492, 0.113148, -0.198772,
		-0.200087, -0.842329, 0.500447,
		39.790867, 30.382856, 17.870865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234806, 30.965561, 17.924671>,  <39.930927, 30.972486, 17.520554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234806, 30.965561, 17.924671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.490829, 30.732277, 18.124748>,  <39.644444, 30.592306, 18.244795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.490829, 30.732277, 18.124748>,  <39.234806, 30.965561, 17.924671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490829, 30.732277, 18.124748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182721, 0.516794, 0.836383,
		-0.746282, -0.626731, 0.224214,
		0.640060, -0.583209, 0.500191,
		39.682846, 30.557314, 18.274805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851635, 30.729940, 18.497299>,  <39.234806, 30.965561, 17.924671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851635, 30.729940, 18.497299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.234619, 30.690125, 18.605644>,  <39.464409, 30.666235, 18.670650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.234619, 30.690125, 18.605644>,  <38.851635, 30.729940, 18.497299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234619, 30.690125, 18.605644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245854, 0.210095, 0.946264,
		-0.151096, -0.972601, 0.176685,
		0.957458, -0.099538, 0.270862,
		39.521858, 30.660263, 18.686903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841377, 30.311642, 18.998735>,  <38.851635, 30.729940, 18.497299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841377, 30.311642, 18.998735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.158150, 30.553123, 19.035376>,  <39.348213, 30.698011, 19.057360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.158150, 30.553123, 19.035376>,  <38.841377, 30.311642, 18.998735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158150, 30.553123, 19.035376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301008, 0.255454, 0.918770,
		0.531265, -0.755172, 0.384020,
		0.791929, 0.603704, 0.091599,
		39.395729, 30.734234, 19.062855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951370, 30.229691, 19.635036>,  <38.841377, 30.311642, 18.998735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951370, 30.229691, 19.635036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.186687, 30.537067, 19.534315>,  <39.327877, 30.721495, 19.473883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.186687, 30.537067, 19.534315>,  <38.951370, 30.229691, 19.635036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186687, 30.537067, 19.534315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067384, 0.356893, 0.931712,
		0.805836, -0.531152, 0.261738,
		0.588293, 0.768444, -0.251806,
		39.363174, 30.767601, 19.458773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475456, 30.270496, 20.118647>,  <38.951370, 30.229691, 19.635036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475456, 30.270496, 20.118647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.439751, 30.630775, 19.948576>,  <39.418327, 30.846943, 19.846535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.439751, 30.630775, 19.948576>,  <39.475456, 30.270496, 20.118647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439751, 30.630775, 19.948576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036867, 0.423599, 0.905099,
		0.995325, 0.096469, -0.004606,
		-0.089265, 0.900698, -0.425176,
		39.412971, 30.900986, 19.821024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773476, 30.699368, 20.620144>,  <39.475456, 30.270496, 20.118647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773476, 30.699368, 20.620144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.592335, 30.972227, 20.390503>,  <39.483650, 31.135942, 20.252718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.592335, 30.972227, 20.390503>,  <39.773476, 30.699368, 20.620144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592335, 30.972227, 20.390503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094847, 0.603401, 0.791777,
		0.886524, 0.413013, -0.208555,
		-0.452857, 0.682149, -0.574103,
		39.456478, 31.176872, 20.218271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087841, 31.265036, 20.853081>,  <39.773476, 30.699368, 20.620144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087841, 31.265036, 20.853081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.741882, 31.369303, 20.681498>,  <39.534306, 31.431864, 20.578547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.741882, 31.369303, 20.681498>,  <40.087841, 31.265036, 20.853081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741882, 31.369303, 20.681498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130220, 0.708802, 0.693284,
		0.484765, 0.655478, -0.579096,
		-0.864896, 0.260670, -0.428959,
		39.482414, 31.447504, 20.552811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041264, 31.987490, 20.980761>,  <40.087841, 31.265036, 20.853081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041264, 31.987490, 20.980761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.661312, 31.910749, 20.882025>,  <39.433342, 31.864706, 20.822783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.661312, 31.910749, 20.882025>,  <40.041264, 31.987490, 20.980761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661312, 31.910749, 20.882025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311443, 0.649393, 0.693752,
		0.027202, 0.735855, -0.676592,
		-0.949876, -0.191849, -0.246841,
		39.376350, 31.853195, 20.807972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771549, 32.613781, 20.706783>,  <40.041264, 31.987490, 20.980761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771549, 32.613781, 20.706783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.496548, 32.372452, 20.868443>,  <39.331547, 32.227654, 20.965437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.496548, 32.372452, 20.868443>,  <39.771549, 32.613781, 20.706783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496548, 32.372452, 20.868443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165389, 0.672003, 0.721844,
		-0.707095, 0.429430, -0.561789,
		-0.687505, -0.603326, 0.404147,
		39.290295, 32.191452, 20.989687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416248, 33.079678, 21.204456>,  <39.771549, 32.613781, 20.706783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416248, 33.079678, 21.204456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.249638, 32.731396, 21.309046>,  <39.149670, 32.522427, 21.371799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.249638, 32.731396, 21.309046>,  <39.416248, 33.079678, 21.204456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249638, 32.731396, 21.309046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188502, 0.364077, 0.912094,
		-0.889365, 0.330626, -0.315780,
		-0.416530, -0.870709, 0.261474,
		39.124680, 32.470184, 21.387487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858898, 33.288841, 21.562214>,  <39.416248, 33.079678, 21.204456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858898, 33.288841, 21.562214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.968582, 32.922749, 21.680309>,  <39.034393, 32.703094, 21.751165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.968582, 32.922749, 21.680309>,  <38.858898, 33.288841, 21.562214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968582, 32.922749, 21.680309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191585, 0.248860, 0.949402,
		-0.942391, -0.316903, -0.107103,
		0.274214, -0.915228, 0.295238,
		39.050846, 32.648182, 21.768881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081944, 33.327999, 21.422241>,  <38.858898, 33.288841, 21.562214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081944, 33.327999, 21.422241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.761189, 33.514248, 21.272480>,  <37.568737, 33.625996, 21.182623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.761189, 33.514248, 21.272480>,  <38.081944, 33.327999, 21.422241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761189, 33.514248, 21.272480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302124, -0.224621, -0.926427,
		-0.515463, -0.856004, 0.039445,
		-0.801885, 0.465621, -0.374403,
		37.520622, 33.653934, 21.160160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777588, 32.861893, 20.988300>,  <38.081944, 33.327999, 21.422241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777588, 32.861893, 20.988300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.650524, 33.221661, 20.868204>,  <37.574287, 33.437519, 20.796146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.650524, 33.221661, 20.868204>,  <37.777588, 32.861893, 20.988300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650524, 33.221661, 20.868204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122775, -0.274960, -0.953585,
		-0.940223, -0.339776, -0.023083,
		-0.317659, 0.899416, -0.300239,
		37.555225, 33.491486, 20.778131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203213, 32.734009, 20.513681>,  <37.777588, 32.861893, 20.988300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203213, 32.734009, 20.513681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.364590, 33.090637, 20.431381>,  <37.461418, 33.304615, 20.382000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.364590, 33.090637, 20.431381>,  <37.203213, 32.734009, 20.513681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364590, 33.090637, 20.431381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026744, -0.213278, -0.976625,
		-0.914612, 0.399519, -0.062202,
		0.403447, 0.891570, -0.205752,
		37.485622, 33.358109, 20.369656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850327, 33.040501, 19.874413>,  <37.203213, 32.734009, 20.513681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850327, 33.040501, 19.874413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.202908, 33.228619, 19.891705>,  <37.414455, 33.341492, 19.902079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.202908, 33.228619, 19.891705>,  <36.850327, 33.040501, 19.874413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202908, 33.228619, 19.891705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034319, 0.027505, -0.999032,
		-0.471032, 0.882079, 0.008104,
		0.881448, 0.470298, 0.043228,
		37.467342, 33.369709, 19.904673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754299, 33.310307, 19.316206>,  <36.850327, 33.040501, 19.874413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754299, 33.310307, 19.316206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.140049, 33.373814, 19.400852>,  <37.371498, 33.411919, 19.451639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.140049, 33.373814, 19.400852>,  <36.754299, 33.310307, 19.316206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140049, 33.373814, 19.400852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221870, -0.049715, -0.973808,
		-0.144086, 0.986064, -0.083169,
		0.964372, 0.158764, 0.211615,
		37.429359, 33.421444, 19.464336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964314, 33.739632, 18.800722>,  <36.754299, 33.310307, 19.316206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964314, 33.739632, 18.800722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.318924, 33.626274, 18.947010>,  <37.531693, 33.558258, 19.034782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.318924, 33.626274, 18.947010>,  <36.964314, 33.739632, 18.800722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318924, 33.626274, 18.947010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336626, -0.147191, -0.930063,
		0.317407, 0.947640, -0.035090,
		0.886530, -0.283397, 0.365720,
		37.584885, 33.541256, 19.056726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612598, 34.011024, 18.320309>,  <36.964314, 33.739632, 18.800722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612598, 34.011024, 18.320309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.738800, 33.688938, 18.521139>,  <37.814522, 33.495686, 18.641638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.738800, 33.688938, 18.521139>,  <37.612598, 34.011024, 18.320309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738800, 33.688938, 18.521139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419943, -0.355990, -0.834817,
		0.850943, 0.474234, 0.225828,
		0.315506, -0.805216, 0.502078,
		37.833450, 33.447372, 18.671762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288506, 33.832764, 18.004663>,  <37.612598, 34.011024, 18.320309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288506, 33.832764, 18.004663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.143196, 33.505211, 18.182409>,  <38.056011, 33.308678, 18.289057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.143196, 33.505211, 18.182409>,  <38.288506, 33.832764, 18.004663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143196, 33.505211, 18.182409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189827, -0.532001, -0.825191,
		0.912138, -0.215421, 0.348710,
		-0.363277, -0.818882, 0.444366,
		38.034214, 33.259544, 18.315720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758842, 33.390129, 17.683853>,  <38.288506, 33.832764, 18.004663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758842, 33.390129, 17.683853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.477718, 33.168827, 17.862726>,  <38.309044, 33.036045, 17.970049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.477718, 33.168827, 17.862726>,  <38.758842, 33.390129, 17.683853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477718, 33.168827, 17.862726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138107, -0.722766, -0.677153,
		0.697844, -0.414150, 0.584374,
		-0.702809, -0.553253, 0.447181,
		38.266876, 33.002850, 17.996880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039642, 32.639549, 17.829205>,  <38.758842, 33.390129, 17.683853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039642, 32.639549, 17.829205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.645370, 32.573483, 17.842754>,  <38.408806, 32.533844, 17.850885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.645370, 32.573483, 17.842754>,  <39.039642, 32.639549, 17.829205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645370, 32.573483, 17.842754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126699, -0.858170, -0.497485,
		0.111237, -0.486071, 0.866811,
		-0.985684, -0.165163, 0.033876,
		38.349667, 32.523933, 17.852917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894596, 31.951744, 18.017126>,  <39.039642, 32.639549, 17.829205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894596, 31.951744, 18.017126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.560608, 32.048790, 17.819555>,  <38.360214, 32.107018, 17.701014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.560608, 32.048790, 17.819555>,  <38.894596, 31.951744, 18.017126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560608, 32.048790, 17.819555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132847, -0.782149, -0.608764,
		-0.534018, -0.573917, 0.620841,
		-0.834971, 0.242614, -0.493925,
		38.310116, 32.121574, 17.671377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593338, 31.358168, 17.888205>,  <38.894596, 31.951744, 18.017126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593338, 31.358168, 17.888205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.408058, 31.573473, 17.606575>,  <38.296890, 31.702656, 17.437597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.408058, 31.573473, 17.606575>,  <38.593338, 31.358168, 17.888205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408058, 31.573473, 17.606575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102633, -0.821669, -0.560648,
		-0.880293, -0.187429, 0.435838,
		-0.463197, 0.538266, -0.704073,
		38.269100, 31.734953, 17.395353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988132, 30.952652, 17.657705>,  <38.593338, 31.358168, 17.888205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988132, 30.952652, 17.657705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.052048, 31.225965, 17.372723>,  <38.090397, 31.389954, 17.201733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.052048, 31.225965, 17.372723>,  <37.988132, 30.952652, 17.657705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052048, 31.225965, 17.372723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130314, -0.700811, -0.701343,
		-0.978513, 0.204906, -0.022937,
		0.159784, 0.683284, -0.712455,
		38.099983, 31.430950, 17.158985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433964, 31.002497, 17.237556>,  <37.988132, 30.952652, 17.657705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433964, 31.002497, 17.237556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.764809, 31.092018, 17.031332>,  <37.963314, 31.145731, 16.907597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.764809, 31.092018, 17.031332>,  <37.433964, 31.002497, 17.237556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764809, 31.092018, 17.031332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243015, -0.684718, -0.687099,
		-0.506788, 0.693595, -0.511950,
		0.827109, 0.223801, -0.515561,
		38.012943, 31.159159, 16.876663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769054, 31.106516, 17.151735>,  <37.433964, 31.002497, 17.237556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769054, 31.106516, 17.151735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.880066, 30.735512, 17.251898>,  <36.946671, 30.512909, 17.311995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.880066, 30.735512, 17.251898>,  <36.769054, 31.106516, 17.151735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880066, 30.735512, 17.251898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559919, 0.055646, 0.826677,
		-0.780686, -0.369630, -0.503888,
		0.277525, -0.927511, 0.250405,
		36.963322, 30.457258, 17.327019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205616, 30.829449, 17.387413>,  <36.769054, 31.106516, 17.151735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205616, 30.829449, 17.387413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.463078, 30.567350, 17.545582>,  <36.617554, 30.410091, 17.640484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.463078, 30.567350, 17.545582>,  <36.205616, 30.829449, 17.387413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463078, 30.567350, 17.545582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573339, -0.070606, 0.816270,
		-0.506939, -0.752109, -0.421124,
		0.643658, -0.655246, 0.395421,
		36.656174, 30.370777, 17.664207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789509, 30.315735, 17.540060>,  <36.205616, 30.829449, 17.387413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789509, 30.315735, 17.540060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.107628, 30.274847, 17.779076>,  <36.298500, 30.250315, 17.922485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.107628, 30.274847, 17.779076>,  <35.789509, 30.315735, 17.540060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107628, 30.274847, 17.779076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602845, -0.237233, 0.761773,
		0.063888, -0.966060, -0.250293,
		0.795297, -0.102220, 0.597540,
		36.346218, 30.244181, 17.958338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617298, 29.821600, 17.998058>,  <35.789509, 30.315735, 17.540060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617298, 29.821600, 17.998058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.913342, 29.998001, 18.201134>,  <36.090969, 30.103842, 18.322979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.913342, 29.998001, 18.201134>,  <35.617298, 29.821600, 17.998058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913342, 29.998001, 18.201134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498054, -0.147808, 0.854456,
		0.451861, -0.885249, 0.110250,
		0.740111, 0.441006, 0.507691,
		36.135376, 30.130302, 18.353441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781048, 29.412313, 18.563671>,  <35.617298, 29.821600, 17.998058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781048, 29.412313, 18.563671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.912598, 29.772423, 18.677761>,  <35.991528, 29.988487, 18.746216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.912598, 29.772423, 18.677761>,  <35.781048, 29.412313, 18.563671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912598, 29.772423, 18.677761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232540, -0.215527, 0.948406,
		0.915297, -0.378231, 0.138468,
		0.328873, 0.900272, 0.285225,
		36.011261, 30.042505, 18.763329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940258, 29.263487, 19.239769>,  <35.781048, 29.412313, 18.563671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940258, 29.263487, 19.239769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.959343, 29.662918, 19.249252>,  <35.970795, 29.902576, 19.254942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.959343, 29.662918, 19.249252>,  <35.940258, 29.263487, 19.239769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959343, 29.662918, 19.249252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392848, -0.003060, 0.919598,
		0.918365, -0.053193, 0.392144,
		0.047716, 0.998580, 0.023707,
		35.973660, 29.962492, 19.256365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310013, 29.408066, 19.894135>,  <35.940258, 29.263487, 19.239769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310013, 29.408066, 19.894135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.092342, 29.728601, 19.794754>,  <35.961739, 29.920923, 19.735125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.092342, 29.728601, 19.794754>,  <36.310013, 29.408066, 19.894135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092342, 29.728601, 19.794754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464949, -0.041545, 0.884362,
		0.698352, 0.596766, 0.395190,
		-0.544176, 0.801339, -0.248453,
		35.929089, 29.969004, 19.720219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962177, 28.952812, 20.134933>,  <36.310013, 29.408066, 19.894135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962177, 28.952812, 20.134933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.837605, 28.576595, 20.189180>,  <36.762859, 28.350866, 20.221727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.837605, 28.576595, 20.189180>,  <36.962177, 28.952812, 20.134933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837605, 28.576595, 20.189180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354296, -0.247350, -0.901827,
		0.881749, -0.232813, 0.410263,
		-0.311436, -0.940540, 0.135617,
		36.744175, 28.294434, 20.229866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525204, 28.488619, 20.108789>,  <36.962177, 28.952812, 20.134933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525204, 28.488619, 20.108789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.199734, 28.278788, 20.008587>,  <37.004452, 28.152889, 19.948465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.199734, 28.278788, 20.008587>,  <37.525204, 28.488619, 20.108789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199734, 28.278788, 20.008587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489345, -0.385450, -0.782284,
		0.313812, -0.759108, 0.570331,
		-0.813672, -0.524579, -0.250507,
		36.955631, 28.121414, 19.933435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674747, 27.750799, 20.090845>,  <37.525204, 28.488619, 20.108789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674747, 27.750799, 20.090845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.372540, 27.844713, 19.846199>,  <37.191216, 27.901062, 19.699411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.372540, 27.844713, 19.846199>,  <37.674747, 27.750799, 20.090845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372540, 27.844713, 19.846199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504581, -0.386895, -0.771822,
		-0.417848, -0.891732, 0.173833,
		-0.755513, 0.234792, -0.611614,
		37.145885, 27.915148, 19.662716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615669, 27.211409, 19.596582>,  <37.674747, 27.750799, 20.090845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615669, 27.211409, 19.596582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.356522, 27.458071, 19.417696>,  <37.201035, 27.606068, 19.310364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.356522, 27.458071, 19.417696>,  <37.615669, 27.211409, 19.596582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356522, 27.458071, 19.417696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221860, -0.408888, -0.885206,
		-0.728728, -0.672716, 0.128094,
		-0.647869, 0.616655, -0.447217,
		37.162163, 27.643066, 19.283531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315205, 26.831774, 19.090866>,  <37.615669, 27.211409, 19.596582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315205, 26.831774, 19.090866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.258850, 27.210583, 18.975418>,  <37.225037, 27.437868, 18.906149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.258850, 27.210583, 18.975418>,  <37.315205, 26.831774, 19.090866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258850, 27.210583, 18.975418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196426, -0.258996, -0.945695,
		-0.970345, -0.189926, -0.149531,
		-0.140885, 0.947021, -0.288621,
		37.216583, 27.494690, 18.888832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972736, 26.774757, 18.434147>,  <37.315205, 26.831774, 19.090866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972736, 26.774757, 18.434147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.138546, 27.138708, 18.427237>,  <37.238029, 27.357079, 18.423090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.138546, 27.138708, 18.427237>,  <36.972736, 26.774757, 18.434147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138546, 27.138708, 18.427237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397159, -0.197954, -0.896147,
		-0.818803, 0.364609, -0.443421,
		0.414520, 0.909876, -0.017277,
		37.262901, 27.411671, 18.422054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899078, 27.017330, 17.710958>,  <36.972736, 26.774757, 18.434147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899078, 27.017330, 17.710958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.191002, 27.214867, 17.900059>,  <37.366158, 27.333389, 18.013519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.191002, 27.214867, 17.900059>,  <36.899078, 27.017330, 17.710958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191002, 27.214867, 17.900059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535888, 0.016139, -0.844135,
		-0.424499, 0.869401, -0.252866,
		0.729811, 0.493843, 0.472752,
		37.409946, 27.363020, 18.041885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942951, 27.598612, 17.258852>,  <36.899078, 27.017330, 17.710958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942951, 27.598612, 17.258852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.288399, 27.590118, 17.460329>,  <37.495667, 27.585022, 17.581215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.288399, 27.590118, 17.460329>,  <36.942951, 27.598612, 17.258852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288399, 27.590118, 17.460329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499089, 0.177071, -0.848266,
		-0.071176, 0.983969, 0.163521,
		0.863623, -0.021236, 0.503691,
		37.547485, 27.583748, 17.611437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391483, 28.258257, 17.075500>,  <36.942951, 27.598612, 17.258852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391483, 28.258257, 17.075500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.628166, 27.971682, 17.223337>,  <37.770176, 27.799736, 17.312038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.628166, 27.971682, 17.223337>,  <37.391483, 28.258257, 17.075500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628166, 27.971682, 17.223337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621032, 0.112787, -0.775628,
		0.514003, 0.688475, 0.511667,
		0.591710, -0.716437, 0.369592,
		37.805679, 27.756750, 17.334215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.337967, 33.305126, 31.536940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.697182, 33.136276, 31.586485>,  <37.912712, 33.034966, 31.616211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.697182, 33.136276, 31.586485>,  <37.337967, 33.305126, 31.536940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697182, 33.136276, 31.586485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258228, -0.733753, -0.628430,
		0.356160, 0.532368, -0.767941,
		0.898036, -0.422126, 0.123861,
		37.966591, 33.009640, 31.623644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592232, 33.201527, 30.914352>,  <37.337967, 33.305126, 31.536940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592232, 33.201527, 30.914352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.794178, 32.932209, 31.130421>,  <37.915348, 32.770618, 31.260061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.794178, 32.932209, 31.130421>,  <37.592232, 33.201527, 30.914352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794178, 32.932209, 31.130421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259880, -0.715302, -0.648695,
		0.823147, 0.187126, -0.536109,
		0.504868, -0.673296, 0.540168,
		37.945637, 32.730221, 31.292471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950661, 32.841019, 30.485720>,  <37.592232, 33.201527, 30.914352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950661, 32.841019, 30.485720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.974426, 32.580811, 30.788582>,  <37.988686, 32.424686, 30.970299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.974426, 32.580811, 30.788582>,  <37.950661, 32.841019, 30.485720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974426, 32.580811, 30.788582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267221, -0.741180, -0.615830,
		0.961802, -0.165742, -0.217867,
		0.059410, -0.650525, 0.757158,
		37.992249, 32.385654, 31.015730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448162, 32.329460, 30.345045>,  <37.950661, 32.841019, 30.485720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448162, 32.329460, 30.345045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.190094, 32.181561, 30.612490>,  <38.035252, 32.092823, 30.772957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.190094, 32.181561, 30.612490>,  <38.448162, 32.329460, 30.345045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190094, 32.181561, 30.612490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250498, -0.724366, -0.642296,
		0.721805, -0.581877, 0.374721,
		-0.645173, -0.369746, 0.668610,
		37.996544, 32.070637, 30.813072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589123, 31.600170, 30.368122>,  <38.448162, 32.329460, 30.345045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589123, 31.600170, 30.368122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.225975, 31.610640, 30.535498>,  <38.008087, 31.616922, 30.635923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.225975, 31.610640, 30.535498>,  <38.589123, 31.600170, 30.368122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225975, 31.610640, 30.535498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310205, -0.713347, -0.628418,
		0.282043, -0.700322, 0.655744,
		-0.907868, 0.026174, 0.418438,
		37.953613, 31.618492, 30.661030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370697, 30.946554, 30.275864>,  <38.589123, 31.600170, 30.368122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370697, 30.946554, 30.275864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.034061, 31.144917, 30.361477>,  <37.832081, 31.263933, 30.412844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.034061, 31.144917, 30.361477>,  <38.370697, 30.946554, 30.275864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034061, 31.144917, 30.361477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534442, -0.707262, -0.462766,
		-0.078111, -0.503846, 0.860255,
		-0.841588, 0.495904, 0.214031,
		37.781586, 31.293688, 30.425686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924381, 30.448214, 30.667202>,  <38.370697, 30.946554, 30.275864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924381, 30.448214, 30.667202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.713100, 30.740036, 30.493422>,  <37.586330, 30.915131, 30.389153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.713100, 30.740036, 30.493422>,  <37.924381, 30.448214, 30.667202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713100, 30.740036, 30.493422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649320, -0.676742, -0.346991,
		-0.547162, 0.098817, 0.831173,
		-0.528202, 0.729558, -0.434452,
		37.554642, 30.958904, 30.363087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285069, 30.209024, 30.624701>,  <37.924381, 30.448214, 30.667202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285069, 30.209024, 30.624701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.296249, 30.512707, 30.364599>,  <37.302959, 30.694916, 30.208538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.296249, 30.512707, 30.364599>,  <37.285069, 30.209024, 30.624701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296249, 30.512707, 30.364599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508300, -0.549331, -0.663225,
		-0.860726, 0.349063, 0.370548,
		0.027954, 0.759204, -0.650252,
		37.304634, 30.740469, 30.169523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547710, 30.262144, 30.351847>,  <37.285069, 30.209024, 30.624701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547710, 30.262144, 30.351847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.742626, 30.478180, 30.077374>,  <36.859577, 30.607801, 29.912689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.742626, 30.478180, 30.077374>,  <36.547710, 30.262144, 30.351847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742626, 30.478180, 30.077374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612555, -0.348613, -0.709398,
		-0.622352, 0.766009, 0.160958,
		0.487293, 0.540091, -0.686183,
		36.888813, 30.640207, 29.871519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005749, 30.591488, 29.931595>,  <36.547710, 30.262144, 30.351847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005749, 30.591488, 29.931595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329754, 30.600803, 29.697214>,  <36.524158, 30.606394, 29.556585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329754, 30.600803, 29.697214>,  <36.005749, 30.591488, 29.931595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329754, 30.600803, 29.697214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544915, -0.339301, -0.766774,
		-0.216671, 0.940390, -0.262147,
		0.810013, 0.023290, -0.585950,
		36.572758, 30.607790, 29.521429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713764, 30.731504, 29.282846>,  <36.005749, 30.591488, 29.931595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713764, 30.731504, 29.282846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.071148, 30.564564, 29.216455>,  <36.285580, 30.464399, 29.176620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.071148, 30.564564, 29.216455>,  <35.713764, 30.731504, 29.282846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071148, 30.564564, 29.216455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371034, -0.477576, -0.796402,
		0.253111, 0.773136, -0.581546,
		0.893459, -0.417351, -0.165980,
		36.339184, 30.439358, 29.166662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971218, 30.969110, 28.576267>,  <35.713764, 30.731504, 29.282846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971218, 30.969110, 28.576267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130959, 30.613676, 28.666548>,  <36.226803, 30.400415, 28.720716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130959, 30.613676, 28.666548>,  <35.971218, 30.969110, 28.576267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130959, 30.613676, 28.666548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243708, -0.340215, -0.908218,
		0.883814, 0.307690, -0.352419,
		0.399347, -0.888584, 0.225700,
		36.250763, 30.347101, 28.734259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038322, 31.602694, 28.141886>,  <35.971218, 30.969110, 28.576267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038322, 31.602694, 28.141886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658352, 31.696266, 28.059027>,  <35.430370, 31.752411, 28.009312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658352, 31.696266, 28.059027>,  <36.038322, 31.602694, 28.141886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658352, 31.696266, 28.059027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074562, 0.474087, 0.877315,
		0.303439, 0.848833, -0.432907,
		-0.949929, 0.233933, -0.207147,
		35.373375, 31.766445, 27.996883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030148, 32.331837, 28.373192>,  <36.038322, 31.602694, 28.141886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030148, 32.331837, 28.373192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.651012, 32.205318, 28.357351>,  <35.423531, 32.129406, 28.347847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.651012, 32.205318, 28.357351>,  <36.030148, 32.331837, 28.373192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651012, 32.205318, 28.357351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214559, 0.541165, 0.813083,
		-0.235744, 0.779165, -0.580799,
		-0.947834, -0.316295, -0.039600,
		35.366661, 32.110432, 28.345470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591785, 32.930916, 28.499720>,  <36.030148, 32.331837, 28.373192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591785, 32.930916, 28.499720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361237, 32.616760, 28.590014>,  <35.222908, 32.428265, 28.644190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361237, 32.616760, 28.590014>,  <35.591785, 32.930916, 28.499720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361237, 32.616760, 28.590014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257828, 0.436899, 0.861768,
		-0.775450, 0.438495, -0.454311,
		-0.576369, -0.785393, 0.225737,
		35.188324, 32.381142, 28.657734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986355, 33.273308, 28.743958>,  <35.591785, 32.930916, 28.499720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986355, 33.273308, 28.743958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992290, 32.897892, 28.881901>,  <34.995850, 32.672642, 28.964666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992290, 32.897892, 28.881901>,  <34.986355, 33.273308, 28.743958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992290, 32.897892, 28.881901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219457, 0.333429, 0.916877,
		-0.975509, -0.089284, -0.201022,
		0.014836, -0.938538, 0.344857,
		34.996742, 32.616329, 28.985357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335606, 33.191467, 29.073019>,  <34.986355, 33.273308, 28.743958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335606, 33.191467, 29.073019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569199, 32.898911, 29.213894>,  <34.709354, 32.723377, 29.298420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569199, 32.898911, 29.213894>,  <34.335606, 33.191467, 29.073019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569199, 32.898911, 29.213894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186972, 0.301002, 0.935115,
		-0.789943, -0.611938, 0.039029,
		0.583980, -0.731389, 0.352189,
		34.744392, 32.679493, 29.319551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021004, 32.849831, 29.652180>,  <34.335606, 33.191467, 29.073019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021004, 32.849831, 29.652180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.417835, 32.805698, 29.676188>,  <34.655933, 32.779221, 29.690592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.417835, 32.805698, 29.676188>,  <34.021004, 32.849831, 29.652180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417835, 32.805698, 29.676188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020702, 0.327682, 0.944561,
		-0.123878, -0.938324, 0.322804,
		0.992082, -0.110328, 0.060018,
		34.715458, 32.772598, 29.694193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042259, 32.714088, 30.350161>,  <34.021004, 32.849831, 29.652180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042259, 32.714088, 30.350161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.416615, 32.814213, 30.250999>,  <34.641228, 32.874287, 30.191502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.416615, 32.814213, 30.250999>,  <34.042259, 32.714088, 30.350161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416615, 32.814213, 30.250999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182455, 0.257569, 0.948877,
		0.301374, -0.933273, 0.195383,
		0.935887, 0.250318, -0.247905,
		34.697380, 32.889309, 30.176628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569256, 32.532635, 30.921698>,  <34.042259, 32.714088, 30.350161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569256, 32.532635, 30.921698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778679, 32.782764, 30.690231>,  <34.904335, 32.932842, 30.551352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778679, 32.782764, 30.690231>,  <34.569256, 32.532635, 30.921698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778679, 32.782764, 30.690231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276533, 0.517699, 0.809640,
		0.805863, -0.583915, 0.098123,
		0.523559, 0.625325, -0.578666,
		34.935745, 32.970364, 30.516632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190269, 32.674377, 31.276264>,  <34.569256, 32.532635, 30.921698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190269, 32.674377, 31.276264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.165291, 32.997330, 31.041578>,  <35.150303, 33.191101, 30.900766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.165291, 32.997330, 31.041578>,  <35.190269, 32.674377, 31.276264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165291, 32.997330, 31.041578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323002, 0.572577, 0.753542,
		0.944336, -0.142452, -0.296543,
		-0.062450, 0.807381, -0.586717,
		35.146557, 33.239544, 30.865562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870846, 33.060822, 31.386967>,  <35.190269, 32.674377, 31.276264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870846, 33.060822, 31.386967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.557270, 33.282837, 31.275702>,  <35.369125, 33.416046, 31.208942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.557270, 33.282837, 31.275702>,  <35.870846, 33.060822, 31.386967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557270, 33.282837, 31.275702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190656, 0.641623, 0.742947,
		0.590836, 0.529393, -0.608815,
		-0.783941, 0.555034, -0.278162,
		35.322086, 33.449348, 31.192253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094414, 33.794949, 31.497547>,  <35.870846, 33.060822, 31.386967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094414, 33.794949, 31.497547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.698254, 33.829823, 31.454634>,  <35.460560, 33.850746, 31.428886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.698254, 33.829823, 31.454634>,  <36.094414, 33.794949, 31.497547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698254, 33.829823, 31.454634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013651, 0.710561, 0.703503,
		0.137567, 0.698213, -0.702549,
		-0.990398, 0.087188, -0.107281,
		35.401134, 33.855980, 31.422449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064327, 34.593830, 31.499397>,  <36.094414, 33.794949, 31.497547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064327, 34.593830, 31.499397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.692814, 34.456394, 31.554983>,  <35.469906, 34.373932, 31.588335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.692814, 34.456394, 31.554983>,  <36.064327, 34.593830, 31.499397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692814, 34.456394, 31.554983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166874, 0.722463, 0.670970,
		-0.330936, 0.599994, -0.728346,
		-0.928781, -0.343590, 0.138966,
		35.414181, 34.353317, 31.596672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490002, 35.098618, 31.396332>,  <36.064327, 34.593830, 31.499397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490002, 35.098618, 31.396332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313541, 34.834518, 31.639465>,  <35.207664, 34.676060, 31.785345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313541, 34.834518, 31.639465>,  <35.490002, 35.098618, 31.396332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313541, 34.834518, 31.639465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348171, 0.750170, 0.562158,
		-0.827140, 0.036369, -0.560818,
		-0.441155, -0.660244, 0.607833,
		35.181194, 34.636444, 31.821815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735687, 35.388725, 31.399830>,  <35.490002, 35.098618, 31.396332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735687, 35.388725, 31.399830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.837700, 35.177200, 31.723639>,  <34.898907, 35.050285, 31.917923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.837700, 35.177200, 31.723639>,  <34.735687, 35.388725, 31.399830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837700, 35.177200, 31.723639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317917, 0.744800, 0.586687,
		-0.913175, -0.406983, 0.021829,
		0.255030, -0.528808, 0.809520,
		34.914207, 35.018559, 31.966494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337379, 35.878799, 30.941174>,  <34.735687, 35.388725, 31.399830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337379, 35.878799, 30.941174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.259430, 36.250141, 31.067781>,  <34.212662, 36.472946, 31.143745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.259430, 36.250141, 31.067781>,  <34.337379, 35.878799, 30.941174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259430, 36.250141, 31.067781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757168, 0.062743, -0.650200,
		-0.623475, -0.366366, 0.690692,
		-0.194875, 0.928353, 0.316519,
		34.200966, 36.528648, 31.162737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817108, 36.097927, 31.370909>,  <34.337379, 35.878799, 30.941174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817108, 36.097927, 31.370909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.201977, 36.205021, 31.391058>,  <35.432899, 36.269276, 31.403147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.201977, 36.205021, 31.391058>,  <34.817108, 36.097927, 31.370909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201977, 36.205021, 31.391058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095607, -0.158707, -0.982686,
		-0.255102, 0.950333, -0.178301,
		0.962176, 0.267732, 0.050372,
		35.490631, 36.285339, 31.406170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997955, 36.707161, 31.016617>,  <34.817108, 36.097927, 31.370909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997955, 36.707161, 31.016617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.308575, 36.456741, 31.045002>,  <35.494946, 36.306488, 31.062033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.308575, 36.456741, 31.045002>,  <34.997955, 36.707161, 31.016617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308575, 36.456741, 31.045002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032388, -0.152142, -0.987828,
		0.629224, 0.764798, -0.138422,
		0.776549, -0.626048, 0.070961,
		35.541538, 36.268929, 31.066290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481144, 36.956970, 30.635361>,  <34.997955, 36.707161, 31.016617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481144, 36.956970, 30.635361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.571800, 36.567677, 30.650595>,  <35.626194, 36.334099, 30.659735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.571800, 36.567677, 30.650595>,  <35.481144, 36.956970, 30.635361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571800, 36.567677, 30.650595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069201, -0.055094, -0.996080,
		0.971517, 0.223117, -0.079835,
		0.226641, -0.973233, 0.038084,
		35.639793, 36.275707, 30.662020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017315, 36.939449, 30.171667>,  <35.481144, 36.956970, 30.635361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017315, 36.939449, 30.171667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.938580, 36.549019, 30.208597>,  <35.891338, 36.314758, 30.230755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.938580, 36.549019, 30.208597>,  <36.017315, 36.939449, 30.171667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938580, 36.549019, 30.208597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299457, -0.149525, -0.942320,
		0.933584, -0.157839, 0.321726,
		-0.196841, -0.976078, 0.092328,
		35.879528, 36.256195, 30.236296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507305, 36.643883, 29.869444>,  <36.017315, 36.939449, 30.171667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507305, 36.643883, 29.869444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.210903, 36.375690, 29.854633>,  <36.033062, 36.214775, 29.845747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.210903, 36.375690, 29.854633>,  <36.507305, 36.643883, 29.869444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210903, 36.375690, 29.854633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214454, -0.184036, -0.959239,
		0.636339, -0.718737, 0.280159,
		-0.741000, -0.670483, -0.037027,
		35.988602, 36.174545, 29.843525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826855, 36.081921, 29.441847>,  <36.507305, 36.643883, 29.869444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826855, 36.081921, 29.441847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430748, 36.026550, 29.447519>,  <36.193085, 35.993328, 29.450924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430748, 36.026550, 29.447519>,  <36.826855, 36.081921, 29.441847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430748, 36.026550, 29.447519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012529, -0.190204, -0.981665,
		0.138589, -0.971936, 0.190088,
		-0.990271, -0.138429, 0.014183,
		36.133667, 35.985023, 29.451775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678463, 35.357914, 29.237844>,  <36.826855, 36.081921, 29.441847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678463, 35.357914, 29.237844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.358212, 35.583916, 29.158073>,  <36.166061, 35.719517, 29.110210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.358212, 35.583916, 29.158073>,  <36.678463, 35.357914, 29.237844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358212, 35.583916, 29.158073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020687, -0.358712, -0.933219,
		-0.598809, -0.743032, 0.298881,
		-0.800624, 0.565003, -0.199429,
		36.118023, 35.753418, 29.098246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261612, 34.907887, 28.944172>,  <36.678463, 35.357914, 29.237844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261612, 34.907887, 28.944172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.112457, 35.260307, 28.827757>,  <36.022964, 35.471760, 28.757908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.112457, 35.260307, 28.827757>,  <36.261612, 34.907887, 28.944172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112457, 35.260307, 28.827757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265205, -0.199374, -0.943354,
		-0.889171, -0.428944, -0.159317,
		-0.372882, 0.881054, -0.291036,
		36.000591, 35.524624, 28.740446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771507, 34.746155, 28.397261>,  <36.261612, 34.907887, 28.944172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771507, 34.746155, 28.397261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855202, 35.134991, 28.354809>,  <35.905418, 35.368290, 28.329338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855202, 35.134991, 28.354809>,  <35.771507, 34.746155, 28.397261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855202, 35.134991, 28.354809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042666, -0.117507, -0.992155,
		-0.976933, 0.203071, -0.066063,
		0.209241, 0.972088, -0.106132,
		35.917973, 35.426617, 28.322969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188866, 35.026886, 27.963881>,  <35.771507, 34.746155, 28.397261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188866, 35.026886, 27.963881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496361, 35.279003, 27.920462>,  <35.680859, 35.430271, 27.894411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496361, 35.279003, 27.920462>,  <35.188866, 35.026886, 27.963881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496361, 35.279003, 27.920462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052434, -0.107039, -0.992871,
		-0.637415, 0.768946, -0.049236,
		0.768735, 0.630289, -0.108547,
		35.726982, 35.468090, 27.887897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003014, 35.475655, 27.448944>,  <35.188866, 35.026886, 27.963881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003014, 35.475655, 27.448944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.401604, 35.490940, 27.478827>,  <35.640759, 35.500111, 27.496756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.401604, 35.490940, 27.478827>,  <35.003014, 35.475655, 27.448944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401604, 35.490940, 27.478827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081831, -0.245527, -0.965930,
		-0.018569, 0.968636, -0.247788,
		0.996473, 0.038214, 0.074705,
		35.700546, 35.502403, 27.501238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193390, 35.492920, 26.823370>,  <35.003014, 35.475655, 27.448944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193390, 35.492920, 26.823370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.568726, 35.475269, 26.960524>,  <35.793926, 35.464680, 27.042816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.568726, 35.475269, 26.960524>,  <35.193390, 35.492920, 26.823370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568726, 35.475269, 26.960524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330620, -0.175281, -0.927344,
		0.101024, 0.983529, -0.149884,
		0.938341, -0.044129, 0.342882,
		35.850227, 35.462032, 27.063389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536217, 35.776676, 26.382454>,  <35.193390, 35.492920, 26.823370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536217, 35.776676, 26.382454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824863, 35.546253, 26.536041>,  <35.998051, 35.408001, 26.628195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824863, 35.546253, 26.536041>,  <35.536217, 35.776676, 26.382454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824863, 35.546253, 26.536041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343318, -0.183856, -0.921048,
		0.601173, 0.796463, 0.065098,
		0.721612, -0.576059, 0.383969,
		36.041348, 35.373436, 26.651232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092564, 36.013771, 26.113998>,  <35.536217, 35.776676, 26.382454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092564, 36.013771, 26.113998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162552, 35.634777, 26.221075>,  <36.204544, 35.407379, 26.285320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162552, 35.634777, 26.221075>,  <36.092564, 36.013771, 26.113998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162552, 35.634777, 26.221075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472090, -0.157855, -0.867302,
		0.864012, 0.278126, 0.419678,
		0.174971, -0.947485, 0.267689,
		36.215042, 35.350533, 26.301382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703136, 35.917133, 25.873642>,  <36.092564, 36.013771, 26.113998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703136, 35.917133, 25.873642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.565800, 35.550827, 25.957052>,  <36.483398, 35.331043, 26.007099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.565800, 35.550827, 25.957052>,  <36.703136, 35.917133, 25.873642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565800, 35.550827, 25.957052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606540, -0.385712, -0.695223,
		0.717096, -0.112219, 0.687881,
		-0.343342, -0.915769, 0.208527,
		36.462799, 35.276096, 26.019611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198166, 35.523834, 25.525169>,  <36.703136, 35.917133, 25.873642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198166, 35.523834, 25.525169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.922146, 35.243217, 25.596350>,  <36.756535, 35.074848, 25.639057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.922146, 35.243217, 25.596350>,  <37.198166, 35.523834, 25.525169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922146, 35.243217, 25.596350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156665, -0.384822, -0.909598,
		0.706601, -0.599791, 0.375454,
		-0.690052, -0.701543, 0.177950,
		36.715130, 35.032753, 25.649734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508137, 34.857555, 25.264084>,  <37.198166, 35.523834, 25.525169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508137, 34.857555, 25.264084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.109356, 34.829491, 25.277723>,  <36.870087, 34.812653, 25.285906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.109356, 34.829491, 25.277723>,  <37.508137, 34.857555, 25.264084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109356, 34.829491, 25.277723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008381, -0.338235, -0.941024,
		0.077558, -0.938443, 0.336616,
		-0.996953, -0.070163, 0.034098,
		36.810268, 34.808441, 25.287952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376194, 34.119434, 25.051863>,  <37.508137, 34.857555, 25.264084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376194, 34.119434, 25.051863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035023, 34.324074, 25.010328>,  <36.830318, 34.446857, 24.985409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035023, 34.324074, 25.010328>,  <37.376194, 34.119434, 25.051863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035023, 34.324074, 25.010328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031289, -0.248648, -0.968088,
		-0.521092, -0.822460, 0.228086,
		-0.852927, 0.511600, -0.103834,
		36.779144, 34.477554, 24.979177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979759, 33.651215, 24.584368>,  <37.376194, 34.119434, 25.051863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979759, 33.651215, 24.584368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.819946, 34.017818, 24.576523>,  <36.724060, 34.237782, 24.571815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.819946, 34.017818, 24.576523>,  <36.979759, 33.651215, 24.584368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819946, 34.017818, 24.576523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170353, -0.095251, -0.980769,
		-0.900751, -0.388509, 0.194186,
		-0.399534, 0.916509, -0.019614,
		36.700085, 34.292770, 24.570639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332333, 33.579536, 24.247854>,  <36.979759, 33.651215, 24.584368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332333, 33.579536, 24.247854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.423809, 33.967720, 24.217115>,  <36.478695, 34.200630, 24.198671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.423809, 33.967720, 24.217115>,  <36.332333, 33.579536, 24.247854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423809, 33.967720, 24.217115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290444, -0.007327, -0.956864,
		-0.929163, 0.241146, 0.280190,
		0.228691, 0.970461, -0.076847,
		36.492416, 34.258858, 24.194061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848228, 33.810230, 23.872536>,  <36.332333, 33.579536, 24.247854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848228, 33.810230, 23.872536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.146458, 34.071404, 23.819183>,  <36.325397, 34.228107, 23.787172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.146458, 34.071404, 23.819183>,  <35.848228, 33.810230, 23.872536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146458, 34.071404, 23.819183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078802, -0.112362, -0.990538,
		-0.661746, 0.749031, -0.032321,
		0.745575, 0.652938, -0.133381,
		36.370129, 34.267284, 23.779169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691353, 34.190872, 23.234819>,  <35.848228, 33.810230, 23.872536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691353, 34.190872, 23.234819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079174, 34.251888, 23.311443>,  <36.311867, 34.288498, 23.357418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079174, 34.251888, 23.311443>,  <35.691353, 34.190872, 23.234819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079174, 34.251888, 23.311443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209753, -0.113667, -0.971125,
		-0.126360, 0.981739, -0.142202,
		0.969555, 0.152539, 0.191559,
		36.370041, 34.297649, 23.368912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914913, 34.688927, 22.751410>,  <35.691353, 34.190872, 23.234819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914913, 34.688927, 22.751410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.243233, 34.485687, 22.855816>,  <36.440224, 34.363743, 22.918459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.243233, 34.485687, 22.855816>,  <35.914913, 34.688927, 22.751410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243233, 34.485687, 22.855816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259085, -0.076095, -0.962852,
		0.509086, 0.857931, 0.069182,
		0.820796, -0.508099, 0.261016,
		36.489471, 34.333256, 22.934120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428333, 34.853210, 22.256992>,  <35.914913, 34.688927, 22.751410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428333, 34.853210, 22.256992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.584641, 34.511726, 22.394670>,  <36.678425, 34.306835, 22.477278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.584641, 34.511726, 22.394670>,  <36.428333, 34.853210, 22.256992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584641, 34.511726, 22.394670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324437, -0.222190, -0.919441,
		0.861417, 0.470960, 0.190151,
		0.390770, -0.853715, 0.344195,
		36.701870, 34.255611, 22.497929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081799, 34.916714, 22.036421>,  <36.428333, 34.853210, 22.256992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081799, 34.916714, 22.036421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.024220, 34.530029, 22.121033>,  <36.989674, 34.298019, 22.171801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.024220, 34.530029, 22.121033>,  <37.081799, 34.916714, 22.036421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024220, 34.530029, 22.121033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345479, -0.249400, -0.904679,
		0.927321, -0.057144, 0.369879,
		-0.143944, -0.966713, 0.211532,
		36.981037, 34.240017, 22.184492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779747, 34.549332, 21.946487>,  <37.081799, 34.916714, 22.036421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779747, 34.549332, 21.946487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479130, 34.289986, 21.897816>,  <37.298759, 34.134380, 21.868612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479130, 34.289986, 21.897816>,  <37.779747, 34.549332, 21.946487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479130, 34.289986, 21.897816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360781, -0.249548, -0.898645,
		0.552283, -0.719272, 0.421464,
		-0.751546, -0.648362, -0.121679,
		37.253666, 34.095478, 21.861313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141163, 33.960220, 21.802485>,  <37.779747, 34.549332, 21.946487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141163, 33.960220, 21.802485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.761826, 33.950638, 21.675943>,  <37.534225, 33.944889, 21.600019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.761826, 33.950638, 21.675943>,  <38.141163, 33.960220, 21.802485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761826, 33.950638, 21.675943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302303, -0.370761, -0.878151,
		-0.096256, -0.928420, 0.358848,
		-0.948339, -0.023953, -0.316352,
		37.477325, 33.943451, 21.581038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374668, 33.229195, 22.102299>,  <38.141163, 33.960220, 21.802485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374668, 33.229195, 22.102299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.628891, 32.926174, 22.161880>,  <38.781425, 32.744362, 22.197630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.628891, 32.926174, 22.161880>,  <38.374668, 33.229195, 22.102299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628891, 32.926174, 22.161880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000113, 0.192838, 0.981230,
		-0.772057, -0.623641, 0.122473,
		0.635553, -0.757552, 0.148952,
		38.819557, 32.698910, 22.206566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084167, 32.839699, 22.583986>,  <38.374668, 33.229195, 22.102299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084167, 32.839699, 22.583986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.465740, 32.720901, 22.600994>,  <38.694683, 32.649624, 22.611198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.465740, 32.720901, 22.600994>,  <38.084167, 32.839699, 22.583986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465740, 32.720901, 22.600994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020063, 0.078256, 0.996731,
		-0.299351, -0.951667, 0.068692,
		0.953932, -0.296994, 0.042520,
		38.751919, 32.631802, 22.613750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119049, 32.372379, 23.043224>,  <38.084167, 32.839699, 22.583986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119049, 32.372379, 23.043224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.485989, 32.531593, 23.045700>,  <38.706154, 32.627121, 23.047186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.485989, 32.531593, 23.045700>,  <38.119049, 32.372379, 23.043224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485989, 32.531593, 23.045700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028023, 0.049061, 0.998403,
		0.397092, -0.916059, 0.056160,
		0.917351, 0.398031, 0.006189,
		38.761192, 32.651001, 23.047556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557648, 32.092720, 23.638966>,  <38.119049, 32.372379, 23.043224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557648, 32.092720, 23.638966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.791077, 32.407997, 23.560791>,  <38.931133, 32.597164, 23.513885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.791077, 32.407997, 23.560791>,  <38.557648, 32.092720, 23.638966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791077, 32.407997, 23.560791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191267, 0.100489, 0.976381,
		0.789218, -0.607166, -0.092113,
		0.583569, 0.788195, -0.195439,
		38.966148, 32.644455, 23.502159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085609, 32.075832, 24.191015>,  <38.557648, 32.092720, 23.638966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085609, 32.075832, 24.191015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.058407, 32.451508, 24.056376>,  <39.042088, 32.676914, 23.975592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.058407, 32.451508, 24.056376>,  <39.085609, 32.075832, 24.191015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058407, 32.451508, 24.056376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146504, 0.343123, 0.927795,
		0.986870, 0.013782, -0.160929,
		-0.068005, 0.939189, -0.336598,
		39.038006, 32.733265, 23.955397>
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
