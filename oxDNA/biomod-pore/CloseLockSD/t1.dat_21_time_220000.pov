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
	<4.266463, 15.183366, 15.367029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.091072, 14.898111, 15.148242>,  <3.985837, 14.726958, 15.016970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.091072, 14.898111, 15.148242>,  <4.266463, 15.183366, 15.367029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.091072, 14.898111, 15.148242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897129, -0.383740, -0.218865,
		-0.053813, -0.586669, 0.808037,
		-0.438478, -0.713136, -0.546968,
		3.959529, 14.684171, 14.984152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.563022, 14.664064, 15.630356>,  <4.266463, 15.183366, 15.367029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.563022, 14.664064, 15.630356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.466154, 14.535440, 15.264196>,  <4.408033, 14.458266, 15.044501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.466154, 14.535440, 15.264196>,  <4.563022, 14.664064, 15.630356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.466154, 14.535440, 15.264196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961233, -0.207732, -0.181323,
		-0.131851, -0.923821, 0.359401,
		-0.242169, -0.321561, -0.915398,
		4.393503, 14.438972, 14.989577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.044663, 14.897900, 15.125825>,  <4.563022, 14.664064, 15.630356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.044663, 14.897900, 15.125825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.045016, 14.926726, 14.726865>,  <5.045228, 14.944022, 14.487489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.045016, 14.926726, 14.726865>,  <5.044663, 14.897900, 15.125825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.045016, 14.926726, 14.726865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911829, -0.409560, -0.028786,
		-0.410569, -0.909433, -0.066073,
		0.000882, 0.072066, -0.997400,
		5.045280, 14.948346, 14.427645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.372024, 14.242151, 14.821985>,  <5.044663, 14.897900, 15.125825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.372024, 14.242151, 14.821985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.388230, 14.525604, 14.540220>,  <5.397954, 14.695676, 14.371161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.388230, 14.525604, 14.540220>,  <5.372024, 14.242151, 14.821985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.388230, 14.525604, 14.540220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955497, -0.233650, -0.180092,
		-0.292205, -0.665769, -0.686563,
		0.040516, 0.708633, -0.704414,
		5.400385, 14.738194, 14.328897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.396698, 13.958570, 14.182758>,  <5.372024, 14.242151, 14.821985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.396698, 13.958570, 14.182758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.600028, 14.300179, 14.227044>,  <5.722026, 14.505143, 14.253615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.600028, 14.300179, 14.227044>,  <5.396698, 13.958570, 14.182758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.600028, 14.300179, 14.227044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849716, -0.476506, -0.225665,
		-0.139966, 0.208787, -0.967893,
		0.508323, 0.854020, 0.110715,
		5.752525, 14.556384, 14.260259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.722065, 14.149346, 13.479040>,  <5.396698, 13.958570, 14.182758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.722065, 14.149346, 13.479040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.918539, 14.249209, 13.812844>,  <6.036423, 14.309127, 14.013127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.918539, 14.249209, 13.812844>,  <5.722065, 14.149346, 13.479040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.918539, 14.249209, 13.812844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763778, -0.584051, -0.274823,
		0.418786, 0.772370, -0.477560,
		0.491184, 0.249657, 0.834511,
		6.065894, 14.324106, 14.063198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.342226, 14.445158, 13.251442>,  <5.722065, 14.149346, 13.479040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.342226, 14.445158, 13.251442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.406593, 14.319450, 13.625680>,  <6.445214, 14.244025, 13.850223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.406593, 14.319450, 13.625680>,  <6.342226, 14.445158, 13.251442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.406593, 14.319450, 13.625680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678260, -0.653429, -0.336147,
		0.716986, 0.688669, 0.108008,
		0.160918, -0.314270, 0.935596,
		6.454869, 14.225169, 13.906359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.074743, 14.514705, 13.298722>,  <6.342226, 14.445158, 13.251442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.074743, 14.514705, 13.298722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.942273, 14.254204, 13.571836>,  <6.862792, 14.097903, 13.735703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.942273, 14.254204, 13.571836>,  <7.074743, 14.514705, 13.298722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.942273, 14.254204, 13.571836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818362, -0.558447, -0.135724,
		0.469689, 0.513816, 0.717904,
		-0.331174, -0.651253, 0.682783,
		6.842921, 14.058827, 13.776670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.679242, 14.344686, 13.687858>,  <7.074743, 14.514705, 13.298722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.679242, 14.344686, 13.687858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.414207, 14.046767, 13.719493>,  <7.255185, 13.868016, 13.738474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.414207, 14.046767, 13.719493>,  <7.679242, 14.344686, 13.687858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.414207, 14.046767, 13.719493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727175, -0.664995, -0.170286,
		0.179421, -0.055318, 0.982216,
		-0.662589, -0.744796, 0.079088,
		7.215430, 13.823328, 13.743219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.099992, 13.921112, 14.092700>,  <7.679242, 14.344686, 13.687858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.099992, 13.921112, 14.092700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.802740, 13.694957, 13.949539>,  <7.624389, 13.559263, 13.863643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.802740, 13.694957, 13.949539>,  <8.099992, 13.921112, 14.092700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.802740, 13.694957, 13.949539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621525, -0.781380, -0.056135,
		-0.247920, -0.264161, 0.932070,
		-0.743130, -0.565388, -0.357903,
		7.579801, 13.525340, 13.842169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.948717, 13.282352, 14.648123>,  <8.099992, 13.921112, 14.092700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.948717, 13.282352, 14.648123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.778710, 13.157804, 14.308145>,  <7.676706, 13.083075, 14.104157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.778710, 13.157804, 14.308145>,  <7.948717, 13.282352, 14.648123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.778710, 13.157804, 14.308145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666560, -0.742940, -0.061143,
		-0.612420, -0.592526, 0.523311,
		-0.425017, -0.311373, -0.849945,
		7.651205, 13.064392, 14.053161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.823819, 12.563406, 14.678089>,  <7.948717, 13.282352, 14.648123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.823819, 12.563406, 14.678089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.862681, 12.654799, 14.290614>,  <7.885999, 12.709636, 14.058129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.862681, 12.654799, 14.290614>,  <7.823819, 12.563406, 14.678089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.862681, 12.654799, 14.290614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640125, -0.759620, -0.114969,
		-0.762103, -0.608911, -0.220061,
		0.097157, 0.228484, -0.968687,
		7.891829, 12.723345, 14.000008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.013788, 11.982549, 14.380490>,  <7.823819, 12.563406, 14.678089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.013788, 11.982549, 14.380490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.124261, 12.210406, 14.070850>,  <8.190544, 12.347121, 13.885067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.124261, 12.210406, 14.070850>,  <8.013788, 11.982549, 14.380490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.124261, 12.210406, 14.070850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749298, -0.632017, -0.197755,
		-0.601894, -0.525414, -0.601384,
		0.276182, 0.569644, -0.774099,
		8.207115, 12.381299, 13.838620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.046039, 11.567571, 13.828520>,  <8.013788, 11.982549, 14.380490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.046039, 11.567571, 13.828520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.285963, 11.872325, 13.730740>,  <8.429917, 12.055178, 13.672071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.285963, 11.872325, 13.730740>,  <8.046039, 11.567571, 13.828520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.285963, 11.872325, 13.730740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763986, -0.636125, -0.108029,
		-0.237808, -0.121960, -0.963625,
		0.599811, 0.761886, -0.244451,
		8.465906, 12.100891, 13.657404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.459959, 11.421501, 13.166254>,  <8.046039, 11.567571, 13.828520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.459959, 11.421501, 13.166254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.692003, 11.710055, 13.317555>,  <8.831230, 11.883187, 13.408337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.692003, 11.710055, 13.317555>,  <8.459959, 11.421501, 13.166254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.692003, 11.710055, 13.317555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794882, -0.602770, -0.069506,
		0.177859, 0.340988, -0.923089,
		0.580111, 0.721385, 0.378253,
		8.866036, 11.926471, 13.431031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.076513, 11.509780, 12.739476>,  <8.459959, 11.421501, 13.166254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.076513, 11.509780, 12.739476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.170441, 11.657518, 13.099131>,  <9.226797, 11.746161, 13.314923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.170441, 11.657518, 13.099131>,  <9.076513, 11.509780, 12.739476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.170441, 11.657518, 13.099131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770325, -0.634859, 0.059608,
		0.592840, 0.678629, -0.433593,
		0.234819, 0.369346, 0.899135,
		9.240887, 11.768322, 13.368871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.783881, 11.630980, 12.657835>,  <9.076513, 11.509780, 12.739476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.783881, 11.630980, 12.657835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.679291, 11.608762, 13.043279>,  <9.616536, 11.595430, 13.274545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.679291, 11.608762, 13.043279>,  <9.783881, 11.630980, 12.657835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.679291, 11.608762, 13.043279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792034, -0.582929, 0.181317,
		0.551645, 0.810622, 0.196416,
		-0.261476, -0.055546, 0.963610,
		9.600848, 11.592098, 13.332362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.431170, 11.574669, 12.990803>,  <9.783881, 11.630980, 12.657835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.431170, 11.574669, 12.990803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.164187, 11.428376, 13.250261>,  <10.003998, 11.340600, 13.405936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.164187, 11.428376, 13.250261>,  <10.431170, 11.574669, 12.990803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.164187, 11.428376, 13.250261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672427, -0.670254, 0.314010,
		0.319914, 0.645755, 0.693293,
		-0.667456, -0.365733, 0.648646,
		9.963950, 11.318656, 13.444855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.715872, 11.516985, 13.728931>,  <10.431170, 11.574669, 12.990803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.715872, 11.516985, 13.728931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.407575, 11.264441, 13.763199>,  <10.222596, 11.112915, 13.783759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.407575, 11.264441, 13.763199>,  <10.715872, 11.516985, 13.728931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.407575, 11.264441, 13.763199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614514, -0.701099, 0.361708,
		-0.168305, 0.331429, 0.928347,
		-0.770744, -0.631359, 0.085669,
		10.176352, 11.075034, 13.788899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.891694, 11.094982, 14.361089>,  <10.715872, 11.516985, 13.728931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.891694, 11.094982, 14.361089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.590689, 10.875684, 14.215129>,  <10.410086, 10.744104, 14.127553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.590689, 10.875684, 14.215129>,  <10.891694, 11.094982, 14.361089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.590689, 10.875684, 14.215129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416357, -0.825336, 0.381402,
		-0.510266, 0.135082, 0.849342,
		-0.752513, -0.548246, -0.364899,
		10.364935, 10.711210, 14.105659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.733146, 10.573929, 14.901750>,  <10.891694, 11.094982, 14.361089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.733146, 10.573929, 14.901750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.632122, 10.455466, 14.533293>,  <10.571507, 10.384389, 14.312219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.632122, 10.455466, 14.533293>,  <10.733146, 10.573929, 14.901750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.632122, 10.455466, 14.533293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567164, -0.816618, 0.107046,
		-0.783925, -0.495404, 0.374215,
		-0.252559, -0.296157, -0.921143,
		10.556355, 10.366619, 14.256949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.431123, 9.959699, 14.944125>,  <10.733146, 10.573929, 14.901750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.431123, 9.959699, 14.944125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.576078, 9.981765, 14.571968>,  <10.663052, 9.995005, 14.348674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.576078, 9.981765, 14.571968>,  <10.431123, 9.959699, 14.944125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.576078, 9.981765, 14.571968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500696, -0.853492, 0.144415,
		-0.786116, -0.518178, -0.336918,
		0.362389, 0.055166, -0.930393,
		10.684795, 9.998315, 14.292850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.387918, 9.274033, 14.770259>,  <10.431123, 9.959699, 14.944125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.387918, 9.274033, 14.770259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.642312, 9.444623, 14.513000>,  <10.794949, 9.546977, 14.358644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.642312, 9.444623, 14.513000>,  <10.387918, 9.274033, 14.770259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.642312, 9.444623, 14.513000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548227, -0.836238, -0.012395,
		-0.543111, -0.344709, -0.765641,
		0.635985, 0.426477, -0.643149,
		10.833108, 9.572566, 14.320055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.528619, 8.765226, 14.192847>,  <10.387918, 9.274033, 14.770259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.528619, 8.765226, 14.192847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.830285, 9.025798, 14.159677>,  <11.011285, 9.182140, 14.139774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.830285, 9.025798, 14.159677>,  <10.528619, 8.765226, 14.192847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.830285, 9.025798, 14.159677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649887, -0.758507, -0.048107,
		-0.094238, -0.017612, -0.995394,
		0.754165, 0.651428, -0.082926,
		11.056535, 9.221226, 14.134799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.014648, 8.543830, 13.677480>,  <10.528619, 8.765226, 14.192847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.014648, 8.543830, 13.677480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.236539, 8.794366, 13.896561>,  <11.369673, 8.944687, 14.028009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.236539, 8.794366, 13.896561>,  <11.014648, 8.543830, 13.677480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.236539, 8.794366, 13.896561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778823, -0.622509, -0.076924,
		0.292769, 0.469236, -0.833129,
		0.554726, 0.626339, 0.547703,
		11.402957, 8.982267, 14.060872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.715281, 8.450729, 13.466812>,  <11.014648, 8.543830, 13.677480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.715281, 8.450729, 13.466812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.754508, 8.650248, 13.811274>,  <11.778044, 8.769958, 14.017951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.754508, 8.650248, 13.811274>,  <11.715281, 8.450729, 13.466812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.754508, 8.650248, 13.811274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857702, -0.481213, 0.181055,
		0.504707, 0.720859, -0.475008,
		0.098065, 0.498795, 0.861154,
		11.783928, 8.799886, 14.069620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.260107, 8.940711, 13.443520>,  <11.715281, 8.450729, 13.466812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.260107, 8.940711, 13.443520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.211440, 8.816583, 13.820645>,  <12.182240, 8.742105, 14.046921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.211440, 8.816583, 13.820645>,  <12.260107, 8.940711, 13.443520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.211440, 8.816583, 13.820645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935045, -0.354506, 0.003980,
		0.332998, 0.882058, 0.333296,
		-0.121666, -0.310322, 0.942814,
		12.174940, 8.723486, 14.103490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.908498, 9.051947, 13.637292>,  <12.260107, 8.940711, 13.443520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.908498, 9.051947, 13.637292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.740052, 8.785312, 13.883325>,  <12.638985, 8.625331, 14.030944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.740052, 8.785312, 13.883325>,  <12.908498, 9.051947, 13.637292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.740052, 8.785312, 13.883325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852996, -0.521581, 0.018746,
		0.308319, 0.532557, 0.788240,
		-0.421114, -0.666586, 0.615082,
		12.613718, 8.585336, 14.067849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.604728, 8.963651, 13.377290>,  <12.908498, 9.051947, 13.637292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.604728, 8.963651, 13.377290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.355361, 8.701526, 13.547897>,  <13.205741, 8.544250, 13.650262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.355361, 8.701526, 13.547897>,  <13.604728, 8.963651, 13.377290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.355361, 8.701526, 13.547897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599309, -0.750835, -0.277624,
		0.502175, 0.082540, 0.860818,
		-0.623417, -0.655312, 0.426518,
		13.168336, 8.504932, 13.675853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.052301, 8.639259, 13.818385>,  <13.604728, 8.963651, 13.377290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.052301, 8.639259, 13.818385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.742876, 8.408247, 13.714033>,  <13.557220, 8.269640, 13.651423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.742876, 8.408247, 13.714033>,  <14.052301, 8.639259, 13.818385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.742876, 8.408247, 13.714033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624143, -0.765615, -0.155816,
		-0.109745, -0.283360, 0.952714,
		-0.773564, -0.577530, -0.260879,
		13.510807, 8.234988, 13.635769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.997906, 8.064787, 14.252216>,  <14.052301, 8.639259, 13.818385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.997906, 8.064787, 14.252216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.851347, 7.980101, 13.889795>,  <13.763412, 7.929290, 13.672343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.851347, 7.980101, 13.889795>,  <13.997906, 8.064787, 14.252216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.851347, 7.980101, 13.889795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647640, -0.757194, -0.084968,
		-0.668068, -0.617928, 0.414549,
		-0.366398, -0.211714, -0.906052,
		13.741427, 7.916587, 13.617980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.111812, 8.282561, 14.981267>,  <13.997906, 8.064787, 14.252216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.111812, 8.282561, 14.981267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.382866, 8.524992, 15.147870>,  <14.545499, 8.670450, 15.247832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.382866, 8.524992, 15.147870>,  <14.111812, 8.282561, 14.981267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.382866, 8.524992, 15.147870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545882, 0.794063, -0.267352,
		-0.492770, -0.046197, 0.868933,
		0.677636, 0.606078, 0.416508,
		14.586157, 8.706816, 15.272822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.736285, 8.725035, 15.386162>,  <14.111812, 8.282561, 14.981267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.736285, 8.725035, 15.386162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.074855, 8.894196, 15.256721>,  <14.277997, 8.995692, 15.179057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.074855, 8.894196, 15.256721>,  <13.736285, 8.725035, 15.386162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.074855, 8.894196, 15.256721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517457, 0.796667, -0.312346,
		0.125710, 0.431827, 0.893153,
		0.846425, 0.422903, -0.323601,
		14.328782, 9.021067, 15.159641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.031157, 9.292159, 15.894916>,  <13.736285, 8.725035, 15.386162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.031157, 9.292159, 15.894916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.085158, 9.378454, 15.508086>,  <14.117558, 9.430231, 15.275989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.085158, 9.378454, 15.508086>,  <14.031157, 9.292159, 15.894916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.085158, 9.378454, 15.508086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573072, 0.813206, 0.101414,
		0.808309, 0.540512, 0.233416,
		0.135000, 0.215738, -0.967074,
		14.125659, 9.443175, 15.217964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.321640, 9.963996, 15.719510>,  <14.031157, 9.292159, 15.894916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.321640, 9.963996, 15.719510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.051601, 9.885239, 15.435122>,  <13.889579, 9.837984, 15.264488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.051601, 9.885239, 15.435122>,  <14.321640, 9.963996, 15.719510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.051601, 9.885239, 15.435122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552302, 0.773807, 0.310137,
		0.489090, 0.602042, -0.631139,
		-0.675095, -0.196894, -0.710970,
		13.849072, 9.826170, 15.221830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.087843, 10.647820, 15.424785>,  <14.321640, 9.963996, 15.719510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.087843, 10.647820, 15.424785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.825271, 10.352352, 15.363508>,  <13.667727, 10.175072, 15.326742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.825271, 10.352352, 15.363508>,  <14.087843, 10.647820, 15.424785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.825271, 10.352352, 15.363508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751581, 0.622866, 0.217175,
		-0.065003, 0.257696, -0.964037,
		-0.656431, -0.738669, -0.153191,
		13.628342, 10.130752, 15.317551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.668750, 10.949633, 14.917035>,  <14.087843, 10.647820, 15.424785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.668750, 10.949633, 14.917035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.488627, 10.690008, 15.162292>,  <13.380554, 10.534233, 15.309447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.488627, 10.690008, 15.162292>,  <13.668750, 10.949633, 14.917035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.488627, 10.690008, 15.162292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749397, 0.648073, 0.135664,
		-0.485416, -0.398397, -0.778236,
		-0.450306, -0.649061, 0.613143,
		13.353536, 10.495290, 15.346235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.964378, 11.126977, 14.836262>,  <13.668750, 10.949633, 14.917035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.964378, 11.126977, 14.836262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.911680, 10.880898, 15.147177>,  <12.880061, 10.733252, 15.333726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.911680, 10.880898, 15.147177>,  <12.964378, 11.126977, 14.836262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.911680, 10.880898, 15.147177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820397, 0.507797, 0.262851,
		-0.556409, -0.603055, -0.571606,
		-0.131746, -0.615196, 0.777288,
		12.872156, 10.696340, 15.380363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.338300, 11.189202, 14.872016>,  <12.964378, 11.126977, 14.836262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.338300, 11.189202, 14.872016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431087, 11.014627, 15.219744>,  <12.486758, 10.909883, 15.428380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431087, 11.014627, 15.219744>,  <12.338300, 11.189202, 14.872016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.431087, 11.014627, 15.219744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836887, 0.365970, 0.407046,
		-0.495795, -0.821942, -0.280355,
		0.231967, -0.436437, 0.869318,
		12.500676, 10.883697, 15.480539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.772629, 10.852534, 15.066049>,  <12.338300, 11.189202, 14.872016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.772629, 10.852534, 15.066049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.981601, 10.919202, 15.400542>,  <12.106984, 10.959203, 15.601238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.981601, 10.919202, 15.400542>,  <11.772629, 10.852534, 15.066049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.981601, 10.919202, 15.400542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834302, 0.302447, 0.460941,
		-0.176091, -0.938481, 0.297060,
		0.522429, 0.166670, 0.836235,
		12.138330, 10.969203, 15.651413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.376039, 10.548510, 15.615593>,  <11.772629, 10.852534, 15.066049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.376039, 10.548510, 15.615593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.606886, 10.826330, 15.787422>,  <11.745394, 10.993023, 15.890520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.606886, 10.826330, 15.787422>,  <11.376039, 10.548510, 15.615593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.606886, 10.826330, 15.787422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784155, 0.324362, 0.529047,
		0.228112, -0.642176, 0.731830,
		0.577119, 0.694550, 0.429574,
		11.780022, 11.034696, 15.916294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.155818, 10.524655, 16.297398>,  <11.376039, 10.548510, 15.615593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.155818, 10.524655, 16.297398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.325807, 10.879986, 16.227798>,  <11.427800, 11.093184, 16.186039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.325807, 10.879986, 16.227798>,  <11.155818, 10.524655, 16.297398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.325807, 10.879986, 16.227798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794163, 0.458130, 0.399277,
		0.434400, -0.031502, 0.900169,
		0.424972, 0.888327, -0.173994,
		11.453298, 11.146483, 16.175600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.718366, 10.931649, 16.798243>,  <11.155818, 10.524655, 16.297398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.718366, 10.931649, 16.798243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.912247, 11.174701, 16.546576>,  <11.028576, 11.320532, 16.395576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.912247, 11.174701, 16.546576>,  <10.718366, 10.931649, 16.798243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.912247, 11.174701, 16.546576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729823, 0.677420, 0.091982,
		0.482101, 0.414595, 0.771810,
		0.484704, 0.607629, -0.629166,
		11.057658, 11.356989, 16.357826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.908220, 11.619230, 17.250359>,  <10.718366, 10.931649, 16.798243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.908220, 11.619230, 17.250359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.836341, 11.653691, 16.858381>,  <10.793213, 11.674368, 16.623196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.836341, 11.653691, 16.858381>,  <10.908220, 11.619230, 17.250359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.836341, 11.653691, 16.858381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625291, 0.759018, 0.181393,
		0.759420, 0.645345, -0.082525,
		-0.179699, 0.086151, -0.979942,
		10.782432, 11.679537, 16.564398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.734390, 12.338516, 17.359608>,  <10.908220, 11.619230, 17.250359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.734390, 12.338516, 17.359608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.634168, 12.236301, 16.986101>,  <10.574034, 12.174973, 16.761997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.634168, 12.236301, 16.986101>,  <10.734390, 12.338516, 17.359608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.634168, 12.236301, 16.986101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545930, 0.833838, -0.081702,
		0.799489, 0.489300, -0.348430,
		-0.250557, -0.255538, -0.933767,
		10.559001, 12.159640, 16.705971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.890704, 12.844793, 16.996269>,  <10.734390, 12.338516, 17.359608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.890704, 12.844793, 16.996269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.632200, 12.654984, 16.757214>,  <10.477098, 12.541098, 16.613779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.632200, 12.654984, 16.757214>,  <10.890704, 12.844793, 16.996269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.632200, 12.654984, 16.757214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457803, 0.867658, -0.193871,
		0.610545, 0.148311, -0.777971,
		-0.646260, -0.474524, -0.597641,
		10.438322, 12.512627, 16.577921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.785802, 13.363994, 16.521986>,  <10.890704, 12.844793, 16.996269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.785802, 13.363994, 16.521986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.461993, 13.133987, 16.474606>,  <10.267708, 12.995983, 16.446177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.461993, 13.133987, 16.474606>,  <10.785802, 13.363994, 16.521986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.461993, 13.133987, 16.474606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570231, 0.818109, -0.074386,
		0.139678, 0.007327, -0.990170,
		-0.809522, -0.575016, -0.118450,
		10.219136, 12.961483, 16.439070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.368541, 13.476364, 15.876623>,  <10.785802, 13.363994, 16.521986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.368541, 13.476364, 15.876623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.079337, 13.286283, 16.077198>,  <9.905815, 13.172234, 16.197542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.079337, 13.286283, 16.077198>,  <10.368541, 13.476364, 15.876623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.079337, 13.286283, 16.077198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655197, 0.701804, -0.279623,
		-0.219032, -0.530710, -0.818763,
		-0.723009, -0.475204, 0.501437,
		9.862434, 13.143722, 16.227629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.868889, 13.371557, 15.417275>,  <10.368541, 13.476364, 15.876623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.868889, 13.371557, 15.417275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.688924, 13.337389, 15.772866>,  <9.580945, 13.316888, 15.986221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.688924, 13.337389, 15.772866>,  <9.868889, 13.371557, 15.417275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.688924, 13.337389, 15.772866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778416, 0.525451, -0.343468,
		-0.437775, -0.846525, -0.302900,
		-0.449913, -0.085420, 0.888978,
		9.553950, 13.311763, 16.039560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.203191, 13.411707, 15.210319>,  <9.868889, 13.371557, 15.417275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.203191, 13.411707, 15.210319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.178121, 13.493774, 15.601006>,  <9.163078, 13.543015, 15.835418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.178121, 13.493774, 15.601006>,  <9.203191, 13.411707, 15.210319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.178121, 13.493774, 15.601006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661303, 0.724434, -0.194610,
		-0.747496, -0.658104, 0.090274,
		-0.062676, 0.205169, 0.976718,
		9.159318, 13.555325, 15.894021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.418653, 13.438773, 15.395512>,  <9.203191, 13.411707, 15.210319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.418653, 13.438773, 15.395512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.629124, 13.648657, 15.663189>,  <8.755405, 13.774587, 15.823795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.629124, 13.648657, 15.663189>,  <8.418653, 13.438773, 15.395512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.629124, 13.648657, 15.663189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683485, 0.729158, -0.034315,
		-0.505953, -0.439328, 0.742296,
		0.526175, 0.524709, 0.669193,
		8.786976, 13.806069, 15.863947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.889064, 13.784773, 15.801192>,  <8.418653, 13.438773, 15.395512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.889064, 13.784773, 15.801192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.211171, 14.003944, 15.891805>,  <8.404435, 14.135448, 15.946172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.211171, 14.003944, 15.891805>,  <7.889064, 13.784773, 15.801192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.211171, 14.003944, 15.891805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544020, 0.834737, -0.085180,
		-0.235767, -0.054645, 0.970272,
		0.805268, 0.547930, 0.226531,
		8.452751, 14.168324, 15.959764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.726422, 14.306580, 16.360538>,  <7.889064, 13.784773, 15.801192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.726422, 14.306580, 16.360538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.049861, 14.454562, 16.177540>,  <8.243924, 14.543352, 16.067741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.049861, 14.454562, 16.177540>,  <7.726422, 14.306580, 16.360538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.049861, 14.454562, 16.177540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348673, 0.927633, 0.133879,
		0.473919, 0.051263, 0.879075,
		0.808597, 0.369957, -0.457497,
		8.292440, 14.565550, 16.040291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.079065, 14.845039, 16.757895>,  <7.726422, 14.306580, 16.360538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.079065, 14.845039, 16.757895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.162766, 14.901793, 16.370890>,  <8.212986, 14.935844, 16.138687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.162766, 14.901793, 16.370890>,  <8.079065, 14.845039, 16.757895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.162766, 14.901793, 16.370890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340455, 0.938085, 0.063935,
		0.916681, 0.316017, 0.244600,
		0.209251, 0.141883, -0.967514,
		8.225541, 14.944358, 16.080635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.278177, 15.564132, 16.780495>,  <8.079065, 14.845039, 16.757895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.278177, 15.564132, 16.780495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.243358, 15.477446, 16.391556>,  <8.222466, 15.425434, 16.158194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.243358, 15.477446, 16.391556>,  <8.278177, 15.564132, 16.780495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.243358, 15.477446, 16.391556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579345, 0.805039, -0.127561,
		0.810421, 0.552220, -0.195630,
		-0.087048, -0.216715, -0.972347,
		8.217243, 15.412431, 16.099852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.171135, 16.266493, 16.462643>,  <8.278177, 15.564132, 16.780495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.171135, 16.266493, 16.462643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.043596, 15.991159, 16.202017>,  <7.967073, 15.825960, 16.045641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.043596, 15.991159, 16.202017>,  <8.171135, 16.266493, 16.462643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.043596, 15.991159, 16.202017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646746, 0.660539, -0.381324,
		0.692863, 0.299815, -0.655783,
		-0.318844, -0.688330, -0.651567,
		7.947942, 15.784660, 16.006548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.243728, 16.517641, 15.805228>,  <8.171135, 16.266493, 16.462643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.243728, 16.517641, 15.805228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.953600, 16.242327, 15.799928>,  <7.779524, 16.077137, 15.796747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.953600, 16.242327, 15.799928>,  <8.243728, 16.517641, 15.805228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.953600, 16.242327, 15.799928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587164, 0.628574, -0.510032,
		0.359377, -0.362156, -0.860053,
		-0.725319, -0.688287, -0.013250,
		7.736005, 16.035841, 15.795953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.083993, 16.374565, 15.123382>,  <8.243728, 16.517641, 15.805228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.083993, 16.374565, 15.123382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.773779, 16.348450, 15.374549>,  <7.587650, 16.332781, 15.525249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.773779, 16.348450, 15.374549>,  <8.083993, 16.374565, 15.123382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.773779, 16.348450, 15.374549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537973, 0.588818, -0.603223,
		-0.330347, -0.805624, -0.491772,
		-0.775535, -0.065288, 0.627919,
		7.541118, 16.328863, 15.562924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.608562, 16.560627, 14.690182>,  <8.083993, 16.374565, 15.123382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.608562, 16.560627, 14.690182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.883303, 16.284290, 14.780494>,  <9.048146, 16.118488, 14.834681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.883303, 16.284290, 14.780494>,  <8.608562, 16.560627, 14.690182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.883303, 16.284290, 14.780494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368967, -0.599076, -0.710613,
		0.626180, 0.404780, -0.666373,
		0.686850, -0.690841, 0.225779,
		9.089357, 16.077038, 14.848228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.099060, 17.091436, 14.487855>,  <8.608562, 16.560627, 14.690182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.099060, 17.091436, 14.487855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.093142, 17.280495, 14.135404>,  <9.089591, 17.393930, 13.923933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.093142, 17.280495, 14.135404>,  <9.099060, 17.091436, 14.487855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.093142, 17.280495, 14.135404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857570, 0.459133, 0.231884,
		0.514154, -0.752198, -0.412120,
		-0.014796, 0.472646, -0.881128,
		9.088703, 17.422289, 13.871065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.715215, 16.861589, 13.993508>,  <9.099060, 17.091436, 14.487855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.715215, 16.861589, 13.993508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.557849, 17.216967, 13.898941>,  <9.463429, 17.430193, 13.842201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.557849, 17.216967, 13.898941>,  <9.715215, 16.861589, 13.993508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.557849, 17.216967, 13.898941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827149, 0.454302, 0.330808,
		0.401309, -0.065407, -0.913604,
		-0.393415, 0.888443, -0.236417,
		9.439824, 17.483500, 13.828016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.264540, 17.352386, 13.726679>,  <9.715215, 16.861589, 13.993508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.264540, 17.352386, 13.726679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.978570, 17.622709, 13.798421>,  <9.806988, 17.784903, 13.841466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.978570, 17.622709, 13.798421>,  <10.264540, 17.352386, 13.726679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.978570, 17.622709, 13.798421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697874, 0.673897, 0.242558,
		0.043056, 0.298578, -0.953413,
		-0.714925, 0.675807, 0.179355,
		9.764092, 17.825451, 13.852227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.428126, 18.037439, 13.392350>,  <10.264540, 17.352386, 13.726679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.428126, 18.037439, 13.392350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.213478, 18.072863, 13.728016>,  <10.084689, 18.094116, 13.929416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.213478, 18.072863, 13.728016>,  <10.428126, 18.037439, 13.392350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.213478, 18.072863, 13.728016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739073, 0.529223, 0.416766,
		-0.407198, 0.843848, -0.349442,
		-0.536620, 0.088557, 0.839164,
		10.052492, 18.099430, 13.979765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.420409, 18.649263, 13.770426>,  <10.428126, 18.037439, 13.392350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.420409, 18.649263, 13.770426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.337918, 18.430435, 14.094940>,  <10.288424, 18.299139, 14.289649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.337918, 18.430435, 14.094940>,  <10.420409, 18.649263, 13.770426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.337918, 18.430435, 14.094940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877392, 0.263666, 0.400828,
		-0.433189, 0.794478, 0.425619,
		-0.206228, -0.547069, 0.811286,
		10.276050, 18.266314, 14.338326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.133577, 19.332747, 13.883954>,  <10.420409, 18.649263, 13.770426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.133577, 19.332747, 13.883954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.078921, 19.012531, 14.117353>,  <10.046128, 18.820402, 14.257393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.078921, 19.012531, 14.117353>,  <10.133577, 19.332747, 13.883954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.078921, 19.012531, 14.117353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367186, 0.506136, 0.780385,
		-0.920056, 0.320884, 0.224788,
		-0.136639, -0.800537, 0.583498,
		10.037930, 18.772369, 14.292403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.710579, 19.507113, 14.516036>,  <10.133577, 19.332747, 13.883954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.710579, 19.507113, 14.516036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.943420, 19.196142, 14.611337>,  <10.083125, 19.009560, 14.668517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.943420, 19.196142, 14.611337>,  <9.710579, 19.507113, 14.516036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.943420, 19.196142, 14.611337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373599, 0.515969, 0.770844,
		-0.722204, -0.359702, 0.590793,
		0.582105, -0.777426, 0.238251,
		10.118052, 18.962915, 14.682812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.546803, 19.371235, 15.140965>,  <9.710579, 19.507113, 14.516036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.546803, 19.371235, 15.140965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.908984, 19.214399, 15.075949>,  <10.126293, 19.120298, 15.036940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.908984, 19.214399, 15.075949>,  <9.546803, 19.371235, 15.140965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.908984, 19.214399, 15.075949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302242, 0.326749, 0.895480,
		-0.298000, -0.859942, 0.414362,
		0.905453, -0.392091, -0.162539,
		10.180620, 19.096771, 15.027187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.725089, 18.980137, 15.730954>,  <9.546803, 19.371235, 15.140965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.725089, 18.980137, 15.730954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.079760, 19.027178, 15.552081>,  <10.292562, 19.055403, 15.444757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.079760, 19.027178, 15.552081>,  <9.725089, 18.980137, 15.730954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.079760, 19.027178, 15.552081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400560, 0.287764, 0.869910,
		0.230984, -0.950454, 0.208048,
		0.886678, 0.117600, -0.447183,
		10.345762, 19.062458, 15.417926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.289686, 18.697563, 16.158129>,  <9.725089, 18.980137, 15.730954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.289686, 18.697563, 16.158129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.472176, 18.941927, 15.899317>,  <10.581669, 19.088545, 15.744029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.472176, 18.941927, 15.899317>,  <10.289686, 18.697563, 16.158129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.472176, 18.941927, 15.899317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582585, 0.344571, 0.736116,
		0.672648, -0.712784, -0.198705,
		0.456223, 0.610909, -0.647032,
		10.609042, 19.125200, 15.705207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.911366, 18.642511, 16.331955>,  <10.289686, 18.697563, 16.158129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.911366, 18.642511, 16.331955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.911651, 18.992035, 16.137447>,  <10.911821, 19.201750, 16.020742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.911651, 18.992035, 16.137447>,  <10.911366, 18.642511, 16.331955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.911651, 18.992035, 16.137447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594041, 0.390803, 0.703128,
		0.804434, -0.289366, -0.518800,
		0.000713, 0.873808, -0.486270,
		10.911864, 19.254177, 15.991567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.656040, 18.868519, 16.235928>,  <10.911366, 18.642511, 16.331955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.656040, 18.868519, 16.235928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.412588, 19.184826, 16.209835>,  <11.266517, 19.374611, 16.194180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.412588, 19.184826, 16.209835>,  <11.656040, 18.868519, 16.235928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.412588, 19.184826, 16.209835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455496, 0.415528, 0.787312,
		0.649686, 0.449470, -0.613094,
		-0.608631, 0.790768, -0.065231,
		11.229999, 19.422056, 16.190266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.099781, 19.360771, 16.540424>,  <11.656040, 18.868519, 16.235928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.099781, 19.360771, 16.540424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.744954, 19.545420, 16.538713>,  <11.532058, 19.656208, 16.537687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.744954, 19.545420, 16.538713>,  <12.099781, 19.360771, 16.540424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.744954, 19.545420, 16.538713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301256, 0.585870, 0.752331,
		0.349797, 0.666079, -0.658772,
		-0.887067, 0.461622, -0.004275,
		11.478834, 19.683907, 16.537432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.302794, 20.098684, 16.624990>,  <12.099781, 19.360771, 16.540424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.302794, 20.098684, 16.624990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.922009, 20.060411, 16.741346>,  <11.693539, 20.037449, 16.811159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.922009, 20.060411, 16.741346>,  <12.302794, 20.098684, 16.624990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.922009, 20.060411, 16.741346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163383, 0.644728, 0.746748,
		-0.258994, 0.758400, -0.598123,
		-0.951960, -0.095680, 0.290890,
		11.636421, 20.031708, 16.828613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.078271, 20.765566, 16.876724>,  <12.302794, 20.098684, 16.624990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.078271, 20.765566, 16.876724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.791971, 20.543535, 17.046240>,  <11.620192, 20.410316, 17.147949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.791971, 20.543535, 17.046240>,  <12.078271, 20.765566, 16.876724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.791971, 20.543535, 17.046240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027345, 0.628645, 0.777212,
		-0.697822, 0.544700, -0.465131,
		-0.715749, -0.555075, 0.423787,
		11.577247, 20.377012, 17.173376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.395257, 21.155254, 17.069790>,  <12.078271, 20.765566, 16.876724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.395257, 21.155254, 17.069790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.437383, 20.838289, 17.310120>,  <11.462658, 20.648109, 17.454317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.437383, 20.838289, 17.310120>,  <11.395257, 21.155254, 17.069790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.437383, 20.838289, 17.310120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047292, 0.599510, 0.798969,
		-0.993314, -0.112556, 0.025662,
		0.105314, -0.792413, 0.600824,
		11.468977, 20.600565, 17.490368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.969728, 21.354948, 17.681068>,  <11.395257, 21.155254, 17.069790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.969728, 21.354948, 17.681068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.220318, 21.067043, 17.800718>,  <11.370671, 20.894300, 17.872509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.220318, 21.067043, 17.800718>,  <10.969728, 21.354948, 17.681068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.220318, 21.067043, 17.800718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120687, 0.468712, 0.875068,
		-0.770044, -0.512105, 0.380501,
		0.626472, -0.719762, 0.299124,
		11.408259, 20.851114, 17.890455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.693663, 21.169790, 18.342880>,  <10.969728, 21.354948, 17.681068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.693663, 21.169790, 18.342880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.054469, 20.997301, 18.350990>,  <11.270953, 20.893806, 18.355856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.054469, 20.997301, 18.350990>,  <10.693663, 21.169790, 18.342880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.054469, 20.997301, 18.350990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096128, 0.246416, 0.964385,
		-0.420862, -0.867943, 0.263724,
		0.902017, -0.431225, 0.020273,
		11.325074, 20.867933, 18.357073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.704693, 20.686699, 18.926477>,  <10.693663, 21.169790, 18.342880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.704693, 20.686699, 18.926477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.092123, 20.757990, 18.857084>,  <11.324581, 20.800764, 18.815449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.092123, 20.757990, 18.857084>,  <10.704693, 20.686699, 18.926477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.092123, 20.757990, 18.857084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135050, 0.208861, 0.968576,
		0.208861, -0.961567, 0.178228,
		-0.968576, -0.178228, 0.173482,
		11.382696, 20.811459, 18.805040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.063294, 20.204058, 19.362543>,  <10.704693, 20.686699, 18.926477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.063294, 20.204058, 19.362543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.320589, 20.497959, 19.276398>,  <11.474966, 20.674301, 19.224710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.320589, 20.497959, 19.276398>,  <11.063294, 20.204058, 19.362543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.320589, 20.497959, 19.276398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288873, 0.027607, 0.956969,
		0.709083, -0.677771, -0.194493,
		0.643236, 0.734755, -0.215365,
		11.513560, 20.718386, 19.211788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.465307, 20.018749, 19.938673>,  <11.063294, 20.204058, 19.362543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.465307, 20.018749, 19.938673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.598072, 20.367975, 19.795792>,  <11.677731, 20.577511, 19.710062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.598072, 20.367975, 19.795792>,  <11.465307, 20.018749, 19.938673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.598072, 20.367975, 19.795792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349237, 0.238034, 0.906296,
		0.876281, -0.425560, -0.225899,
		0.331912, 0.873063, -0.357206,
		11.697646, 20.629894, 19.688629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.241329, 20.132895, 20.141279>,  <11.465307, 20.018749, 19.938673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.241329, 20.132895, 20.141279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.053177, 20.478899, 20.071424>,  <11.940286, 20.686502, 20.029512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.053177, 20.478899, 20.071424>,  <12.241329, 20.132895, 20.141279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.053177, 20.478899, 20.071424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327037, 0.354680, 0.875927,
		0.819627, 0.354907, -0.449725,
		-0.470381, 0.865010, -0.174638,
		11.912063, 20.738401, 20.019033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.626884, 20.588253, 20.516569>,  <12.241329, 20.132895, 20.141279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.626884, 20.588253, 20.516569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.315866, 20.820822, 20.420755>,  <12.129255, 20.960363, 20.363268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.315866, 20.820822, 20.420755>,  <12.626884, 20.588253, 20.516569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.315866, 20.820822, 20.420755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171427, 0.562478, 0.808846,
		0.605011, 0.587851, -0.537023,
		-0.777544, 0.581420, -0.239532,
		12.082603, 20.995249, 20.348896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.901032, 21.392071, 20.475494>,  <12.626884, 20.588253, 20.516569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.901032, 21.392071, 20.475494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.506501, 21.396519, 20.541264>,  <12.269783, 21.399187, 20.580725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.506501, 21.396519, 20.541264>,  <12.901032, 21.392071, 20.475494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.506501, 21.396519, 20.541264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135269, 0.624510, 0.769214,
		-0.094131, 0.780938, -0.617475,
		-0.986327, 0.011118, 0.164423,
		12.210603, 21.399855, 20.590590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.796920, 22.061478, 20.578398>,  <12.901032, 21.392071, 20.475494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.796920, 22.061478, 20.578398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.492314, 21.870762, 20.754021>,  <12.309551, 21.756332, 20.859394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.492314, 21.870762, 20.754021>,  <12.796920, 22.061478, 20.578398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.492314, 21.870762, 20.754021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040564, 0.641014, 0.766456,
		-0.646879, 0.601476, -0.468800,
		-0.761513, -0.476788, 0.439057,
		12.263861, 21.727726, 20.885738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.235603, 22.634407, 20.776073>,  <12.796920, 22.061478, 20.578398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.235603, 22.634407, 20.776073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.176789, 22.291172, 20.972874>,  <12.141501, 22.085230, 21.090954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.176789, 22.291172, 20.972874>,  <12.235603, 22.634407, 20.776073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.176789, 22.291172, 20.972874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296020, 0.512782, 0.805871,
		-0.943797, -0.027150, -0.329408,
		-0.147035, -0.858090, 0.491999,
		12.132679, 22.033745, 21.120474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.533614, 22.721186, 21.119764>,  <12.235603, 22.634407, 20.776073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.533614, 22.721186, 21.119764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.726846, 22.437372, 21.324974>,  <11.842785, 22.267084, 21.448101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.726846, 22.437372, 21.324974>,  <11.533614, 22.721186, 21.119764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.726846, 22.437372, 21.324974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181365, 0.492134, 0.851417,
		-0.856587, -0.504347, 0.109055,
		0.483080, -0.709534, 0.513026,
		11.871770, 22.224512, 21.478882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.002657, 22.458841, 21.521404>,  <11.533614, 22.721186, 21.119764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.002657, 22.458841, 21.521404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.348928, 22.357042, 21.693838>,  <11.556691, 22.295963, 21.797298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.348928, 22.357042, 21.693838>,  <11.002657, 22.458841, 21.521404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.348928, 22.357042, 21.693838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199830, 0.613871, 0.763695,
		-0.458986, -0.747258, 0.480559,
		0.865678, -0.254495, 0.431083,
		11.608632, 22.280693, 21.823162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.877563, 22.342695, 22.244724>,  <11.002657, 22.458841, 21.521404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.877563, 22.342695, 22.244724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.274862, 22.389072, 22.243448>,  <11.513243, 22.416899, 22.242683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.274862, 22.389072, 22.243448>,  <10.877563, 22.342695, 22.244724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.274862, 22.389072, 22.243448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061390, 0.548837, 0.833672,
		0.098411, -0.827850, 0.552250,
		0.993251, 0.115945, -0.003190,
		11.572838, 22.423857, 22.242491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.128500, 22.194347, 22.912355>,  <10.877563, 22.342695, 22.244724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.128500, 22.194347, 22.912355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.442586, 22.396437, 22.769142>,  <11.631038, 22.517691, 22.683214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.442586, 22.396437, 22.769142>,  <11.128500, 22.194347, 22.912355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.442586, 22.396437, 22.769142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039160, 0.536523, 0.842976,
		0.617984, -0.675938, 0.401502,
		0.785215, 0.505223, -0.358032,
		11.678150, 22.548004, 22.661732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.707857, 22.139603, 23.392708>,  <11.128500, 22.194347, 22.912355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.707857, 22.139603, 23.392708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.770670, 22.484430, 23.199966>,  <11.808357, 22.691326, 23.084322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.770670, 22.484430, 23.199966>,  <11.707857, 22.139603, 23.392708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.770670, 22.484430, 23.199966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266064, 0.432938, 0.861263,
		0.951079, -0.263449, -0.161380,
		0.157031, 0.862067, -0.481853,
		11.817780, 22.743050, 23.055410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.203944, 22.418001, 23.824121>,  <11.707857, 22.139603, 23.392708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.203944, 22.418001, 23.824121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.071212, 22.724518, 23.604053>,  <11.991572, 22.908428, 23.472013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.071212, 22.724518, 23.604053>,  <12.203944, 22.418001, 23.824121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.071212, 22.724518, 23.604053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007399, 0.585310, 0.810775,
		0.943310, 0.264969, -0.199894,
		-0.331830, 0.766292, -0.550169,
		11.971663, 22.954405, 23.439003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.577256, 22.961035, 23.992962>,  <12.203944, 22.418001, 23.824121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.577256, 22.961035, 23.992962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.294028, 23.177427, 23.811422>,  <12.124091, 23.307262, 23.702499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.294028, 23.177427, 23.811422>,  <12.577256, 22.961035, 23.992962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.294028, 23.177427, 23.811422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049459, 0.679130, 0.732350,
		0.704408, 0.496108, -0.507628,
		-0.708070, 0.540980, -0.453847,
		12.081607, 23.339722, 23.675268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.807945, 23.683479, 23.874489>,  <12.577256, 22.961035, 23.992962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.807945, 23.683479, 23.874489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.408949, 23.711315, 23.869299>,  <12.169551, 23.728016, 23.866186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.408949, 23.711315, 23.869299>,  <12.807945, 23.683479, 23.874489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.408949, 23.711315, 23.869299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046074, 0.777373, 0.627351,
		0.053742, 0.625179, -0.778629,
		-0.997491, 0.069590, -0.012973,
		12.109701, 23.732193, 23.865406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.718155, 24.380465, 23.906719>,  <12.807945, 23.683479, 23.874489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.718155, 24.380465, 23.906719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.348761, 24.253534, 23.992954>,  <12.127124, 24.177376, 24.044695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.348761, 24.253534, 23.992954>,  <12.718155, 24.380465, 23.906719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.348761, 24.253534, 23.992954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132390, 0.791051, 0.597253,
		-0.360064, 0.523014, -0.772535,
		-0.923486, -0.317326, 0.215587,
		12.071714, 24.158337, 24.057631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.318526, 25.001081, 23.825039>,  <12.718155, 24.380465, 23.906719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.318526, 25.001081, 23.825039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.115310, 24.763405, 24.074465>,  <11.993380, 24.620800, 24.224121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.115310, 24.763405, 24.074465>,  <12.318526, 25.001081, 23.825039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.115310, 24.763405, 24.074465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109728, 0.762702, 0.637374,
		-0.854315, 0.255390, -0.452683,
		-0.508040, -0.594190, 0.623564,
		11.962897, 24.585148, 24.261534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.773027, 25.426998, 24.130299>,  <12.318526, 25.001081, 23.825039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.773027, 25.426998, 24.130299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.770146, 25.107019, 24.370310>,  <11.768418, 24.915031, 24.514317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.770146, 25.107019, 24.370310>,  <11.773027, 25.426998, 24.130299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.770146, 25.107019, 24.370310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164382, 0.592828, 0.788374,
		-0.986370, -0.092956, -0.135766,
		-0.007202, -0.799946, 0.600029,
		11.767986, 24.867035, 24.550318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.273953, 25.533995, 24.621254>,  <11.773027, 25.426998, 24.130299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.273953, 25.533995, 24.621254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.493735, 25.250355, 24.798016>,  <11.625605, 25.080172, 24.904072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.493735, 25.250355, 24.798016>,  <11.273953, 25.533995, 24.621254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.493735, 25.250355, 24.798016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153357, 0.434319, 0.887609,
		-0.821329, -0.555469, 0.129893,
		0.549455, -0.709099, 0.441903,
		11.658571, 25.037624, 24.930586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.925141, 25.423046, 25.154648>,  <11.273953, 25.533995, 24.621254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.925141, 25.423046, 25.154648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.287768, 25.278629, 25.242085>,  <11.505344, 25.191978, 25.294546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.287768, 25.278629, 25.242085>,  <10.925141, 25.423046, 25.154648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.287768, 25.278629, 25.242085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062477, 0.397409, 0.915512,
		-0.417410, -0.843631, 0.337721,
		0.906568, -0.361044, 0.218590,
		11.559739, 25.170317, 25.307661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.842254, 24.990566, 25.707451>,  <10.925141, 25.423046, 25.154648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.842254, 24.990566, 25.707451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.218459, 25.125500, 25.723637>,  <11.444182, 25.206461, 25.733347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.218459, 25.125500, 25.723637>,  <10.842254, 24.990566, 25.707451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.218459, 25.125500, 25.723637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117698, 0.211775, 0.970206,
		0.318716, -0.917255, 0.238881,
		0.940515, 0.337336, 0.040463,
		11.500613, 25.226700, 25.735775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.037232, 24.656622, 26.436817>,  <10.842254, 24.990566, 25.707451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.037232, 24.656622, 26.436817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.294115, 24.944159, 26.330357>,  <11.448245, 25.116680, 26.266479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.294115, 24.944159, 26.330357>,  <11.037232, 24.656622, 26.436817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.294115, 24.944159, 26.330357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001896, 0.348705, 0.937231,
		0.766530, -0.601391, 0.225304,
		0.642206, 0.718842, -0.266152,
		11.486777, 25.159811, 26.250511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.663937, 24.544796, 26.769835>,  <11.037232, 24.656622, 26.436817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.663937, 24.544796, 26.769835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.664628, 24.935236, 26.682907>,  <11.665043, 25.169500, 26.630751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.664628, 24.935236, 26.682907>,  <11.663937, 24.544796, 26.769835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.664628, 24.935236, 26.682907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260020, 0.209407, 0.942623,
		0.965602, -0.058136, -0.253443,
		0.001728, 0.976099, -0.217320,
		11.665147, 25.228065, 26.617710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.212917, 24.736380, 27.070255>,  <11.663937, 24.544796, 26.769835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.212917, 24.736380, 27.070255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.013590, 25.080050, 27.023790>,  <11.893993, 25.286251, 26.995913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.013590, 25.080050, 27.023790>,  <12.212917, 24.736380, 27.070255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.013590, 25.080050, 27.023790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243910, 0.267498, 0.932176,
		0.831977, 0.436188, -0.342861,
		-0.498319, 0.859177, -0.116161,
		11.864094, 25.337803, 26.988941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.657546, 25.230154, 27.495792>,  <12.212917, 24.736380, 27.070255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.657546, 25.230154, 27.495792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.288432, 25.374138, 27.440807>,  <12.066964, 25.460529, 27.407816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.288432, 25.374138, 27.440807>,  <12.657546, 25.230154, 27.495792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.288432, 25.374138, 27.440807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043081, 0.258133, 0.965148,
		0.382899, 0.896547, -0.222694,
		-0.922785, 0.359961, -0.137463,
		12.011597, 25.482126, 27.399569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.713764, 25.951548, 27.773474>,  <12.657546, 25.230154, 27.495792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.713764, 25.951548, 27.773474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.342926, 25.801620, 27.774370>,  <12.120423, 25.711664, 27.774908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.342926, 25.801620, 27.774370>,  <12.713764, 25.951548, 27.773474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.342926, 25.801620, 27.774370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115624, 0.291666, 0.949506,
		-0.356545, 0.880024, -0.313740,
		-0.927096, -0.374818, 0.002240,
		12.064797, 25.689175, 27.775042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.367941, 26.502291, 28.174267>,  <12.713764, 25.951548, 27.773474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.367941, 26.502291, 28.174267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.207837, 26.135799, 28.181393>,  <12.111775, 25.915905, 28.185669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.207837, 26.135799, 28.181393>,  <12.367941, 26.502291, 28.174267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.207837, 26.135799, 28.181393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136528, 0.078843, 0.987494,
		-0.906175, 0.392821, -0.156648,
		-0.400259, -0.916229, 0.017815,
		12.087760, 25.860931, 28.186737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.185309, 27.169062, 28.628540>,  <12.367941, 26.502291, 28.174267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.185309, 27.169062, 28.628540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.408947, 27.267990, 28.945084>,  <12.543129, 27.327347, 29.135010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.408947, 27.267990, 28.945084>,  <12.185309, 27.169062, 28.628540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.408947, 27.267990, 28.945084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450477, -0.710683, 0.540371,
		0.696050, -0.658606, -0.285924,
		0.559093, 0.247322, 0.791358,
		12.576674, 27.342186, 29.182491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.826669, 26.752399, 28.850521>,  <12.185309, 27.169062, 28.628540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.826669, 26.752399, 28.850521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.580879, 26.938456, 29.105415>,  <12.433406, 27.050089, 29.258352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.580879, 26.938456, 29.105415>,  <12.826669, 26.752399, 28.850521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.580879, 26.938456, 29.105415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402782, -0.879474, 0.253561,
		0.678373, -0.100861, 0.727762,
		-0.614473, 0.465138, 0.637236,
		12.396537, 27.077997, 29.296587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.846356, 26.348408, 29.445707>,  <12.826669, 26.752399, 28.850521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.846356, 26.348408, 29.445707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.512237, 26.542456, 29.342224>,  <12.311765, 26.658884, 29.280134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.512237, 26.542456, 29.342224>,  <12.846356, 26.348408, 29.445707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.512237, 26.542456, 29.342224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546270, -0.785506, 0.290807,
		-0.062142, 0.384237, 0.921141,
		-0.835300, 0.485121, -0.258710,
		12.261646, 26.687992, 29.264610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.367448, 26.442528, 30.030804>,  <12.846356, 26.348408, 29.445707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.367448, 26.442528, 30.030804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.221842, 26.381577, 29.663267>,  <12.134478, 26.345005, 29.442745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.221842, 26.381577, 29.663267>,  <12.367448, 26.442528, 30.030804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.221842, 26.381577, 29.663267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487816, -0.809203, 0.327453,
		-0.793428, 0.567424, 0.220230,
		-0.364016, -0.152379, -0.918843,
		12.112637, 26.335863, 29.387613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.658466, 26.339743, 30.017479>,  <12.367448, 26.442528, 30.030804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.658466, 26.339743, 30.017479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.836041, 26.126421, 29.729450>,  <11.942587, 25.998428, 29.556633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.836041, 26.126421, 29.729450>,  <11.658466, 26.339743, 30.017479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.836041, 26.126421, 29.729450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376867, -0.840196, 0.389925,
		-0.812952, 0.098270, -0.573979,
		0.443937, -0.533304, -0.720074,
		11.969223, 25.966431, 29.513428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.167996, 25.874838, 29.678303>,  <11.658466, 26.339743, 30.017479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.167996, 25.874838, 29.678303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.536382, 25.721453, 29.650633>,  <11.757413, 25.629421, 29.634031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.536382, 25.721453, 29.650633>,  <11.167996, 25.874838, 29.678303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.536382, 25.721453, 29.650633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386056, -0.922032, -0.028602,
		-0.052812, 0.053046, -0.997195,
		0.920962, -0.383463, -0.069173,
		11.812671, 25.606415, 29.629881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.308430, 25.419699, 29.008509>,  <11.167996, 25.874838, 29.678303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.308430, 25.419699, 29.008509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.511911, 25.301329, 29.331902>,  <11.634001, 25.230307, 29.525938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.511911, 25.301329, 29.331902>,  <11.308430, 25.419699, 29.008509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.511911, 25.301329, 29.331902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442650, -0.895344, -0.049201,
		0.738431, -0.332847, -0.586457,
		0.508704, -0.295927, 0.808485,
		11.664523, 25.212551, 29.574448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.709822, 24.853006, 28.809057>,  <11.308430, 25.419699, 29.008509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.709822, 24.853006, 28.809057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.656475, 24.839020, 29.205236>,  <11.624467, 24.830627, 29.442944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.656475, 24.839020, 29.205236>,  <11.709822, 24.853006, 28.809057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.656475, 24.839020, 29.205236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054845, -0.997586, -0.042601,
		0.989548, -0.060003, 0.131126,
		-0.133365, -0.034964, 0.990450,
		11.616466, 24.828531, 29.502371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.108914, 24.467289, 29.091135>,  <11.709822, 24.853006, 28.809057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.108914, 24.467289, 29.091135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.837373, 24.452545, 29.384474>,  <11.674448, 24.443699, 29.560478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.837373, 24.452545, 29.384474>,  <12.108914, 24.467289, 29.091135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.837373, 24.452545, 29.384474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050352, -0.998725, -0.003590,
		0.732546, 0.034488, 0.679844,
		-0.678853, -0.036862, 0.733348,
		11.633717, 24.441486, 29.604479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.417657, 23.968019, 29.594046>,  <12.108914, 24.467289, 29.091135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.417657, 23.968019, 29.594046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.023866, 24.021328, 29.548370>,  <11.787591, 24.053314, 29.520966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.023866, 24.021328, 29.548370>,  <12.417657, 23.968019, 29.594046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.023866, 24.021328, 29.548370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109395, -0.974776, -0.194538,
		-0.137236, -0.179027, 0.974226,
		-0.984479, 0.133273, -0.114190,
		11.728522, 24.061310, 29.514112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.088798, 23.383081, 30.027412>,  <12.417657, 23.968019, 29.594046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.088798, 23.383081, 30.027412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.853907, 23.519768, 29.733912>,  <11.712972, 23.601780, 29.557812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.853907, 23.519768, 29.733912>,  <12.088798, 23.383081, 30.027412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.853907, 23.519768, 29.733912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301268, -0.933657, -0.193707,
		-0.751266, 0.107306, 0.651218,
		-0.587228, 0.341717, -0.733752,
		11.677738, 23.622282, 29.513786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.424899, 23.048136, 29.994310>,  <12.088798, 23.383081, 30.027412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.424899, 23.048136, 29.994310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.456538, 23.215118, 29.632212>,  <11.475522, 23.315308, 29.414951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.456538, 23.215118, 29.632212>,  <11.424899, 23.048136, 29.994310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.456538, 23.215118, 29.632212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188047, -0.885541, -0.424800,
		-0.978970, 0.203830, 0.008457,
		0.079098, 0.417456, -0.905248,
		11.480268, 23.340355, 29.360638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.835879, 22.982944, 29.595963>,  <11.424899, 23.048136, 29.994310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.835879, 22.982944, 29.595963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.140173, 23.005285, 29.337299>,  <11.322749, 23.018690, 29.182102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.140173, 23.005285, 29.337299>,  <10.835879, 22.982944, 29.595963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.140173, 23.005285, 29.337299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349789, -0.803959, -0.480934,
		-0.546747, 0.592055, -0.592062,
		0.760733, 0.055853, -0.646657,
		11.368393, 23.022041, 29.143303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.520051, 22.649252, 28.945169>,  <10.835879, 22.982944, 29.595963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.520051, 22.649252, 28.945169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.914490, 22.647444, 28.878727>,  <11.151154, 22.646358, 28.838861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.914490, 22.647444, 28.878727>,  <10.520051, 22.649252, 28.945169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.914490, 22.647444, 28.878727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075750, -0.901948, -0.425150,
		-0.147898, 0.431822, -0.889751,
		0.986097, -0.004520, -0.166107,
		11.210319, 22.646088, 28.828896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.568051, 22.426369, 28.235657>,  <10.520051, 22.649252, 28.945169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.568051, 22.426369, 28.235657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.919149, 22.349710, 28.411308>,  <11.129808, 22.303715, 28.516699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.919149, 22.349710, 28.411308>,  <10.568051, 22.426369, 28.235657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.919149, 22.349710, 28.411308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137681, -0.776976, -0.614290,
		0.458919, 0.599650, -0.655601,
		0.877746, -0.191645, 0.439130,
		11.182473, 22.292217, 28.543047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.114051, 22.367136, 27.685736>,  <10.568051, 22.426369, 28.235657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.114051, 22.367136, 27.685736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.233953, 22.166918, 28.010599>,  <11.305895, 22.046787, 28.205517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.233953, 22.166918, 28.010599>,  <11.114051, 22.367136, 27.685736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.233953, 22.166918, 28.010599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199416, -0.799623, -0.566424,
		0.932941, 0.331747, -0.139875,
		0.299756, -0.500547, 0.812157,
		11.323880, 22.016754, 28.254246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.663479, 21.944391, 27.397274>,  <11.114051, 22.367136, 27.685736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.663479, 21.944391, 27.397274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.562109, 21.768665, 27.742012>,  <11.501287, 21.663229, 27.948854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.562109, 21.768665, 27.742012>,  <11.663479, 21.944391, 27.397274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.562109, 21.768665, 27.742012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163436, -0.897567, -0.409466,
		0.953449, 0.037088, 0.299265,
		-0.253423, -0.439316, 0.861846,
		11.486082, 21.636871, 28.000566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.194133, 21.349955, 27.470448>,  <11.663479, 21.944391, 27.397274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.194133, 21.349955, 27.470448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.908310, 21.275198, 27.740108>,  <11.736816, 21.230345, 27.901905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.908310, 21.275198, 27.740108>,  <12.194133, 21.349955, 27.470448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.908310, 21.275198, 27.740108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087207, -0.979935, -0.179230,
		0.694120, -0.069280, 0.716518,
		-0.714558, -0.186892, 0.674150,
		11.693943, 21.219130, 27.942354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.396734, 20.769667, 27.776403>,  <12.194133, 21.349955, 27.470448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.396734, 20.769667, 27.776403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.003722, 20.782516, 27.849726>,  <11.767915, 20.790226, 27.893719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.003722, 20.782516, 27.849726>,  <12.396734, 20.769667, 27.776403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.003722, 20.782516, 27.849726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071430, -0.974642, -0.212061,
		0.171847, -0.221450, 0.959910,
		-0.982530, 0.032124, 0.183308,
		11.708963, 20.792154, 27.904718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.261789, 20.139040, 28.053101>,  <12.396734, 20.769667, 27.776403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.261789, 20.139040, 28.053101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.928926, 20.299562, 27.900015>,  <11.729209, 20.395876, 27.808163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.928926, 20.299562, 27.900015>,  <12.261789, 20.139040, 28.053101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.928926, 20.299562, 27.900015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165410, -0.838357, -0.519420,
		-0.529296, -0.368935, 0.764024,
		-0.832157, 0.401304, -0.382713,
		11.679279, 20.419954, 27.785200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.844539, 19.632444, 28.033857>,  <12.261789, 20.139040, 28.053101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.844539, 19.632444, 28.033857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.654406, 19.872013, 27.776066>,  <11.540326, 20.015755, 27.621391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.654406, 19.872013, 27.776066>,  <11.844539, 19.632444, 28.033857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.654406, 19.872013, 27.776066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121836, -0.770275, -0.625965,
		-0.871330, -0.219020, 0.439105,
		-0.475331, 0.598921, -0.644480,
		11.511806, 20.051689, 27.582722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.349009, 19.198311, 27.769669>,  <11.844539, 19.632444, 28.033857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.349009, 19.198311, 27.769669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.338369, 19.473969, 27.480015>,  <11.331986, 19.639362, 27.306221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.338369, 19.473969, 27.480015>,  <11.349009, 19.198311, 27.769669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.338369, 19.473969, 27.480015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075281, -0.720955, -0.688880,
		-0.996808, -0.072836, -0.032704,
		-0.026597, 0.689143, -0.724137,
		11.330390, 19.680712, 27.262774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.938326, 18.983665, 27.357054>,  <11.349009, 19.198311, 27.769669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.938326, 18.983665, 27.357054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.164794, 19.237785, 27.146971>,  <11.300675, 19.390257, 27.020922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.164794, 19.237785, 27.146971>,  <10.938326, 18.983665, 27.357054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.164794, 19.237785, 27.146971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114748, -0.691706, -0.713005,
		-0.816262, 0.343416, -0.464523,
		0.566171, 0.635302, -0.525207,
		11.334645, 19.428375, 26.989408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.624606, 18.969854, 26.674042>,  <10.938326, 18.983665, 27.357054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.624606, 18.969854, 26.674042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.990556, 19.126219, 26.633657>,  <11.210126, 19.220037, 26.609426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.990556, 19.126219, 26.633657>,  <10.624606, 18.969854, 26.674042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.990556, 19.126219, 26.633657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202834, -0.661240, -0.722233,
		-0.349089, 0.640274, -0.684241,
		0.914874, 0.390911, -0.100963,
		11.265018, 19.243492, 26.603369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.684468, 19.008881, 25.979385>,  <10.624606, 18.969854, 26.674042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.684468, 19.008881, 25.979385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.062902, 19.001646, 26.108751>,  <11.289963, 18.997305, 26.186371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.062902, 19.001646, 26.108751>,  <10.684468, 19.008881, 25.979385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.062902, 19.001646, 26.108751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262481, -0.542255, -0.798163,
		0.189807, 0.840019, -0.508272,
		0.946085, -0.018085, 0.323413,
		11.346728, 18.996220, 26.205776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.092480, 19.325321, 25.405781>,  <10.684468, 19.008881, 25.979385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.092480, 19.325321, 25.405781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.243248, 19.041496, 25.643923>,  <11.333709, 18.871201, 25.786808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.243248, 19.041496, 25.643923>,  <11.092480, 19.325321, 25.405781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.243248, 19.041496, 25.643923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027176, -0.634015, -0.772843,
		0.925847, 0.307480, -0.219690,
		0.376921, -0.709564, 0.595357,
		11.356324, 18.828627, 25.822531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.712526, 19.147932, 25.105604>,  <11.092480, 19.325321, 25.405781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.712526, 19.147932, 25.105604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.558247, 18.851711, 25.325720>,  <11.465678, 18.673979, 25.457788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.558247, 18.851711, 25.325720>,  <11.712526, 19.147932, 25.105604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.558247, 18.851711, 25.325720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142015, -0.636983, -0.757684,
		0.911629, -0.214090, 0.350854,
		-0.385700, -0.740553, 0.550288,
		11.442536, 18.629545, 25.490807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.068341, 18.540503, 24.996845>,  <11.712526, 19.147932, 25.105604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.068341, 18.540503, 24.996845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.746422, 18.366039, 25.157873>,  <11.553270, 18.261360, 25.254490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.746422, 18.366039, 25.157873>,  <12.068341, 18.540503, 24.996845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.746422, 18.366039, 25.157873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062002, -0.612757, -0.787835,
		0.590301, -0.659009, 0.466104,
		-0.804799, -0.436160, 0.402571,
		11.504982, 18.235191, 25.278645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.133895, 17.910873, 24.808134>,  <12.068341, 18.540503, 24.996845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.133895, 17.910873, 24.808134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.743410, 17.952417, 24.884264>,  <11.509119, 17.977345, 24.929941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.743410, 17.952417, 24.884264>,  <12.133895, 17.910873, 24.808134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.743410, 17.952417, 24.884264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206696, -0.710880, -0.672255,
		0.065477, -0.695602, 0.715437,
		-0.976212, 0.103861, 0.190324,
		11.450546, 17.983576, 24.941360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.945734, 17.284302, 24.606812>,  <12.133895, 17.910873, 24.808134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.945734, 17.284302, 24.606812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.621686, 17.516363, 24.640583>,  <11.427257, 17.655600, 24.660845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.621686, 17.516363, 24.640583>,  <11.945734, 17.284302, 24.606812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.621686, 17.516363, 24.640583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380991, -0.411527, -0.827944,
		-0.445593, -0.702898, 0.554420,
		-0.810119, 0.580155, 0.084424,
		11.378650, 17.690409, 24.665911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.275555, 16.826971, 24.537424>,  <11.945734, 17.284302, 24.606812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.275555, 16.826971, 24.537424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.181664, 17.202082, 24.435072>,  <11.125330, 17.427149, 24.373661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.181664, 17.202082, 24.435072>,  <11.275555, 16.826971, 24.537424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.181664, 17.202082, 24.435072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405348, -0.333686, -0.851086,
		-0.883514, -0.096051, 0.458451,
		-0.234726, 0.937778, -0.255882,
		11.111247, 17.483416, 24.358307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.572150, 16.722277, 24.274658>,  <11.275555, 16.826971, 24.537424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.572150, 16.722277, 24.274658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.706893, 17.062107, 24.112303>,  <10.787739, 17.266006, 24.014891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.706893, 17.062107, 24.112303>,  <10.572150, 16.722277, 24.274658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.706893, 17.062107, 24.112303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622090, -0.122769, -0.773260,
		-0.706775, 0.512977, 0.487159,
		0.336857, 0.849578, -0.405888,
		10.807950, 17.316980, 23.990536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.984289, 16.960608, 24.023958>,  <10.572150, 16.722277, 24.274658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.984289, 16.960608, 24.023958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.265193, 17.159571, 23.820227>,  <10.433735, 17.278950, 23.697989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.265193, 17.159571, 23.820227>,  <9.984289, 16.960608, 24.023958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.265193, 17.159571, 23.820227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611755, 0.055703, -0.789084,
		-0.364127, 0.865726, 0.343411,
		0.702259, 0.497410, -0.509329,
		10.475870, 17.308794, 23.667427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.639822, 17.449921, 23.647415>,  <9.984289, 16.960608, 24.023958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.639822, 17.449921, 23.647415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.987365, 17.386442, 23.459841>,  <10.195890, 17.348356, 23.347296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.987365, 17.386442, 23.459841>,  <9.639822, 17.449921, 23.647415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.987365, 17.386442, 23.459841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494822, -0.248866, -0.832597,
		0.015425, 0.955448, -0.294755,
		0.868858, -0.158694, -0.468938,
		10.248022, 17.338835, 23.319159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.575447, 17.967564, 23.097075>,  <9.639822, 17.449921, 23.647415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.575447, 17.967564, 23.097075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.878995, 17.734146, 22.981424>,  <10.061124, 17.594095, 22.912035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.878995, 17.734146, 22.981424>,  <9.575447, 17.967564, 23.097075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.878995, 17.734146, 22.981424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270045, 0.122027, -0.955084,
		0.592614, 0.802861, -0.064981,
		0.758870, -0.583544, -0.289123,
		10.106656, 17.559082, 22.894688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.869962, 18.319912, 22.546568>,  <9.575447, 17.967564, 23.097075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.869962, 18.319912, 22.546568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.972569, 17.936234, 22.499001>,  <10.034132, 17.706026, 22.470461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.972569, 17.936234, 22.499001>,  <9.869962, 18.319912, 22.546568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.972569, 17.936234, 22.499001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204426, 0.066410, -0.976627,
		0.944674, 0.274831, -0.179049,
		0.256517, -0.959196, -0.118919,
		10.049523, 17.648474, 22.463326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.306083, 18.258839, 21.951639>,  <9.869962, 18.319912, 22.546568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.306083, 18.258839, 21.951639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.192705, 17.878162, 21.998877>,  <10.124679, 17.649757, 22.027220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.192705, 17.878162, 21.998877>,  <10.306083, 18.258839, 21.951639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.192705, 17.878162, 21.998877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074158, -0.101026, -0.992116,
		0.956117, -0.289967, -0.041940,
		-0.283444, -0.951689, 0.118096,
		10.107672, 17.592655, 22.034306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.738959, 17.807760, 21.561861>,  <10.306083, 18.258839, 21.951639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.738959, 17.807760, 21.561861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.406207, 17.588739, 21.597998>,  <10.206556, 17.457327, 21.619680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.406207, 17.588739, 21.597998>,  <10.738959, 17.807760, 21.561861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.406207, 17.588739, 21.597998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052544, -0.239776, -0.969405,
		0.552463, -0.801682, 0.228236,
		-0.831880, -0.547553, 0.090343,
		10.156643, 17.424473, 21.625101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.865197, 17.130913, 21.186438>,  <10.738959, 17.807760, 21.561861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.865197, 17.130913, 21.186438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.467299, 17.158878, 21.216362>,  <10.228561, 17.175657, 21.234316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.467299, 17.158878, 21.216362>,  <10.865197, 17.130913, 21.186438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.467299, 17.158878, 21.216362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079996, -0.074583, -0.994001,
		-0.063891, -0.994763, 0.079782,
		-0.994745, 0.069890, 0.074812,
		10.168877, 17.179853, 21.238806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.595013, 16.588926, 20.786903>,  <10.865197, 17.130913, 21.186438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.595013, 16.588926, 20.786903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.267691, 16.817289, 20.813562>,  <10.071298, 16.954308, 20.829557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.267691, 16.817289, 20.813562>,  <10.595013, 16.588926, 20.786903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.267691, 16.817289, 20.813562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170492, -0.130357, -0.976698,
		-0.548917, -0.810600, 0.204007,
		-0.818305, 0.570907, 0.066645,
		10.022199, 16.988562, 20.833555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.986600, 16.206081, 20.383581>,  <10.595013, 16.588926, 20.786903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.986600, 16.206081, 20.383581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.895075, 16.592800, 20.429090>,  <9.840159, 16.824831, 20.456396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.895075, 16.592800, 20.429090>,  <9.986600, 16.206081, 20.383581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.895075, 16.592800, 20.429090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361609, 0.024099, -0.932019,
		-0.903817, -0.254399, 0.344088,
		-0.228812, 0.966799, 0.113774,
		9.826431, 16.882839, 20.463223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.294865, 16.237524, 20.122593>,  <9.986600, 16.206081, 20.383581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.294865, 16.237524, 20.122593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.460763, 16.601404, 20.114269>,  <9.560302, 16.819733, 20.109276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.460763, 16.601404, 20.114269>,  <9.294865, 16.237524, 20.122593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.460763, 16.601404, 20.114269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269426, 0.100929, -0.957717,
		-0.869135, 0.402816, 0.286956,
		0.414746, 0.909699, -0.020808,
		9.585187, 16.874313, 20.108027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.888268, 16.529579, 19.594362>,  <9.294865, 16.237524, 20.122593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.888268, 16.529579, 19.594362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.188878, 16.787542, 19.649937>,  <9.369245, 16.942320, 19.683281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.188878, 16.787542, 19.649937>,  <8.888268, 16.529579, 19.594362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.188878, 16.787542, 19.649937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076098, 0.124453, -0.989303,
		-0.655300, 0.754059, 0.044454,
		0.751526, 0.644908, 0.138936,
		9.414336, 16.981014, 19.691618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.655787, 17.147436, 19.238340>,  <8.888268, 16.529579, 19.594362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.655787, 17.147436, 19.238340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.053266, 17.120968, 19.274532>,  <9.291753, 17.105087, 19.296247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.053266, 17.120968, 19.274532>,  <8.655787, 17.147436, 19.238340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.053266, 17.120968, 19.274532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095692, 0.080352, -0.992163,
		0.058383, 0.994568, 0.086177,
		0.993697, -0.066172, 0.090481,
		9.351375, 17.101116, 19.301676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.815845, 17.576437, 18.789082>,  <8.655787, 17.147436, 19.238340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.815845, 17.576437, 18.789082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.149859, 17.362747, 18.841721>,  <9.350267, 17.234533, 18.873304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.149859, 17.362747, 18.841721>,  <8.815845, 17.576437, 18.789082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.149859, 17.362747, 18.841721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134136, -0.034300, -0.990369,
		0.533596, 0.844645, 0.043017,
		0.835035, -0.534227, 0.131600,
		9.400370, 17.202478, 18.881201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.364918, 17.885168, 18.342686>,  <8.815845, 17.576437, 18.789082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.364918, 17.885168, 18.342686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.503582, 17.521070, 18.433270>,  <9.586781, 17.302612, 18.487619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.503582, 17.521070, 18.433270>,  <9.364918, 17.885168, 18.342686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.503582, 17.521070, 18.433270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395757, -0.076952, -0.915125,
		0.850413, 0.406861, 0.333559,
		0.346661, -0.910243, 0.226459,
		9.607580, 17.247997, 18.501207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.134223, 17.887951, 18.083363>,  <9.364918, 17.885168, 18.342686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.134223, 17.887951, 18.083363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.029879, 17.503866, 18.123253>,  <9.967272, 17.273415, 18.147186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.029879, 17.503866, 18.123253>,  <10.134223, 17.887951, 18.083363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.029879, 17.503866, 18.123253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354417, -0.191347, -0.915301,
		0.897965, -0.203421, 0.390230,
		-0.260861, -0.960212, 0.099727,
		9.951620, 17.215803, 18.153172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.686587, 17.498354, 17.809147>,  <10.134223, 17.887951, 18.083363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.686587, 17.498354, 17.809147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.363130, 17.263050, 17.806421>,  <10.169055, 17.121868, 17.804787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.363130, 17.263050, 17.806421>,  <10.686587, 17.498354, 17.809147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.363130, 17.263050, 17.806421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137072, -0.177135, -0.974595,
		0.572107, -0.789034, 0.223873,
		-0.808644, -0.588259, -0.006814,
		10.120537, 17.086573, 17.804377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.863951, 16.958368, 17.390970>,  <10.686587, 17.498354, 17.809147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.863951, 16.958368, 17.390970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.465480, 16.926945, 17.406244>,  <10.226398, 16.908091, 17.415409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.465480, 16.926945, 17.406244>,  <10.863951, 16.958368, 17.390970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.465480, 16.926945, 17.406244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014386, -0.283650, -0.958820,
		0.086156, -0.955704, 0.281435,
		-0.996178, -0.078560, 0.038187,
		10.166627, 16.903378, 17.417700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.704954, 16.339045, 17.196434>,  <10.863951, 16.958368, 17.390970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.704954, 16.339045, 17.196434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.371383, 16.544287, 17.115158>,  <10.171240, 16.667433, 17.066393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.371383, 16.544287, 17.115158>,  <10.704954, 16.339045, 17.196434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.371383, 16.544287, 17.115158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100815, -0.220348, -0.970197,
		-0.542587, -0.829559, 0.132026,
		-0.833928, 0.513107, -0.203190,
		10.121204, 16.698219, 17.054201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.735463, 15.779030, 17.688583>,  <10.704954, 16.339045, 17.196434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.735463, 15.779030, 17.688583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.901176, 15.421487, 17.620008>,  <11.000605, 15.206962, 17.578863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.901176, 15.421487, 17.620008>,  <10.735463, 15.779030, 17.688583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.901176, 15.421487, 17.620008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327229, -0.029484, 0.944485,
		-0.849288, -0.447383, 0.280281,
		0.414282, -0.893856, -0.171437,
		11.025461, 15.153330, 17.568577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.791419, 15.387314, 18.341169>,  <10.735463, 15.779030, 17.688583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.791419, 15.387314, 18.341169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.120781, 15.268755, 18.147612>,  <11.318398, 15.197619, 18.031477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.120781, 15.268755, 18.147612>,  <10.791419, 15.387314, 18.341169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.120781, 15.268755, 18.147612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541576, 0.155888, 0.826072,
		-0.169413, -0.942257, 0.288880,
		0.823405, -0.296398, -0.483894,
		11.367803, 15.179836, 18.002443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.159369, 14.817021, 18.674599>,  <10.791419, 15.387314, 18.341169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.159369, 14.817021, 18.674599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.424390, 15.050350, 18.486658>,  <11.583403, 15.190348, 18.373894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.424390, 15.050350, 18.486658>,  <11.159369, 14.817021, 18.674599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.424390, 15.050350, 18.486658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446358, 0.196251, 0.873069,
		0.601491, -0.788175, -0.130345,
		0.662551, 0.583323, -0.469851,
		11.623156, 15.225347, 18.345703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.731181, 14.728217, 18.990864>,  <11.159369, 14.817021, 18.674599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.731181, 14.728217, 18.990864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.847690, 15.066295, 18.811617>,  <11.917595, 15.269141, 18.704069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.847690, 15.066295, 18.811617>,  <11.731181, 14.728217, 18.990864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.847690, 15.066295, 18.811617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407397, 0.314236, 0.857487,
		0.865557, -0.432322, -0.252802,
		0.291271, 0.845194, -0.448116,
		11.935071, 15.319853, 18.677181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.542222, 14.902179, 19.038488>,  <11.731181, 14.728217, 18.990864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.542222, 14.902179, 19.038488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.358273, 15.253720, 18.987688>,  <12.247903, 15.464645, 18.957207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.358273, 15.253720, 18.987688>,  <12.542222, 14.902179, 19.038488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.358273, 15.253720, 18.987688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579425, 0.405371, 0.707065,
		0.672891, 0.251573, -0.695650,
		-0.459874, 0.878855, -0.127003,
		12.220310, 15.517377, 18.949587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.071789, 15.322602, 19.249968>,  <12.542222, 14.902179, 19.038488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.071789, 15.322602, 19.249968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.763939, 15.577999, 19.248909>,  <12.579229, 15.731237, 19.248274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.763939, 15.577999, 19.248909>,  <13.071789, 15.322602, 19.249968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.763939, 15.577999, 19.248909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406107, 0.492703, 0.769624,
		0.492703, 0.591247, -0.638492,
		-0.769624, 0.638492, -0.002646,
		12.533051, 15.769547, 19.248116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.367489, 15.998565, 19.309492>,  <13.071789, 15.322602, 19.249968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.367489, 15.998565, 19.309492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.992346, 16.066708, 19.430424>,  <12.767260, 16.107594, 19.502983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.992346, 16.066708, 19.430424>,  <13.367489, 15.998565, 19.309492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.992346, 16.066708, 19.430424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340529, 0.619517, 0.707276,
		-0.066808, 0.766275, -0.639030,
		-0.937857, 0.170356, 0.302328,
		12.710989, 16.117815, 19.521122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.393841, 16.648438, 19.457558>,  <13.367489, 15.998565, 19.309492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.393841, 16.648438, 19.457558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.049483, 16.555721, 19.638725>,  <12.842869, 16.500092, 19.747425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.049483, 16.555721, 19.638725>,  <13.393841, 16.648438, 19.457558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.049483, 16.555721, 19.638725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111858, 0.782190, 0.612916,
		-0.496335, 0.578318, -0.647456,
		-0.860894, -0.231788, 0.452918,
		12.791215, 16.486185, 19.774601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.959269, 17.295158, 19.643707>,  <13.393841, 16.648438, 19.457558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.959269, 17.295158, 19.643707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.861145, 16.999811, 19.894987>,  <12.802271, 16.822603, 20.045755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.861145, 16.999811, 19.894987>,  <12.959269, 17.295158, 19.643707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.861145, 16.999811, 19.894987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190477, 0.598661, 0.778026,
		-0.950548, 0.310515, -0.006215,
		-0.245309, -0.738367, 0.628202,
		12.787552, 16.778301, 20.083448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.550876, 17.531706, 20.132093>,  <12.959269, 17.295158, 19.643707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.550876, 17.531706, 20.132093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.645398, 17.185410, 20.308569>,  <12.702111, 16.977631, 20.414455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.645398, 17.185410, 20.308569>,  <12.550876, 17.531706, 20.132093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.645398, 17.185410, 20.308569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007989, 0.452303, 0.891828,
		-0.971646, -0.214268, 0.099965,
		0.236305, -0.865743, 0.441190,
		12.716290, 16.925686, 20.440926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.128522, 17.561010, 20.738733>,  <12.550876, 17.531706, 20.132093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.128522, 17.561010, 20.738733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.434732, 17.313723, 20.810036>,  <12.618459, 17.165350, 20.852818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.434732, 17.313723, 20.810036>,  <12.128522, 17.561010, 20.738733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.434732, 17.313723, 20.810036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195634, 0.487587, 0.850874,
		-0.612942, -0.616493, 0.494205,
		0.765526, -0.618220, 0.178256,
		12.664391, 17.128256, 20.863512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.000311, 17.413273, 21.368790>,  <12.128522, 17.561010, 20.738733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.000311, 17.413273, 21.368790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.381372, 17.298111, 21.329683>,  <12.610010, 17.229013, 21.306219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.381372, 17.298111, 21.329683>,  <12.000311, 17.413273, 21.368790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.381372, 17.298111, 21.329683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220753, 0.433820, 0.873538,
		-0.209085, -0.853762, 0.476837,
		0.952655, -0.287907, -0.097765,
		12.667169, 17.211739, 21.300354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.118640, 17.038216, 21.927563>,  <12.000311, 17.413273, 21.368790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.118640, 17.038216, 21.927563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.486286, 17.142065, 21.809023>,  <12.706874, 17.204374, 21.737900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.486286, 17.142065, 21.809023>,  <12.118640, 17.038216, 21.927563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.486286, 17.142065, 21.809023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205656, 0.325423, 0.922933,
		0.336068, -0.909224, 0.245704,
		0.919111, 0.259638, -0.296351,
		12.762021, 17.219952, 21.720119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.599769, 16.693918, 22.421307>,  <12.118640, 17.038216, 21.927563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.599769, 16.693918, 22.421307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.787173, 16.993404, 22.233725>,  <12.899616, 17.173096, 22.121176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.787173, 16.993404, 22.233725>,  <12.599769, 16.693918, 22.421307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.787173, 16.993404, 22.233725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365952, 0.318668, 0.874374,
		0.804100, -0.581270, -0.124694,
		0.468512, 0.748716, -0.468957,
		12.927727, 17.218019, 22.093037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.111432, 16.821268, 22.803062>,  <12.599769, 16.693918, 22.421307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.111432, 16.821268, 22.803062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.168941, 17.146980, 22.578108>,  <13.203445, 17.342407, 22.443134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.168941, 17.146980, 22.578108>,  <13.111432, 16.821268, 22.803062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.168941, 17.146980, 22.578108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475016, 0.441759, 0.761058,
		0.868153, -0.376560, -0.323284,
		0.143770, 0.814280, -0.562387,
		13.212071, 17.391264, 22.409391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.813372, 16.893276, 22.819298>,  <13.111432, 16.821268, 22.803062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.813372, 16.893276, 22.819298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.603187, 17.229879, 22.769087>,  <13.477076, 17.431841, 22.738960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.603187, 17.229879, 22.769087>,  <13.813372, 16.893276, 22.819298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.603187, 17.229879, 22.769087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484752, 0.417356, 0.768655,
		0.699217, 0.343049, -0.627226,
		-0.525462, 0.841506, -0.125529,
		13.445548, 17.482330, 22.731428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.270231, 17.442087, 22.866678>,  <13.813372, 16.893276, 22.819298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.270231, 17.442087, 22.866678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.909384, 17.601585, 22.932627>,  <13.692875, 17.697285, 22.972195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.909384, 17.601585, 22.932627>,  <14.270231, 17.442087, 22.866678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.909384, 17.601585, 22.932627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371555, 0.523607, 0.766669,
		0.219380, 0.752886, -0.620513,
		-0.902119, 0.398747, 0.164870,
		13.638748, 17.721209, 22.982088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.378982, 18.094193, 23.108389>,  <14.270231, 17.442087, 22.866678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.378982, 18.094193, 23.108389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.999144, 18.053078, 23.226847>,  <13.771240, 18.028408, 23.297922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.999144, 18.053078, 23.226847>,  <14.378982, 18.094193, 23.108389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.999144, 18.053078, 23.226847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168489, 0.629294, 0.758684,
		-0.264347, 0.770340, -0.580256,
		-0.949596, -0.102789, 0.296146,
		13.714265, 18.022242, 23.315691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.107009, 18.750725, 23.306417>,  <14.378982, 18.094193, 23.108389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.107009, 18.750725, 23.306417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.876937, 18.476395, 23.484772>,  <13.738894, 18.311796, 23.591784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.876937, 18.476395, 23.484772>,  <14.107009, 18.750725, 23.306417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.876937, 18.476395, 23.484772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007102, 0.540866, 0.841079,
		-0.817995, 0.486940, -0.306225,
		-0.575181, -0.685824, 0.445884,
		13.704383, 18.270647, 23.618536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.676493, 19.175316, 23.789991>,  <14.107009, 18.750725, 23.306417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.676493, 19.175316, 23.789991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.650327, 18.794388, 23.909193>,  <13.634627, 18.565830, 23.980713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.650327, 18.794388, 23.909193>,  <13.676493, 19.175316, 23.789991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.650327, 18.794388, 23.909193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312676, 0.303164, 0.900180,
		-0.947605, -0.034294, -0.317600,
		-0.065414, -0.952321, 0.298003,
		13.630703, 18.508692, 23.998594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.002121, 19.066933, 24.066715>,  <13.676493, 19.175316, 23.789991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.002121, 19.066933, 24.066715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.227199, 18.786402, 24.241766>,  <13.362246, 18.618084, 24.346796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.227199, 18.786402, 24.241766>,  <13.002121, 19.066933, 24.066715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.227199, 18.786402, 24.241766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010271, 0.523414, 0.852016,
		-0.826601, -0.483920, 0.287319,
		0.562695, -0.701326, 0.437625,
		13.396008, 18.576004, 24.373053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.738892, 19.018360, 24.745850>,  <13.002121, 19.066933, 24.066715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.738892, 19.018360, 24.745850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.112673, 18.875990, 24.750170>,  <13.336942, 18.790567, 24.752762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.112673, 18.875990, 24.750170>,  <12.738892, 19.018360, 24.745850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.112673, 18.875990, 24.750170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133884, 0.379287, 0.915542,
		-0.329960, -0.854084, 0.402078,
		0.934452, -0.355924, 0.010801,
		13.393008, 18.769213, 24.753410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.699047, 18.677153, 25.327497>,  <12.738892, 19.018360, 24.745850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.699047, 18.677153, 25.327497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.090005, 18.724174, 25.257208>,  <13.324580, 18.752388, 25.215034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.090005, 18.724174, 25.257208>,  <12.699047, 18.677153, 25.327497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.090005, 18.724174, 25.257208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127798, 0.333631, 0.934001,
		0.168421, -0.935346, 0.311066,
		0.977396, 0.117552, -0.175726,
		13.383224, 18.759439, 25.204491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.135981, 18.312147, 25.872047>,  <12.699047, 18.677153, 25.327497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.135981, 18.312147, 25.872047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.394081, 18.575726, 25.717417>,  <13.548942, 18.733873, 25.624638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.394081, 18.575726, 25.717417>,  <13.135981, 18.312147, 25.872047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.394081, 18.575726, 25.717417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291209, 0.255664, 0.921864,
		0.706293, -0.707407, -0.026924,
		0.645250, 0.658947, -0.386577,
		13.587656, 18.773409, 25.601444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.699285, 18.332741, 26.407505>,  <13.135981, 18.312147, 25.872047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.699285, 18.332741, 26.407505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.764183, 18.640383, 26.160231>,  <13.803123, 18.824968, 26.011866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.764183, 18.640383, 26.160231>,  <13.699285, 18.332741, 26.407505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.764183, 18.640383, 26.160231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456987, 0.496685, 0.737880,
		0.874551, -0.402221, -0.270886,
		0.162246, 0.769105, -0.618186,
		13.812857, 18.871115, 25.974775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.432038, 18.602545, 26.481714>,  <13.699285, 18.332741, 26.407505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.432038, 18.602545, 26.481714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.204390, 18.902229, 26.346195>,  <14.067801, 19.082039, 26.264883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.204390, 18.902229, 26.346195>,  <14.432038, 18.602545, 26.481714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.204390, 18.902229, 26.346195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399312, 0.612020, 0.682629,
		0.718784, 0.253213, -0.647482,
		-0.569122, 0.749210, -0.338799,
		14.033653, 19.126991, 26.244556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.829627, 19.195129, 26.337923>,  <14.432038, 18.602545, 26.481714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.829627, 19.195129, 26.337923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.473612, 19.354712, 26.426167>,  <14.260003, 19.450460, 26.479113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.473612, 19.354712, 26.426167>,  <14.829627, 19.195129, 26.337923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.473612, 19.354712, 26.426167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443610, 0.646367, 0.620822,
		0.105085, 0.650420, -0.752271,
		-0.890038, 0.398954, 0.220609,
		14.206600, 19.474398, 26.492350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.007021, 19.880472, 26.490396>,  <14.829627, 19.195129, 26.337923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.007021, 19.880472, 26.490396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.628589, 19.857498, 26.617916>,  <14.401529, 19.843714, 26.694427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.628589, 19.857498, 26.617916>,  <15.007021, 19.880472, 26.490396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.628589, 19.857498, 26.617916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188851, 0.701809, 0.686877,
		-0.263185, 0.710046, -0.653122,
		-0.946081, -0.057433, 0.318798,
		14.344765, 19.840269, 26.713556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.964277, 20.501501, 26.613346>,  <15.007021, 19.880472, 26.490396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.964277, 20.501501, 26.613346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.673944, 20.319101, 26.819349>,  <14.499745, 20.209661, 26.942951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.673944, 20.319101, 26.819349>,  <14.964277, 20.501501, 26.613346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.673944, 20.319101, 26.819349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290805, 0.475087, 0.830497,
		-0.623379, 0.752568, -0.212226,
		-0.725831, -0.455998, 0.515010,
		14.456195, 20.182302, 26.973852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.547943, 21.037403, 26.978312>,  <14.964277, 20.501501, 26.613346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.547943, 21.037403, 26.978312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.519934, 20.694464, 27.182293>,  <14.503128, 20.488701, 27.304682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.519934, 20.694464, 27.182293>,  <14.547943, 21.037403, 26.978312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.519934, 20.694464, 27.182293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348326, 0.458016, 0.817857,
		-0.934754, 0.234899, 0.266565,
		-0.070023, -0.857347, 0.509954,
		14.498927, 20.437260, 27.335279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.308742, 21.204311, 27.577513>,  <14.547943, 21.037403, 26.978312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.308742, 21.204311, 27.577513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.481812, 20.855213, 27.667940>,  <14.585655, 20.645754, 27.722197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.481812, 20.855213, 27.667940>,  <14.308742, 21.204311, 27.577513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.481812, 20.855213, 27.667940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430414, 0.420300, 0.798806,
		-0.792171, -0.248322, 0.557496,
		0.432677, -0.872745, 0.226068,
		14.611615, 20.593390, 27.735760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.087167, 21.017742, 28.232800>,  <14.308742, 21.204311, 27.577513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.087167, 21.017742, 28.232800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.438076, 20.840601, 28.158745>,  <14.648622, 20.734316, 28.114311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.438076, 20.840601, 28.158745>,  <14.087167, 21.017742, 28.232800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.438076, 20.840601, 28.158745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400611, 0.463074, 0.790616,
		-0.264393, -0.767754, 0.583653,
		0.877273, -0.442851, -0.185137,
		14.701258, 20.707747, 28.103205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.535055, 21.456779, 28.306372>,  <14.087167, 21.017742, 28.232800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.535055, 21.456779, 28.306372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.822207, 21.610636, 28.538475>,  <14.994498, 21.702950, 28.677738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.822207, 21.610636, 28.538475>,  <14.535055, 21.456779, 28.306372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.822207, 21.610636, 28.538475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424902, 0.902335, -0.072458,
		-0.551459, -0.194537, 0.811202,
		0.717880, 0.384639, 0.580259,
		15.037572, 21.726027, 28.712553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.311595, 21.970829, 28.885576>,  <14.535055, 21.456779, 28.306372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.311595, 21.970829, 28.885576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.674491, 22.041378, 28.732838>,  <14.892228, 22.083708, 28.641193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.674491, 22.041378, 28.732838>,  <14.311595, 21.970829, 28.885576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.674491, 22.041378, 28.732838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225709, 0.970200, -0.088136,
		0.354924, 0.166147, 0.920013,
		0.907240, 0.176374, -0.381847,
		14.946663, 22.094290, 28.618284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.911749, 22.383404, 29.129194>,  <14.311595, 21.970829, 28.885576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.911749, 22.383404, 29.129194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.807299, 22.461346, 28.751020>,  <14.744628, 22.508110, 28.524117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.807299, 22.461346, 28.751020>,  <14.911749, 22.383404, 29.129194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.807299, 22.461346, 28.751020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241086, 0.935213, 0.259336,
		0.934714, 0.295650, -0.197232,
		-0.261127, 0.194855, -0.945433,
		14.728961, 22.519802, 28.467390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.330929, 23.003071, 28.882528>,  <14.911749, 22.383404, 29.129194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.330929, 23.003071, 28.882528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.992180, 22.957771, 28.674688>,  <14.788931, 22.930592, 28.549984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.992180, 22.957771, 28.674688>,  <15.330929, 23.003071, 28.882528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.992180, 22.957771, 28.674688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181817, 0.979843, 0.082771,
		0.499750, 0.164568, -0.850392,
		-0.846872, -0.113251, -0.519598,
		14.738118, 22.923796, 28.518808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.205983, 23.400734, 28.324305>,  <15.330929, 23.003071, 28.882528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.205983, 23.400734, 28.324305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.830407, 23.321100, 28.436558>,  <14.605062, 23.273319, 28.503910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.830407, 23.321100, 28.436558>,  <15.205983, 23.400734, 28.324305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.830407, 23.321100, 28.436558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165837, 0.976469, 0.137865,
		-0.301478, 0.082907, -0.949862,
		-0.938941, -0.199085, 0.280635,
		14.548725, 23.261375, 28.520748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.819239, 23.945400, 27.989695>,  <15.205983, 23.400734, 28.324305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.819239, 23.945400, 27.989695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.641492, 23.814260, 28.323174>,  <14.534844, 23.735577, 28.523262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.641492, 23.814260, 28.323174>,  <14.819239, 23.945400, 27.989695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.641492, 23.814260, 28.323174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337460, 0.923335, 0.183229,
		-0.829855, -0.199920, -0.520934,
		-0.444366, -0.327848, 0.833699,
		14.508183, 23.715906, 28.573284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.225846, 24.379950, 27.625835>,  <14.819239, 23.945400, 27.989695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.225846, 24.379950, 27.625835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.543442, 24.610098, 27.547321>,  <15.733999, 24.748188, 27.500212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.543442, 24.610098, 27.547321>,  <15.225846, 24.379950, 27.625835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.543442, 24.610098, 27.547321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084060, -0.423680, -0.901904,
		-0.602094, 0.699601, -0.384762,
		0.793988, 0.575373, -0.196286,
		15.781638, 24.782709, 27.488436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.070510, 24.742252, 27.026903>,  <15.225846, 24.379950, 27.625835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.070510, 24.742252, 27.026903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.469154, 24.743816, 27.059767>,  <15.708342, 24.744755, 27.079485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.469154, 24.743816, 27.059767>,  <15.070510, 24.742252, 27.026903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.469154, 24.743816, 27.059767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078195, -0.354824, -0.931657,
		0.025508, 0.934925, -0.353927,
		0.996612, 0.003911, 0.082158,
		15.768138, 24.744989, 27.084414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279328, 24.838982, 26.378948>,  <15.070510, 24.742252, 27.026903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.279328, 24.838982, 26.378948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.610249, 24.703651, 26.558331>,  <15.808801, 24.622454, 26.665960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.610249, 24.703651, 26.558331>,  <15.279328, 24.838982, 26.378948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.610249, 24.703651, 26.558331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280743, -0.442459, -0.851713,
		0.486579, 0.830521, -0.271063,
		0.827300, -0.338327, 0.448454,
		15.858438, 24.602154, 26.692867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.892300, 24.996639, 25.967716>,  <15.279328, 24.838982, 26.378948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.892300, 24.996639, 25.967716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.041126, 24.702419, 26.194178>,  <16.130423, 24.525887, 26.330055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.041126, 24.702419, 26.194178>,  <15.892300, 24.996639, 25.967716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.041126, 24.702419, 26.194178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228122, -0.518775, -0.823913,
		0.899737, 0.435702, -0.025223,
		0.372066, -0.735551, 0.566155,
		16.152746, 24.481754, 26.364023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.579535, 24.716217, 25.714064>,  <15.892300, 24.996639, 25.967716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.579535, 24.716217, 25.714064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.415497, 24.429899, 25.940147>,  <16.317074, 24.258108, 26.075798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.415497, 24.429899, 25.940147>,  <16.579535, 24.716217, 25.714064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.415497, 24.429899, 25.940147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142641, -0.662429, -0.735419,
		0.900819, -0.220970, 0.373760,
		-0.410095, -0.715793, 0.565210,
		16.292469, 24.215160, 26.109711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.981131, 24.180029, 25.465464>,  <16.579535, 24.716217, 25.714064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.981131, 24.180029, 25.465464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.662960, 24.030174, 25.656019>,  <16.472057, 23.940262, 25.770351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.662960, 24.030174, 25.656019>,  <16.981131, 24.180029, 25.465464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.662960, 24.030174, 25.656019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088584, -0.705740, -0.702911,
		0.599542, -0.601314, 0.528177,
		-0.795426, -0.374637, 0.476387,
		16.424332, 23.917784, 25.798935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.160053, 23.521175, 25.436022>,  <16.981131, 24.180029, 25.465464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.160053, 23.521175, 25.436022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.767248, 23.513872, 25.511198>,  <16.531565, 23.509489, 25.556303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.767248, 23.513872, 25.511198>,  <17.160053, 23.521175, 25.436022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.767248, 23.513872, 25.511198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127951, -0.667622, -0.733423,
		0.138865, -0.744276, 0.653276,
		-0.982011, -0.018259, 0.187940,
		16.472645, 23.508394, 25.567579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.875246, 22.742292, 25.567793>,  <17.160053, 23.521175, 25.436022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.875246, 22.742292, 25.567793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.561617, 22.962084, 25.452341>,  <16.373440, 23.093958, 25.383070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.561617, 22.962084, 25.452341>,  <16.875246, 22.742292, 25.567793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.561617, 22.962084, 25.452341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173642, -0.640652, -0.747939,
		-0.595880, -0.536324, 0.597732,
		-0.784076, 0.549474, -0.288624,
		16.326395, 23.126926, 25.365753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.426418, 22.283648, 25.402781>,  <16.875246, 22.742292, 25.567793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.426418, 22.283648, 25.402781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.306465, 22.614296, 25.212301>,  <16.234493, 22.812685, 25.098013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.306465, 22.614296, 25.212301>,  <16.426418, 22.283648, 25.402781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.306465, 22.614296, 25.212301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285240, -0.554033, -0.782103,
		-0.910334, -0.098708, 0.401931,
		-0.299883, 0.826622, -0.476200,
		16.216499, 22.862282, 25.069441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.744717, 22.035816, 25.042807>,  <16.426418, 22.283648, 25.402781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.744717, 22.035816, 25.042807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.891356, 22.364555, 24.868372>,  <15.979339, 22.561800, 24.763712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.891356, 22.364555, 24.868372>,  <15.744717, 22.035816, 25.042807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.891356, 22.364555, 24.868372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346624, -0.314326, -0.883771,
		-0.863400, 0.475145, 0.169642,
		0.366596, 0.821849, -0.436086,
		16.001335, 22.611111, 24.737547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.169887, 22.296316, 24.674303>,  <15.744717, 22.035816, 25.042807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.169887, 22.296316, 24.674303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.501903, 22.446531, 24.509377>,  <15.701113, 22.536661, 24.410421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.501903, 22.446531, 24.509377>,  <15.169887, 22.296316, 24.674303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.501903, 22.446531, 24.509377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291767, -0.337662, -0.894906,
		-0.475295, 0.863108, -0.170703,
		0.830040, 0.375538, -0.412315,
		15.750915, 22.559193, 24.385681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.965351, 22.586306, 24.046797>,  <15.169887, 22.296316, 24.674303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.965351, 22.586306, 24.046797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.363227, 22.548290, 24.031004>,  <15.601953, 22.525482, 24.021528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.363227, 22.548290, 24.031004>,  <14.965351, 22.586306, 24.046797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.363227, 22.548290, 24.031004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074998, -0.406689, -0.910483,
		0.070471, 0.908610, -0.411657,
		0.994690, -0.095036, -0.039484,
		15.661634, 22.519779, 24.019159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.070083, 22.742847, 23.302542>,  <14.965351, 22.586306, 24.046797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.070083, 22.742847, 23.302542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.382834, 22.540794, 23.448696>,  <15.570485, 22.419563, 23.536388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.382834, 22.540794, 23.448696>,  <15.070083, 22.742847, 23.302542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.382834, 22.540794, 23.448696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034483, -0.620233, -0.783659,
		0.622476, 0.600127, -0.502365,
		0.781879, -0.505132, 0.365386,
		15.617398, 22.389256, 23.558311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.546391, 22.657696, 22.758936>,  <15.070083, 22.742847, 23.302542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.546391, 22.657696, 22.758936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.626215, 22.360472, 23.014448>,  <15.674109, 22.182138, 23.167755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.626215, 22.360472, 23.014448>,  <15.546391, 22.657696, 22.758936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.626215, 22.360472, 23.014448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083823, -0.662448, -0.744403,
		0.976294, 0.095007, -0.194482,
		0.199558, -0.743059, 0.638780,
		15.686083, 22.137554, 23.206081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.873891, 22.209265, 22.379757>,  <15.546391, 22.657696, 22.758936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.873891, 22.209265, 22.379757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.803135, 21.964842, 22.688385>,  <15.760681, 21.818188, 22.873562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.803135, 21.964842, 22.688385>,  <15.873891, 22.209265, 22.379757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.803135, 21.964842, 22.688385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049080, -0.777479, -0.626991,
		0.983006, -0.148777, 0.107538,
		-0.176890, -0.611058, 0.771568,
		15.750068, 21.781525, 22.919855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.320173, 21.703274, 22.383030>,  <15.873891, 22.209265, 22.379757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.320173, 21.703274, 22.383030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.985676, 21.583765, 22.566957>,  <15.784978, 21.512060, 22.677315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.985676, 21.583765, 22.566957>,  <16.320173, 21.703274, 22.383030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.985676, 21.583765, 22.566957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063954, -0.779675, -0.622910,
		0.544619, -0.550310, 0.632889,
		-0.836241, -0.298773, 0.459821,
		15.734803, 21.494133, 22.704905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.286188, 21.014053, 22.259842>,  <16.320173, 21.703274, 22.383030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.286188, 21.014053, 22.259842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.918700, 21.038315, 22.415932>,  <15.698208, 21.052872, 22.509584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.918700, 21.038315, 22.415932>,  <16.286188, 21.014053, 22.259842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.918700, 21.038315, 22.415932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300909, -0.747447, -0.592263,
		0.255748, -0.661546, 0.704947,
		-0.918720, 0.060654, 0.390224,
		15.643085, 21.056511, 22.532999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.120558, 20.378248, 22.386833>,  <16.286188, 21.014053, 22.259842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.120558, 20.378248, 22.386833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.782625, 20.588135, 22.345011>,  <15.579865, 20.714067, 22.319918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.782625, 20.588135, 22.345011>,  <16.120558, 20.378248, 22.386833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.782625, 20.588135, 22.345011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421054, -0.772611, -0.475170,
		-0.330110, -0.357415, 0.873660,
		-0.844832, 0.524716, -0.104556,
		15.529176, 20.745550, 22.313644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.518236, 19.959087, 22.697512>,  <16.120558, 20.378248, 22.386833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.518236, 19.959087, 22.697512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.391470, 20.214014, 22.416544>,  <15.315411, 20.366970, 22.247963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.391470, 20.214014, 22.416544>,  <15.518236, 19.959087, 22.697512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.391470, 20.214014, 22.416544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449062, -0.753150, -0.480737,
		-0.835409, 0.163077, 0.524879,
		-0.316915, 0.637316, -0.702420,
		15.296395, 20.405209, 22.205818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.858470, 19.885857, 22.579777>,  <15.518236, 19.959087, 22.697512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.858470, 19.885857, 22.579777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.967749, 20.054514, 22.233925>,  <15.033316, 20.155708, 22.026415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.967749, 20.054514, 22.233925>,  <14.858470, 19.885857, 22.579777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.967749, 20.054514, 22.233925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456871, -0.734106, -0.502351,
		-0.846541, 0.532265, -0.007920,
		0.273198, 0.421642, -0.864627,
		15.049708, 20.181007, 21.974537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.375148, 19.817053, 22.155968>,  <14.858470, 19.885857, 22.579777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.375148, 19.817053, 22.155968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.647808, 19.893379, 21.873425>,  <14.811404, 19.939175, 21.703899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.647808, 19.893379, 21.873425>,  <14.375148, 19.817053, 22.155968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.647808, 19.893379, 21.873425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425832, -0.681590, -0.595065,
		-0.594994, 0.706416, -0.383351,
		0.681652, 0.190817, -0.706357,
		14.852304, 19.950624, 21.661518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.006179, 19.756744, 21.586956>,  <14.375148, 19.817053, 22.155968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.006179, 19.756744, 21.586956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.378902, 19.738888, 21.442879>,  <14.602536, 19.728174, 21.356432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.378902, 19.738888, 21.442879>,  <14.006179, 19.756744, 21.586956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.378902, 19.738888, 21.442879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263130, -0.766631, -0.585696,
		-0.249990, 0.640534, -0.726100,
		0.931809, -0.044640, -0.360194,
		14.658445, 19.725496, 21.334820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.912380, 19.608423, 20.944965>,  <14.006179, 19.756744, 21.586956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.912380, 19.608423, 20.944965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.287791, 19.481010, 20.998186>,  <14.513038, 19.404564, 21.030119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.287791, 19.481010, 20.998186>,  <13.912380, 19.608423, 20.944965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.287791, 19.481010, 20.998186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165791, -0.753989, -0.635621,
		0.302783, 0.574490, -0.760449,
		0.938529, -0.318531, 0.133050,
		14.569350, 19.385450, 21.038101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.118692, 19.489569, 20.361088>,  <13.912380, 19.608423, 20.944965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.118692, 19.489569, 20.361088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.369026, 19.252663, 20.564087>,  <14.519227, 19.110519, 20.685886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.369026, 19.252663, 20.564087>,  <14.118692, 19.489569, 20.361088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.369026, 19.252663, 20.564087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008844, -0.656020, -0.754691,
		0.779905, 0.467824, -0.415799,
		0.625835, -0.592265, 0.507496,
		14.556777, 19.074984, 20.716335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.560068, 19.206572, 19.877455>,  <14.118692, 19.489569, 20.361088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.560068, 19.206572, 19.877455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.648246, 18.960821, 20.180492>,  <14.701152, 18.813370, 20.362314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.648246, 18.960821, 20.180492>,  <14.560068, 19.206572, 19.877455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.648246, 18.960821, 20.180492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155857, -0.744533, -0.649138,
		0.962867, 0.261174, -0.068373,
		0.220443, -0.614377, 0.757592,
		14.714378, 18.776508, 20.407770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.123092, 18.851019, 19.666250>,  <14.560068, 19.206572, 19.877455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.123092, 18.851019, 19.666250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.000802, 18.613560, 19.964006>,  <14.927428, 18.471085, 20.142660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.000802, 18.613560, 19.964006>,  <15.123092, 18.851019, 19.666250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.000802, 18.613560, 19.964006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356332, -0.796345, -0.488735,
		0.882928, 0.115832, 0.454997,
		-0.305723, -0.593648, 0.744390,
		14.909085, 18.435465, 20.187323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.687755, 18.422520, 19.929501>,  <15.123092, 18.851019, 19.666250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.687755, 18.422520, 19.929501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.351421, 18.226755, 20.021999>,  <15.149621, 18.109297, 20.077499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.351421, 18.226755, 20.021999>,  <15.687755, 18.422520, 19.929501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.351421, 18.226755, 20.021999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378735, -0.837152, -0.394634,
		0.386728, -0.244240, 0.889263,
		-0.840834, -0.489411, 0.231247,
		15.099171, 18.079931, 20.091373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.962185, 17.853247, 20.254477>,  <15.687755, 18.422520, 19.929501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.962185, 17.853247, 20.254477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.591600, 17.762014, 20.134710>,  <15.369249, 17.707275, 20.062851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.591600, 17.762014, 20.134710>,  <15.962185, 17.853247, 20.254477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.591600, 17.762014, 20.134710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364836, -0.739765, -0.565370,
		-0.092547, -0.633031, 0.768575,
		-0.926461, -0.228081, -0.299416,
		15.313663, 17.693590, 20.044886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.973966, 17.197893, 20.219597>,  <15.962185, 17.853247, 20.254477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.973966, 17.197893, 20.219597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.651976, 17.271353, 19.993929>,  <15.458781, 17.315428, 19.858528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.651976, 17.271353, 19.993929>,  <15.973966, 17.197893, 20.219597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.651976, 17.271353, 19.993929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362696, -0.600206, -0.712884,
		-0.469539, -0.778476, 0.416542,
		-0.804975, 0.183649, -0.564170,
		15.410483, 17.326448, 19.824678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.894732, 16.644575, 19.908007>,  <15.973966, 17.197893, 20.219597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.894732, 16.644575, 19.908007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.694226, 16.900639, 19.675137>,  <15.573923, 17.054277, 19.535414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.694226, 16.900639, 19.675137>,  <15.894732, 16.644575, 19.908007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.694226, 16.900639, 19.675137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373956, -0.446464, -0.812912,
		-0.780314, -0.625193, -0.015594,
		-0.501265, 0.640159, -0.582177,
		15.543847, 17.092686, 19.500483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.539268, 16.255325, 19.269648>,  <15.894732, 16.644575, 19.908007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.539268, 16.255325, 19.269648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.542296, 16.637920, 19.152977>,  <15.544113, 16.867477, 19.082973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.542296, 16.637920, 19.152977>,  <15.539268, 16.255325, 19.269648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.542296, 16.637920, 19.152977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436675, -0.265568, -0.859528,
		-0.899588, -0.120861, -0.419684,
		0.007572, 0.956486, -0.291678,
		15.544568, 16.924866, 19.065474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.508433, 16.193668, 18.542299>,  <15.539268, 16.255325, 19.269648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.508433, 16.193668, 18.542299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.634228, 16.564505, 18.623886>,  <15.709704, 16.787006, 18.672838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.634228, 16.564505, 18.623886>,  <15.508433, 16.193668, 18.542299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.634228, 16.564505, 18.623886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638988, -0.047851, -0.767727,
		-0.701991, 0.371772, -0.607448,
		0.314487, 0.927090, 0.203967,
		15.728574, 16.842632, 18.685076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.587010, 16.517403, 17.861683>,  <15.508433, 16.193668, 18.542299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.587010, 16.517403, 17.861683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.842913, 16.708220, 18.102728>,  <15.996454, 16.822710, 18.247355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.842913, 16.708220, 18.102728>,  <15.587010, 16.517403, 17.861683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.842913, 16.708220, 18.102728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687211, -0.003942, -0.726448,
		-0.344171, 0.878871, -0.330351,
		0.639756, 0.477043, 0.602613,
		16.034840, 16.851332, 18.283512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.893681, 17.128649, 17.356915>,  <15.587010, 16.517403, 17.861683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.893681, 17.128649, 17.356915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.138329, 17.058390, 17.665478>,  <16.285118, 17.016233, 17.850615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.138329, 17.058390, 17.665478>,  <15.893681, 17.128649, 17.356915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.138329, 17.058390, 17.665478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775943, -0.057086, -0.628215,
		0.154382, 0.982796, 0.101379,
		0.611620, -0.175649, 0.771407,
		16.321814, 17.005695, 17.896900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.437160, 17.438404, 17.175186>,  <15.893681, 17.128649, 17.356915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.437160, 17.438404, 17.175186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.597830, 17.211018, 17.462379>,  <16.694231, 17.074585, 17.634695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.597830, 17.211018, 17.462379>,  <16.437160, 17.438404, 17.175186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.597830, 17.211018, 17.462379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810923, -0.143501, -0.567285,
		0.425515, 0.810093, 0.403343,
		0.401674, -0.568468, 0.717985,
		16.718332, 17.040478, 17.677774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.072910, 17.685476, 17.326754>,  <16.437160, 17.438404, 17.175186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.072910, 17.685476, 17.326754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.118975, 17.311338, 17.460541>,  <17.146614, 17.086855, 17.540813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.118975, 17.311338, 17.460541>,  <17.072910, 17.685476, 17.326754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.118975, 17.311338, 17.460541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820952, -0.099951, -0.562182,
		0.559264, 0.339323, 0.756362,
		0.115162, -0.935345, 0.334467,
		17.153522, 17.030735, 17.560881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.770590, 17.700499, 17.499510>,  <17.072910, 17.685476, 17.326754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.770590, 17.700499, 17.499510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.662077, 17.319855, 17.441761>,  <17.596970, 17.091469, 17.407112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.662077, 17.319855, 17.441761>,  <17.770590, 17.700499, 17.499510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.662077, 17.319855, 17.441761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834025, -0.157541, -0.528755,
		0.480424, -0.263854, 0.836405,
		-0.271283, -0.951610, -0.144374,
		17.580692, 17.034372, 17.398449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.394030, 17.324686, 17.641138>,  <17.770590, 17.700499, 17.499510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.394030, 17.324686, 17.641138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.194225, 17.028254, 17.461679>,  <18.074343, 16.850393, 17.354004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.194225, 17.028254, 17.461679>,  <18.394030, 17.324686, 17.641138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.194225, 17.028254, 17.461679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851834, -0.325899, -0.410083,
		0.157692, -0.587014, 0.794070,
		-0.499512, -0.741083, -0.448647,
		18.044373, 16.805929, 17.327085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.829380, 16.727928, 17.689592>,  <18.394030, 17.324686, 17.641138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.829380, 16.727928, 17.689592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.583101, 16.637657, 17.387602>,  <18.435335, 16.583494, 17.206408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.583101, 16.637657, 17.387602>,  <18.829380, 16.727928, 17.689592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.583101, 16.637657, 17.387602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756190, -0.438635, -0.485568,
		-0.221578, -0.869868, 0.440719,
		-0.615695, -0.225675, -0.754977,
		18.398394, 16.569954, 17.161108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.760109, 16.014776, 17.536283>,  <18.829380, 16.727928, 17.689592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.760109, 16.014776, 17.536283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.687185, 16.205511, 17.192333>,  <18.643431, 16.319952, 16.985964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.687185, 16.205511, 17.192333>,  <18.760109, 16.014776, 17.536283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.687185, 16.205511, 17.192333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860350, -0.345994, -0.374280,
		-0.475984, -0.808030, -0.347171,
		-0.182310, 0.476839, -0.859876,
		18.632492, 16.348562, 16.934370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.954370, 15.530038, 17.012720>,  <18.760109, 16.014776, 17.536283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.954370, 15.530038, 17.012720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.984196, 15.899472, 16.862291>,  <19.002090, 16.121132, 16.772034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.984196, 15.899472, 16.862291>,  <18.954370, 15.530038, 17.012720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.984196, 15.899472, 16.862291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900397, -0.224450, -0.372703,
		-0.428632, -0.310825, -0.848329,
		0.074562, 0.923585, -0.376072,
		19.006565, 16.176548, 16.749470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.384722, 15.196424, 17.526499>,  <18.954370, 15.530038, 17.012720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.384722, 15.196424, 17.526499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.668123, 15.387111, 17.734638>,  <19.838163, 15.501523, 17.859522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.668123, 15.387111, 17.734638>,  <19.384722, 15.196424, 17.526499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.668123, 15.387111, 17.734638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301010, -0.871049, 0.388159,
		0.638293, -0.118381, -0.760637,
		0.708502, 0.476718, 0.520351,
		19.880674, 15.530127, 17.890743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.745426, 14.784498, 16.910227>,  <19.384722, 15.196424, 17.526499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.745426, 14.784498, 16.910227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.947706, 15.113857, 17.013210>,  <20.069075, 15.311473, 17.075001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.947706, 15.113857, 17.013210>,  <19.745426, 14.784498, 16.910227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.947706, 15.113857, 17.013210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583949, -0.107026, -0.804704,
		-0.635037, 0.557280, -0.534945,
		0.505699, 0.823398, 0.257458,
		20.099417, 15.360877, 17.090448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.957693, 15.065700, 16.347954>,  <19.745426, 14.784498, 16.910227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.957693, 15.065700, 16.347954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.203510, 15.246328, 16.606695>,  <20.351002, 15.354706, 16.761940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.203510, 15.246328, 16.606695>,  <19.957693, 15.065700, 16.347954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.203510, 15.246328, 16.606695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622880, 0.225422, -0.749137,
		-0.484104, 0.863289, -0.142743,
		0.614544, 0.451572, 0.646853,
		20.387873, 15.381800, 16.800751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.118225, 15.733750, 16.088669>,  <19.957693, 15.065700, 16.347954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.118225, 15.733750, 16.088669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.416353, 15.618086, 16.328962>,  <20.595230, 15.548687, 16.473139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.416353, 15.618086, 16.328962>,  <20.118225, 15.733750, 16.088669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.416353, 15.618086, 16.328962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663912, 0.239523, -0.708414,
		0.060956, 0.926830, 0.370499,
		0.745322, -0.289161, 0.600733,
		20.639950, 15.531338, 16.509182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.760864, 16.222948, 16.044914>,  <20.118225, 15.733750, 16.088669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.760864, 16.222948, 16.044914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.886002, 15.867669, 16.179518>,  <20.961084, 15.654502, 16.260279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.886002, 15.867669, 16.179518>,  <20.760864, 16.222948, 16.044914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.886002, 15.867669, 16.179518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633667, -0.068739, -0.770546,
		0.707526, 0.454295, 0.541315,
		0.312846, -0.888195, 0.336506,
		20.979855, 15.601211, 16.280470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.538193, 16.228348, 16.059446>,  <20.760864, 16.222948, 16.044914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.538193, 16.228348, 16.059446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.325193, 15.896766, 15.990998>,  <21.197393, 15.697817, 15.949929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.325193, 15.896766, 15.990998>,  <21.538193, 16.228348, 16.059446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.325193, 15.896766, 15.990998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435419, -0.094901, -0.895212,
		0.725850, -0.551207, 0.411477,
		-0.532497, -0.828954, -0.171121,
		21.165445, 15.648080, 15.939662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.976162, 15.674954, 16.007175>,  <21.538193, 16.228348, 16.059446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.976162, 15.674954, 16.007175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.641685, 15.669004, 15.787880>,  <21.441000, 15.665434, 15.656303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.641685, 15.669004, 15.787880>,  <21.976162, 15.674954, 16.007175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.641685, 15.669004, 15.787880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544497, -0.142143, -0.826631,
		-0.065628, -0.989734, 0.126961,
		-0.836191, -0.014879, -0.548236,
		21.390829, 15.664542, 15.623409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.650623, 15.231174, 15.797804>,  <21.976162, 15.674954, 16.007175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.650623, 15.231174, 15.797804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.717628, 14.838874, 15.757663>,  <22.757832, 14.603494, 15.733579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.717628, 14.838874, 15.757663>,  <22.650623, 15.231174, 15.797804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.717628, 14.838874, 15.757663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071043, 0.113534, -0.990991,
		0.983307, 0.158873, 0.088694,
		0.167512, -0.980749, -0.100352,
		22.767881, 14.544649, 15.727557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.163425, 15.281562, 15.276404>,  <22.650623, 15.231174, 15.797804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.163425, 15.281562, 15.276404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.068031, 14.893970, 15.250482>,  <23.010794, 14.661414, 15.234928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.068031, 14.893970, 15.250482>,  <23.163425, 15.281562, 15.276404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.068031, 14.893970, 15.250482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071177, 0.049113, -0.996254,
		0.968534, -0.242206, 0.057256,
		-0.238487, -0.968981, -0.064807,
		22.996485, 14.603275, 15.231039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.586544, 15.018456, 14.794800>,  <23.163425, 15.281562, 15.276404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.586544, 15.018456, 14.794800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.307838, 14.731751, 14.783707>,  <23.140615, 14.559729, 14.777051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.307838, 14.731751, 14.783707>,  <23.586544, 15.018456, 14.794800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.307838, 14.731751, 14.783707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036665, 0.003023, -0.999323,
		0.716361, -0.697310, 0.024174,
		-0.696765, -0.716763, -0.027733,
		23.098808, 14.516723, 14.775387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.850010, 14.528256, 14.384381>,  <23.586544, 15.018456, 14.794800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.850010, 14.528256, 14.384381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.453520, 14.479144, 14.403956>,  <23.215626, 14.449677, 14.415701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.453520, 14.479144, 14.403956>,  <23.850010, 14.528256, 14.384381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.453520, 14.479144, 14.403956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072802, 0.198148, -0.977465,
		0.110318, -0.972452, -0.205348,
		-0.991226, -0.122782, 0.048937,
		23.156153, 14.442309, 14.418637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.696274, 13.868442, 13.961533>,  <23.850010, 14.528256, 14.384381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.696274, 13.868442, 13.961533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.397362, 14.129409, 14.012009>,  <23.218014, 14.285989, 14.042295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.397362, 14.129409, 14.012009>,  <23.696274, 13.868442, 13.961533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.397362, 14.129409, 14.012009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029814, 0.156791, -0.987182,
		-0.663841, -0.741462, -0.097716,
		-0.747279, 0.652418, 0.126191,
		23.173178, 14.325134, 14.049866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.198441, 13.865551, 13.295605>,  <23.696274, 13.868442, 13.961533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.198441, 13.865551, 13.295605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.063992, 14.198258, 13.472322>,  <22.983322, 14.397882, 13.578353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.063992, 14.198258, 13.472322>,  <23.198441, 13.865551, 13.295605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.063992, 14.198258, 13.472322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271498, 0.363601, -0.891114,
		-0.901837, -0.419470, 0.103608,
		-0.336124, 0.831769, 0.441794,
		22.963154, 14.447789, 13.604860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.566595, 13.973104, 13.057018>,  <23.198441, 13.865551, 13.295605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.566595, 13.973104, 13.057018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.678841, 14.337227, 13.178736>,  <22.746187, 14.555701, 13.251766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.678841, 14.337227, 13.178736>,  <22.566595, 13.973104, 13.057018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.678841, 14.337227, 13.178736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253205, 0.376009, -0.891350,
		-0.925821, 0.173075, 0.336007,
		0.280612, 0.910309, 0.304294,
		22.763023, 14.610319, 13.270024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.027952, 14.381375, 12.881121>,  <22.566595, 13.973104, 13.057018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.027952, 14.381375, 12.881121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.342762, 14.624598, 12.922807>,  <22.531649, 14.770531, 12.947819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.342762, 14.624598, 12.922807>,  <22.027952, 14.381375, 12.881121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.342762, 14.624598, 12.922807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218376, 0.432576, -0.874751,
		-0.576979, 0.665693, 0.473233,
		0.787024, 0.608056, 0.104216,
		22.578869, 14.807014, 12.954071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.776003, 14.950420, 12.483073>,  <22.027952, 14.381375, 12.881121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.776003, 14.950420, 12.483073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.170645, 15.001719, 12.523392>,  <22.407431, 15.032497, 12.547583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.170645, 15.001719, 12.523392>,  <21.776003, 14.950420, 12.483073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.170645, 15.001719, 12.523392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047989, 0.362380, -0.930794,
		-0.155897, 0.923165, 0.351373,
		0.986607, 0.128246, 0.100795,
		22.466627, 15.040193, 12.553630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.867371, 15.608335, 12.231164>,  <21.776003, 14.950420, 12.483073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.867371, 15.608335, 12.231164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.221331, 15.423959, 12.204368>,  <22.433706, 15.313334, 12.188290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.221331, 15.423959, 12.204368>,  <21.867371, 15.608335, 12.231164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.221331, 15.423959, 12.204368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163278, 0.441674, -0.882193,
		0.436226, 0.769714, 0.466098,
		0.884899, -0.460939, -0.066992,
		22.486801, 15.285677, 12.184270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.269884, 16.090050, 11.965128>,  <21.867371, 15.608335, 12.231164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.269884, 16.090050, 11.965128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.472507, 15.755384, 11.881803>,  <22.594082, 15.554585, 11.831807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.472507, 15.755384, 11.881803>,  <22.269884, 16.090050, 11.965128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.472507, 15.755384, 11.881803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271036, 0.383877, -0.882710,
		0.818497, 0.390684, 0.421222,
		0.506559, -0.836662, -0.208313,
		22.624475, 15.504386, 11.819308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.965078, 16.319302, 11.743306>,  <22.269884, 16.090050, 11.965128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.965078, 16.319302, 11.743306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.894623, 15.957378, 11.588232>,  <22.852350, 15.740225, 11.495188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.894623, 15.957378, 11.588232>,  <22.965078, 16.319302, 11.743306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.894623, 15.957378, 11.588232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344421, 0.312301, -0.885348,
		0.922144, -0.289470, 0.256627,
		-0.176137, -0.904807, -0.387686,
		22.841782, 15.685936, 11.471926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.536051, 16.114735, 11.267397>,  <22.965078, 16.319302, 11.743306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.536051, 16.114735, 11.267397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.233320, 15.880663, 11.150931>,  <23.051682, 15.740219, 11.081052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.233320, 15.880663, 11.150931>,  <23.536051, 16.114735, 11.267397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.233320, 15.880663, 11.150931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206661, 0.208372, -0.955967,
		0.620084, -0.783673, -0.036767,
		-0.756827, -0.585181, -0.291163,
		23.006271, 15.705109, 11.063582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.877071, 15.748689, 10.867579>,  <23.536051, 16.114735, 11.267397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.877071, 15.748689, 10.867579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.486244, 15.720035, 10.787369>,  <23.251749, 15.702842, 10.739243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.486244, 15.720035, 10.787369>,  <23.877071, 15.748689, 10.867579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.486244, 15.720035, 10.787369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193100, 0.098833, -0.976189,
		0.089729, -0.992524, -0.082737,
		-0.977068, -0.071616, -0.200524,
		23.193125, 15.698544, 10.727211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.709900, 15.247795, 10.286775>,  <23.877071, 15.748689, 10.867579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.709900, 15.247795, 10.286775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.347532, 15.416977, 10.278575>,  <23.130112, 15.518486, 10.273655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.347532, 15.416977, 10.278575>,  <23.709900, 15.247795, 10.286775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.347532, 15.416977, 10.278575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112320, 0.193335, -0.974682,
		-0.408283, -0.885286, -0.222652,
		-0.905919, 0.422955, -0.020499,
		23.075756, 15.543863, 10.272425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.392921, 14.922291, 9.623436>,  <23.709900, 15.247795, 10.286775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.392921, 14.922291, 9.623436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.190180, 15.250072, 9.730465>,  <23.068535, 15.446740, 9.794683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.190180, 15.250072, 9.730465>,  <23.392921, 14.922291, 9.623436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.190180, 15.250072, 9.730465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048971, 0.282526, -0.958009,
		-0.860639, -0.498676, -0.103071,
		-0.506857, 0.819452, 0.267573,
		23.038122, 15.495907, 9.810737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.847761, 14.924388, 9.139071>,  <23.392921, 14.922291, 9.623436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.847761, 14.924388, 9.139071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.872753, 15.298359, 9.278788>,  <22.887749, 15.522741, 9.362618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.872753, 15.298359, 9.278788>,  <22.847761, 14.924388, 9.139071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.872753, 15.298359, 9.278788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025851, 0.348344, -0.937010,
		-0.997711, 0.067576, -0.002404,
		0.062482, 0.934928, 0.349294,
		22.891499, 15.578837, 9.383575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.328215, 15.385875, 8.700091>,  <22.847761, 14.924388, 9.139071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.328215, 15.385875, 8.700091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.562668, 15.656768, 8.877992>,  <22.703341, 15.819304, 8.984732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.562668, 15.656768, 8.877992>,  <22.328215, 15.385875, 8.700091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.562668, 15.656768, 8.877992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057239, 0.512945, -0.856511,
		-0.808189, 0.527488, 0.261891,
		0.586135, 0.677232, 0.444750,
		22.738508, 15.859938, 9.011416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.064915, 16.061430, 8.673537>,  <22.328215, 15.385875, 8.700091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.064915, 16.061430, 8.673537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.463404, 16.091721, 8.690530>,  <22.702497, 16.109894, 8.700726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.463404, 16.091721, 8.690530>,  <22.064915, 16.061430, 8.673537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.463404, 16.091721, 8.690530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007288, 0.560468, -0.828144,
		-0.086520, 0.824706, 0.558904,
		0.996223, 0.075724, 0.042481,
		22.762270, 16.114437, 8.703274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.187889, 16.788004, 8.494025>,  <22.064915, 16.061430, 8.673537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.187889, 16.788004, 8.494025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.545631, 16.611616, 8.463885>,  <22.760277, 16.505783, 8.445802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.545631, 16.611616, 8.463885>,  <22.187889, 16.788004, 8.494025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.545631, 16.611616, 8.463885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309067, 0.730828, -0.608579,
		0.323431, 0.520997, 0.789908,
		0.894354, -0.440968, -0.075350,
		22.813938, 16.479326, 8.441280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.702536, 17.427500, 8.478950>,  <22.187889, 16.788004, 8.494025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.702536, 17.427500, 8.478950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.860205, 17.089354, 8.334735>,  <22.954807, 16.886467, 8.248206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.860205, 17.089354, 8.334735>,  <22.702536, 17.427500, 8.478950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.860205, 17.089354, 8.334735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397779, 0.510580, -0.762287,
		0.828492, 0.157060, 0.537525,
		0.394174, -0.845364, -0.360536,
		22.978456, 16.835745, 8.226574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.423513, 17.559532, 8.442391>,  <22.702536, 17.427500, 8.478950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.423513, 17.559532, 8.442391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.341757, 17.284586, 8.163608>,  <23.292704, 17.119617, 7.996337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.341757, 17.284586, 8.163608>,  <23.423513, 17.559532, 8.442391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.341757, 17.284586, 8.163608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263340, 0.647133, -0.715452,
		0.942803, -0.329769, 0.048743,
		-0.204391, -0.687366, -0.696960,
		23.280439, 17.078377, 7.954520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.686768, 18.164087, 8.520320>,  <23.423513, 17.559532, 8.442391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.686768, 18.164087, 8.520320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.893595, 18.038523, 8.201797>,  <24.017691, 17.963184, 8.010684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.893595, 18.038523, 8.201797>,  <23.686768, 18.164087, 8.520320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.893595, 18.038523, 8.201797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302603, 0.937285, -0.172998,
		0.800670, -0.151513, 0.579629,
		0.517066, -0.313912, -0.796305,
		24.048716, 17.944349, 7.962906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.199760, 17.739092, 9.110390>,  <23.686768, 18.164087, 8.520320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.199760, 17.739092, 9.110390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.520634, 17.868437, 9.311165>,  <24.713158, 17.946043, 9.431630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.520634, 17.868437, 9.311165>,  <24.199760, 17.739092, 9.110390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.520634, 17.868437, 9.311165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533127, 0.766429, 0.358276,
		-0.268847, -0.554999, 0.787209,
		0.802183, 0.323361, 0.501937,
		24.761288, 17.965445, 9.461746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.116896, 17.901489, 9.879919>,  <24.199760, 17.739092, 9.110390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.116896, 17.901489, 9.879919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.388563, 18.139959, 9.708664>,  <24.551563, 18.283041, 9.605910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.388563, 18.139959, 9.708664>,  <24.116896, 17.901489, 9.879919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.388563, 18.139959, 9.708664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392562, 0.787917, 0.474428,
		0.620180, -0.154147, 0.769166,
		0.679170, 0.596175, -0.428138,
		24.592314, 18.318811, 9.580222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.406559, 18.372816, 10.388145>,  <24.116896, 17.901489, 9.879919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.406559, 18.372816, 10.388145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.453644, 18.549593, 10.032431>,  <24.481894, 18.655659, 9.819002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.453644, 18.549593, 10.032431>,  <24.406559, 18.372816, 10.388145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.453644, 18.549593, 10.032431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329861, 0.862065, 0.384753,
		0.936662, 0.248052, 0.247254,
		0.117711, 0.441944, -0.889287,
		24.488956, 18.682177, 9.765645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.686331, 19.036076, 10.518903>,  <24.406559, 18.372816, 10.388145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.686331, 19.036076, 10.518903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.447329, 18.987892, 10.201797>,  <24.303926, 18.958982, 10.011534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.447329, 18.987892, 10.201797>,  <24.686331, 19.036076, 10.518903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.447329, 18.987892, 10.201797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532142, 0.799138, 0.279649,
		0.599842, 0.588955, -0.541592,
		-0.597508, -0.120458, -0.792764,
		24.268076, 18.951756, 9.963968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.889801, 19.584723, 10.139765>,  <24.686331, 19.036076, 10.518903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.889801, 19.584723, 10.139765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.516275, 19.458815, 10.071750>,  <24.292160, 19.383270, 10.030940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.516275, 19.458815, 10.071750>,  <24.889801, 19.584723, 10.139765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.516275, 19.458815, 10.071750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328914, 0.942329, 0.061896,
		0.140749, 0.113727, -0.983492,
		-0.933812, -0.314772, -0.170038,
		24.236132, 19.364384, 10.020739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603329, 19.235750, 10.367933>,  <24.889801, 19.584723, 10.139765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.603329, 19.235750, 10.367933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864691, 19.507471, 10.501563>,  <26.021509, 19.670504, 10.581740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864691, 19.507471, 10.501563>,  <25.603329, 19.235750, 10.367933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864691, 19.507471, 10.501563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076520, -0.379779, 0.921907,
		0.753130, -0.627944, -0.196169,
		0.653407, 0.679305, 0.334074,
		26.060713, 19.711262, 10.601785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.235537, 18.903790, 10.662004>,  <25.603329, 19.235750, 10.367933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.235537, 18.903790, 10.662004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191708, 19.243967, 10.867816>,  <26.165411, 19.448072, 10.991303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191708, 19.243967, 10.867816>,  <26.235537, 18.903790, 10.662004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191708, 19.243967, 10.867816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115380, -0.503266, 0.856394,
		0.987260, 0.153204, -0.042980,
		-0.109572, 0.850442, 0.514530,
		26.158836, 19.499100, 11.022175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849133, 18.977301, 11.230920>,  <26.235537, 18.903790, 10.662004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849133, 18.977301, 11.230920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492796, 19.146313, 11.297695>,  <26.278994, 19.247719, 11.337760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492796, 19.146313, 11.297695>,  <26.849133, 18.977301, 11.230920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492796, 19.146313, 11.297695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051086, -0.458287, 0.887335,
		0.451430, 0.781948, 0.429847,
		-0.890843, 0.422528, 0.166938,
		26.225542, 19.273071, 11.347776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872408, 19.331842, 11.855748>,  <26.849133, 18.977301, 11.230920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872408, 19.331842, 11.855748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497768, 19.204363, 11.797490>,  <26.272985, 19.127874, 11.762535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497768, 19.204363, 11.797490>,  <26.872408, 19.331842, 11.855748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497768, 19.204363, 11.797490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060939, -0.557462, 0.827963,
		-0.345063, 0.766594, 0.541540,
		-0.936599, -0.318700, -0.145644,
		26.216789, 19.108753, 11.753797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464529, 19.471083, 12.480873>,  <26.872408, 19.331842, 11.855748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464529, 19.471083, 12.480873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271288, 19.179525, 12.286833>,  <26.155342, 19.004591, 12.170408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271288, 19.179525, 12.286833>,  <26.464529, 19.471083, 12.480873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271288, 19.179525, 12.286833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181056, -0.458905, 0.869842,
		-0.856638, 0.508056, 0.089729,
		-0.483105, -0.728894, -0.485102,
		26.126356, 18.960857, 12.141302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851770, 19.424404, 12.868495>,  <26.464529, 19.471083, 12.480873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851770, 19.424404, 12.868495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863461, 19.074778, 12.674525>,  <25.870476, 18.865002, 12.558144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863461, 19.074778, 12.674525>,  <25.851770, 19.424404, 12.868495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863461, 19.074778, 12.674525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390997, -0.456473, 0.799221,
		-0.919928, 0.166245, -0.355099,
		0.029227, -0.874068, -0.484924,
		25.872229, 18.812557, 12.529048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.229738, 19.177919, 13.075412>,  <25.851770, 19.424404, 12.868495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.229738, 19.177919, 13.075412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.453466, 18.875334, 12.939809>,  <25.587704, 18.693783, 12.858447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.453466, 18.875334, 12.939809>,  <25.229738, 19.177919, 13.075412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.453466, 18.875334, 12.939809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243780, -0.540977, 0.804932,
		-0.792296, -0.367571, -0.486989,
		0.559319, -0.756463, -0.339008,
		25.621262, 18.648396, 12.838106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.844141, 18.555201, 13.088629>,  <25.229738, 19.177919, 13.075412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.844141, 18.555201, 13.088629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200418, 18.374443, 13.068802>,  <25.414185, 18.265989, 13.056906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200418, 18.374443, 13.068802>,  <24.844141, 18.555201, 13.088629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200418, 18.374443, 13.068802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297788, -0.662359, 0.687461,
		-0.343490, -0.597558, -0.724527,
		0.890695, -0.451892, -0.049568,
		25.467627, 18.238876, 13.053931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.714842, 17.803625, 12.957058>,  <24.844141, 18.555201, 13.088629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.714842, 17.803625, 12.957058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.082832, 17.821739, 13.112800>,  <25.303627, 17.832607, 13.206244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.082832, 17.821739, 13.112800>,  <24.714842, 17.803625, 12.957058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.082832, 17.821739, 13.112800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248541, -0.700706, 0.668759,
		0.303108, -0.712011, -0.633377,
		0.919975, 0.045286, 0.389354,
		25.358826, 17.835325, 13.229606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.935217, 17.173052, 13.049149>,  <24.714842, 17.803625, 12.957058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.935217, 17.173052, 13.049149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209713, 17.314537, 13.303379>,  <25.374411, 17.399427, 13.455917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209713, 17.314537, 13.303379>,  <24.935217, 17.173052, 13.049149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.209713, 17.314537, 13.303379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166593, -0.774141, 0.610699,
		0.708038, -0.524970, -0.472322,
		0.686242, 0.353713, 0.635577,
		25.415586, 17.420650, 13.494052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.211147, 16.518269, 13.312336>,  <24.935217, 17.173052, 13.049149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.211147, 16.518269, 13.312336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335005, 16.802921, 13.564590>,  <25.409319, 16.973713, 13.715943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335005, 16.802921, 13.564590>,  <25.211147, 16.518269, 13.312336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.335005, 16.802921, 13.564590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204293, -0.597953, 0.775059,
		0.928648, -0.368825, -0.039769,
		0.309642, 0.711632, 0.630636,
		25.427896, 17.016411, 13.753781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.553673, 16.152115, 13.783973>,  <25.211147, 16.518269, 13.312336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.553673, 16.152115, 13.783973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496012, 16.503336, 13.966509>,  <25.461414, 16.714067, 14.076031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496012, 16.503336, 13.966509>,  <25.553673, 16.152115, 13.783973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.496012, 16.503336, 13.966509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131413, -0.474059, 0.870631,
		0.980790, 0.065536, 0.183725,
		-0.144154, 0.878050, 0.456341,
		25.452766, 16.766750, 14.103411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872223, 16.053772, 14.441559>,  <25.553673, 16.152115, 13.783973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872223, 16.053772, 14.441559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618868, 16.356499, 14.506119>,  <25.466856, 16.538136, 14.544854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618868, 16.356499, 14.506119>,  <25.872223, 16.053772, 14.441559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618868, 16.356499, 14.506119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286417, -0.423034, 0.859655,
		0.718880, 0.498266, 0.484710,
		-0.633386, 0.756818, 0.161399,
		25.428852, 16.583544, 14.554539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967638, 16.289083, 15.171257>,  <25.872223, 16.053772, 14.441559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967638, 16.289083, 15.171257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599173, 16.408628, 15.071545>,  <25.378094, 16.480356, 15.011718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599173, 16.408628, 15.071545>,  <25.967638, 16.289083, 15.171257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.599173, 16.408628, 15.071545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324633, -0.236796, 0.915719,
		0.214645, 0.924451, 0.315149,
		-0.921163, 0.298862, -0.249280,
		25.322824, 16.498287, 14.996760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844110, 16.667847, 15.692377>,  <25.967638, 16.289083, 15.171257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844110, 16.667847, 15.692377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506382, 16.571571, 15.500882>,  <25.303745, 16.513805, 15.385985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506382, 16.571571, 15.500882>,  <25.844110, 16.667847, 15.692377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.506382, 16.571571, 15.500882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383367, -0.352867, 0.853531,
		-0.374365, 0.904187, 0.205662,
		-0.844323, -0.240688, -0.478736,
		25.253086, 16.499365, 15.357262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.211941, 16.810303, 16.124245>,  <25.844110, 16.667847, 15.692377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.211941, 16.810303, 16.124245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103771, 16.528549, 15.861731>,  <25.038870, 16.359497, 15.704222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103771, 16.528549, 15.861731>,  <25.211941, 16.810303, 16.124245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.103771, 16.528549, 15.861731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377398, -0.549565, 0.745352,
		-0.885687, 0.449243, -0.117217,
		-0.270426, -0.704386, -0.656286,
		25.022644, 16.317234, 15.664845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.632078, 17.505291, 16.178207>,  <25.211941, 16.810303, 16.124245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.632078, 17.505291, 16.178207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.633053, 17.138563, 16.337927>,  <25.633638, 16.918528, 16.433758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.633053, 17.138563, 16.337927>,  <25.632078, 17.505291, 16.178207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.633053, 17.138563, 16.337927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787472, 0.247865, 0.564314,
		-0.616345, 0.313062, 0.722572,
		0.002436, -0.916818, 0.399298,
		25.633783, 16.863518, 16.457716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619621, 17.528790, 16.894516>,  <25.632078, 17.505291, 16.178207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.619621, 17.528790, 16.894516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831289, 17.200006, 16.810261>,  <25.958290, 17.002737, 16.759708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831289, 17.200006, 16.810261>,  <25.619621, 17.528790, 16.894516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831289, 17.200006, 16.810261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654095, 0.237024, 0.718317,
		-0.540499, -0.517889, 0.663063,
		0.529170, -0.821955, -0.210638,
		25.990040, 16.953421, 16.747070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620138, 17.074284, 17.534239>,  <25.619621, 17.528790, 16.894516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620138, 17.074284, 17.534239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941420, 17.024557, 17.301205>,  <26.134190, 16.994720, 17.161385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941420, 17.024557, 17.301205>,  <25.620138, 17.074284, 17.534239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941420, 17.024557, 17.301205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593868, 0.090415, 0.799466,
		-0.046713, -0.988115, 0.146450,
		0.803205, -0.124318, -0.582586,
		26.182381, 16.987263, 17.126429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074989, 16.391592, 17.783962>,  <25.620138, 17.074284, 17.534239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074989, 16.391592, 17.783962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182714, 16.747778, 17.637243>,  <26.247349, 16.961491, 17.549212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182714, 16.747778, 17.637243>,  <26.074989, 16.391592, 17.783962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.182714, 16.747778, 17.637243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489661, 0.201355, 0.848344,
		0.829278, -0.408077, -0.381799,
		0.269313, 0.890466, -0.366799,
		26.263508, 17.014917, 17.527203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719522, 15.863048, 17.530569>,  <26.074989, 16.391592, 17.783962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719522, 15.863048, 17.530569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757046, 15.590243, 17.240448>,  <25.779560, 15.426560, 17.066376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757046, 15.590243, 17.240448>,  <25.719522, 15.863048, 17.530569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.757046, 15.590243, 17.240448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421606, 0.632754, -0.649516,
		0.901914, 0.366720, -0.228184,
		0.093807, -0.682011, -0.725301,
		25.785187, 15.385640, 17.022858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.107191, 16.178885, 16.978647>,  <25.719522, 15.863048, 17.530569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.107191, 16.178885, 16.978647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878304, 15.871207, 16.864872>,  <25.740971, 15.686601, 16.796606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878304, 15.871207, 16.864872>,  <26.107191, 16.178885, 16.978647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878304, 15.871207, 16.864872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286741, 0.512598, -0.809335,
		0.768339, -0.381556, -0.513877,
		-0.572219, -0.769193, -0.284441,
		25.706636, 15.640450, 16.779539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.310884, 15.831064, 16.338099>,  <26.107191, 16.178885, 16.978647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.310884, 15.831064, 16.338099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918579, 15.869001, 16.406345>,  <25.683197, 15.891764, 16.447294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918579, 15.869001, 16.406345>,  <26.310884, 15.831064, 16.338099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918579, 15.869001, 16.406345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069276, 0.648043, -0.758447,
		-0.182502, -0.755675, -0.629005,
		-0.980762, 0.094843, 0.170619,
		25.624350, 15.897454, 16.457531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230471, 15.006431, 16.550001>,  <26.310884, 15.831064, 16.338099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230471, 15.006431, 16.550001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.218719, 14.616135, 16.636782>,  <26.211668, 14.381957, 16.688850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.218719, 14.616135, 16.636782>,  <26.230471, 15.006431, 16.550001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.218719, 14.616135, 16.636782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682911, 0.138898, 0.717175,
		-0.729911, 0.169226, 0.662263,
		-0.029377, -0.975741, 0.216950,
		26.209906, 14.323412, 16.701866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912239, 15.333128, 15.977282>,  <26.230471, 15.006431, 16.550001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912239, 15.333128, 15.977282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229824, 15.536595, 15.844087>,  <26.420376, 15.658676, 15.764170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229824, 15.536595, 15.844087>,  <25.912239, 15.333128, 15.977282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229824, 15.536595, 15.844087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210820, -0.744071, -0.633966,
		-0.570244, 0.433145, -0.698002,
		0.793963, 0.508668, -0.332987,
		26.468014, 15.689196, 15.744190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092505, 15.358009, 15.189296>,  <25.912239, 15.333128, 15.977282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092505, 15.358009, 15.189296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435970, 15.385265, 15.392492>,  <26.642050, 15.401619, 15.514410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435970, 15.385265, 15.392492>,  <26.092505, 15.358009, 15.189296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435970, 15.385265, 15.392492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386234, -0.737559, -0.553923,
		0.336929, 0.671836, -0.659632,
		0.858663, 0.068139, 0.507991,
		26.693569, 15.405707, 15.544889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619101, 15.284314, 14.717442>,  <26.092505, 15.358009, 15.189296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619101, 15.284314, 14.717442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714214, 15.153787, 15.083387>,  <26.771282, 15.075470, 15.302955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714214, 15.153787, 15.083387>,  <26.619101, 15.284314, 14.717442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714214, 15.153787, 15.083387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257119, -0.887133, -0.383255,
		0.936669, 0.326361, -0.127042,
		0.237783, -0.326318, 0.914864,
		26.785549, 15.055891, 15.357846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<14.432567, 24.621828, 20.356388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.089905, 24.503351, 20.525345>,  <13.884308, 24.432264, 20.626719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.089905, 24.503351, 20.525345>,  <14.432567, 24.621828, 20.356388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.089905, 24.503351, 20.525345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087841, -0.890549, -0.446327,
		0.508358, -0.345244, 0.788910,
		-0.856654, -0.296192, 0.422391,
		13.832909, 24.414494, 20.652061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.536193, 23.963291, 20.543507>,  <14.432567, 24.621828, 20.356388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.536193, 23.963291, 20.543507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.136761, 23.967266, 20.522572>,  <13.897101, 23.969650, 20.510012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.136761, 23.967266, 20.522572>,  <14.536193, 23.963291, 20.543507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.136761, 23.967266, 20.522572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022105, -0.816602, -0.576778,
		-0.048468, -0.577116, 0.815223,
		-0.998580, 0.009935, -0.052336,
		13.837187, 23.970247, 20.506870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.285686, 23.212288, 20.621193>,  <14.536193, 23.963291, 20.543507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.285686, 23.212288, 20.621193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.985951, 23.417883, 20.454191>,  <13.806110, 23.541241, 20.353991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.985951, 23.417883, 20.454191>,  <14.285686, 23.212288, 20.621193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.985951, 23.417883, 20.454191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078661, -0.695118, -0.714579,
		-0.657498, -0.502621, 0.561310,
		-0.749339, 0.513988, -0.417502,
		13.761149, 23.572079, 20.328941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.794733, 22.693762, 20.416096>,  <14.285686, 23.212288, 20.621193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.794733, 22.693762, 20.416096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.737770, 23.018059, 20.188969>,  <13.703592, 23.212637, 20.052692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.737770, 23.018059, 20.188969>,  <13.794733, 22.693762, 20.416096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.737770, 23.018059, 20.188969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010844, -0.572353, -0.819936,
		-0.989749, -0.122923, 0.072716,
		-0.142408, 0.810742, -0.567818,
		13.695047, 23.261282, 20.018623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.176186, 22.634874, 19.998541>,  <13.794733, 22.693762, 20.416096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.176186, 22.634874, 19.998541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.405840, 22.891323, 19.794842>,  <13.543633, 23.045193, 19.672623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.405840, 22.891323, 19.794842>,  <13.176186, 22.634874, 19.998541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.405840, 22.891323, 19.794842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085884, -0.571383, -0.816177,
		-0.814242, 0.512334, -0.272990,
		0.574137, 0.641120, -0.509246,
		13.578081, 23.083660, 19.642069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.826227, 22.834538, 19.421713>,  <13.176186, 22.634874, 19.998541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.826227, 22.834538, 19.421713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.212072, 22.891066, 19.332674>,  <13.443580, 22.924982, 19.279251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.212072, 22.891066, 19.332674>,  <12.826227, 22.834538, 19.421713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.212072, 22.891066, 19.332674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086353, -0.628346, -0.773127,
		-0.249124, 0.764991, -0.593908,
		0.964614, 0.141319, -0.222595,
		13.501456, 22.933462, 19.265896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.848887, 22.824976, 18.722185>,  <12.826227, 22.834538, 19.421713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.848887, 22.824976, 18.722185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.215775, 22.732235, 18.851772>,  <13.435907, 22.676590, 18.929523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.215775, 22.732235, 18.851772>,  <12.848887, 22.824976, 18.722185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.215775, 22.732235, 18.851772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096352, -0.659953, -0.745103,
		0.386558, 0.714637, -0.582981,
		0.917218, -0.231854, 0.323967,
		13.490940, 22.662680, 18.948963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.267362, 22.758553, 18.049875>,  <12.848887, 22.824976, 18.722185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.267362, 22.758553, 18.049875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.484594, 22.581528, 18.335308>,  <13.614934, 22.475313, 18.506567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.484594, 22.581528, 18.335308>,  <13.267362, 22.758553, 18.049875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.484594, 22.581528, 18.335308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226285, -0.741246, -0.631940,
		0.808614, 0.504669, -0.302412,
		0.543083, -0.442564, 0.713581,
		13.647519, 22.448759, 18.549383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.863450, 22.336514, 17.654531>,  <13.267362, 22.758553, 18.049875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.863450, 22.336514, 17.654531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.846950, 22.177233, 18.021078>,  <13.837049, 22.081663, 18.241007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.846950, 22.177233, 18.021078>,  <13.863450, 22.336514, 17.654531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.846950, 22.177233, 18.021078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269576, -0.887573, -0.373555,
		0.962095, 0.231621, 0.143960,
		-0.041251, -0.398204, 0.916369,
		13.834574, 22.057772, 18.295988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.478780, 21.947319, 17.750772>,  <13.863450, 22.336514, 17.654531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.478780, 21.947319, 17.750772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.210031, 21.828403, 18.022127>,  <14.048781, 21.757055, 18.184940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.210031, 21.828403, 18.022127>,  <14.478780, 21.947319, 17.750772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.210031, 21.828403, 18.022127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178104, -0.953885, -0.241624,
		0.718934, -0.041517, 0.693837,
		-0.671873, -0.297287, 0.678386,
		14.008469, 21.739218, 18.225643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.735933, 21.403479, 18.222830>,  <14.478780, 21.947319, 17.750772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.735933, 21.403479, 18.222830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.343592, 21.374456, 18.150541>,  <14.108187, 21.357042, 18.107168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.343592, 21.374456, 18.150541>,  <14.735933, 21.403479, 18.222830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.343592, 21.374456, 18.150541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143276, -0.897389, -0.417330,
		-0.131898, -0.435233, 0.890604,
		-0.980854, -0.072557, -0.180722,
		14.049335, 21.352690, 18.096325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.599439, 20.707687, 18.401676>,  <14.735933, 21.403479, 18.222830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.599439, 20.707687, 18.401676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.303442, 20.842209, 18.168674>,  <14.125844, 20.922922, 18.028873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.303442, 20.842209, 18.168674>,  <14.599439, 20.707687, 18.401676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.303442, 20.842209, 18.168674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101335, -0.800402, -0.590837,
		-0.664939, -0.496243, 0.558211,
		-0.739991, 0.336304, -0.582506,
		14.081445, 20.943100, 17.993923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.260957, 20.197731, 18.318842>,  <14.599439, 20.707687, 18.401676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.260957, 20.197731, 18.318842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.170453, 20.423750, 18.001471>,  <14.116151, 20.559361, 17.811049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.170453, 20.423750, 18.001471>,  <14.260957, 20.197731, 18.318842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.170453, 20.423750, 18.001471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082068, -0.800598, -0.593556,
		-0.970604, -0.199412, 0.134770,
		-0.226259, 0.565047, -0.793428,
		14.102575, 20.593264, 17.763443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.800301, 19.796461, 17.992798>,  <14.260957, 20.197731, 18.318842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.800301, 19.796461, 17.992798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.922582, 20.053408, 17.711683>,  <13.995950, 20.207577, 17.543015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.922582, 20.053408, 17.711683>,  <13.800301, 19.796461, 17.992798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.922582, 20.053408, 17.711683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269095, -0.766321, -0.583386,
		-0.913310, -0.010775, -0.407124,
		0.305702, 0.642367, -0.702788,
		14.014292, 20.246119, 17.500847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.456456, 19.663031, 17.385693>,  <13.800301, 19.796461, 17.992798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.456456, 19.663031, 17.385693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.773644, 19.867634, 17.253296>,  <13.963958, 19.990396, 17.173859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.773644, 19.867634, 17.253296>,  <13.456456, 19.663031, 17.385693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.773644, 19.867634, 17.253296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286011, -0.792214, -0.539069,
		-0.537954, 0.332799, -0.774500,
		0.792971, 0.511509, -0.330991,
		14.011536, 20.021088, 17.153999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.515588, 19.529209, 16.552444>,  <13.456456, 19.663031, 17.385693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.515588, 19.529209, 16.552444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.879959, 19.675497, 16.628822>,  <14.098581, 19.763269, 16.674650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.879959, 19.675497, 16.628822>,  <13.515588, 19.529209, 16.552444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.879959, 19.675497, 16.628822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394403, -0.636129, -0.663164,
		-0.121066, 0.679404, -0.723708,
		0.910928, 0.365719, 0.190946,
		14.153237, 19.785213, 16.686106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.821004, 19.638531, 15.936978>,  <13.515588, 19.529209, 16.552444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.821004, 19.638531, 15.936978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.130965, 19.605597, 16.187656>,  <14.316942, 19.585836, 16.338062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.130965, 19.605597, 16.187656>,  <13.821004, 19.638531, 15.936978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.130965, 19.605597, 16.187656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387150, -0.721910, -0.573551,
		0.499641, 0.687071, -0.527534,
		0.774903, -0.082335, 0.626695,
		14.363436, 19.580896, 16.375666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.347642, 19.539829, 15.566597>,  <13.821004, 19.638531, 15.936978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.347642, 19.539829, 15.566597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.508787, 19.415506, 15.910946>,  <14.605474, 19.340912, 16.117556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.508787, 19.415506, 15.910946>,  <14.347642, 19.539829, 15.566597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.508787, 19.415506, 15.910946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386689, -0.794708, -0.467879,
		0.829562, 0.521380, -0.199972,
		0.402863, -0.310808, 0.860872,
		14.629646, 19.322264, 16.169207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.992238, 19.358913, 15.376538>,  <14.347642, 19.539829, 15.566597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.992238, 19.358913, 15.376538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.950537, 19.180849, 15.732283>,  <14.925516, 19.074011, 15.945729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.950537, 19.180849, 15.732283>,  <14.992238, 19.358913, 15.376538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.950537, 19.180849, 15.732283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522142, -0.785581, -0.332008,
		0.846462, 0.429760, 0.314337,
		-0.104254, -0.445161, 0.889361,
		14.919261, 19.047300, 15.999091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.693056, 19.193020, 15.654911>,  <14.992238, 19.358913, 15.376538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.693056, 19.193020, 15.654911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.427948, 18.920200, 15.778551>,  <15.268883, 18.756508, 15.852736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.427948, 18.920200, 15.778551>,  <15.693056, 19.193020, 15.654911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.427948, 18.920200, 15.778551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554821, -0.724495, -0.408999,
		0.502900, -0.099577, 0.858590,
		-0.662771, -0.682049, 0.309101,
		15.229116, 18.715586, 15.871282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.066208, 18.639315, 15.660443>,  <15.693056, 19.193020, 15.654911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.066208, 18.639315, 15.660443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.700290, 18.486677, 15.713408>,  <15.480739, 18.395094, 15.745188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.700290, 18.486677, 15.713408>,  <16.066208, 18.639315, 15.660443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.700290, 18.486677, 15.713408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241985, -0.780249, -0.576763,
		0.323404, -0.495579, 0.806109,
		-0.914797, -0.381594, 0.132413,
		15.425851, 18.372198, 15.753132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.171450, 17.990202, 16.007185>,  <16.066208, 18.639315, 15.660443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.171450, 17.990202, 16.007185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.816158, 17.994856, 15.823484>,  <15.602983, 17.997648, 15.713264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.816158, 17.994856, 15.823484>,  <16.171450, 17.990202, 16.007185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.816158, 17.994856, 15.823484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222619, -0.863564, -0.452436,
		-0.401856, -0.504105, 0.764454,
		-0.888230, 0.011633, -0.459252,
		15.549689, 17.998346, 15.685709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.027067, 18.550056, 16.492880>,  <16.171450, 17.990202, 16.007185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.027067, 18.550056, 16.492880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.392082, 18.443989, 16.368324>,  <16.611092, 18.380348, 16.293591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.392082, 18.443989, 16.368324>,  <16.027067, 18.550056, 16.492880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.392082, 18.443989, 16.368324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384814, 0.814564, 0.434055,
		0.138547, -0.515917, 0.845360,
		0.912536, -0.265169, -0.311388,
		16.665844, 18.364437, 16.274908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.348961, 18.337231, 17.070917>,  <16.027067, 18.550056, 16.492880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.348961, 18.337231, 17.070917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.598654, 18.468868, 16.787500>,  <16.748468, 18.547850, 16.617451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.598654, 18.468868, 16.787500>,  <16.348961, 18.337231, 17.070917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.598654, 18.468868, 16.787500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141576, 0.844278, 0.516866,
		0.768305, -0.422957, 0.480433,
		0.624231, 0.329093, -0.708544,
		16.785923, 18.567596, 16.574938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.846584, 18.461418, 17.483099>,  <16.348961, 18.337231, 17.070917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.846584, 18.461418, 17.483099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.912262, 18.661201, 17.142845>,  <16.951668, 18.781071, 16.938692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.912262, 18.661201, 17.142845>,  <16.846584, 18.461418, 17.483099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.912262, 18.661201, 17.142845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285386, 0.801410, 0.525640,
		0.944243, -0.329066, -0.010953,
		0.164192, 0.499458, -0.850637,
		16.961519, 18.811039, 16.887653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.493320, 18.818453, 17.676565>,  <16.846584, 18.461418, 17.483099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.493320, 18.818453, 17.676565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.355555, 18.988356, 17.341671>,  <17.272896, 19.090298, 17.140734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.355555, 18.988356, 17.341671>,  <17.493320, 18.818453, 17.676565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.355555, 18.988356, 17.341671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159312, 0.905306, 0.393753,
		0.925202, 0.002232, -0.379468,
		-0.344413, 0.424755, -0.837235,
		17.252232, 19.115782, 17.090500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.025120, 19.308588, 17.456385>,  <17.493320, 18.818453, 17.676565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.025120, 19.308588, 17.456385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.672857, 19.408840, 17.295574>,  <17.461498, 19.468992, 17.199089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.672857, 19.408840, 17.295574>,  <18.025120, 19.308588, 17.456385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.672857, 19.408840, 17.295574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095174, 0.924895, 0.368118,
		0.464093, 0.285924, -0.838370,
		-0.880659, 0.250632, -0.402025,
		17.408659, 19.484030, 17.174967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.175735, 19.927614, 17.198303>,  <18.025120, 19.308588, 17.456385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.175735, 19.927614, 17.198303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.777084, 19.946787, 17.224932>,  <17.537893, 19.958290, 17.240910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.777084, 19.946787, 17.224932>,  <18.175735, 19.927614, 17.198303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.777084, 19.946787, 17.224932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070144, 0.918743, 0.388576,
		-0.042537, 0.391936, -0.919008,
		-0.996630, 0.047934, 0.066573,
		17.478096, 19.961166, 17.244904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.033762, 20.566893, 16.942619>,  <18.175735, 19.927614, 17.198303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.033762, 20.566893, 16.942619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.702585, 20.480490, 17.149637>,  <17.503880, 20.428648, 17.273848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.702585, 20.480490, 17.149637>,  <18.033762, 20.566893, 16.942619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.702585, 20.480490, 17.149637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005833, 0.926112, 0.377203,
		-0.560783, 0.309283, -0.768028,
		-0.827943, -0.216008, 0.517544,
		17.454203, 20.415688, 17.304901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.482489, 21.113462, 16.839142>,  <18.033762, 20.566893, 16.942619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.482489, 21.113462, 16.839142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.366678, 20.933504, 17.177082>,  <17.297192, 20.825529, 17.379847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.366678, 20.933504, 17.177082>,  <17.482489, 21.113462, 16.839142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.366678, 20.933504, 17.177082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057683, 0.889248, 0.453773,
		-0.955431, 0.082645, -0.283411,
		-0.289524, -0.449897, 0.844848,
		17.279821, 20.798534, 17.430536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.978834, 21.539213, 17.022467>,  <17.482489, 21.113462, 16.839142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.978834, 21.539213, 17.022467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.058062, 21.360033, 17.371204>,  <17.105598, 21.252525, 17.580446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.058062, 21.360033, 17.371204>,  <16.978834, 21.539213, 17.022467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.058062, 21.360033, 17.371204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087911, 0.877761, 0.470964,
		-0.976238, -0.169927, 0.134475,
		0.198066, -0.447952, 0.871842,
		17.117481, 21.225647, 17.632757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.522327, 21.827980, 17.418385>,  <16.978834, 21.539213, 17.022467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.522327, 21.827980, 17.418385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.775127, 21.666571, 17.683035>,  <16.926807, 21.569725, 17.841825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.775127, 21.666571, 17.683035>,  <16.522327, 21.827980, 17.418385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.775127, 21.666571, 17.683035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230583, 0.717165, 0.657652,
		-0.739872, -0.568194, 0.360202,
		0.631998, -0.403522, 0.661626,
		16.964727, 21.545515, 17.881523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.294008, 21.731722, 18.115206>,  <16.522327, 21.827980, 17.418385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.294008, 21.731722, 18.115206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.688301, 21.754393, 18.178598>,  <16.924877, 21.767996, 18.216633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.688301, 21.754393, 18.178598>,  <16.294008, 21.731722, 18.115206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.688301, 21.754393, 18.178598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134075, 0.833630, 0.535803,
		-0.101746, -0.549408, 0.829336,
		0.985734, 0.056677, 0.158480,
		16.984022, 21.771395, 18.226143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.346247, 21.784998, 18.772453>,  <16.294008, 21.731722, 18.115206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.346247, 21.784998, 18.772453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.677992, 21.938063, 18.609615>,  <16.877039, 22.029902, 18.511913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.677992, 21.938063, 18.609615>,  <16.346247, 21.784998, 18.772453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.677992, 21.938063, 18.609615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066421, 0.790996, 0.608205,
		0.554747, -0.477383, 0.681440,
		0.829363, 0.382662, -0.407095,
		16.926802, 22.052862, 18.487486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.606209, 21.999229, 19.314404>,  <16.346247, 21.784998, 18.772453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.606209, 21.999229, 19.314404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.824705, 22.174965, 19.029137>,  <16.955803, 22.280405, 18.857977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.824705, 22.174965, 19.029137>,  <16.606209, 21.999229, 19.314404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.824705, 22.174965, 19.029137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006535, 0.849149, 0.528113,
		0.837600, -0.293140, 0.460973,
		0.546245, 0.439334, -0.713163,
		16.988577, 22.306767, 18.815187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.367886, 22.111992, 19.577475>,  <16.606209, 21.999229, 19.314404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.367886, 22.111992, 19.577475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.270050, 22.379087, 19.296249>,  <17.211348, 22.539345, 19.127514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.270050, 22.379087, 19.296249>,  <17.367886, 22.111992, 19.577475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.270050, 22.379087, 19.296249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014094, 0.727458, 0.686007,
		0.969524, 0.157882, -0.187341,
		-0.244591, 0.667741, -0.703063,
		17.196672, 22.579411, 19.085331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.790066, 22.678463, 19.713318>,  <17.367886, 22.111992, 19.577475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.790066, 22.678463, 19.713318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.528595, 22.841867, 19.458500>,  <17.371712, 22.939909, 19.305609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.528595, 22.841867, 19.458500>,  <17.790066, 22.678463, 19.713318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.528595, 22.841867, 19.458500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066387, 0.807592, 0.585993,
		0.753856, 0.425341, -0.500785,
		-0.653677, 0.408509, -0.637046,
		17.332493, 22.964420, 19.267385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.992670, 23.437870, 19.618631>,  <17.790066, 22.678463, 19.713318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.992670, 23.437870, 19.618631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.616438, 23.417723, 19.484303>,  <17.390699, 23.405634, 19.403706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.616438, 23.417723, 19.484303>,  <17.992670, 23.437870, 19.618631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.616438, 23.417723, 19.484303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159432, 0.938665, 0.305760,
		0.299824, 0.341131, -0.890918,
		-0.940578, -0.050367, -0.335821,
		17.334265, 23.402613, 19.383556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.851948, 24.096502, 19.227819>,  <17.992670, 23.437870, 19.618631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.851948, 24.096502, 19.227819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.498711, 23.940348, 19.331928>,  <17.286768, 23.846655, 19.394394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.498711, 23.940348, 19.331928>,  <17.851948, 24.096502, 19.227819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.498711, 23.940348, 19.331928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263187, 0.871388, 0.414023,
		-0.388428, 0.297121, -0.872263,
		-0.883095, -0.390386, 0.260273,
		17.233782, 23.823233, 19.410009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.290974, 24.711117, 19.183334>,  <17.851948, 24.096502, 19.227819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.290974, 24.711117, 19.183334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.118673, 24.438889, 19.420410>,  <17.015293, 24.275553, 19.562656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.118673, 24.438889, 19.420410>,  <17.290974, 24.711117, 19.183334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.118673, 24.438889, 19.420410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372808, 0.732274, 0.569903,
		-0.821869, 0.024526, -0.569148,
		-0.430750, -0.680569, 0.592690,
		16.989449, 24.234718, 19.598217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.567291, 25.098045, 19.384521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.659582, 24.818571, 19.655401>,  <16.714956, 24.650887, 19.817930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.659582, 24.818571, 19.655401>,  <16.567291, 25.098045, 19.384521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.659582, 24.818571, 19.655401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210733, 0.643579, 0.735797,
		-0.949924, -0.312477, 0.001254,
		0.230727, -0.698687, 0.677201,
		16.728800, 24.608965, 19.858562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.966477, 25.094028, 19.780199>,  <16.567291, 25.098045, 19.384521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.966477, 25.094028, 19.780199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.249496, 24.948345, 20.022432>,  <16.419308, 24.860935, 20.167772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.249496, 24.948345, 20.022432>,  <15.966477, 25.094028, 19.780199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.249496, 24.948345, 20.022432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381618, 0.524332, 0.761212,
		-0.594765, -0.769695, 0.232001,
		0.707547, -0.364207, 0.605583,
		16.461761, 24.839083, 20.204107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.651546, 24.937910, 20.349998>,  <15.966477, 25.094028, 19.780199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.651546, 24.937910, 20.349998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.031311, 24.940208, 20.475588>,  <16.259171, 24.941587, 20.550941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.031311, 24.940208, 20.475588>,  <15.651546, 24.937910, 20.349998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.031311, 24.940208, 20.475588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297807, 0.333645, 0.894423,
		-0.099616, -0.942681, 0.318478,
		0.949414, 0.005746, 0.313974,
		16.316135, 24.941933, 20.569780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.652609, 24.422480, 20.941881>,  <15.651546, 24.937910, 20.349998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.652609, 24.422480, 20.941881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.945282, 24.695068, 20.948029>,  <16.120886, 24.858622, 20.951717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.945282, 24.695068, 20.948029>,  <15.652609, 24.422480, 20.941881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.945282, 24.695068, 20.948029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358158, 0.365170, 0.859287,
		0.579969, -0.634229, 0.511263,
		0.731683, 0.681472, 0.015367,
		16.164787, 24.899509, 20.952639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.677963, 24.625872, 21.697685>,  <15.652609, 24.422480, 20.941881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.677963, 24.625872, 21.697685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.913313, 24.887121, 21.507004>,  <16.054522, 25.043871, 21.392595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.913313, 24.887121, 21.507004>,  <15.677963, 24.625872, 21.697685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.913313, 24.887121, 21.507004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080070, 0.633714, 0.769412,
		0.804616, -0.414532, 0.425155,
		0.588373, 0.653123, -0.476705,
		16.089825, 25.083057, 21.363993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.194273, 24.809139, 22.207811>,  <15.677963, 24.625872, 21.697685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.194273, 24.809139, 22.207811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.164400, 25.090240, 21.924810>,  <16.146477, 25.258902, 21.755009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.164400, 25.090240, 21.924810>,  <16.194273, 24.809139, 22.207811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.164400, 25.090240, 21.924810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290624, 0.663348, 0.689570,
		0.953918, 0.257116, 0.154696,
		-0.074682, 0.702753, -0.707504,
		16.141994, 25.301065, 21.712559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.658066, 25.398914, 22.455780>,  <16.194273, 24.809139, 22.207811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.658066, 25.398914, 22.455780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.401022, 25.539070, 22.183228>,  <16.246796, 25.623163, 22.019695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.401022, 25.539070, 22.183228>,  <16.658066, 25.398914, 22.455780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.401022, 25.539070, 22.183228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274468, 0.725017, 0.631678,
		0.715348, 0.592939, -0.369730,
		-0.642608, 0.350391, -0.681382,
		16.208241, 25.644188, 21.978813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.750669, 26.106445, 22.399059>,  <16.658066, 25.398914, 22.455780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.750669, 26.106445, 22.399059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.375469, 26.055439, 22.270128>,  <16.150349, 26.024836, 22.192770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.375469, 26.055439, 22.270128>,  <16.750669, 26.106445, 22.399059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.375469, 26.055439, 22.270128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317830, 0.687514, 0.652923,
		0.138344, 0.714887, -0.685417,
		-0.938001, -0.127518, -0.322326,
		16.094069, 26.017183, 22.173429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.535183, 26.663918, 22.114119>,  <16.750669, 26.106445, 22.399059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.535183, 26.663918, 22.114119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.236477, 26.450081, 22.272385>,  <16.057253, 26.321779, 22.367344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.236477, 26.450081, 22.272385>,  <16.535183, 26.663918, 22.114119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.236477, 26.450081, 22.272385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043551, 0.632940, 0.772975,
		-0.663658, 0.560000, -0.495941,
		-0.746767, -0.534590, 0.395667,
		16.012447, 26.289703, 22.391085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.131723, 27.098515, 22.551689>,  <16.535183, 26.663918, 22.114119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.131723, 27.098515, 22.551689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.046938, 26.748486, 22.725733>,  <15.996067, 26.538467, 22.830160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.046938, 26.748486, 22.725733>,  <16.131723, 27.098515, 22.551689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.046938, 26.748486, 22.725733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059401, 0.432868, 0.899498,
		-0.975471, 0.216505, -0.039772,
		-0.211962, -0.875072, 0.435111,
		15.983350, 26.485964, 22.856266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.802075, 27.321808, 23.194544>,  <16.131723, 27.098515, 22.551689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.802075, 27.321808, 23.194544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.853639, 26.928522, 23.246187>,  <15.884577, 26.692551, 23.277174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.853639, 26.928522, 23.246187>,  <15.802075, 27.321808, 23.194544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.853639, 26.928522, 23.246187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167053, 0.106805, 0.980146,
		-0.977485, -0.147917, -0.150482,
		0.128908, -0.983216, 0.129110,
		15.892311, 26.633558, 23.284920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.204341, 26.912518, 23.572124>,  <15.802075, 27.321808, 23.194544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.204341, 26.912518, 23.572124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.517807, 26.666222, 23.604950>,  <15.705887, 26.518444, 23.624645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.517807, 26.666222, 23.604950>,  <15.204341, 26.912518, 23.572124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.517807, 26.666222, 23.604950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100620, 0.004540, 0.994915,
		-0.612982, -0.787936, -0.058398,
		0.783664, -0.615740, 0.082066,
		15.752906, 26.481499, 23.629570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.033616, 26.378391, 24.065365>,  <15.204341, 26.912518, 23.572124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.033616, 26.378391, 24.065365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.432564, 26.350815, 24.074345>,  <15.671932, 26.334269, 24.079733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.432564, 26.350815, 24.074345>,  <15.033616, 26.378391, 24.065365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.432564, 26.350815, 24.074345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006231, 0.226990, 0.973877,
		-0.072235, -0.971454, 0.225963,
		0.997368, -0.068940, 0.022450,
		15.731774, 26.330133, 24.081079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.176218, 25.941160, 24.641483>,  <15.033616, 26.378391, 24.065365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.176218, 25.941160, 24.641483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.503611, 26.149252, 24.543953>,  <15.700046, 26.274107, 24.485435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.503611, 26.149252, 24.543953>,  <15.176218, 25.941160, 24.641483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.503611, 26.149252, 24.543953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227066, 0.096936, 0.969043,
		0.527761, -0.848507, -0.038786,
		0.818480, 0.520230, -0.243826,
		15.749155, 26.305321, 24.470804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.629270, 25.560877, 24.966600>,  <15.176218, 25.941160, 24.641483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.629270, 25.560877, 24.966600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.777300, 25.927956, 24.908808>,  <15.866118, 26.148203, 24.874132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.777300, 25.927956, 24.908808>,  <15.629270, 25.560877, 24.966600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.777300, 25.927956, 24.908808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174795, 0.083961, 0.981018,
		0.912409, -0.388305, -0.129337,
		0.370075, 0.917698, -0.144481,
		15.888323, 26.203264, 24.865463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.977595, 25.590752, 25.507843>,  <15.629270, 25.560877, 24.966600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.977595, 25.590752, 25.507843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.031885, 25.977062, 25.419428>,  <16.064459, 26.208849, 25.366379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.031885, 25.977062, 25.419428>,  <15.977595, 25.590752, 25.507843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.031885, 25.977062, 25.419428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159893, 0.198827, 0.966904,
		0.977759, -0.166575, -0.127435,
		0.135724, 0.965775, -0.221039,
		16.072603, 26.266794, 25.353117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.574545, 25.767794, 25.753790>,  <15.977595, 25.590752, 25.507843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.574545, 25.767794, 25.753790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.399208, 26.121321, 25.688398>,  <16.294006, 26.333437, 25.649164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.399208, 26.121321, 25.688398>,  <16.574545, 25.767794, 25.753790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.399208, 26.121321, 25.688398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258751, 0.298270, 0.918740,
		0.860757, 0.360423, -0.359433,
		-0.438343, 0.883816, -0.163478,
		16.267706, 26.386465, 25.639355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.102634, 26.313339, 25.973162>,  <16.574545, 25.767794, 25.753790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.102634, 26.313339, 25.973162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.746092, 26.494125, 25.987062>,  <16.532166, 26.602598, 25.995403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.746092, 26.494125, 25.987062>,  <17.102634, 26.313339, 25.973162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.746092, 26.494125, 25.987062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230151, 0.385182, 0.893681,
		0.390529, 0.804587, -0.447355,
		-0.891357, 0.451967, 0.034752,
		16.478685, 26.629715, 25.997488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.269613, 27.013115, 26.145733>,  <17.102634, 26.313339, 25.973162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.269613, 27.013115, 26.145733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.888918, 26.959457, 26.256149>,  <16.660501, 26.927263, 26.322399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.888918, 26.959457, 26.256149>,  <17.269613, 27.013115, 26.145733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.888918, 26.959457, 26.256149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184389, 0.469085, 0.863690,
		-0.245345, 0.872906, -0.421712,
		-0.951739, -0.134143, 0.276042,
		16.603395, 26.919214, 26.338963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.098566, 27.554514, 26.475334>,  <17.269613, 27.013115, 26.145733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.098566, 27.554514, 26.475334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.822607, 27.300673, 26.614658>,  <16.657032, 27.148367, 26.698254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.822607, 27.300673, 26.614658>,  <17.098566, 27.554514, 26.475334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.822607, 27.300673, 26.614658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081332, 0.410158, 0.908381,
		-0.719324, 0.655018, -0.231353,
		-0.689897, -0.634604, 0.348310,
		16.615639, 27.110291, 26.719151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.739962, 27.968336, 26.926830>,  <17.098566, 27.554514, 26.475334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.739962, 27.968336, 26.926830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.631567, 27.601316, 27.043219>,  <16.566530, 27.381104, 27.113052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.631567, 27.601316, 27.043219>,  <16.739962, 27.968336, 26.926830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.631567, 27.601316, 27.043219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120793, 0.267478, 0.955963,
		-0.954973, 0.294202, 0.038350,
		-0.270989, -0.917551, 0.290972,
		16.550270, 27.326052, 27.130510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.170088, 28.035341, 27.450487>,  <16.739962, 27.968336, 26.926830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.170088, 28.035341, 27.450487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.336338, 27.676041, 27.507616>,  <16.436089, 27.460461, 27.541893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.336338, 27.676041, 27.507616>,  <16.170088, 28.035341, 27.450487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.336338, 27.676041, 27.507616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025594, 0.168518, 0.985366,
		-0.909177, -0.405886, 0.093030,
		0.415624, -0.898253, 0.142825,
		16.461025, 27.406565, 27.550463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.861458, 27.847065, 28.063795>,  <16.170088, 28.035341, 27.450487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.861458, 27.847065, 28.063795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.202309, 27.640316, 28.030998>,  <16.406818, 27.516266, 28.011320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.202309, 27.640316, 28.030998>,  <15.861458, 27.847065, 28.063795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.202309, 27.640316, 28.030998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205778, 0.186874, 0.960590,
		-0.481182, -0.835416, 0.265601,
		0.852127, -0.516873, -0.081990,
		16.457947, 27.485254, 28.006401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.165576, 27.860830, 28.430773>,  <15.861458, 27.847065, 28.063795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.165576, 27.860830, 28.430773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.819640, 27.660540, 28.416206>,  <14.612079, 27.540365, 28.407467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.819640, 27.660540, 28.416206>,  <15.165576, 27.860830, 28.430773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.819640, 27.660540, 28.416206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134136, -0.160559, -0.977869,
		0.483797, -0.850585, 0.206023,
		-0.864840, -0.500726, -0.036416,
		14.560188, 27.510323, 28.405281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.201771, 27.280384, 27.979330>,  <15.165576, 27.860830, 28.430773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.201771, 27.280384, 27.979330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.803147, 27.295418, 28.008886>,  <14.563973, 27.304438, 28.026621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.803147, 27.295418, 28.008886>,  <15.201771, 27.280384, 27.979330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.803147, 27.295418, 28.008886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080163, -0.209613, -0.974493,
		-0.021138, -0.977062, 0.211905,
		-0.996557, 0.037585, 0.073893,
		14.504180, 27.306694, 28.031054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.911637, 26.674593, 27.556219>,  <15.201771, 27.280384, 27.979330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.911637, 26.674593, 27.556219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.594732, 26.917665, 27.578297>,  <14.404590, 27.063509, 27.591543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.594732, 26.917665, 27.578297>,  <14.911637, 26.674593, 27.556219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.594732, 26.917665, 27.578297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347457, -0.374934, -0.859475,
		-0.501595, -0.700104, 0.508189,
		-0.792260, 0.607683, 0.055191,
		14.357054, 27.099970, 27.594854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.251578, 26.245756, 27.573816>,  <14.911637, 26.674593, 27.556219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.251578, 26.245756, 27.573816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.190180, 26.611902, 27.424931>,  <14.153340, 26.831591, 27.335600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.190180, 26.611902, 27.424931>,  <14.251578, 26.245756, 27.573816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.190180, 26.611902, 27.424931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308841, -0.402248, -0.861867,
		-0.938646, -0.017338, 0.344446,
		-0.153496, 0.915366, -0.372214,
		14.144131, 26.886513, 27.313267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.743777, 26.157049, 27.191275>,  <14.251578, 26.245756, 27.573816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.743777, 26.157049, 27.191275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.832540, 26.531382, 27.081749>,  <13.885797, 26.755981, 27.016033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.832540, 26.531382, 27.081749>,  <13.743777, 26.157049, 27.191275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.832540, 26.531382, 27.081749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478158, -0.140293, -0.866996,
		-0.849778, 0.323318, 0.416344,
		0.221906, 0.935833, -0.273816,
		13.899111, 26.812132, 26.999605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.137892, 26.378937, 26.967531>,  <13.743777, 26.157049, 27.191275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.137892, 26.378937, 26.967531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.440612, 26.576023, 26.795723>,  <13.622244, 26.694275, 26.692638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.440612, 26.576023, 26.795723>,  <13.137892, 26.378937, 26.967531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.440612, 26.576023, 26.795723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442493, -0.097464, -0.891460,
		-0.481098, 0.864716, 0.144262,
		0.756799, 0.492715, -0.429520,
		13.667651, 26.723837, 26.666866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.852894, 26.733685, 26.449001>,  <13.137892, 26.378937, 26.967531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.852894, 26.733685, 26.449001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.237864, 26.761274, 26.343946>,  <13.468847, 26.777828, 26.280914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.237864, 26.761274, 26.343946>,  <12.852894, 26.733685, 26.449001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.237864, 26.761274, 26.343946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261988, -0.018465, -0.964895,
		-0.071401, 0.997448, 0.000298,
		0.962426, 0.068973, -0.262637,
		13.526592, 26.781965, 26.265156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.853831, 27.114454, 25.954565>,  <12.852894, 26.733685, 26.449001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.853831, 27.114454, 25.954565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.205925, 26.944904, 25.869225>,  <13.417181, 26.843174, 25.818020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.205925, 26.944904, 25.869225>,  <12.853831, 27.114454, 25.954565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.205925, 26.944904, 25.869225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272837, -0.084207, -0.958368,
		0.388263, 0.901798, -0.189771,
		0.880234, -0.423875, -0.213349,
		13.469995, 26.817741, 25.805220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.018675, 27.329885, 25.343735>,  <12.853831, 27.114454, 25.954565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.018675, 27.329885, 25.343735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.245960, 27.003511, 25.386414>,  <13.382332, 26.807688, 25.412020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.245960, 27.003511, 25.386414>,  <13.018675, 27.329885, 25.343735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.245960, 27.003511, 25.386414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000766, -0.130185, -0.991489,
		0.822880, 0.563297, -0.074597,
		0.568214, -0.815934, 0.106695,
		13.416425, 26.758732, 25.418423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.434712, 27.313730, 24.746225>,  <13.018675, 27.329885, 25.343735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.434712, 27.313730, 24.746225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.422952, 26.939617, 24.887297>,  <13.415895, 26.715149, 24.971939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.422952, 26.939617, 24.887297>,  <13.434712, 27.313730, 24.746225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.422952, 26.939617, 24.887297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135148, -0.353309, -0.925693,
		0.990389, 0.020446, 0.136790,
		-0.029402, -0.935283, 0.352676,
		13.414131, 26.659033, 24.993099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.960472, 26.987358, 24.401541>,  <13.434712, 27.313730, 24.746225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.960472, 26.987358, 24.401541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.706010, 26.698875, 24.511206>,  <13.553332, 26.525785, 24.577005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.706010, 26.698875, 24.511206>,  <13.960472, 26.987358, 24.401541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.706010, 26.698875, 24.511206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155106, -0.467619, -0.870215,
		0.755810, -0.511068, 0.409342,
		-0.636155, -0.721209, 0.274162,
		13.515163, 26.482513, 24.593454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.265237, 26.459763, 24.243042>,  <13.960472, 26.987358, 24.401541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.265237, 26.459763, 24.243042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.893291, 26.318466, 24.284170>,  <13.670124, 26.233688, 24.308847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.893291, 26.318466, 24.284170>,  <14.265237, 26.459763, 24.243042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.893291, 26.318466, 24.284170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147168, -0.613286, -0.776030,
		0.337186, -0.706470, 0.622259,
		-0.929864, -0.353243, 0.102821,
		13.614332, 26.212494, 24.315016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.381940, 25.744555, 24.186333>,  <14.265237, 26.459763, 24.243042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.381940, 25.744555, 24.186333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.000859, 25.822695, 24.093210>,  <13.772211, 25.869579, 24.037336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.000859, 25.822695, 24.093210>,  <14.381940, 25.744555, 24.186333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.000859, 25.822695, 24.093210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076791, -0.586444, -0.806341,
		-0.294044, -0.786080, 0.543705,
		-0.952702, 0.195348, -0.232805,
		13.715049, 25.881300, 24.023369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.979649, 25.044727, 24.060202>,  <14.381940, 25.744555, 24.186333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.979649, 25.044727, 24.060202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.834960, 25.356739, 23.855961>,  <13.748147, 25.543945, 23.733418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.834960, 25.356739, 23.855961>,  <13.979649, 25.044727, 24.060202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.834960, 25.356739, 23.855961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139021, -0.586694, -0.797787,
		-0.921862, -0.217593, 0.320660,
		-0.361722, 0.780028, -0.510601,
		13.726443, 25.590748, 23.702780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.664516, 24.671261, 23.532518>,  <13.979649, 25.044727, 24.060202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.664516, 24.671261, 23.532518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.615022, 25.045057, 23.399000>,  <13.585325, 25.269335, 23.318890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.615022, 25.045057, 23.399000>,  <13.664516, 24.671261, 23.532518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.615022, 25.045057, 23.399000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091286, -0.345672, -0.933905,
		-0.988107, -0.085087, 0.128078,
		-0.123736, 0.934490, -0.333794,
		13.577901, 25.325405, 23.298862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.074132, 24.632523, 23.031900>,  <13.664516, 24.671261, 23.532518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.074132, 24.632523, 23.031900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.267109, 24.971779, 22.944351>,  <13.382895, 25.175333, 22.891821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.267109, 24.971779, 22.944351>,  <13.074132, 24.632523, 23.031900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.267109, 24.971779, 22.944351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043304, -0.226475, -0.973054,
		-0.874856, 0.478921, -0.072534,
		0.482443, 0.848141, -0.218873,
		13.411841, 25.226221, 22.878689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.804725, 24.819204, 22.554171>,  <13.074132, 24.632523, 23.031900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.804725, 24.819204, 22.554171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.127609, 25.051802, 22.513622>,  <13.321340, 25.191360, 22.489292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.127609, 25.051802, 22.513622>,  <12.804725, 24.819204, 22.554171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.127609, 25.051802, 22.513622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064985, -0.083147, -0.994416,
		-0.586675, 0.809291, -0.029329,
		0.807211, 0.581494, -0.101372,
		13.369772, 25.226250, 22.483212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.583960, 25.446369, 22.230345>,  <12.804725, 24.819204, 22.554171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.583960, 25.446369, 22.230345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.964660, 25.360313, 22.142815>,  <13.193080, 25.308680, 22.090296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.964660, 25.360313, 22.142815>,  <12.583960, 25.446369, 22.230345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.964660, 25.360313, 22.142815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243607, -0.096041, -0.965107,
		0.186616, 0.971850, -0.143816,
		0.951751, -0.215139, -0.218826,
		13.250185, 25.295773, 22.077168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.642504, 25.596231, 21.499413>,  <12.583960, 25.446369, 22.230345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.642504, 25.596231, 21.499413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.966331, 25.377218, 21.584087>,  <13.160626, 25.245811, 21.634892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.966331, 25.377218, 21.584087>,  <12.642504, 25.596231, 21.499413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.966331, 25.377218, 21.584087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020823, -0.333596, -0.942486,
		0.586658, 0.767414, -0.258667,
		0.809567, -0.547531, 0.211687,
		13.209201, 25.212959, 21.647593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.165338, 25.653736, 20.919106>,  <12.642504, 25.596231, 21.499413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.165338, 25.653736, 20.919106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.281484, 25.317942, 21.102823>,  <13.351171, 25.116465, 21.213053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.281484, 25.317942, 21.102823>,  <13.165338, 25.653736, 20.919106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.281484, 25.317942, 21.102823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251789, -0.396031, -0.883041,
		0.923195, 0.372050, 0.096380,
		0.290366, -0.839487, 0.459292,
		13.368593, 25.066095, 21.240610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.659393, 25.412039, 20.496798>,  <13.165338, 25.653736, 20.919106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.659393, 25.412039, 20.496798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.594018, 25.084387, 20.716730>,  <13.554792, 24.887796, 20.848690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.594018, 25.084387, 20.716730>,  <13.659393, 25.412039, 20.496798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.594018, 25.084387, 20.716730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299738, -0.572211, -0.763369,
		0.939917, 0.040042, 0.339046,
		-0.163439, -0.819128, 0.549833,
		13.544987, 24.838648, 20.881680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.503557, 14.909486, 4.809175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.784439, 15.080426, 5.036957>,  <23.952969, 15.182990, 5.173627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.784439, 15.080426, 5.036957>,  <23.503557, 14.909486, 4.809175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.784439, 15.080426, 5.036957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618990, -0.028768, 0.784872,
		0.351799, -0.903628, 0.244325,
		0.702203, 0.427351, 0.569457,
		23.995100, 15.208632, 5.207794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.629818, 14.445625, 5.364185>,  <23.503557, 14.909486, 4.809175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.629818, 14.445625, 5.364185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.719355, 14.827079, 5.444662>,  <23.773077, 15.055951, 5.492948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.719355, 14.827079, 5.444662>,  <23.629818, 14.445625, 5.364185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.719355, 14.827079, 5.444662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637975, -0.012690, 0.769952,
		0.736805, -0.300703, 0.605554,
		0.223842, 0.953633, 0.201191,
		23.786507, 15.113169, 5.505020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.875397, 14.559613, 6.112973>,  <23.629818, 14.445625, 5.364185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.875397, 14.559613, 6.112973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.668991, 14.865188, 5.957987>,  <23.545147, 15.048532, 5.864996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.668991, 14.865188, 5.957987>,  <23.875397, 14.559613, 6.112973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.668991, 14.865188, 5.957987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683503, -0.094582, 0.723794,
		0.516286, 0.638322, 0.570958,
		-0.516016, 0.763936, -0.387464,
		23.514187, 15.094369, 5.841748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.493879, 14.621842, 6.699411>,  <23.875397, 14.559613, 6.112973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.493879, 14.621842, 6.699411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.369329, 14.873636, 6.414653>,  <23.294600, 15.024713, 6.243798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.369329, 14.873636, 6.414653>,  <23.493879, 14.621842, 6.699411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.369329, 14.873636, 6.414653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698087, 0.356764, 0.620801,
		0.644763, 0.690268, 0.328346,
		-0.311376, 0.629484, -0.711896,
		23.275917, 15.062481, 6.201085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.558514, 15.362030, 6.917583>,  <23.493879, 14.621842, 6.699411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.558514, 15.362030, 6.917583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.266171, 15.289224, 6.654459>,  <23.090765, 15.245540, 6.496584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.266171, 15.289224, 6.654459>,  <23.558514, 15.362030, 6.917583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.266171, 15.289224, 6.654459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676011, 0.325917, 0.660899,
		0.094098, 0.927711, -0.361243,
		-0.730859, -0.182015, -0.657811,
		23.046913, 15.234619, 6.457116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.098383, 15.895432, 6.563650>,  <23.558514, 15.362030, 6.917583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.098383, 15.895432, 6.563650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.918892, 15.565456, 6.701122>,  <22.811197, 15.367471, 6.783605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.918892, 15.565456, 6.701122>,  <23.098383, 15.895432, 6.563650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.918892, 15.565456, 6.701122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382427, 0.524838, 0.760457,
		-0.807707, 0.209807, -0.550990,
		-0.448730, -0.824940, 0.343680,
		22.784273, 15.317974, 6.804226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.323658, 15.982087, 6.633637>,  <23.098383, 15.895432, 6.563650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.323658, 15.982087, 6.633637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.489416, 15.723508, 6.889882>,  <22.588871, 15.568360, 7.043628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.489416, 15.723508, 6.889882>,  <22.323658, 15.982087, 6.633637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.489416, 15.723508, 6.889882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417917, 0.490127, 0.764932,
		-0.808470, -0.584705, -0.067056,
		0.414394, -0.646448, 0.640611,
		22.613735, 15.529573, 7.082065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.906408, 16.434752, 7.002265>,  <22.323658, 15.982087, 6.633637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.906408, 16.434752, 7.002265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.098097, 16.703810, 7.227794>,  <23.213110, 16.865244, 7.363111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.098097, 16.703810, 7.227794>,  <22.906408, 16.434752, 7.002265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.098097, 16.703810, 7.227794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165829, -0.700211, 0.694410,
		0.861886, -0.239278, -0.447100,
		0.479221, 0.672644, 0.563823,
		23.241863, 16.905603, 7.396941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.516468, 16.089930, 7.225657>,  <22.906408, 16.434752, 7.002265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.516468, 16.089930, 7.225657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.449400, 16.382483, 7.490070>,  <23.409159, 16.558014, 7.648718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.449400, 16.382483, 7.490070>,  <23.516468, 16.089930, 7.225657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.449400, 16.382483, 7.490070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058628, -0.661942, 0.747258,
		0.984098, 0.164048, 0.068108,
		-0.167669, 0.731383, 0.661034,
		23.399099, 16.601898, 7.688381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.586157, 15.681495, 7.881763>,  <23.516468, 16.089930, 7.225657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.586157, 15.681495, 7.881763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.442188, 16.046469, 7.959651>,  <23.355806, 16.265453, 8.006384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.442188, 16.046469, 7.959651>,  <23.586157, 15.681495, 7.881763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.442188, 16.046469, 7.959651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214441, -0.284025, 0.934529,
		0.908004, 0.294602, 0.297891,
		-0.359922, 0.912436, 0.194721,
		23.334211, 16.320200, 8.018067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.947119, 15.846351, 8.484906>,  <23.586157, 15.681495, 7.881763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.947119, 15.846351, 8.484906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.617662, 16.068943, 8.441195>,  <23.419989, 16.202499, 8.414969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.617662, 16.068943, 8.441195>,  <23.947119, 15.846351, 8.484906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.617662, 16.068943, 8.441195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128990, 0.003811, 0.991639,
		0.552245, 0.830851, 0.068642,
		-0.823642, 0.556482, -0.109276,
		23.370569, 16.235888, 8.408413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.983130, 16.366570, 8.992309>,  <23.947119, 15.846351, 8.484906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.983130, 16.366570, 8.992309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.596979, 16.302364, 8.910056>,  <23.365290, 16.263842, 8.860704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.596979, 16.302364, 8.910056>,  <23.983130, 16.366570, 8.992309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.596979, 16.302364, 8.910056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152230, -0.293479, 0.943767,
		-0.211836, 0.942393, 0.258883,
		-0.965376, -0.160514, -0.205630,
		23.307365, 16.254210, 8.848367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.620993, 16.735937, 9.423005>,  <23.983130, 16.366570, 8.992309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.620993, 16.735937, 9.423005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.357290, 16.457432, 9.309445>,  <23.199068, 16.290329, 9.241309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.357290, 16.457432, 9.309445>,  <23.620993, 16.735937, 9.423005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.357290, 16.457432, 9.309445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295894, -0.106877, 0.949223,
		-0.691250, 0.709787, -0.135560,
		-0.659258, -0.696261, -0.283900,
		23.159513, 16.248554, 9.224276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.994219, 16.785707, 9.811851>,  <23.620993, 16.735937, 9.423005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.994219, 16.785707, 9.811851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.926533, 16.416697, 9.673106>,  <22.885921, 16.195290, 9.589859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.926533, 16.416697, 9.673106>,  <22.994219, 16.785707, 9.811851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.926533, 16.416697, 9.673106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406345, -0.255331, 0.877320,
		-0.897914, 0.289401, -0.331658,
		-0.169214, -0.922526, -0.346862,
		22.875769, 16.139938, 9.569048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.441980, 16.637810, 10.163952>,  <22.994219, 16.785707, 9.811851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.441980, 16.637810, 10.163952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.598909, 16.292065, 10.038119>,  <22.693066, 16.084618, 9.962620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.598909, 16.292065, 10.038119>,  <22.441980, 16.637810, 10.163952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.598909, 16.292065, 10.038119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194843, -0.412332, 0.889954,
		-0.898955, -0.287854, -0.330181,
		0.392321, -0.864362, -0.314582,
		22.716606, 16.032757, 9.943745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.932430, 16.114378, 10.171656>,  <22.441980, 16.637810, 10.163952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.932430, 16.114378, 10.171656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.291185, 15.942236, 10.212424>,  <22.506439, 15.838951, 10.236885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.291185, 15.942236, 10.212424>,  <21.932430, 16.114378, 10.171656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.291185, 15.942236, 10.212424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275346, -0.363019, 0.890170,
		-0.346076, -0.826452, -0.444082,
		0.896892, -0.430343, 0.101928,
		22.560251, 15.813129, 10.243001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.907923, 15.401423, 10.379928>,  <21.932430, 16.114378, 10.171656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.907923, 15.401423, 10.379928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.289530, 15.469419, 10.478684>,  <22.518494, 15.510216, 10.537938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.289530, 15.469419, 10.478684>,  <21.907923, 15.401423, 10.379928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.289530, 15.469419, 10.478684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130073, -0.507299, 0.851897,
		0.270060, -0.844838, -0.461861,
		0.954017, 0.169988, 0.246892,
		22.575735, 15.520414, 10.552752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.214684, 14.802894, 10.626697>,  <21.907923, 15.401423, 10.379928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.214684, 14.802894, 10.626697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.460630, 15.081343, 10.774940>,  <22.608198, 15.248412, 10.863887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.460630, 15.081343, 10.774940>,  <22.214684, 14.802894, 10.626697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.460630, 15.081343, 10.774940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002162, -0.468452, 0.883487,
		0.788629, -0.544027, -0.286530,
		0.614866, 0.696123, 0.370611,
		22.645090, 15.290179, 10.886124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.754135, 14.467502, 11.021527>,  <22.214684, 14.802894, 10.626697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.754135, 14.467502, 11.021527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.784523, 14.837910, 11.169427>,  <22.802755, 15.060155, 11.258167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.784523, 14.837910, 11.169427>,  <22.754135, 14.467502, 11.021527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.784523, 14.837910, 11.169427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004258, -0.371120, 0.928575,
		0.997101, -0.068969, -0.032137,
		0.075969, 0.926020, 0.369750,
		22.807314, 15.115716, 11.280352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.253168, 14.447815, 11.582081>,  <22.754135, 14.467502, 11.021527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.253168, 14.447815, 11.582081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.075764, 14.798337, 11.657328>,  <22.969320, 15.008650, 11.702476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.075764, 14.798337, 11.657328>,  <23.253168, 14.447815, 11.582081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.075764, 14.798337, 11.657328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116628, -0.264531, 0.957299,
		0.888647, 0.402635, 0.219525,
		-0.443513, 0.876304, 0.188116,
		22.942709, 15.061228, 11.713762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.663280, 14.743179, 12.126720>,  <23.253168, 14.447815, 11.582081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.663280, 14.743179, 12.126720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.299292, 14.907421, 12.149878>,  <23.080898, 15.005966, 12.163772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.299292, 14.907421, 12.149878>,  <23.663280, 14.743179, 12.126720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.299292, 14.907421, 12.149878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018370, -0.179394, 0.983606,
		0.414259, 0.893992, 0.170786,
		-0.909974, 0.410605, 0.057893,
		23.026299, 15.030602, 12.167245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.790037, 15.198929, 12.618775>,  <23.663280, 14.743179, 12.126720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.790037, 15.198929, 12.618775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.390495, 15.190693, 12.636066>,  <23.150770, 15.185752, 12.646441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.390495, 15.190693, 12.636066>,  <23.790037, 15.198929, 12.618775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.390495, 15.190693, 12.636066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047344, -0.290077, 0.955832,
		-0.007140, 0.956782, 0.290719,
		-0.998853, -0.020589, 0.043227,
		23.090839, 15.184516, 12.649035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.639059, 15.477714, 13.238638>,  <23.790037, 15.198929, 12.618775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.639059, 15.477714, 13.238638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.306105, 15.283362, 13.132010>,  <23.106333, 15.166752, 13.068032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.306105, 15.283362, 13.132010>,  <23.639059, 15.477714, 13.238638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.306105, 15.283362, 13.132010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082420, -0.367124, 0.926513,
		-0.548037, 0.793186, 0.265542,
		-0.832384, -0.485877, -0.266572,
		23.056389, 15.137599, 13.052038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.146402, 15.786447, 13.713984>,  <23.639059, 15.477714, 13.238638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.146402, 15.786447, 13.713984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.035398, 15.420352, 13.597139>,  <22.968796, 15.200695, 13.527032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.035398, 15.420352, 13.597139>,  <23.146402, 15.786447, 13.713984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.035398, 15.420352, 13.597139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019278, -0.298689, 0.954156,
		-0.960530, 0.270419, 0.065245,
		-0.277510, -0.915237, -0.292113,
		22.952147, 15.145781, 13.509505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.539890, 15.546721, 14.113359>,  <23.146402, 15.786447, 13.713984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.539890, 15.546721, 14.113359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.642027, 15.190050, 13.963847>,  <22.703310, 14.976048, 13.874140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.642027, 15.190050, 13.963847>,  <22.539890, 15.546721, 14.113359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.642027, 15.190050, 13.963847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162764, -0.420723, 0.892468,
		-0.953052, -0.167047, -0.252562,
		0.255343, -0.891677, -0.373782,
		22.718630, 14.922547, 13.851712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.038153, 14.955927, 14.177464>,  <22.539890, 15.546721, 14.113359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.038153, 14.955927, 14.177464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.392612, 14.774759, 14.138267>,  <22.605288, 14.666059, 14.114748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.392612, 14.774759, 14.138267>,  <22.038153, 14.955927, 14.177464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.392612, 14.774759, 14.138267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085313, -0.367311, 0.926177,
		-0.455479, -0.812371, -0.364132,
		0.886149, -0.452920, -0.097997,
		22.658457, 14.638884, 14.108868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.856972, 14.277136, 14.382710>,  <22.038153, 14.955927, 14.177464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.856972, 14.277136, 14.382710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.253355, 14.328991, 14.396529>,  <22.491186, 14.360104, 14.404820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.253355, 14.328991, 14.396529>,  <21.856972, 14.277136, 14.382710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.253355, 14.328991, 14.396529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022049, -0.411376, 0.911199,
		0.132338, -0.902199, -0.410516,
		0.990959, 0.129637, 0.034548,
		22.550642, 14.367882, 14.406894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.186008, 13.662455, 14.613199>,  <21.856972, 14.277136, 14.382710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.186008, 13.662455, 14.613199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.457253, 13.947728, 14.684234>,  <22.619999, 14.118892, 14.726854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.457253, 13.947728, 14.684234>,  <22.186008, 13.662455, 14.613199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.457253, 13.947728, 14.684234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136521, -0.359651, 0.923046,
		0.722170, -0.601681, -0.341247,
		0.678109, 0.713183, 0.177587,
		22.660685, 14.161683, 14.737510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.454445, 13.394347, 15.200162>,  <22.186008, 13.662455, 14.613199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.454445, 13.394347, 15.200162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.637716, 13.749785, 15.208822>,  <22.747679, 13.963049, 15.214019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.637716, 13.749785, 15.208822>,  <22.454445, 13.394347, 15.200162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.637716, 13.749785, 15.208822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250982, -0.152702, 0.955871,
		0.852689, -0.432527, -0.292987,
		0.458179, 0.888596, 0.021651,
		22.775169, 14.016364, 15.215318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.033026, 13.245073, 15.611525>,  <22.454445, 13.394347, 15.200162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.033026, 13.245073, 15.611525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.955605, 13.636083, 15.644956>,  <22.909151, 13.870688, 15.665014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.955605, 13.636083, 15.644956>,  <23.033026, 13.245073, 15.611525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.955605, 13.636083, 15.644956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093492, -0.066423, 0.993402,
		0.976625, 0.200090, -0.078535,
		-0.193553, 0.977523, 0.083577,
		22.897539, 13.929339, 15.670029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.068565, 13.426858, 16.356720>,  <23.033026, 13.245073, 15.611525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.068565, 13.426858, 16.356720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.869038, 13.743473, 16.215500>,  <22.749321, 13.933442, 16.130768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.869038, 13.743473, 16.215500>,  <23.068565, 13.426858, 16.356720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.869038, 13.743473, 16.215500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224431, 0.275490, 0.934739,
		0.837143, 0.545503, 0.040225,
		-0.498821, 0.791538, -0.353052,
		22.719391, 13.980934, 16.109585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.275591, 14.197481, 16.514635>,  <23.068565, 13.426858, 16.356720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.275591, 14.197481, 16.514635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.885693, 14.115930, 16.478189>,  <22.651752, 14.066998, 16.456322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.885693, 14.115930, 16.478189>,  <23.275591, 14.197481, 16.514635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.885693, 14.115930, 16.478189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154284, 0.319860, 0.934819,
		-0.161446, 0.925269, -0.343237,
		-0.974747, -0.203879, -0.091114,
		22.593269, 14.054766, 16.450855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.379587, 14.747922, 16.899040>,  <23.275591, 14.197481, 16.514635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.379587, 14.747922, 16.899040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.039572, 14.655781, 16.709568>,  <22.835564, 14.600496, 16.595884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.039572, 14.655781, 16.709568>,  <23.379587, 14.747922, 16.899040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.039572, 14.655781, 16.709568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496240, 0.048735, 0.866816,
		-0.176589, 0.971886, -0.155737,
		-0.850037, -0.230353, -0.473683,
		22.784561, 14.586675, 16.567463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.072094, 14.381103, 16.907757>,  <23.379587, 14.747922, 16.899040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.072094, 14.381103, 16.907757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.384905, 14.496197, 16.686617>,  <24.572592, 14.565253, 16.553934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.384905, 14.496197, 16.686617>,  <24.072094, 14.381103, 16.907757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.384905, 14.496197, 16.686617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623047, 0.383262, -0.681852,
		0.015692, 0.877677, 0.478995,
		0.782027, 0.287737, -0.552848,
		24.619513, 14.582518, 16.520763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.988708, 15.144273, 16.820374>,  <24.072094, 14.381103, 16.907757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.988708, 15.144273, 16.820374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.213192, 15.022680, 16.512440>,  <24.347881, 14.949724, 16.327681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.213192, 15.022680, 16.512440>,  <23.988708, 15.144273, 16.820374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.213192, 15.022680, 16.512440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483390, 0.634623, -0.602982,
		0.671849, 0.710527, 0.209213,
		0.561206, -0.303982, -0.769833,
		24.381554, 14.931486, 16.281490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.381042, 15.694093, 16.540638>,  <23.988708, 15.144273, 16.820374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.381042, 15.694093, 16.540638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.360600, 15.442827, 16.230078>,  <24.348333, 15.292068, 16.043741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.360600, 15.442827, 16.230078>,  <24.381042, 15.694093, 16.540638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.360600, 15.442827, 16.230078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074109, 0.777659, -0.624303,
		0.995940, 0.025634, -0.086295,
		-0.051105, -0.628163, -0.776401,
		24.345268, 15.254378, 15.997157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.073153, 15.689994, 16.130619>,  <24.381042, 15.694093, 16.540638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.073153, 15.689994, 16.130619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.740086, 15.586876, 15.934575>,  <24.540245, 15.525005, 15.816949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.740086, 15.586876, 15.934575>,  <25.073153, 15.689994, 16.130619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.740086, 15.586876, 15.934575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059979, 0.837845, -0.542604,
		0.550514, -0.481205, -0.682185,
		-0.832669, -0.257794, -0.490107,
		24.490286, 15.509538, 15.787542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216995, 15.561805, 15.367258>,  <25.073153, 15.689994, 16.130619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.216995, 15.561805, 15.367258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.854828, 15.691381, 15.477004>,  <24.637527, 15.769126, 15.542851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.854828, 15.691381, 15.477004>,  <25.216995, 15.561805, 15.367258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.854828, 15.691381, 15.477004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151675, 0.850497, -0.503636,
		-0.396495, -0.414388, -0.819191,
		-0.905420, 0.323940, 0.274366,
		24.583202, 15.788563, 15.559314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.551409, 15.635134, 14.877469>,  <25.216995, 15.561805, 15.367258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.551409, 15.635134, 14.877469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.616631, 15.930749, 15.138922>,  <24.655764, 16.108118, 15.295794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.616631, 15.930749, 15.138922>,  <24.551409, 15.635134, 14.877469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.616631, 15.930749, 15.138922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164878, 0.632771, -0.756582,
		-0.972742, 0.231136, -0.018674,
		0.163057, 0.739038, 0.653632,
		24.665548, 16.152460, 15.335011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.106686, 16.295271, 14.729322>,  <24.551409, 15.635134, 14.877469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.106686, 16.295271, 14.729322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.449732, 16.373671, 14.919514>,  <24.655560, 16.420712, 15.033628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.449732, 16.373671, 14.919514>,  <24.106686, 16.295271, 14.729322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.449732, 16.373671, 14.919514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271780, 0.612168, -0.742554,
		-0.436614, 0.766051, 0.471735,
		0.857615, 0.196001, 0.475478,
		24.707016, 16.432470, 15.062157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.149128, 16.963160, 14.862034>,  <24.106686, 16.295271, 14.729322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.149128, 16.963160, 14.862034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.528934, 16.837719, 14.858701>,  <24.756819, 16.762455, 14.856701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.528934, 16.837719, 14.858701>,  <24.149128, 16.963160, 14.862034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.528934, 16.837719, 14.858701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198568, 0.621362, -0.757945,
		0.242871, 0.718028, 0.652265,
		0.949518, -0.313602, -0.008334,
		24.813789, 16.743639, 14.856200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.489090, 17.509811, 14.746108>,  <24.149128, 16.963160, 14.862034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.489090, 17.509811, 14.746108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.786251, 17.251659, 14.675023>,  <24.964548, 17.096767, 14.632372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.786251, 17.251659, 14.675023>,  <24.489090, 17.509811, 14.746108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.786251, 17.251659, 14.675023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360241, 0.609207, -0.706465,
		0.564203, 0.460814, 0.685073,
		0.742900, -0.645381, -0.177713,
		25.009121, 17.058044, 14.621709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.083504, 17.899300, 14.674706>,  <24.489090, 17.509811, 14.746108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.083504, 17.899300, 14.674706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.203512, 17.553667, 14.513038>,  <25.275517, 17.346287, 14.416038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.203512, 17.553667, 14.513038>,  <25.083504, 17.899300, 14.674706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203512, 17.553667, 14.513038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558385, 0.502592, -0.660006,
		0.773431, -0.027667, 0.633276,
		0.300019, -0.864081, -0.404169,
		25.293518, 17.294443, 14.391787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.818560, 17.949389, 14.624160>,  <25.083504, 17.899300, 14.674706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.818560, 17.949389, 14.624160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.712440, 17.672468, 14.355731>,  <25.648769, 17.506315, 14.194674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.712440, 17.672468, 14.355731>,  <25.818560, 17.949389, 14.624160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712440, 17.672468, 14.355731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435520, 0.534913, -0.724010,
		0.860198, -0.484343, 0.159600,
		-0.265297, -0.692301, -0.671072,
		25.632851, 17.464779, 14.154409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349459, 17.903259, 14.218282>,  <25.818560, 17.949389, 14.624160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349459, 17.903259, 14.218282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.050308, 17.760036, 13.994683>,  <25.870817, 17.674103, 13.860524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.050308, 17.760036, 13.994683>,  <26.349459, 17.903259, 14.218282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050308, 17.760036, 13.994683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410278, 0.412680, -0.813245,
		0.521876, -0.837549, -0.161730,
		-0.747875, -0.358059, -0.558995,
		25.825945, 17.652618, 13.826984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.567659, 17.761757, 13.554114>,  <26.349459, 17.903259, 14.218282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.567659, 17.761757, 13.554114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.180401, 17.807640, 13.465088>,  <25.948046, 17.835171, 13.411673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.180401, 17.807640, 13.465088>,  <26.567659, 17.761757, 13.554114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180401, 17.807640, 13.465088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250240, 0.473692, -0.844391,
		0.008568, -0.873188, -0.487308,
		-0.968146, 0.114709, -0.222565,
		25.889957, 17.842052, 13.398318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400263, 17.426048, 12.880859>,  <26.567659, 17.761757, 13.554114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400263, 17.426048, 12.880859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.160206, 17.735918, 12.960565>,  <26.016172, 17.921841, 13.008388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.160206, 17.735918, 12.960565>,  <26.400263, 17.426048, 12.880859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.160206, 17.735918, 12.960565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199500, 0.386201, -0.900582,
		-0.774615, -0.500725, -0.386324,
		-0.600142, 0.774676, 0.199263,
		25.980164, 17.968321, 13.020344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450413, 17.803455, 12.326040>,  <26.400263, 17.426048, 12.880859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450413, 17.803455, 12.326040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.181160, 18.049904, 12.489641>,  <26.019608, 18.197773, 12.587802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.181160, 18.049904, 12.489641>,  <26.450413, 17.803455, 12.326040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181160, 18.049904, 12.489641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044943, 0.586125, -0.808973,
		-0.738154, -0.526165, -0.422231,
		-0.673134, 0.616122, 0.409003,
		25.979219, 18.234741, 12.612342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.847054, 17.717371, 11.804711>,  <26.450413, 17.803455, 12.326040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.847054, 17.717371, 11.804711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.835991, 18.044832, 12.034161>,  <25.829353, 18.241308, 12.171830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.835991, 18.044832, 12.034161>,  <25.847054, 17.717371, 11.804711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835991, 18.044832, 12.034161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195738, 0.558298, -0.806220,
		-0.980266, -0.134578, 0.144800,
		-0.027658, 0.818653, 0.573623,
		25.827694, 18.290428, 12.206247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.317694, 18.114374, 11.499622>,  <25.847054, 17.717371, 11.804711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.317694, 18.114374, 11.499622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.555868, 18.369486, 11.695048>,  <25.698772, 18.522552, 11.812304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.555868, 18.369486, 11.695048>,  <25.317694, 18.114374, 11.499622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.555868, 18.369486, 11.695048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049835, 0.636268, -0.769856,
		-0.801856, 0.434052, 0.410641,
		0.595436, 0.637778, 0.488564,
		25.734499, 18.560820, 11.841618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948292, 18.747168, 11.651828>,  <25.317694, 18.114374, 11.499622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948292, 18.747168, 11.651828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.334621, 18.848038, 11.675809>,  <25.566420, 18.908560, 11.690198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.334621, 18.848038, 11.675809>,  <24.948292, 18.747168, 11.651828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.334621, 18.848038, 11.675809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153701, 0.743421, -0.650923,
		-0.208718, 0.619461, 0.756773,
		0.965822, 0.252176, 0.059954,
		25.624369, 18.923691, 11.693795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.988108, 19.497986, 11.551236>,  <24.948292, 18.747168, 11.651828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.988108, 19.497986, 11.551236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.374252, 19.422844, 11.478807>,  <25.605940, 19.377758, 11.435350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.374252, 19.422844, 11.478807>,  <24.988108, 19.497986, 11.551236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.374252, 19.422844, 11.478807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021248, 0.748283, -0.663039,
		0.260049, 0.636225, 0.726355,
		0.965361, -0.187857, -0.181072,
		25.663860, 19.366488, 11.424486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<18.067593, 22.552593, 18.070440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.718901, 22.398546, 18.191616>,  <17.509686, 22.306118, 18.264320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.718901, 22.398546, 18.191616>,  <18.067593, 22.552593, 18.070440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.718901, 22.398546, 18.191616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336354, -0.919909, -0.201577,
		0.356307, -0.073826, 0.931448,
		-0.871729, -0.385119, 0.302938,
		17.457382, 22.283010, 18.282497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.254974, 21.886526, 18.415579>,  <18.067593, 22.552593, 18.070440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.254974, 21.886526, 18.415579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.861658, 21.847437, 18.354145>,  <17.625668, 21.823984, 18.317286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.861658, 21.847437, 18.354145>,  <18.254974, 21.886526, 18.415579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.861658, 21.847437, 18.354145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128932, -0.969459, -0.208626,
		-0.128505, -0.224942, 0.965861,
		-0.983292, -0.097721, -0.153583,
		17.566671, 21.818121, 18.308071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.945282, 21.305845, 18.734821>,  <18.254974, 21.886526, 18.415579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.945282, 21.305845, 18.734821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666216, 21.356686, 18.452797>,  <17.498775, 21.387190, 18.283583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666216, 21.356686, 18.452797>,  <17.945282, 21.305845, 18.734821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.666216, 21.356686, 18.452797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089902, -0.960826, -0.262168,
		-0.710761, -0.246292, 0.658907,
		-0.697665, 0.127102, -0.705060,
		17.456917, 21.394815, 18.241280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.615734, 20.710737, 18.684784>,  <17.945282, 21.305845, 18.734821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.615734, 20.710737, 18.684784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.456877, 20.866318, 18.352280>,  <17.361563, 20.959665, 18.152777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.456877, 20.866318, 18.352280>,  <17.615734, 20.710737, 18.684784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.456877, 20.866318, 18.352280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172343, -0.921247, -0.348716,
		-0.901430, 0.004772, 0.432899,
		-0.397143, 0.388950, -0.831262,
		17.337734, 20.983004, 18.102901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.039505, 20.335831, 18.605787>,  <17.615734, 20.710737, 18.684784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.039505, 20.335831, 18.605787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.114090, 20.475336, 18.238398>,  <17.158840, 20.559038, 18.017963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.114090, 20.475336, 18.238398>,  <17.039505, 20.335831, 18.605787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.114090, 20.475336, 18.238398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367671, -0.842167, -0.394428,
		-0.911071, 0.411242, -0.028801,
		0.186461, 0.348762, -0.918476,
		17.170029, 20.579966, 17.962854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.418213, 20.200777, 18.089985>,  <17.039505, 20.335831, 18.605787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.418213, 20.200777, 18.089985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.729200, 20.244576, 17.842257>,  <16.915792, 20.270855, 17.693621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.729200, 20.244576, 17.842257>,  <16.418213, 20.200777, 18.089985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.729200, 20.244576, 17.842257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347657, -0.745779, -0.568285,
		-0.524100, 0.657133, -0.541752,
		0.777466, 0.109495, -0.619320,
		16.962440, 20.277424, 17.656460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.136387, 19.991129, 17.390501>,  <16.418213, 20.200777, 18.089985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.136387, 19.991129, 17.390501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.534098, 19.955336, 17.367149>,  <16.772724, 19.933859, 17.353138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.534098, 19.955336, 17.367149>,  <16.136387, 19.991129, 17.390501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.534098, 19.955336, 17.367149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106665, -0.799669, -0.590891,
		0.006190, 0.593736, -0.804636,
		0.994276, -0.089483, -0.058381,
		16.832380, 19.928490, 17.349634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.227316, 19.862940, 16.755949>,  <16.136387, 19.991129, 17.390501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.227316, 19.862940, 16.755949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.583031, 19.745893, 16.896545>,  <16.796459, 19.675667, 16.980904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.583031, 19.745893, 16.896545>,  <16.227316, 19.862940, 16.755949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.583031, 19.745893, 16.896545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106285, -0.615274, -0.781115,
		0.444830, 0.731993, -0.516054,
		0.889286, -0.292614, 0.351492,
		16.849817, 19.658110, 17.001993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.658545, 19.831116, 16.239635>,  <16.227316, 19.862940, 16.755949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.658545, 19.831116, 16.239635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.829769, 19.587156, 16.506405>,  <16.932505, 19.440781, 16.666466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.829769, 19.587156, 16.506405>,  <16.658545, 19.831116, 16.239635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.829769, 19.587156, 16.506405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108902, -0.697764, -0.708001,
		0.897164, 0.375698, -0.232267,
		0.428062, -0.609899, 0.666923,
		16.958187, 19.404186, 16.706482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.205549, 19.564163, 15.850733>,  <16.658545, 19.831116, 16.239635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.205549, 19.564163, 15.850733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.098391, 19.327841, 16.155148>,  <17.034096, 19.186047, 16.337797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.098391, 19.327841, 16.155148>,  <17.205549, 19.564163, 15.850733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.098391, 19.327841, 16.155148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153732, -0.806003, -0.571599,
		0.951104, -0.036134, 0.306751,
		-0.267897, -0.590807, 0.761038,
		17.018021, 19.150599, 16.383459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.678488, 19.045235, 15.864293>,  <17.205549, 19.564163, 15.850733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.678488, 19.045235, 15.864293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.375340, 18.903450, 16.083378>,  <17.193451, 18.818378, 16.214828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.375340, 18.903450, 16.083378>,  <17.678488, 19.045235, 15.864293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.375340, 18.903450, 16.083378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167766, -0.917180, -0.361436,
		0.630466, -0.182034, 0.754570,
		-0.757871, -0.354464, 0.547711,
		17.147978, 18.797112, 16.247692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.886501, 18.497782, 16.312220>,  <17.678488, 19.045235, 15.864293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.886501, 18.497782, 16.312220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.498024, 18.432512, 16.242752>,  <17.264938, 18.393351, 16.201073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.498024, 18.432512, 16.242752>,  <17.886501, 18.497782, 16.312220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.498024, 18.432512, 16.242752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178402, -0.981024, -0.075927,
		-0.157983, -0.104722, 0.981873,
		-0.971192, -0.163172, -0.173667,
		17.206667, 18.383560, 16.190651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.716722, 17.850306, 16.679508>,  <17.886501, 18.497782, 16.312220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.716722, 17.850306, 16.679508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.655628, 17.941605, 16.294889>,  <17.618971, 17.996384, 16.064117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.655628, 17.941605, 16.294889>,  <17.716722, 17.850306, 16.679508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.655628, 17.941605, 16.294889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987441, 0.075013, -0.139045,
		0.040392, -0.970709, -0.236837,
		-0.152738, 0.228246, -0.961548,
		17.609806, 18.010078, 16.006426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.028524, 17.332684, 16.194187>,  <17.716722, 17.850306, 16.679508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.028524, 17.332684, 16.194187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.038471, 17.709997, 16.061768>,  <18.044439, 17.936386, 15.982315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.038471, 17.709997, 16.061768>,  <18.028524, 17.332684, 16.194187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.038471, 17.709997, 16.061768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991853, -0.064666, -0.109759,
		-0.124941, -0.325624, -0.937208,
		0.024865, 0.943285, -0.331051,
		18.045931, 17.992983, 15.962452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.331591, 16.809357, 15.778082>,  <18.028524, 17.332684, 16.194187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.331591, 16.809357, 15.778082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.420755, 16.661848, 16.139040>,  <18.474255, 16.573343, 16.355616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.420755, 16.661848, 16.139040>,  <18.331591, 16.809357, 15.778082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.420755, 16.661848, 16.139040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905903, 0.263552, 0.331481,
		-0.360070, -0.891373, -0.275324,
		0.222911, -0.368773, 0.902395,
		18.487629, 16.551216, 16.409760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666853, 16.465055, 16.071754>,  <18.331591, 16.809357, 15.778082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.666853, 16.465055, 16.071754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.886642, 16.511734, 16.402683>,  <18.018517, 16.539742, 16.601240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.886642, 16.511734, 16.402683>,  <17.666853, 16.465055, 16.071754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.886642, 16.511734, 16.402683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814757, 0.294166, 0.499637,
		-0.185064, -0.948604, 0.256715,
		0.549475, 0.116695, 0.827321,
		18.051485, 16.546743, 16.650879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.333569, 16.037544, 16.547285>,  <17.666853, 16.465055, 16.071754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.333569, 16.037544, 16.547285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.548346, 16.268976, 16.792866>,  <17.677212, 16.407835, 16.940214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.548346, 16.268976, 16.792866>,  <17.333569, 16.037544, 16.547285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.548346, 16.268976, 16.792866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746633, -0.012868, 0.665112,
		0.392722, -0.815523, 0.425079,
		0.536944, 0.578582, 0.613949,
		17.709429, 16.442551, 16.977051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.292337, 15.777554, 17.257015>,  <17.333569, 16.037544, 16.547285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.292337, 15.777554, 17.257015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.399073, 16.160316, 17.302845>,  <17.463114, 16.389975, 17.330343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.399073, 16.160316, 17.302845>,  <17.292337, 15.777554, 17.257015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.399073, 16.160316, 17.302845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670589, 0.098970, 0.735197,
		0.692176, -0.273011, 0.668100,
		0.266839, 0.956906, 0.114573,
		17.479124, 16.447388, 17.337217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.288561, 15.873660, 17.976967>,  <17.292337, 15.777554, 17.257015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.288561, 15.873660, 17.976967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.232731, 16.231895, 17.807997>,  <17.199232, 16.446836, 17.706615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.232731, 16.231895, 17.807997>,  <17.288561, 15.873660, 17.976967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.232731, 16.231895, 17.807997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717440, 0.202568, 0.666519,
		0.682495, 0.396093, 0.614257,
		-0.139574, 0.895588, -0.422424,
		17.190859, 16.500572, 17.681269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.045158, 16.191065, 18.626289>,  <17.288561, 15.873660, 17.976967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.045158, 16.191065, 18.626289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.964233, 16.467693, 18.348932>,  <16.915678, 16.633671, 18.182518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.964233, 16.467693, 18.348932>,  <17.045158, 16.191065, 18.626289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.964233, 16.467693, 18.348932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756558, 0.339213, 0.559066,
		0.621843, 0.637700, 0.454588,
		-0.202314, 0.691574, -0.693394,
		16.903540, 16.675165, 18.140915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.064877, 16.915052, 18.915655>,  <17.045158, 16.191065, 18.626289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.064877, 16.915052, 18.915655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.830238, 16.937407, 18.592476>,  <16.689455, 16.950819, 18.398567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.830238, 16.937407, 18.592476>,  <17.064877, 16.915052, 18.915655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.830238, 16.937407, 18.592476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728366, 0.399786, 0.556467,
		0.354106, 0.914903, -0.193806,
		-0.586594, 0.055886, -0.807950,
		16.654261, 16.954172, 18.350090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.804745, 17.598753, 19.016512>,  <17.064877, 16.915052, 18.915655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.804745, 17.598753, 19.016512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.568844, 17.368977, 18.789457>,  <16.427303, 17.231110, 18.653225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.568844, 17.368977, 18.789457>,  <16.804745, 17.598753, 19.016512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.568844, 17.368977, 18.789457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738868, 0.100076, 0.666378,
		-0.325989, 0.812405, -0.483456,
		-0.589751, -0.574442, -0.567636,
		16.391918, 17.196644, 18.619167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.225554, 18.056337, 18.807592>,  <16.804745, 17.598753, 19.016512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.225554, 18.056337, 18.807592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.067827, 17.692101, 18.758049>,  <15.973192, 17.473558, 18.728323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.067827, 17.692101, 18.758049>,  <16.225554, 18.056337, 18.807592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.067827, 17.692101, 18.758049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698371, 0.209317, 0.684445,
		-0.597323, 0.356386, -0.718467,
		-0.394314, -0.910591, -0.123860,
		15.949533, 17.418922, 18.720892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.495995, 18.187555, 18.708019>,  <16.225554, 18.056337, 18.807592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.495995, 18.187555, 18.708019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.519006, 17.802355, 18.813332>,  <15.532812, 17.571234, 18.876518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.519006, 17.802355, 18.813332>,  <15.495995, 18.187555, 18.708019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.519006, 17.802355, 18.813332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734488, 0.137790, 0.664486,
		-0.676179, -0.231602, -0.699387,
		0.057528, -0.963003, 0.263280,
		15.536264, 17.513454, 18.892315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.750655, 17.837551, 18.696680>,  <15.495995, 18.187555, 18.708019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.750655, 17.837551, 18.696680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.988894, 17.645502, 18.954285>,  <15.131837, 17.530273, 19.108847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.988894, 17.645502, 18.954285>,  <14.750655, 17.837551, 18.696680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.988894, 17.645502, 18.954285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660333, 0.163887, 0.732872,
		-0.457412, -0.861756, -0.219430,
		0.595595, -0.480122, 0.644010,
		15.167572, 17.501465, 19.147488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.286640, 17.388287, 19.178455>,  <14.750655, 17.837551, 18.696680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.286640, 17.388287, 19.178455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.637832, 17.397402, 19.369717>,  <14.848547, 17.402870, 19.484474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.637832, 17.397402, 19.369717>,  <14.286640, 17.388287, 19.178455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.637832, 17.397402, 19.369717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466097, 0.268361, 0.843051,
		-0.109108, -0.963049, 0.246237,
		0.877980, 0.022787, 0.478155,
		14.901226, 17.404238, 19.513163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.113407, 17.233614, 19.835274>,  <14.286640, 17.388287, 19.178455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.113407, 17.233614, 19.835274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.472626, 17.403879, 19.879677>,  <14.688157, 17.506039, 19.906319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.472626, 17.403879, 19.879677>,  <14.113407, 17.233614, 19.835274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.472626, 17.403879, 19.879677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350374, 0.539556, 0.765583,
		0.265986, -0.726424, 0.633688,
		0.898048, 0.425662, 0.111006,
		14.742040, 17.531578, 19.912979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.140360, 17.287550, 20.532301>,  <14.113407, 17.233614, 19.835274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.140360, 17.287550, 20.532301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.437124, 17.523609, 20.404997>,  <14.615183, 17.665245, 20.328615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.437124, 17.523609, 20.404997>,  <14.140360, 17.287550, 20.532301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.437124, 17.523609, 20.404997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219515, 0.662293, 0.716367,
		0.633542, -0.461621, 0.620911,
		0.741915, 0.590148, -0.318257,
		14.659698, 17.700655, 20.309519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.914262, 16.910067, 21.172445>,  <14.140360, 17.287550, 20.532301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.914262, 16.910067, 21.172445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.524202, 16.988306, 21.214062>,  <13.290167, 17.035250, 21.239033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.524202, 16.988306, 21.214062>,  <13.914262, 16.910067, 21.172445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.524202, 16.988306, 21.214062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207338, -0.640224, -0.739678,
		-0.078069, -0.742869, 0.664869,
		-0.975149, 0.195598, 0.104043,
		13.231657, 17.046986, 21.245275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.589869, 16.295151, 21.214945>,  <13.914262, 16.910067, 21.172445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.589869, 16.295151, 21.214945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.309636, 16.548872, 21.084196>,  <13.141497, 16.701105, 21.005747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.309636, 16.548872, 21.084196>,  <13.589869, 16.295151, 21.214945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.309636, 16.548872, 21.084196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312372, -0.684471, -0.658728,
		-0.641563, -0.359392, 0.677668,
		-0.700586, 0.634300, -0.326868,
		13.099462, 16.739162, 20.986135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.129206, 15.843721, 20.979263>,  <13.589869, 16.295151, 21.214945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.129206, 15.843721, 20.979263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.990763, 16.176394, 20.805588>,  <12.907697, 16.375998, 20.701384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.990763, 16.176394, 20.805588>,  <13.129206, 15.843721, 20.979263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.990763, 16.176394, 20.805588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546392, -0.554891, -0.627337,
		-0.762670, 0.020110, 0.646475,
		-0.346108, 0.831680, -0.434187,
		12.886930, 16.425898, 20.675331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.398707, 15.757036, 20.774231>,  <13.129206, 15.843721, 20.979263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.398707, 15.757036, 20.774231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.511320, 16.078390, 20.564350>,  <12.578888, 16.271202, 20.438421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.511320, 16.078390, 20.564350>,  <12.398707, 15.757036, 20.774231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.511320, 16.078390, 20.564350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456536, -0.368817, -0.809660,
		-0.843988, 0.467490, 0.262941,
		0.281531, 0.803385, -0.524703,
		12.595779, 16.319405, 20.406939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.823911, 15.888554, 20.489323>,  <12.398707, 15.757036, 20.774231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.823911, 15.888554, 20.489323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.111611, 16.074993, 20.283245>,  <12.284232, 16.186857, 20.159597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.111611, 16.074993, 20.283245>,  <11.823911, 15.888554, 20.489323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.111611, 16.074993, 20.283245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421009, -0.297477, -0.856889,
		-0.552655, 0.833222, -0.017730,
		0.719253, 0.466100, -0.515196,
		12.327387, 16.214823, 20.128687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.479975, 16.112169, 19.864389>,  <11.823911, 15.888554, 20.489323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.479975, 16.112169, 19.864389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.869534, 16.112766, 19.773596>,  <12.103269, 16.113125, 19.719120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.869534, 16.112766, 19.773596>,  <11.479975, 16.112169, 19.864389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.869534, 16.112766, 19.773596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215550, -0.307369, -0.926856,
		-0.071150, 0.951589, -0.299024,
		0.973897, 0.001492, -0.226985,
		12.161703, 16.113214, 19.705500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.489541, 16.507538, 19.250755>,  <11.479975, 16.112169, 19.864389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.489541, 16.507538, 19.250755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.819115, 16.281164, 19.239086>,  <12.016859, 16.145340, 19.232084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.819115, 16.281164, 19.239086>,  <11.489541, 16.507538, 19.250755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.819115, 16.281164, 19.239086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217970, -0.268977, -0.938158,
		0.523089, 0.779339, -0.344977,
		0.823934, -0.565935, -0.029174,
		12.066295, 16.111383, 19.230333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.744785, 16.712748, 18.633835>,  <11.489541, 16.507538, 19.250755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.744785, 16.712748, 18.633835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.896849, 16.351816, 18.715107>,  <11.988087, 16.135258, 18.763870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.896849, 16.351816, 18.715107>,  <11.744785, 16.712748, 18.633835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.896849, 16.351816, 18.715107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268461, -0.317865, -0.909335,
		0.885103, 0.291146, -0.363079,
		0.380159, -0.902328, 0.203182,
		12.010897, 16.081118, 18.776062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.076908, 16.414820, 18.039667>,  <11.744785, 16.712748, 18.633835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.076908, 16.414820, 18.039667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.032301, 16.070147, 18.237684>,  <12.005537, 15.863342, 18.356495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.032301, 16.070147, 18.237684>,  <12.076908, 16.414820, 18.039667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.032301, 16.070147, 18.237684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143017, -0.479046, -0.866061,
		0.983418, -0.167380, -0.069814,
		-0.111518, -0.861684, 0.495040,
		11.998846, 15.811642, 18.386196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.577703, 15.840098, 17.792484>,  <12.076908, 16.414820, 18.039667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.577703, 15.840098, 17.792484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.243511, 15.690413, 17.953447>,  <12.042995, 15.600601, 18.050026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.243511, 15.690413, 17.953447>,  <12.577703, 15.840098, 17.792484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.243511, 15.690413, 17.953447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249234, -0.394597, -0.884407,
		0.489748, -0.839200, 0.236411,
		-0.835482, -0.374215, 0.402410,
		11.992867, 15.578148, 18.074171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.253183, 15.832253, 17.449163>,  <12.577703, 15.840098, 17.792484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.253183, 15.832253, 17.449163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.469681, 15.764104, 17.778534>,  <13.599579, 15.723215, 17.976156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.469681, 15.764104, 17.778534>,  <13.253183, 15.832253, 17.449163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.469681, 15.764104, 17.778534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678773, 0.666517, -0.308257,
		-0.496309, 0.725761, 0.476392,
		0.541244, -0.170371, 0.823425,
		13.632054, 15.712993, 18.025562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.215742, 16.533989, 17.936352>,  <13.253183, 15.832253, 17.449163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.215742, 16.533989, 17.936352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.160116, 16.857578, 18.164816>,  <13.126740, 17.051731, 18.301895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.160116, 16.857578, 18.164816>,  <13.215742, 16.533989, 17.936352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.160116, 16.857578, 18.164816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681124, -0.340533, 0.648157,
		0.718841, 0.479167, -0.503654,
		-0.139064, 0.808972, 0.571161,
		13.118397, 17.100269, 18.336164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<13.281937, 20.118418, 25.792994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.497953, 19.812807, 25.934198>,  <13.627563, 19.629440, 26.018921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.497953, 19.812807, 25.934198>,  <13.281937, 20.118418, 25.792994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.497953, 19.812807, 25.934198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121791, -0.485962, -0.865453,
		0.832779, 0.424387, -0.355492,
		0.540042, -0.764027, 0.353012,
		13.659966, 19.583599, 26.040102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.741376, 19.950275, 25.305243>,  <13.281937, 20.118418, 25.792994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.741376, 19.950275, 25.305243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.803071, 19.611908, 25.509451>,  <13.840088, 19.408888, 25.631977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.803071, 19.611908, 25.509451>,  <13.741376, 19.950275, 25.305243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.803071, 19.611908, 25.509451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095409, -0.527041, -0.844467,
		0.983417, 0.081540, -0.161997,
		0.154237, -0.845919, 0.510522,
		13.849342, 19.358131, 25.662607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.386922, 19.564676, 24.993958>,  <13.741376, 19.950275, 25.305243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.386922, 19.564676, 24.993958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.140001, 19.303896, 25.170094>,  <13.991849, 19.147429, 25.275776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.140001, 19.303896, 25.170094>,  <14.386922, 19.564676, 24.993958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.140001, 19.303896, 25.170094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076664, -0.507201, -0.858411,
		0.782983, -0.563657, 0.263115,
		-0.617302, -0.651949, 0.440342,
		13.954811, 19.108311, 25.302197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.610955, 18.915625, 24.857841>,  <14.386922, 19.564676, 24.993958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.610955, 18.915625, 24.857841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.237885, 18.849594, 24.986130>,  <14.014042, 18.809975, 25.063103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.237885, 18.849594, 24.986130>,  <14.610955, 18.915625, 24.857841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.237885, 18.849594, 24.986130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083307, -0.766520, -0.636795,
		0.350961, -0.620642, 0.701163,
		-0.932677, -0.165078, 0.320722,
		13.958081, 18.800070, 25.082346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.498371, 18.223181, 25.037210>,  <14.610955, 18.915625, 24.857841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.498371, 18.223181, 25.037210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.165489, 18.405727, 24.911249>,  <13.965760, 18.515255, 24.835672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.165489, 18.405727, 24.911249>,  <14.498371, 18.223181, 25.037210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.165489, 18.405727, 24.911249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113287, -0.695905, -0.709142,
		-0.542770, -0.554478, 0.630837,
		-0.832206, 0.456366, -0.314902,
		13.915828, 18.542637, 24.816778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.067522, 17.646732, 24.894554>,  <14.498371, 18.223181, 25.037210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.067522, 17.646732, 24.894554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.858982, 17.941113, 24.721777>,  <13.733858, 18.117741, 24.618111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.858982, 17.941113, 24.721777>,  <14.067522, 17.646732, 24.894554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.858982, 17.941113, 24.721777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190792, -0.593890, -0.781596,
		-0.831741, -0.325073, 0.450038,
		-0.521349, 0.735949, -0.431941,
		13.702578, 18.161898, 24.592194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.545106, 17.317204, 24.511223>,  <14.067522, 17.646732, 24.894554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.545106, 17.317204, 24.511223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.554589, 17.679678, 24.342339>,  <13.560279, 17.897163, 24.241009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.554589, 17.679678, 24.342339>,  <13.545106, 17.317204, 24.511223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.554589, 17.679678, 24.342339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266096, -0.401374, -0.876408,
		-0.963655, 0.133126, 0.231617,
		0.023708, 0.906188, -0.422211,
		13.561702, 17.951534, 24.215675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.922475, 17.403221, 24.094040>,  <13.545106, 17.317204, 24.511223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.922475, 17.403221, 24.094040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.167677, 17.691296, 23.964081>,  <13.314798, 17.864140, 23.886106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.167677, 17.691296, 23.964081>,  <12.922475, 17.403221, 24.094040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.167677, 17.691296, 23.964081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166287, -0.284404, -0.944173,
		-0.772381, 0.632810, -0.054584,
		0.613006, 0.720185, -0.324897,
		13.351579, 17.907351, 23.866611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.496378, 17.758543, 23.676186>,  <12.922475, 17.403221, 24.094040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.496378, 17.758543, 23.676186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.881859, 17.809704, 23.582445>,  <13.113147, 17.840401, 23.526201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.881859, 17.809704, 23.582445>,  <12.496378, 17.758543, 23.676186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.881859, 17.809704, 23.582445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221847, -0.104740, -0.969440,
		-0.148538, 0.986241, -0.072564,
		0.963701, 0.127900, -0.234353,
		13.170969, 17.848074, 23.512138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.410982, 18.124701, 23.099363>,  <12.496378, 17.758543, 23.676186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.410982, 18.124701, 23.099363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.798116, 18.029217, 23.067579>,  <13.030396, 17.971926, 23.048510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.798116, 18.029217, 23.067579>,  <12.410982, 18.124701, 23.099363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.798116, 18.029217, 23.067579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078915, 0.011845, -0.996811,
		0.238891, 0.971018, -0.007374,
		0.967834, -0.238711, -0.079458,
		13.088466, 17.957603, 23.043741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.678399, 18.581724, 22.525839>,  <12.410982, 18.124701, 23.099363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.678399, 18.581724, 22.525839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.921196, 18.269445, 22.585266>,  <13.066875, 18.082079, 22.620922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.921196, 18.269445, 22.585266>,  <12.678399, 18.581724, 22.525839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.921196, 18.269445, 22.585266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174915, -0.313605, -0.933304,
		0.775218, 0.540523, -0.326912,
		0.606993, -0.780696, 0.148567,
		13.103294, 18.035236, 22.629837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.050889, 18.547369, 21.906998>,  <12.678399, 18.581724, 22.525839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.050889, 18.547369, 21.906998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.087390, 18.184015, 22.070219>,  <13.109291, 17.966003, 22.168152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.087390, 18.184015, 22.070219>,  <13.050889, 18.547369, 21.906998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.087390, 18.184015, 22.070219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020817, -0.411414, -0.911211,
		0.995610, 0.074657, -0.056453,
		0.091253, -0.908386, 0.408054,
		13.114766, 17.911499, 22.192635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.616159, 18.186466, 21.519777>,  <13.050889, 18.547369, 21.906998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.616159, 18.186466, 21.519777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.378321, 17.909565, 21.683357>,  <13.235618, 17.743425, 21.781506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.378321, 17.909565, 21.683357>,  <13.616159, 18.186466, 21.519777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.378321, 17.909565, 21.683357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001973, -0.509886, -0.860240,
		0.804021, -0.510689, 0.304543,
		-0.594597, -0.692252, 0.408951,
		13.199942, 17.701889, 21.806044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.869792, 17.672590, 21.137026>,  <13.616159, 18.186466, 21.519777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.869792, 17.672590, 21.137026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.561093, 17.503618, 21.327168>,  <13.375875, 17.402235, 21.441254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.561093, 17.503618, 21.327168>,  <13.869792, 17.672590, 21.137026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.561093, 17.503618, 21.327168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110951, -0.646590, -0.754726,
		0.626178, -0.635198, 0.452134,
		-0.771746, -0.422428, 0.475356,
		13.329570, 17.376890, 21.469774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.612941, 17.565018, 21.126480>,  <13.869792, 17.672590, 21.137026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.612941, 17.565018, 21.126480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.688253, 17.815851, 20.824137>,  <14.733440, 17.966351, 20.642731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.688253, 17.815851, 20.824137>,  <14.612941, 17.565018, 21.126480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.688253, 17.815851, 20.824137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023468, 0.766528, 0.641781,
		0.981835, -0.138573, 0.129606,
		0.188280, 0.627082, -0.755857,
		14.744738, 18.003975, 20.597380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.186320, 17.965858, 21.341711>,  <14.612941, 17.565018, 21.126480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.186320, 17.965858, 21.341711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.041950, 18.215225, 21.064270>,  <14.955328, 18.364845, 20.897804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.041950, 18.215225, 21.064270>,  <15.186320, 17.965858, 21.341711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.041950, 18.215225, 21.064270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068147, 0.759378, 0.647071,
		0.930102, 0.186277, -0.316563,
		-0.360925, 0.623415, -0.693604,
		14.933673, 18.402250, 20.856188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.308713, 18.616280, 21.586674>,  <15.186320, 17.965858, 21.341711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.308713, 18.616280, 21.586674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.139574, 18.754719, 21.251671>,  <15.038091, 18.837782, 21.050669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.139574, 18.754719, 21.251671>,  <15.308713, 18.616280, 21.586674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.139574, 18.754719, 21.251671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184452, 0.937719, 0.294383,
		0.887231, -0.030001, -0.460350,
		-0.422846, 0.346098, -0.837506,
		15.012720, 18.858549, 21.000420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.797997, 19.028118, 21.163591>,  <15.308713, 18.616280, 21.586674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.797997, 19.028118, 21.163591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.416375, 19.143448, 21.130978>,  <15.187402, 19.212645, 21.111410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.416375, 19.143448, 21.130978>,  <15.797997, 19.028118, 21.163591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.416375, 19.143448, 21.130978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233297, 0.885563, 0.401684,
		0.188017, 0.364207, -0.912142,
		-0.954055, 0.288323, -0.081533,
		15.130158, 19.229944, 21.106518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.836782, 19.681103, 20.949852>,  <15.797997, 19.028118, 21.163591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.836782, 19.681103, 20.949852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.464499, 19.672762, 21.095917>,  <15.241128, 19.667757, 21.183556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.464499, 19.672762, 21.095917>,  <15.836782, 19.681103, 20.949852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.464499, 19.672762, 21.095917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112095, 0.934071, 0.339038,
		-0.348158, 0.356479, -0.867011,
		-0.930710, -0.020851, 0.365164,
		15.185286, 19.666506, 21.205465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.666656, 20.412989, 20.793091>,  <15.836782, 19.681103, 20.949852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.666656, 20.412989, 20.793091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.432294, 20.242208, 21.068605>,  <15.291677, 20.139740, 21.233915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.432294, 20.242208, 21.068605>,  <15.666656, 20.412989, 20.793091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.432294, 20.242208, 21.068605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023435, 0.858528, 0.512231,
		-0.810042, 0.283976, -0.513021,
		-0.585904, -0.426951, 0.688788,
		15.256523, 20.114122, 21.275242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.229527, 20.996441, 21.005661>,  <15.666656, 20.412989, 20.793091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.229527, 20.996441, 21.005661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.162232, 20.730310, 21.296600>,  <15.121856, 20.570633, 21.471165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.162232, 20.730310, 21.296600>,  <15.229527, 20.996441, 21.005661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.162232, 20.730310, 21.296600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031999, 0.741164, 0.670561,
		-0.985227, 0.089539, -0.145981,
		-0.168237, -0.665326, 0.727349,
		15.111761, 20.530712, 21.514805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.885303, 21.347620, 21.503057>,  <15.229527, 20.996441, 21.005661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.885303, 21.347620, 21.503057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.990570, 21.038660, 21.734278>,  <15.053730, 20.853285, 21.873011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.990570, 21.038660, 21.734278>,  <14.885303, 21.347620, 21.503057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.990570, 21.038660, 21.734278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047989, 0.587950, 0.807473,
		-0.963556, -0.240239, 0.117661,
		0.263166, -0.772399, 0.578052,
		15.069520, 20.806940, 21.907694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.540716, 21.508490, 22.142687>,  <14.885303, 21.347620, 21.503057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.540716, 21.508490, 22.142687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.827850, 21.238741, 22.211893>,  <15.000131, 21.076891, 22.253416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.827850, 21.238741, 22.211893>,  <14.540716, 21.508490, 22.142687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.827850, 21.238741, 22.211893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187722, 0.426787, 0.884654,
		-0.670426, -0.602558, 0.432957,
		0.717836, -0.674371, 0.173016,
		15.043201, 21.036430, 22.263798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.418875, 21.186268, 22.844875>,  <14.540716, 21.508490, 22.142687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.418875, 21.186268, 22.844875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.807776, 21.147425, 22.759748>,  <15.041118, 21.124119, 22.708672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.807776, 21.147425, 22.759748>,  <14.418875, 21.186268, 22.844875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.807776, 21.147425, 22.759748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233277, 0.470180, 0.851183,
		0.017405, -0.877212, 0.479788,
		0.972254, -0.097109, -0.212817,
		15.099453, 21.118292, 22.695904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.779391, 20.953651, 23.454262>,  <14.418875, 21.186268, 22.844875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.779391, 20.953651, 23.454262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.056929, 21.128746, 23.225538>,  <15.223452, 21.233803, 23.088305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.056929, 21.128746, 23.225538>,  <14.779391, 20.953651, 23.454262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.056929, 21.128746, 23.225538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246264, 0.601937, 0.759622,
		0.676707, -0.667876, 0.309852,
		0.693845, 0.437737, -0.571809,
		15.265082, 21.260067, 23.053995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.438039, 20.932758, 23.800440>,  <14.779391, 20.953651, 23.454262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.438039, 20.932758, 23.800440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.550894, 21.207727, 23.532755>,  <15.618607, 21.372709, 23.372143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.550894, 21.207727, 23.532755>,  <15.438039, 20.932758, 23.800440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.550894, 21.207727, 23.532755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290168, 0.603737, 0.742499,
		0.914440, -0.403670, -0.029132,
		0.282137, 0.687424, -0.669214,
		15.635535, 21.413954, 23.331991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.087246, 21.257074, 24.093004>,  <15.438039, 20.932758, 23.800440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.087246, 21.257074, 24.093004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.948649, 21.495012, 23.802872>,  <15.865492, 21.637775, 23.628792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.948649, 21.495012, 23.802872>,  <16.087246, 21.257074, 24.093004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.948649, 21.495012, 23.802872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379987, 0.795952, 0.471244,
		0.857645, -0.112335, -0.501823,
		-0.346490, 0.594846, -0.725330,
		15.844703, 21.673466, 23.585274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.636444, 21.670849, 23.930275>,  <16.087246, 21.257074, 24.093004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.636444, 21.670849, 23.930275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.322210, 21.886663, 23.809111>,  <16.133669, 22.016153, 23.736412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.322210, 21.886663, 23.809111>,  <16.636444, 21.670849, 23.930275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.322210, 21.886663, 23.809111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349699, 0.791012, 0.502006,
		0.510457, 0.288442, -0.810084,
		-0.785586, 0.539538, -0.302909,
		16.086535, 22.048525, 23.718237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<11.609784, 23.945068, 22.604038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.725917, 23.658609, 22.857916>,  <11.795597, 23.486734, 23.010242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.725917, 23.658609, 22.857916>,  <11.609784, 23.945068, 22.604038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.725917, 23.658609, 22.857916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235107, -0.589550, -0.772758,
		0.927595, 0.373578, -0.002794,
		0.290333, -0.716149, 0.634694,
		11.813017, 23.443764, 23.048325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.246570, 23.716797, 22.390577>,  <11.609784, 23.945068, 22.604038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.246570, 23.716797, 22.390577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.101924, 23.420424, 22.616941>,  <12.015137, 23.242599, 22.752760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.101924, 23.420424, 22.616941>,  <12.246570, 23.716797, 22.390577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.101924, 23.420424, 22.616941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047300, -0.620783, -0.782555,
		0.931127, -0.256215, 0.259529,
		-0.361614, -0.740934, 0.565909,
		11.993440, 23.198143, 22.786715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.723891, 23.261019, 22.337673>,  <12.246570, 23.716797, 22.390577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.723891, 23.261019, 22.337673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.396291, 23.046707, 22.419825>,  <12.199731, 22.918119, 22.469114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.396291, 23.046707, 22.419825>,  <12.723891, 23.261019, 22.337673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.396291, 23.046707, 22.419825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124539, -0.515380, -0.847864,
		0.560115, -0.668823, 0.488822,
		-0.819000, -0.535779, 0.205378,
		12.150591, 22.885973, 22.481438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.837283, 22.632694, 22.186745>,  <12.723891, 23.261019, 22.337673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.837283, 22.632694, 22.186745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.442205, 22.575636, 22.212391>,  <12.205158, 22.541401, 22.227777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.442205, 22.575636, 22.212391>,  <12.837283, 22.632694, 22.186745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.442205, 22.575636, 22.212391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056644, -0.708409, -0.703525,
		0.145776, -0.691237, 0.707772,
		-0.987695, -0.142648, 0.064115,
		12.145897, 22.532841, 22.231625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.779712, 21.910944, 22.252480>,  <12.837283, 22.632694, 22.186745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.779712, 21.910944, 22.252480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.421804, 22.039749, 22.128740>,  <12.207060, 22.117033, 22.054497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.421804, 22.039749, 22.128740>,  <12.779712, 21.910944, 22.252480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.421804, 22.039749, 22.128740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011273, -0.676272, -0.736565,
		-0.446388, -0.662543, 0.601477,
		-0.894768, 0.322013, -0.309349,
		12.153374, 22.136353, 22.035936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.433524, 21.275173, 22.126524>,  <12.779712, 21.910944, 22.252480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.433524, 21.275173, 22.126524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.252866, 21.567692, 21.922087>,  <12.144471, 21.743204, 21.799423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.252866, 21.567692, 21.922087>,  <12.433524, 21.275173, 22.126524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.252866, 21.567692, 21.922087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039104, -0.588525, -0.807533,
		-0.891340, -0.344733, 0.294401,
		-0.451645, 0.731299, -0.511095,
		12.117373, 21.787081, 21.768759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.779365, 20.949654, 21.804104>,  <12.433524, 21.275173, 22.126524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.779365, 20.949654, 21.804104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.870846, 21.292200, 21.618917>,  <11.925735, 21.497728, 21.507807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.870846, 21.292200, 21.618917>,  <11.779365, 20.949654, 21.804104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.870846, 21.292200, 21.618917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146776, -0.439798, -0.886021,
		-0.962368, 0.270588, 0.025110,
		0.228703, 0.856364, -0.462964,
		11.939457, 21.549109, 21.480028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.193683, 21.124416, 21.405310>,  <11.779365, 20.949654, 21.804104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.193683, 21.124416, 21.405310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.509226, 21.312860, 21.247446>,  <11.698552, 21.425926, 21.152727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.509226, 21.312860, 21.247446>,  <11.193683, 21.124416, 21.405310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.509226, 21.312860, 21.247446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191823, -0.421343, -0.886383,
		-0.583871, 0.774936, -0.242010,
		0.788859, 0.471110, -0.394660,
		11.745884, 21.454193, 21.129047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.945632, 21.454538, 20.820662>,  <11.193683, 21.124416, 21.405310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.945632, 21.454538, 20.820662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.341254, 21.437710, 20.764097>,  <11.578628, 21.427612, 20.730158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.341254, 21.437710, 20.764097>,  <10.945632, 21.454538, 20.820662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.341254, 21.437710, 20.764097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147398, -0.240143, -0.959482,
		0.006406, 0.969825, -0.243716,
		0.989057, -0.042069, -0.141412,
		11.637971, 21.425089, 20.721674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.004154, 21.768518, 20.274921>,  <10.945632, 21.454538, 20.820662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.004154, 21.768518, 20.274921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.317329, 21.521769, 20.307106>,  <11.505235, 21.373718, 20.326418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.317329, 21.521769, 20.307106>,  <11.004154, 21.768518, 20.274921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.317329, 21.521769, 20.307106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095950, -0.247537, -0.964115,
		0.614654, 0.747123, -0.252996,
		0.782939, -0.616873, 0.080463,
		11.552211, 21.336706, 20.331245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.473925, 21.950041, 19.779041>,  <11.004154, 21.768518, 20.274921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.473925, 21.950041, 19.779041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.578726, 21.572830, 19.861073>,  <11.641606, 21.346504, 19.910292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.578726, 21.572830, 19.861073>,  <11.473925, 21.950041, 19.779041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.578726, 21.572830, 19.861073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038642, -0.202080, -0.978606,
		0.964293, 0.264323, -0.016505,
		0.262004, -0.943025, 0.205078,
		11.657327, 21.289923, 19.922596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.818626, 21.881660, 19.272652>,  <11.473925, 21.950041, 19.779041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.818626, 21.881660, 19.272652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.758485, 21.509115, 19.405289>,  <11.722400, 21.285587, 19.484871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.758485, 21.509115, 19.405289>,  <11.818626, 21.881660, 19.272652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.758485, 21.509115, 19.405289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003446, -0.334910, -0.942244,
		0.988626, -0.142812, 0.047146,
		-0.150354, -0.931365, 0.331593,
		11.713379, 21.229706, 19.504766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.311851, 21.668835, 18.853493>,  <11.818626, 21.881660, 19.272652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.311851, 21.668835, 18.853493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.081349, 21.364466, 18.972778>,  <11.943048, 21.181845, 19.044350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.081349, 21.364466, 18.972778>,  <12.311851, 21.668835, 18.853493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.081349, 21.364466, 18.972778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118407, -0.438770, -0.890764,
		0.808648, -0.477995, 0.342941,
		-0.576253, -0.760921, 0.298213,
		11.908473, 21.136189, 19.062243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.651016, 20.935595, 18.766117>,  <12.311851, 21.668835, 18.853493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.651016, 20.935595, 18.766117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.251637, 20.913418, 18.763918>,  <12.012011, 20.900112, 18.762598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.251637, 20.913418, 18.763918>,  <12.651016, 20.935595, 18.766117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.251637, 20.913418, 18.763918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024330, -0.345076, -0.938260,
		0.050122, -0.936936, 0.345889,
		-0.998447, -0.055443, -0.005500,
		11.952104, 20.896786, 18.762268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.281002, 21.219105, 19.156906>,  <12.651016, 20.935595, 18.766117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.281002, 21.219105, 19.156906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.516529, 21.383530, 18.878532>,  <13.657845, 21.482185, 18.711508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.516529, 21.383530, 18.878532>,  <13.281002, 21.219105, 19.156906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.516529, 21.383530, 18.878532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039246, 0.845463, 0.532589,
		0.807310, -0.340912, 0.481694,
		0.588821, 0.411060, -0.695930,
		13.693174, 21.506847, 18.669752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.847970, 21.560808, 19.522326>,  <13.281002, 21.219105, 19.156906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.847970, 21.560808, 19.522326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.824893, 21.730745, 19.160955>,  <13.811047, 21.832708, 18.944134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.824893, 21.730745, 19.160955>,  <13.847970, 21.560808, 19.522326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.824893, 21.730745, 19.160955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108361, 0.902253, 0.417371,
		0.992436, -0.073817, -0.098091,
		-0.057693, 0.424843, -0.903427,
		13.807585, 21.858198, 18.889927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.550694, 21.991123, 19.280464>,  <13.847970, 21.560808, 19.522326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.550694, 21.991123, 19.280464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.235836, 22.116125, 19.067768>,  <14.046922, 22.191126, 18.940151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.235836, 22.116125, 19.067768>,  <14.550694, 21.991123, 19.280464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.235836, 22.116125, 19.067768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062187, 0.817530, 0.572519,
		0.613627, 0.483722, -0.624079,
		-0.787143, 0.312503, -0.531740,
		13.999693, 22.209877, 18.908247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.748985, 22.645384, 19.146908>,  <14.550694, 21.991123, 19.280464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.748985, 22.645384, 19.146908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.354303, 22.654020, 19.082474>,  <14.117495, 22.659203, 19.043814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.354303, 22.654020, 19.082474>,  <14.748985, 22.645384, 19.146908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.354303, 22.654020, 19.082474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054971, 0.888386, 0.455795,
		0.152948, 0.458590, -0.875387,
		-0.986704, 0.021592, -0.161085,
		14.058292, 22.660498, 19.034147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.597563, 23.403259, 18.908016>,  <14.748985, 22.645384, 19.146908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.597563, 23.403259, 18.908016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.272693, 23.230217, 19.064590>,  <14.077770, 23.126390, 19.158535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.272693, 23.230217, 19.064590>,  <14.597563, 23.403259, 18.908016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.272693, 23.230217, 19.064590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260443, 0.869223, 0.420263,
		-0.522055, 0.239380, -0.818631,
		-0.812175, -0.432607, 0.391437,
		14.029040, 23.100435, 19.182022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.128043, 24.049475, 18.903194>,  <14.597563, 23.403259, 18.908016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.128043, 24.049475, 18.903194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.971058, 23.767992, 19.140099>,  <13.876867, 23.599102, 19.282242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.971058, 23.767992, 19.140099>,  <14.128043, 24.049475, 18.903194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.971058, 23.767992, 19.140099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276351, 0.704390, 0.653808,
		-0.877270, 0.092923, -0.470916,
		-0.392462, -0.703705, 0.592261,
		13.853319, 23.556881, 19.317778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.480832, 24.244646, 19.170710>,  <14.128043, 24.049475, 18.903194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.480832, 24.244646, 19.170710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.522710, 23.951159, 19.439245>,  <13.547836, 23.775066, 19.600367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.522710, 23.951159, 19.439245>,  <13.480832, 24.244646, 19.170710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.522710, 23.951159, 19.439245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408619, 0.583700, 0.701659,
		-0.906681, -0.347781, -0.238702,
		0.104693, -0.733719, 0.671339,
		13.554118, 23.731043, 19.640646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.892149, 24.293928, 19.666271>,  <13.480832, 24.244646, 19.170710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.892149, 24.293928, 19.666271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.129526, 24.053860, 19.880793>,  <13.271953, 23.909819, 20.009506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.129526, 24.053860, 19.880793>,  <12.892149, 24.293928, 19.666271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.129526, 24.053860, 19.880793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265681, 0.482903, 0.834397,
		-0.759763, -0.637652, 0.127121,
		0.593443, -0.600170, 0.536304,
		13.307559, 23.873808, 20.041683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.561170, 24.046326, 20.289137>,  <12.892149, 24.293928, 19.666271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.561170, 24.046326, 20.289137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.954700, 24.027969, 20.358398>,  <13.190818, 24.016956, 20.399956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.954700, 24.027969, 20.358398>,  <12.561170, 24.046326, 20.289137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.954700, 24.027969, 20.358398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106764, 0.625957, 0.772514,
		-0.143837, -0.778506, 0.610933,
		0.983825, -0.045891, 0.173152,
		13.249847, 24.014202, 20.410343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.683781, 23.891106, 21.000568>,  <12.561170, 24.046326, 20.289137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.683781, 23.891106, 21.000568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.009331, 24.084909, 20.872282>,  <13.204660, 24.201191, 20.795311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.009331, 24.084909, 20.872282>,  <12.683781, 23.891106, 21.000568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.009331, 24.084909, 20.872282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029042, 0.585200, 0.810369,
		0.580286, -0.650242, 0.490361,
		0.813895, 0.484486, -0.320699,
		13.253493, 24.230263, 20.776068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.187638, 23.808512, 21.545265>,  <12.683781, 23.891106, 21.000568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.187638, 23.808512, 21.545265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.319759, 24.123516, 21.337139>,  <13.399032, 24.312519, 21.212263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.319759, 24.123516, 21.337139>,  <13.187638, 23.808512, 21.545265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.319759, 24.123516, 21.337139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058270, 0.533190, 0.843987,
		0.942075, -0.309090, 0.130225,
		0.330302, 0.787510, -0.520315,
		13.418850, 24.359770, 21.181046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.790856, 24.053354, 21.889000>,  <13.187638, 23.808512, 21.545265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.790856, 24.053354, 21.889000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.641751, 24.352116, 21.668753>,  <13.552288, 24.531372, 21.536604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.641751, 24.352116, 21.668753>,  <13.790856, 24.053354, 21.889000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.641751, 24.352116, 21.668753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059114, 0.611296, 0.789191,
		0.926042, 0.261632, -0.272021,
		-0.372763, 0.746904, -0.550620,
		13.529922, 24.576187, 21.503567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.360092, 24.524651, 21.937771>,  <13.790856, 24.053354, 21.889000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.360092, 24.524651, 21.937771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.031086, 24.726395, 21.832630>,  <13.833682, 24.847441, 21.769547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.031086, 24.726395, 21.832630>,  <14.360092, 24.524651, 21.937771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.031086, 24.726395, 21.832630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125512, 0.611734, 0.781043,
		0.554720, 0.609429, -0.566464,
		-0.822516, 0.504358, -0.262851,
		13.784331, 24.877703, 21.753775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.575809, 25.237391, 21.846245>,  <14.360092, 24.524651, 21.937771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.575809, 25.237391, 21.846245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.184095, 25.230459, 21.926949>,  <13.949068, 25.226299, 21.975370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.184095, 25.230459, 21.926949>,  <14.575809, 25.237391, 21.846245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.184095, 25.230459, 21.926949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148032, 0.618584, 0.771647,
		-0.138177, 0.785527, -0.603203,
		-0.979282, -0.017330, 0.201757,
		13.890310, 25.225260, 21.987476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.872372, 25.859724, 21.629379>,  <14.575809, 25.237391, 21.846245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.872372, 25.859724, 21.629379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.236522, 25.920309, 21.783405>,  <15.455012, 25.956661, 21.875820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.236522, 25.920309, 21.783405>,  <14.872372, 25.859724, 21.629379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.236522, 25.920309, 21.783405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406783, -0.498044, -0.765820,
		0.075784, 0.853821, -0.515020,
		0.910376, 0.151465, 0.385063,
		15.509635, 25.965748, 21.898924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.293378, 26.062574, 21.032413>,  <14.872372, 25.859724, 21.629379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.293378, 26.062574, 21.032413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.560551, 25.939785, 21.303598>,  <15.720855, 25.866112, 21.466311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.560551, 25.939785, 21.303598>,  <15.293378, 26.062574, 21.032413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.560551, 25.939785, 21.303598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504562, -0.482857, -0.715728,
		0.547069, 0.820132, -0.167628,
		0.667932, -0.306973, 0.677964,
		15.760930, 25.847692, 21.506987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980347, 26.232624, 20.807920>,  <15.293378, 26.062574, 21.032413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.980347, 26.232624, 20.807920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.044510, 25.946169, 21.079630>,  <16.083008, 25.774296, 21.242657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.044510, 25.946169, 21.079630>,  <15.980347, 26.232624, 20.807920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.044510, 25.946169, 21.079630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604701, -0.472621, -0.641067,
		0.780132, 0.513592, 0.357236,
		0.160409, -0.716138, 0.679276,
		16.092632, 25.731327, 21.283413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.733603, 26.133646, 20.888128>,  <15.980347, 26.232624, 20.807920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.733603, 26.133646, 20.888128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.548058, 25.800531, 21.008989>,  <16.436729, 25.600662, 21.081507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.548058, 25.800531, 21.008989>,  <16.733603, 26.133646, 20.888128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.548058, 25.800531, 21.008989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567590, -0.541244, -0.620399,
		0.680200, -0.116280, 0.723745,
		-0.463863, -0.832787, 0.302155,
		16.408899, 25.550695, 21.099636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.204826, 25.599018, 21.211180>,  <16.733603, 26.133646, 20.888128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.204826, 25.599018, 21.211180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.882347, 25.385126, 21.109903>,  <16.688860, 25.256790, 21.049137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.882347, 25.385126, 21.109903>,  <17.204826, 25.599018, 21.211180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.882347, 25.385126, 21.109903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563068, -0.562055, -0.605845,
		0.181657, -0.630996, 0.754218,
		-0.806198, -0.534732, -0.253192,
		16.640488, 25.224707, 21.033945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.480415, 25.133806, 20.835995>,  <17.204826, 25.599018, 21.211180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.480415, 25.133806, 20.835995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.098976, 25.021250, 20.793148>,  <16.870113, 24.953716, 20.767439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.098976, 25.021250, 20.793148>,  <17.480415, 25.133806, 20.835995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.098976, 25.021250, 20.793148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287907, -0.748077, -0.597905,
		0.088112, -0.601000, 0.794377,
		-0.953596, -0.281389, -0.107118,
		16.812897, 24.936832, 20.761013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.462105, 24.364563, 20.846634>,  <17.480415, 25.133806, 20.835995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.462105, 24.364563, 20.846634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.127321, 24.492500, 20.669006>,  <16.926451, 24.569263, 20.562429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.127321, 24.492500, 20.669006>,  <17.462105, 24.364563, 20.846634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.127321, 24.492500, 20.669006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147333, -0.649791, -0.745698,
		-0.527059, -0.689545, 0.496725,
		-0.836960, 0.319843, -0.444071,
		16.876234, 24.588453, 20.535786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.041822, 23.694313, 20.761923>,  <17.462105, 24.364563, 20.846634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.041822, 23.694313, 20.761923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.939705, 23.975538, 20.496433>,  <16.878433, 24.144274, 20.337139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.939705, 23.975538, 20.496433>,  <17.041822, 23.694313, 20.761923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.939705, 23.975538, 20.496433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160961, -0.645986, -0.746186,
		-0.953371, -0.297331, 0.051751,
		-0.255295, 0.703062, -0.663723,
		16.863117, 24.186457, 20.297316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.481335, 23.328131, 20.375566>,  <17.041822, 23.694313, 20.761923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.481335, 23.328131, 20.375566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.635086, 23.613897, 20.141689>,  <16.727337, 23.785357, 20.001364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.635086, 23.613897, 20.141689>,  <16.481335, 23.328131, 20.375566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.635086, 23.613897, 20.141689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090737, -0.601045, -0.794047,
		-0.918706, 0.358268, -0.166205,
		0.384378, 0.714415, -0.584692,
		16.750399, 23.828222, 19.966282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.046261, 23.471598, 19.754492>,  <16.481335, 23.328131, 20.375566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.046261, 23.471598, 19.754492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.424101, 23.572670, 19.670702>,  <16.650805, 23.633314, 19.620428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.424101, 23.572670, 19.670702>,  <16.046261, 23.471598, 19.754492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.424101, 23.572670, 19.670702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020656, -0.591185, -0.806271,
		-0.327567, 0.765932, -0.553215,
		0.944602, 0.252681, -0.209474,
		16.707481, 23.648474, 19.607861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.055826, 23.310257, 19.126125>,  <16.046261, 23.471598, 19.754492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.055826, 23.310257, 19.126125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.442913, 23.354942, 19.216499>,  <16.675165, 23.381754, 19.270723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.442913, 23.354942, 19.216499>,  <16.055826, 23.310257, 19.126125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.442913, 23.354942, 19.216499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249303, -0.556165, -0.792798,
		0.037090, 0.823529, -0.566061,
		0.967715, 0.111716, 0.225936,
		16.733227, 23.388456, 19.284281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.354523, 23.347950, 18.561029>,  <16.055826, 23.310257, 19.126125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.354523, 23.347950, 18.561029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.673704, 23.239588, 18.776392>,  <16.865213, 23.174570, 18.905609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.673704, 23.239588, 18.776392>,  <16.354523, 23.347950, 18.561029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.673704, 23.239588, 18.776392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256146, -0.656186, -0.709795,
		0.545583, 0.704293, -0.454214,
		0.797953, -0.270906, 0.538406,
		16.913090, 23.158316, 18.937914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.864759, 23.324415, 18.063795>,  <16.354523, 23.347950, 18.561029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.864759, 23.324415, 18.063795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.960810, 23.105209, 18.384300>,  <17.018440, 22.973686, 18.576603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.960810, 23.105209, 18.384300>,  <16.864759, 23.324415, 18.063795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.960810, 23.105209, 18.384300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263371, -0.757675, -0.597130,
		0.934332, 0.354414, -0.037605,
		0.240124, -0.548014, 0.801262,
		17.032846, 22.940805, 18.624680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.563717, 23.031612, 17.876459>,  <16.864759, 23.324415, 18.063795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.563717, 23.031612, 17.876459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.405571, 22.806314, 18.166683>,  <17.310682, 22.671135, 18.340818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.405571, 22.806314, 18.166683>,  <17.563717, 23.031612, 17.876459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.405571, 22.806314, 18.166683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464321, -0.804118, -0.371214,
		0.792522, 0.190129, 0.579447,
		-0.395366, -0.563245, 0.725562,
		17.286961, 22.637341, 18.384352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<14.930162, 5.547701, 14.211926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.573944, 5.571932, 14.392264>,  <14.360213, 5.586471, 14.500467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.573944, 5.571932, 14.392264>,  <14.930162, 5.547701, 14.211926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.573944, 5.571932, 14.392264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237623, 0.783175, -0.574605,
		-0.387899, -0.618843, -0.683058,
		-0.890545, 0.060578, 0.450844,
		14.306781, 5.590106, 14.527517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.320534, 5.635664, 13.755444>,  <14.930162, 5.547701, 14.211926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.320534, 5.635664, 13.755444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.230558, 5.803228, 14.107334>,  <14.176574, 5.903767, 14.318468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.230558, 5.803228, 14.107334>,  <14.320534, 5.635664, 13.755444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.230558, 5.803228, 14.107334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450542, 0.755830, -0.475113,
		-0.863953, -0.503224, 0.018723,
		-0.224937, 0.418910, 0.879726,
		14.163077, 5.928901, 14.371252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.668705, 5.795806, 13.669987>,  <14.320534, 5.635664, 13.755444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.668705, 5.795806, 13.669987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.829203, 6.030247, 13.951550>,  <13.925502, 6.170911, 14.120488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.829203, 6.030247, 13.951550>,  <13.668705, 5.795806, 13.669987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.829203, 6.030247, 13.951550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165255, 0.802194, -0.573738,
		-0.900940, 0.113885, 0.418733,
		0.401245, 0.586102, 0.703909,
		13.949576, 6.206077, 14.162724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.159406, 6.323836, 13.970369>,  <13.668705, 5.795806, 13.669987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.159406, 6.323836, 13.970369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.533965, 6.462867, 13.989750>,  <13.758700, 6.546286, 14.001378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.533965, 6.462867, 13.989750>,  <13.159406, 6.323836, 13.970369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.533965, 6.462867, 13.989750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297940, 0.860325, -0.413610,
		-0.185446, 0.372868, 0.909164,
		0.936398, 0.347578, 0.048452,
		13.814884, 6.567141, 14.004286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.054357, 6.986362, 14.162167>,  <13.159406, 6.323836, 13.970369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.054357, 6.986362, 14.162167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.422711, 6.936784, 14.014327>,  <13.643724, 6.907037, 13.925623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.422711, 6.936784, 14.014327>,  <13.054357, 6.986362, 14.162167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.422711, 6.936784, 14.014327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191458, 0.682078, -0.705771,
		0.339573, 0.720699, 0.604387,
		0.920888, -0.123946, -0.369599,
		13.698977, 6.899600, 13.903447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.347096, 7.627689, 14.372784>,  <13.054357, 6.986362, 14.162167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.347096, 7.627689, 14.372784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.503147, 7.462732, 14.043486>,  <13.596778, 7.363758, 13.845906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.503147, 7.462732, 14.043486>,  <13.347096, 7.627689, 14.372784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.503147, 7.462732, 14.043486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002878, 0.894634, -0.446790,
		0.920757, 0.171935, 0.350207,
		0.390127, -0.412393, -0.823245,
		13.620185, 7.339015, 13.796512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.682134, 7.900167, 14.120075>,  <13.347096, 7.627689, 14.372784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.682134, 7.900167, 14.120075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.856036, 8.189110, 14.335178>,  <12.960378, 8.362476, 14.464240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.856036, 8.189110, 14.335178>,  <12.682134, 7.900167, 14.120075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.856036, 8.189110, 14.335178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868711, 0.493779, 0.039038,
		-0.237334, -0.484128, 0.842195,
		0.434757, 0.722359, 0.537758,
		12.986464, 8.405817, 14.496506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.529642, 7.973339, 14.892465>,  <12.682134, 7.900167, 14.120075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.529642, 7.973339, 14.892465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.596893, 8.310003, 14.687198>,  <12.637244, 8.512002, 14.564037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.596893, 8.310003, 14.687198>,  <12.529642, 7.973339, 14.892465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.596893, 8.310003, 14.687198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979569, 0.200925, 0.008611,
		0.110355, 0.501234, 0.858246,
		0.168127, 0.841661, -0.513166,
		12.647331, 8.562502, 14.533248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.191842, 8.509036, 15.247941>,  <12.529642, 7.973339, 14.892465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.191842, 8.509036, 15.247941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.213964, 8.670392, 14.882599>,  <12.227238, 8.767205, 14.663393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.213964, 8.670392, 14.882599>,  <12.191842, 8.509036, 15.247941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.213964, 8.670392, 14.882599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909680, 0.397456, 0.120456,
		0.411610, 0.824200, 0.388937,
		0.055306, 0.403389, -0.913356,
		12.230556, 8.791409, 14.608592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.891148, 9.238647, 15.291746>,  <12.191842, 8.509036, 15.247941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.891148, 9.238647, 15.291746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.902346, 9.145940, 14.902799>,  <11.909064, 9.090315, 14.669431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.902346, 9.145940, 14.902799>,  <11.891148, 9.238647, 15.291746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.902346, 9.145940, 14.902799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829153, 0.537934, -0.152092,
		0.558320, 0.810499, -0.177113,
		0.027995, -0.231770, -0.972368,
		11.910744, 9.076408, 14.611089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.075429, 9.840213, 14.814523>,  <11.891148, 9.238647, 15.291746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.075429, 9.840213, 14.814523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.876957, 9.588876, 14.574860>,  <11.757874, 9.438073, 14.431062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.876957, 9.588876, 14.574860>,  <12.075429, 9.840213, 14.814523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.876957, 9.588876, 14.574860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617383, 0.740557, -0.265356,
		0.610445, 0.238245, -0.755378,
		-0.496181, -0.628343, -0.599158,
		11.728103, 9.400373, 14.395112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.959603, 10.140638, 14.113276>,  <12.075429, 9.840213, 14.814523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.959603, 10.140638, 14.113276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.695316, 9.843340, 14.155301>,  <11.536744, 9.664961, 14.180515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.695316, 9.843340, 14.155301>,  <11.959603, 10.140638, 14.113276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.695316, 9.843340, 14.155301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719505, 0.587193, -0.370832,
		0.213928, -0.320608, -0.922738,
		-0.660717, -0.743246, 0.105062,
		11.497101, 9.620366, 14.186819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.686156, 10.071634, 13.435620>,  <11.959603, 10.140638, 14.113276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.686156, 10.071634, 13.435620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.417951, 9.909273, 13.684025>,  <11.257028, 9.811856, 13.833067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.417951, 9.909273, 13.684025>,  <11.686156, 10.071634, 13.435620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.417951, 9.909273, 13.684025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720295, 0.556690, -0.413849,
		-0.177728, -0.724802, -0.665638,
		-0.670513, -0.405903, 0.621011,
		11.216797, 9.787502, 13.870328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.089880, 10.149200, 13.097084>,  <11.686156, 10.071634, 13.435620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.089880, 10.149200, 13.097084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.975787, 10.103857, 13.477777>,  <10.907331, 10.076651, 13.706192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.975787, 10.103857, 13.477777>,  <11.089880, 10.149200, 13.097084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.975787, 10.103857, 13.477777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751977, 0.642157, -0.148879,
		-0.594284, -0.758145, -0.268407,
		-0.285231, -0.113359, 0.951731,
		10.890218, 10.069849, 13.763296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.365757, 10.014052, 12.938492>,  <11.089880, 10.149200, 13.097084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.365757, 10.014052, 12.938492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.405383, 10.098304, 13.327505>,  <10.429159, 10.148855, 13.560913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.405383, 10.098304, 13.327505>,  <10.365757, 10.014052, 12.938492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.405383, 10.098304, 13.327505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832242, 0.553302, -0.035059,
		-0.545489, -0.805911, 0.230108,
		0.099065, 0.210629, 0.972533,
		10.435102, 10.161492, 13.619266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.702416, 9.948276, 13.322399>,  <10.365757, 10.014052, 12.938492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.702416, 9.948276, 13.322399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.882596, 10.199239, 13.576471>,  <9.990704, 10.349817, 13.728914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.882596, 10.199239, 13.576471>,  <9.702416, 9.948276, 13.322399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.882596, 10.199239, 13.576471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712018, 0.681671, -0.168390,
		-0.538633, -0.376408, 0.753785,
		0.450450, 0.627409, 0.635180,
		10.017731, 10.387462, 13.767025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.192663, 10.235333, 13.850454>,  <9.702416, 9.948276, 13.322399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.192663, 10.235333, 13.850454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.496244, 10.495745, 13.845525>,  <9.678393, 10.651992, 13.842567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.496244, 10.495745, 13.845525>,  <9.192663, 10.235333, 13.850454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.496244, 10.495745, 13.845525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651139, 0.758895, -0.009808,
		0.002967, 0.015468, 0.999876,
		0.758953, 0.651029, -0.012323,
		9.723930, 10.691053, 13.841827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.055922, 10.806343, 14.333223>,  <9.192663, 10.235333, 13.850454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.055922, 10.806343, 14.333223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.306906, 10.967107, 14.066462>,  <9.457497, 11.063565, 13.906404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.306906, 10.967107, 14.066462>,  <9.055922, 10.806343, 14.333223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.306906, 10.967107, 14.066462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570424, 0.820257, -0.042362,
		0.530008, 0.406999, 0.743937,
		0.627461, 0.401908, -0.666905,
		9.495144, 11.087679, 13.866390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.286566, 11.497521, 14.619841>,  <9.055922, 10.806343, 14.333223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.286566, 11.497521, 14.619841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.367888, 11.517760, 14.228718>,  <9.416682, 11.529903, 13.994044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.367888, 11.517760, 14.228718>,  <9.286566, 11.497521, 14.619841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.367888, 11.517760, 14.228718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482706, 0.874045, -0.055136,
		0.851858, 0.483203, 0.202123,
		0.203307, 0.050598, -0.977807,
		9.428881, 11.532940, 13.935376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.608149, 12.193840, 14.564389>,  <9.286566, 11.497521, 14.619841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.608149, 12.193840, 14.564389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.474962, 12.062570, 14.210794>,  <9.395050, 11.983808, 13.998637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.474962, 12.062570, 14.210794>,  <9.608149, 12.193840, 14.564389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.474962, 12.062570, 14.210794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532817, 0.838950, -0.110762,
		0.777971, 0.434124, -0.454200,
		-0.332967, -0.328175, -0.883987,
		9.375072, 11.964117, 13.945599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.366743, 12.865063, 14.204970>,  <9.608149, 12.193840, 14.564389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.366743, 12.865063, 14.204970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.230106, 12.573317, 13.967875>,  <9.148125, 12.398269, 13.825617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.230106, 12.573317, 13.967875>,  <9.366743, 12.865063, 14.204970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.230106, 12.573317, 13.967875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830349, 0.529643, -0.173203,
		0.440269, 0.433016, -0.786550,
		-0.341591, -0.729366, -0.592739,
		9.127629, 12.354506, 13.790052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.161179, 13.149920, 13.481175>,  <9.366743, 12.865063, 14.204970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.161179, 13.149920, 13.481175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.970404, 12.800629, 13.521182>,  <8.855939, 12.591054, 13.545186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.970404, 12.800629, 13.521182>,  <9.161179, 13.149920, 13.481175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.970404, 12.800629, 13.521182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862587, 0.443177, -0.244003,
		0.168745, -0.202647, -0.964603,
		-0.476937, -0.873229, 0.100017,
		8.827323, 12.538660, 13.551188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.727102, 13.053594, 12.887449>,  <9.161179, 13.149920, 13.481175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.727102, 13.053594, 12.887449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.567039, 12.853816, 13.194807>,  <8.471002, 12.733950, 13.379222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.567039, 12.853816, 13.194807>,  <8.727102, 13.053594, 12.887449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.567039, 12.853816, 13.194807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890064, 0.411532, -0.196031,
		-0.218313, -0.762364, -0.609214,
		-0.400157, -0.499443, 0.768395,
		8.446992, 12.703983, 13.425325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.955717, 12.905990, 12.771486>,  <8.727102, 13.053594, 12.887449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.955717, 12.905990, 12.771486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.950738, 12.853724, 13.168026>,  <7.947751, 12.822366, 13.405950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.950738, 12.853724, 13.168026>,  <7.955717, 12.905990, 12.771486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.950738, 12.853724, 13.168026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928436, 0.369640, 0.037063,
		-0.371285, -0.919942, -0.125912,
		-0.012446, -0.130663, 0.991349,
		7.947004, 12.814526, 13.465430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.282326, 12.690461, 12.884568>,  <7.955717, 12.905990, 12.771486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.282326, 12.690461, 12.884568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.412766, 12.835831, 13.233643>,  <7.491031, 12.923052, 13.443088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.412766, 12.835831, 13.233643>,  <7.282326, 12.690461, 12.884568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.412766, 12.835831, 13.233643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884769, 0.442452, 0.146360,
		-0.332931, -0.819854, 0.465828,
		0.326100, 0.363423, 0.872687,
		7.510596, 12.944858, 13.495449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.620996, 12.901009, 13.250285>,  <7.282326, 12.690461, 12.884568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.620996, 12.901009, 13.250285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.925851, 13.066159, 13.449756>,  <7.108764, 13.165250, 13.569438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.925851, 13.066159, 13.449756>,  <6.620996, 12.901009, 13.250285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.925851, 13.066159, 13.449756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636433, 0.619058, 0.460130,
		-0.118734, -0.668057, 0.734576,
		0.762138, 0.412875, 0.498677,
		7.154492, 13.190022, 13.599359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.527310, 12.752742, 14.051182>,  <6.620996, 12.901009, 13.250285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.527310, 12.752742, 14.051182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.725847, 13.092044, 13.977309>,  <6.844969, 13.295626, 13.932985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.725847, 13.092044, 13.977309>,  <6.527310, 12.752742, 14.051182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.725847, 13.092044, 13.977309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727952, 0.522581, 0.443843,
		0.473002, -0.085861, 0.876868,
		0.496343, 0.848256, -0.184679,
		6.874750, 13.346520, 13.921905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.531303, 13.186063, 14.719250>,  <6.527310, 12.752742, 14.051182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.531303, 13.186063, 14.719250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.637931, 13.456129, 14.444123>,  <6.701908, 13.618169, 14.279047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.637931, 13.456129, 14.444123>,  <6.531303, 13.186063, 14.719250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.637931, 13.456129, 14.444123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608674, 0.671253, 0.423008,
		0.747300, 0.305896, 0.589890,
		0.266569, 0.675165, -0.687818,
		6.717902, 13.658679, 14.237778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.682011, 13.822977, 15.106209>,  <6.531303, 13.186063, 14.719250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.682011, 13.822977, 15.106209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.597857, 13.959270, 14.739681>,  <6.547365, 14.041045, 14.519765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.597857, 13.959270, 14.739681>,  <6.682011, 13.822977, 15.106209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.597857, 13.959270, 14.739681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617585, 0.680265, 0.394750,
		0.757844, 0.648955, 0.067313,
		-0.210384, 0.340730, -0.916320,
		6.534742, 14.061489, 14.464786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.690840, 14.561791, 15.139564>,  <6.682011, 13.822977, 15.106209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.690840, 14.561791, 15.139564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.471770, 14.452443, 14.823255>,  <6.340328, 14.386834, 14.633470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.471770, 14.452443, 14.823255>,  <6.690840, 14.561791, 15.139564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.471770, 14.452443, 14.823255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550100, 0.829776, 0.094137,
		0.630429, 0.486560, -0.604829,
		-0.547675, -0.273370, -0.790772,
		6.307467, 14.370432, 14.586023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.564570, 15.195141, 14.723252>,  <6.690840, 14.561791, 15.139564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.564570, 15.195141, 14.723252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.261360, 14.934587, 14.709997>,  <6.079433, 14.778255, 14.702044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.261360, 14.934587, 14.709997>,  <6.564570, 15.195141, 14.723252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.261360, 14.934587, 14.709997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642857, 0.737592, 0.206624,
		-0.110149, 0.177929, -0.977859,
		-0.758026, -0.651383, -0.033138,
		6.033952, 14.739173, 14.700056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.270584, 15.263227, 15.108590>,  <6.564570, 15.195141, 14.723252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.270584, 15.263227, 15.108590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.542816, 15.443476, 15.339676>,  <7.706155, 15.551624, 15.478328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.542816, 15.443476, 15.339676>,  <7.270584, 15.263227, 15.108590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.542816, 15.443476, 15.339676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617409, -0.777270, -0.121067,
		0.394485, 0.439082, -0.807210,
		0.680579, 0.450620, 0.577715,
		7.746989, 15.578662, 15.512990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.009414, 15.254024, 14.840056>,  <7.270584, 15.263227, 15.108590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.009414, 15.254024, 14.840056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.057198, 15.303707, 15.234072>,  <8.085868, 15.333517, 15.470481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.057198, 15.303707, 15.234072>,  <8.009414, 15.254024, 14.840056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.057198, 15.303707, 15.234072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677663, -0.735297, 0.010535,
		0.725605, 0.666266, -0.172009,
		0.119459, 0.124208, 0.985039,
		8.093035, 15.340970, 15.529583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.804338, 15.243442, 14.990129>,  <8.009414, 15.254024, 14.840056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.804338, 15.243442, 14.990129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.619275, 15.125086, 15.324410>,  <8.508237, 15.054072, 15.524979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.619275, 15.125086, 15.324410>,  <8.804338, 15.243442, 14.990129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.619275, 15.125086, 15.324410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657624, -0.746722, 0.099686,
		0.594540, 0.595698, 0.540061,
		-0.462658, -0.295890, 0.835701,
		8.480477, 15.036319, 15.575121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.388769, 15.073634, 15.479488>,  <8.804338, 15.243442, 14.990129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.388769, 15.073634, 15.479488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.056818, 14.910805, 15.632114>,  <8.857647, 14.813107, 15.723690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.056818, 14.910805, 15.632114>,  <9.388769, 15.073634, 15.479488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.056818, 14.910805, 15.632114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505806, -0.837556, 0.206546,
		0.235503, 0.364406, 0.900970,
		-0.829879, -0.407074, 0.381565,
		8.807855, 14.788683, 15.746584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.591333, 14.752381, 16.146576>,  <9.388769, 15.073634, 15.479488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.591333, 14.752381, 16.146576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.227074, 14.591467, 16.108877>,  <9.008517, 14.494919, 16.086258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.227074, 14.591467, 16.108877>,  <9.591333, 14.752381, 16.146576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.227074, 14.591467, 16.108877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367849, -0.893248, 0.258449,
		-0.188157, 0.200688, 0.961416,
		-0.910650, -0.402285, -0.094248,
		8.953878, 14.470781, 16.080603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.356492, 14.435994, 16.816519>,  <9.591333, 14.752381, 16.146576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.356492, 14.435994, 16.816519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.189835, 14.238156, 16.511419>,  <9.089840, 14.119453, 16.328360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.189835, 14.238156, 16.511419>,  <9.356492, 14.435994, 16.816519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.189835, 14.238156, 16.511419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268324, -0.868568, 0.416644,
		-0.868568, -0.031072, 0.494595,
		-0.416644, -0.494595, -0.762748,
		9.064841, 14.089778, 16.282595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.984439, 13.936167, 17.145603>,  <9.356492, 14.435994, 16.816519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.984439, 13.936167, 17.145603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.082359, 13.813911, 16.777548>,  <9.141111, 13.740559, 16.556715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.082359, 13.813911, 16.777548>,  <8.984439, 13.936167, 17.145603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.082359, 13.813911, 16.777548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408984, -0.827902, 0.383810,
		-0.879093, -0.470280, -0.077669,
		0.244800, -0.305639, -0.920140,
		9.155800, 13.722219, 16.501507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.801963, 13.201886, 17.064243>,  <8.984439, 13.936167, 17.145603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.801963, 13.201886, 17.064243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.047732, 13.255993, 16.753326>,  <9.195194, 13.288457, 16.566776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.047732, 13.255993, 16.753326>,  <8.801963, 13.201886, 17.064243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.047732, 13.255993, 16.753326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419257, -0.890560, 0.176429,
		-0.668362, -0.434288, -0.603892,
		0.614423, 0.135267, -0.777295,
		9.232059, 13.296573, 16.520138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.996805, 12.513927, 16.905386>,  <8.801963, 13.201886, 17.064243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.996805, 12.513927, 16.905386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.255370, 12.714942, 16.675741>,  <9.410509, 12.835551, 16.537954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.255370, 12.714942, 16.675741>,  <8.996805, 12.513927, 16.905386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.255370, 12.714942, 16.675741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615004, -0.788521, 0.002234,
		-0.451579, -0.354526, -0.818772,
		0.646411, 0.502539, -0.574114,
		9.449293, 12.865704, 16.503508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.238272, 12.158867, 16.232754>,  <8.996805, 12.513927, 16.905386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.238272, 12.158867, 16.232754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.563977, 12.380393, 16.302341>,  <9.759400, 12.513309, 16.344093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.563977, 12.380393, 16.302341>,  <9.238272, 12.158867, 16.232754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.563977, 12.380393, 16.302341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572273, -0.816096, -0.080562,
		0.097358, 0.165156, -0.981451,
		0.814263, 0.553815, 0.173968,
		9.808256, 12.546537, 16.354532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.633445, 11.905990, 15.720044>,  <9.238272, 12.158867, 16.232754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.633445, 11.905990, 15.720044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.874960, 12.100892, 15.972400>,  <10.019869, 12.217834, 16.123814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.874960, 12.100892, 15.972400>,  <9.633445, 11.905990, 15.720044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.874960, 12.100892, 15.972400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724231, -0.665984, -0.178759,
		0.333061, 0.564842, -0.754999,
		0.603788, 0.487256, 0.630889,
		10.056096, 12.247069, 16.161667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.326835, 11.970379, 15.372331>,  <9.633445, 11.905990, 15.720044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.326835, 11.970379, 15.372331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.411930, 12.017339, 15.760343>,  <10.462987, 12.045515, 15.993150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.411930, 12.017339, 15.760343>,  <10.326835, 11.970379, 15.372331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.411930, 12.017339, 15.760343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786508, -0.609641, -0.098706,
		0.579783, 0.783935, -0.222029,
		0.212737, 0.117400, 0.970031,
		10.475751, 12.052559, 16.051352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.979944, 12.064114, 15.339188>,  <10.326835, 11.970379, 15.372331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.979944, 12.064114, 15.339188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.895348, 11.956060, 15.714911>,  <10.844589, 11.891229, 15.940345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.895348, 11.956060, 15.714911>,  <10.979944, 12.064114, 15.339188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.895348, 11.956060, 15.714911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894671, -0.440422, 0.074782,
		0.393491, 0.856188, 0.334825,
		-0.211492, -0.270132, 0.939308,
		10.831900, 11.875021, 15.996703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.563396, 12.311873, 15.695836>,  <10.979944, 12.064114, 15.339188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.563396, 12.311873, 15.695836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.418235, 12.022038, 15.930193>,  <11.331139, 11.848136, 16.070807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.418235, 12.022038, 15.930193>,  <11.563396, 12.311873, 15.695836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.418235, 12.022038, 15.930193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909230, -0.412980, 0.052433,
		0.203970, 0.551739, 0.808690,
		-0.362902, -0.724591, 0.585893,
		11.309364, 11.804660, 16.105961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.989642, 12.326320, 16.192499>,  <11.563396, 12.311873, 15.695836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.989642, 12.326320, 16.192499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.832861, 11.958347, 16.188551>,  <11.738792, 11.737564, 16.186182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.832861, 11.958347, 16.188551>,  <11.989642, 12.326320, 16.192499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.832861, 11.958347, 16.188551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918463, -0.391900, 0.053305,
		-0.052905, 0.011830, 0.998530,
		-0.391954, -0.919932, -0.009868,
		11.715275, 11.682367, 16.185591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.553853, 11.855255, 16.510788>,  <11.989642, 12.326320, 16.192499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.553853, 11.855255, 16.510788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.300982, 11.606097, 16.326462>,  <12.149259, 11.456602, 16.215866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.300982, 11.606097, 16.326462>,  <12.553853, 11.855255, 16.510788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.300982, 11.606097, 16.326462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755571, -0.627346, -0.188547,
		-0.171647, -0.467375, 0.867236,
		-0.632179, -0.622894, -0.460817,
		12.111328, 11.419229, 16.188217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.768440, 11.198482, 16.744202>,  <12.553853, 11.855255, 16.510788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.768440, 11.198482, 16.744202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.574511, 11.124933, 16.402176>,  <12.458153, 11.080804, 16.196960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.574511, 11.124933, 16.402176>,  <12.768440, 11.198482, 16.744202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.574511, 11.124933, 16.402176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702472, -0.664285, -0.255457,
		-0.521036, -0.724511, 0.451226,
		-0.484824, -0.183872, -0.855065,
		12.429064, 11.069772, 16.145657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.840230, 10.536020, 16.704426>,  <12.768440, 11.198482, 16.744202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.840230, 10.536020, 16.704426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.750089, 10.644998, 16.330261>,  <12.696004, 10.710384, 16.105762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.750089, 10.644998, 16.330261>,  <12.840230, 10.536020, 16.704426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.750089, 10.644998, 16.330261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659371, -0.664168, -0.352294,
		-0.717249, -0.696172, -0.029969,
		-0.225353, 0.272443, -0.935409,
		12.682483, 10.726730, 16.049639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.946658, 9.955090, 16.455181>,  <12.840230, 10.536020, 16.704426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.946658, 9.955090, 16.455181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.909883, 10.168732, 16.119020>,  <12.887818, 10.296917, 15.917324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.909883, 10.168732, 16.119020>,  <12.946658, 9.955090, 16.455181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.909883, 10.168732, 16.119020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581143, -0.656556, -0.480840,
		-0.808591, -0.532602, -0.250031,
		-0.091937, 0.534106, -0.840403,
		12.882302, 10.328963, 15.866899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.620573, 9.541396, 15.985311>,  <12.946658, 9.955090, 16.455181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.620573, 9.541396, 15.985311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.853492, 9.811107, 15.803638>,  <12.993243, 9.972933, 15.694633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.853492, 9.811107, 15.803638>,  <12.620573, 9.541396, 15.985311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.853492, 9.811107, 15.803638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576111, -0.736418, -0.354662,
		-0.573608, -0.055140, -0.817272,
		0.582298, 0.674276, -0.454182,
		13.028181, 10.013390, 15.667383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.650462, 9.163551, 15.337612>,  <12.620573, 9.541396, 15.985311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.650462, 9.163551, 15.337612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.931967, 9.447720, 15.339421>,  <13.100870, 9.618220, 15.340507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.931967, 9.447720, 15.339421>,  <12.650462, 9.163551, 15.337612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.931967, 9.447720, 15.339421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688136, -0.680076, -0.252914,
		-0.176599, 0.181104, -0.967478,
		0.703763, 0.710421, 0.004524,
		13.143096, 9.660846, 15.340778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.912651, 22.353874, 23.880957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.518154, 22.406921, 23.920441>,  <16.281456, 22.438749, 23.944130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.518154, 22.406921, 23.920441>,  <16.912651, 22.353874, 23.880957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.518154, 22.406921, 23.920441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164536, 0.729345, 0.664066,
		0.016075, 0.671170, -0.741129,
		-0.986240, 0.132617, 0.098708,
		16.222282, 22.446707, 23.950052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806953, 23.085266, 23.876123>,  <16.912651, 22.353874, 23.880957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.806953, 23.085266, 23.876123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.491232, 22.904915, 24.042837>,  <16.301800, 22.796703, 24.142866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.491232, 22.904915, 24.042837>,  <16.806953, 23.085266, 23.876123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.491232, 22.904915, 24.042837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045879, 0.633592, 0.772305,
		-0.612289, 0.628704, -0.479410,
		-0.789302, -0.450879, 0.416786,
		16.254442, 22.769651, 24.167873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.418383, 23.608442, 24.057747>,  <16.806953, 23.085266, 23.876123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.418383, 23.608442, 24.057747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.290491, 23.301785, 24.280466>,  <16.213757, 23.117790, 24.414099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.290491, 23.301785, 24.280466>,  <16.418383, 23.608442, 24.057747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.290491, 23.301785, 24.280466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030595, 0.578986, 0.814763,
		-0.947015, 0.277539, -0.161664,
		-0.319730, -0.766647, 0.556800,
		16.194572, 23.071791, 24.447506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.817277, 23.865059, 24.446253>,  <16.418383, 23.608442, 24.057747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.817277, 23.865059, 24.446253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.956693, 23.551056, 24.651108>,  <16.040342, 23.362654, 24.774021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.956693, 23.551056, 24.651108>,  <15.817277, 23.865059, 24.446253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.956693, 23.551056, 24.651108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005024, 0.547957, 0.836491,
		-0.937280, -0.288978, 0.194929,
		0.348540, -0.785006, 0.512138,
		16.061255, 23.315554, 24.804749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.312668, 23.853516, 24.956421>,  <15.817277, 23.865059, 24.446253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.312668, 23.853516, 24.956421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.622602, 23.643650, 25.097477>,  <15.808562, 23.517731, 25.182112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.622602, 23.643650, 25.097477>,  <15.312668, 23.853516, 24.956421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.622602, 23.643650, 25.097477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127480, 0.416693, 0.900064,
		-0.619177, -0.742356, 0.255984,
		0.774835, -0.524666, 0.352642,
		15.855052, 23.486250, 25.203270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.180225, 23.662928, 25.693502>,  <15.312668, 23.853516, 24.956421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.180225, 23.662928, 25.693502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.576421, 23.628777, 25.650339>,  <15.814137, 23.608286, 25.624441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.576421, 23.628777, 25.650339>,  <15.180225, 23.662928, 25.693502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.576421, 23.628777, 25.650339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132428, 0.378467, 0.916092,
		-0.037373, -0.921669, 0.386173,
		0.990488, -0.085377, -0.107910,
		15.873568, 23.603163, 25.617966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.440672, 23.257532, 26.308374>,  <15.180225, 23.662928, 25.693502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.440672, 23.257532, 26.308374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.733234, 23.480238, 26.150866>,  <15.908772, 23.613861, 26.056360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.733234, 23.480238, 26.150866>,  <15.440672, 23.257532, 26.308374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.733234, 23.480238, 26.150866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122032, 0.461247, 0.878840,
		0.670935, -0.690841, 0.269416,
		0.731407, 0.556767, -0.393771,
		15.952657, 23.647268, 26.032734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.885169, 23.219885, 26.844143>,  <15.440672, 23.257532, 26.308374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.885169, 23.219885, 26.844143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.016851, 23.524149, 26.620352>,  <16.095861, 23.706707, 26.486076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.016851, 23.524149, 26.620352>,  <15.885169, 23.219885, 26.844143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.016851, 23.524149, 26.620352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151641, 0.542228, 0.826434,
		0.932002, -0.356907, 0.063157,
		0.329206, 0.760661, -0.559480,
		16.115614, 23.752348, 26.452507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.446730, 23.488312, 27.166035>,  <15.885169, 23.219885, 26.844143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.446730, 23.488312, 27.166035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.332706, 23.785309, 26.923565>,  <16.264294, 23.963507, 26.778084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.332706, 23.785309, 26.923565>,  <16.446730, 23.488312, 27.166035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.332706, 23.785309, 26.923565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190949, 0.663725, 0.723192,
		0.939299, 0.090402, -0.330977,
		-0.285056, 0.742493, -0.606174,
		16.247190, 24.008057, 26.741713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.792913, 24.016483, 27.325146>,  <16.446730, 23.488312, 27.166035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.792913, 24.016483, 27.325146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.530123, 24.224607, 27.106913>,  <16.372448, 24.349482, 26.975973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.530123, 24.224607, 27.106913>,  <16.792913, 24.016483, 27.325146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.530123, 24.224607, 27.106913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024615, 0.708481, 0.705301,
		0.753509, 0.476796, -0.452648,
		-0.656977, 0.520308, -0.545583,
		16.333029, 24.380699, 26.943237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.038593, 24.717609, 27.236748>,  <16.792913, 24.016483, 27.325146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.038593, 24.717609, 27.236748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.641870, 24.742100, 27.191906>,  <16.403837, 24.756794, 27.165001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.641870, 24.742100, 27.191906>,  <17.038593, 24.717609, 27.236748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.641870, 24.742100, 27.191906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042312, 0.670628, 0.740586,
		0.120523, 0.739263, -0.662544,
		-0.991808, 0.061224, -0.112106,
		16.344328, 24.760468, 27.158274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.954308, 25.461273, 27.223482>,  <17.038593, 24.717609, 27.236748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.954308, 25.461273, 27.223482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.608089, 25.279280, 27.307213>,  <16.400358, 25.170084, 27.357450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.608089, 25.279280, 27.307213>,  <16.954308, 25.461273, 27.223482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.608089, 25.279280, 27.307213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187969, 0.682527, 0.706275,
		-0.464215, 0.571967, -0.676283,
		-0.865547, -0.454983, 0.209327,
		16.348425, 25.142784, 27.370010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.941336, 25.085598, 27.867668>,  <16.954308, 25.461273, 27.223482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.941336, 25.085598, 27.867668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.963366, 24.996508, 28.256998>,  <16.976583, 24.943052, 28.490595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.963366, 24.996508, 28.256998>,  <16.941336, 25.085598, 27.867668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.963366, 24.996508, 28.256998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875049, 0.480252, 0.060383,
		-0.480890, 0.848381, 0.221347,
		0.055075, -0.222728, 0.973324,
		16.979887, 24.929689, 28.548996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.946497, 25.730478, 28.286749>,  <16.941336, 25.085598, 27.867668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.946497, 25.730478, 28.286749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.118223, 25.442905, 28.505407>,  <17.221260, 25.270361, 28.636602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.118223, 25.442905, 28.505407>,  <16.946497, 25.730478, 28.286749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.118223, 25.442905, 28.505407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771165, 0.606847, 0.192462,
		-0.470097, 0.338926, 0.814947,
		0.429317, -0.718934, 0.546645,
		17.247019, 25.227224, 28.669401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.939945, 26.186249, 27.681719>,  <16.946497, 25.730478, 28.286749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.939945, 26.186249, 27.681719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.787169, 26.555496, 27.663958>,  <16.695501, 26.777044, 27.653301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.787169, 26.555496, 27.663958>,  <16.939945, 26.186249, 27.681719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.787169, 26.555496, 27.663958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527972, -0.257381, -0.809321,
		-0.758528, -0.285670, 0.585685,
		-0.381943, 0.923118, -0.044405,
		16.672586, 26.832432, 27.650637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.379349, 26.104797, 27.509771>,  <16.939945, 26.186249, 27.681719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.379349, 26.104797, 27.509771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.420975, 26.486261, 27.396845>,  <16.445951, 26.715139, 27.329090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.420975, 26.486261, 27.396845>,  <16.379349, 26.104797, 27.509771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.420975, 26.486261, 27.396845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329632, -0.234740, -0.914462,
		-0.938356, 0.188225, 0.289929,
		0.104067, 0.953661, -0.282314,
		16.452194, 26.772360, 27.312151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.732837, 26.316149, 27.157427>,  <16.379349, 26.104797, 27.509771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.732837, 26.316149, 27.157427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.015900, 26.569323, 27.031813>,  <16.185738, 26.721226, 26.956444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.015900, 26.569323, 27.031813>,  <15.732837, 26.316149, 27.157427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.015900, 26.569323, 27.031813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316779, -0.113070, -0.941736,
		-0.631564, 0.765905, 0.120485,
		0.707657, 0.632933, -0.314034,
		16.228197, 26.759203, 26.937603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.389142, 26.810194, 26.791336>,  <15.732837, 26.316149, 27.157427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.389142, 26.810194, 26.791336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.760156, 26.844797, 26.645899>,  <15.982763, 26.865559, 26.558638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.760156, 26.844797, 26.645899>,  <15.389142, 26.810194, 26.791336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.760156, 26.844797, 26.645899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370338, 0.081736, -0.925294,
		-0.050325, 0.992893, 0.107849,
		0.927533, 0.086505, -0.363592,
		16.038416, 26.870749, 26.536821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.440142, 27.380798, 26.298914>,  <15.389142, 26.810194, 26.791336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.440142, 27.380798, 26.298914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.728437, 27.132275, 26.175943>,  <15.901415, 26.983160, 26.102161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.728437, 27.132275, 26.175943>,  <15.440142, 27.380798, 26.298914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.728437, 27.132275, 26.175943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345775, 0.062153, -0.936257,
		0.600810, 0.781098, -0.170037,
		0.720740, -0.621307, -0.307426,
		15.944659, 26.945883, 26.083715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.686821, 27.543697, 25.623449>,  <15.440142, 27.380798, 26.298914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.686821, 27.543697, 25.623449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.853561, 27.181250, 25.652241>,  <15.953606, 26.963781, 25.669516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.853561, 27.181250, 25.652241>,  <15.686821, 27.543697, 25.623449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.853561, 27.181250, 25.652241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023947, -0.090107, -0.995644,
		0.908659, 0.413312, -0.059260,
		0.416851, -0.906121, 0.071979,
		15.978617, 26.909414, 25.673834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.938563, 27.484526, 24.960867>,  <15.686821, 27.543697, 25.623449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.938563, 27.484526, 24.960867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.981748, 27.105093, 25.079889>,  <16.007658, 26.877434, 25.151302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.981748, 27.105093, 25.079889>,  <15.938563, 27.484526, 24.960867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.981748, 27.105093, 25.079889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007551, -0.300077, -0.953885,
		0.994126, 0.100735, -0.039560,
		0.107961, -0.948581, 0.297554,
		16.014135, 26.820518, 25.169155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.477169, 27.343626, 24.620245>,  <15.938563, 27.484526, 24.960867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.477169, 27.343626, 24.620245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.301529, 26.991648, 24.692787>,  <16.196146, 26.780460, 24.736313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.301529, 26.991648, 24.692787>,  <16.477169, 27.343626, 24.620245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.301529, 26.991648, 24.692787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083167, -0.240798, -0.967005,
		0.894581, -0.409528, 0.178917,
		-0.439098, -0.879945, 0.181354,
		16.169800, 26.727665, 24.747194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.912807, 26.906673, 24.256474>,  <16.477169, 27.343626, 24.620245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.912807, 26.906673, 24.256474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.561136, 26.726101, 24.317469>,  <16.350134, 26.617758, 24.354067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.561136, 26.726101, 24.317469>,  <16.912807, 26.906673, 24.256474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.561136, 26.726101, 24.317469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032189, -0.375562, -0.926238,
		0.475403, -0.809421, 0.344718,
		-0.879179, -0.451433, 0.152489,
		16.297382, 26.590672, 24.363214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.970715, 26.268946, 23.911257>,  <16.912807, 26.906673, 24.256474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.970715, 26.268946, 23.911257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.580721, 26.298494, 23.995115>,  <16.346725, 26.316223, 24.045431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.580721, 26.298494, 23.995115>,  <16.970715, 26.268946, 23.911257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.580721, 26.298494, 23.995115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220700, -0.434009, -0.873457,
		0.026468, -0.897875, 0.439454,
		-0.974982, 0.073869, 0.209649,
		16.288227, 26.320656, 24.058010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.724922, 25.610325, 23.717646>,  <16.970715, 26.268946, 23.911257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.724922, 25.610325, 23.717646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.425327, 25.875002, 23.703899>,  <16.245571, 26.033808, 23.695652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.425327, 25.875002, 23.703899>,  <16.724922, 25.610325, 23.717646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.425327, 25.875002, 23.703899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354755, -0.444279, -0.822658,
		-0.559617, -0.603967, 0.567498,
		-0.748985, 0.661696, -0.034365,
		16.200632, 26.073511, 23.693590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.069529, 25.310255, 23.518049>,  <16.724922, 25.610325, 23.717646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.069529, 25.310255, 23.518049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.995092, 25.696791, 23.446991>,  <15.950431, 25.928713, 23.404356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.995092, 25.696791, 23.446991>,  <16.069529, 25.310255, 23.518049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.995092, 25.696791, 23.446991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277394, -0.225121, -0.934009,
		-0.942562, -0.124532, 0.309949,
		-0.186090, 0.966340, -0.177647,
		15.939265, 25.986692, 23.393698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.427268, 25.398779, 23.278580>,  <16.069529, 25.310255, 23.518049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.427268, 25.398779, 23.278580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.607045, 25.732286, 23.150311>,  <15.714911, 25.932390, 23.073349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.607045, 25.732286, 23.150311>,  <15.427268, 25.398779, 23.278580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.607045, 25.732286, 23.150311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162183, -0.276846, -0.947129,
		-0.878463, 0.477688, 0.010797,
		0.449443, 0.833769, -0.320672,
		15.741879, 25.982418, 23.054110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.052194, 25.487411, 22.713318>,  <15.427268, 25.398779, 23.278580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.052194, 25.487411, 22.713318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.359095, 25.726646, 22.620695>,  <15.543235, 25.870188, 22.565123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.359095, 25.726646, 22.620695>,  <15.052194, 25.487411, 22.713318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.359095, 25.726646, 22.620695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092656, -0.253889, -0.962785,
		-0.634617, 0.760154, -0.139380,
		0.767252, 0.598086, -0.231555,
		15.589271, 25.906073, 22.551229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.487195, 25.878593, 22.318995>,  <15.052194, 25.487411, 22.713318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.487195, 25.878593, 22.318995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.144013, 25.678076, 22.363930>,  <13.938105, 25.557766, 22.390892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.144013, 25.678076, 22.363930>,  <14.487195, 25.878593, 22.318995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.144013, 25.678076, 22.363930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119243, 0.407025, 0.905600,
		-0.499697, 0.763567, -0.408985,
		-0.857953, -0.501294, 0.112339,
		13.886627, 25.527687, 22.397631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.026051, 26.361536, 22.573853>,  <14.487195, 25.878593, 22.318995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.026051, 26.361536, 22.573853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.851976, 26.012100, 22.660988>,  <13.747532, 25.802439, 22.713270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.851976, 26.012100, 22.660988>,  <14.026051, 26.361536, 22.573853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.851976, 26.012100, 22.660988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374067, 0.395517, 0.838833,
		-0.818955, 0.283561, -0.498904,
		-0.435185, -0.873590, 0.217840,
		13.721421, 25.750023, 22.726339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.396408, 26.559990, 22.889097>,  <14.026051, 26.361536, 22.573853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.396408, 26.559990, 22.889097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.458278, 26.181587, 23.003044>,  <13.495399, 25.954546, 23.071413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.458278, 26.181587, 23.003044>,  <13.396408, 26.559990, 22.889097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.458278, 26.181587, 23.003044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197886, 0.252829, 0.947058,
		-0.967945, -0.202857, -0.148095,
		0.154675, -0.946006, 0.284867,
		13.504681, 25.897785, 23.088505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.768829, 26.360340, 23.129900>,  <13.396408, 26.559990, 22.889097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.768829, 26.360340, 23.129900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.048139, 26.137676, 23.309919>,  <13.215724, 26.004078, 23.417931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.048139, 26.137676, 23.309919>,  <12.768829, 26.360340, 23.129900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.048139, 26.137676, 23.309919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259278, 0.389340, 0.883849,
		-0.667224, -0.733857, 0.127536,
		0.698274, -0.556658, 0.450050,
		13.257621, 25.970678, 23.444935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.485286, 26.230799, 23.786688>,  <12.768829, 26.360340, 23.129900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.485286, 26.230799, 23.786688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.843631, 26.068735, 23.859655>,  <13.058638, 25.971497, 23.903437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.843631, 26.068735, 23.859655>,  <12.485286, 26.230799, 23.786688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.843631, 26.068735, 23.859655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007309, 0.397056, 0.917765,
		-0.444273, -0.823524, 0.352746,
		0.895862, -0.405160, 0.182421,
		13.112390, 25.947187, 23.914381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.404771, 25.664898, 24.379425>,  <12.485286, 26.230799, 23.786688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.404771, 25.664898, 24.379425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.763414, 25.840553, 24.356623>,  <12.978601, 25.945948, 24.342941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.763414, 25.840553, 24.356623>,  <12.404771, 25.664898, 24.379425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.763414, 25.840553, 24.356623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118337, 0.361663, 0.924768,
		0.426720, -0.822409, 0.376237,
		0.896608, 0.439140, -0.057008,
		13.032397, 25.972296, 24.339520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.790690, 25.432936, 24.996565>,  <12.404771, 25.664898, 24.379425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.790690, 25.432936, 24.996565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.010394, 25.746279, 24.880177>,  <13.142217, 25.934284, 24.810343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.010394, 25.746279, 24.880177>,  <12.790690, 25.432936, 24.996565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.010394, 25.746279, 24.880177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265608, 0.166487, 0.949597,
		0.792317, -0.598859, -0.116621,
		0.549259, 0.783358, -0.290972,
		13.175172, 25.981285, 24.792885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.814744, 24.957920, 25.510874>,  <12.790690, 25.432936, 24.996565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.814744, 24.957920, 25.510874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.419827, 25.011930, 25.477360>,  <12.182876, 25.044336, 25.457253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.419827, 25.011930, 25.477360>,  <12.814744, 24.957920, 25.510874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.419827, 25.011930, 25.477360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015491, -0.606519, -0.794918,
		-0.158149, -0.783520, 0.600904,
		-0.987294, 0.135024, -0.083783,
		12.123638, 25.052437, 25.452225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.509907, 24.279478, 25.468418>,  <12.814744, 24.957920, 25.510874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.509907, 24.279478, 25.468418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.227247, 24.515118, 25.311647>,  <12.057652, 24.656502, 25.217585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.227247, 24.515118, 25.311647>,  <12.509907, 24.279478, 25.468418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.227247, 24.515118, 25.311647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208952, -0.702951, -0.679852,
		-0.676006, -0.398523, 0.619835,
		-0.706650, 0.589099, -0.391927,
		12.015253, 24.691849, 25.194069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.826825, 23.974106, 25.457453>,  <12.509907, 24.279478, 25.468418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.826825, 23.974106, 25.457453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.819446, 24.257236, 25.174995>,  <11.815018, 24.427114, 25.005522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.819446, 24.257236, 25.174995>,  <11.826825, 23.974106, 25.457453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.819446, 24.257236, 25.174995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193039, -0.695497, -0.692112,
		-0.981018, 0.123544, 0.149470,
		-0.018450, 0.707828, -0.706144,
		11.813910, 24.469585, 24.963152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.273900, 23.703392, 25.036568>,  <11.826825, 23.974106, 25.457453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.273900, 23.703392, 25.036568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.484096, 23.966171, 24.820316>,  <11.610213, 24.123838, 24.690565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.484096, 23.966171, 24.820316>,  <11.273900, 23.703392, 25.036568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.484096, 23.966171, 24.820316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215524, -0.511922, -0.831556,
		-0.823049, 0.553493, -0.127421,
		0.525490, 0.656949, -0.540628,
		11.641743, 24.163256, 24.658129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.938461, 23.757139, 24.460762>,  <11.273900, 23.703392, 25.036568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.938461, 23.757139, 24.460762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.286039, 23.882647, 24.307667>,  <11.494586, 23.957951, 24.215811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.286039, 23.882647, 24.307667>,  <10.938461, 23.757139, 24.460762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.286039, 23.882647, 24.307667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141123, -0.584149, -0.799283,
		-0.474363, 0.748545, -0.463314,
		0.868944, 0.313767, -0.382736,
		11.546722, 23.976776, 24.192846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.794901, 23.864193, 23.833830>,  <10.938461, 23.757139, 24.460762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.794901, 23.864193, 23.833830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.193863, 23.837914, 23.822044>,  <11.433240, 23.822145, 23.814974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.193863, 23.837914, 23.822044>,  <10.794901, 23.864193, 23.833830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.193863, 23.837914, 23.822044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056040, -0.451430, -0.890545,
		0.045207, 0.889885, -0.453940,
		0.997405, -0.065697, -0.029462,
		11.493084, 23.818205, 23.813206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.103409, 24.039608, 23.154894>,  <10.794901, 23.864193, 23.833830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.103409, 24.039608, 23.154894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.400524, 23.825445, 23.315695>,  <11.578794, 23.696947, 23.412174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.400524, 23.825445, 23.315695>,  <11.103409, 24.039608, 23.154894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.400524, 23.825445, 23.315695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105261, -0.499573, -0.859853,
		0.661201, 0.681003, -0.314719,
		0.742788, -0.535408, 0.402001,
		11.623361, 23.664824, 23.436295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<17.425877, 18.857803, 29.061295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.238216, 18.613743, 28.805916>,  <17.125620, 18.467306, 28.652689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.238216, 18.613743, 28.805916>,  <17.425877, 18.857803, 29.061295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.238216, 18.613743, 28.805916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800049, 0.012457, -0.599805,
		0.373925, -0.792187, 0.482307,
		-0.469150, -0.610151, -0.638447,
		17.097471, 18.430698, 28.614382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.243105, 18.240417, 29.115667>,  <17.425877, 18.857803, 29.061295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.243105, 18.240417, 29.115667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.586559, 18.215958, 29.319239>,  <17.792631, 18.201283, 29.441381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.586559, 18.215958, 29.319239>,  <17.243105, 18.240417, 29.115667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.586559, 18.215958, 29.319239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411546, -0.509648, -0.755571,
		0.305578, 0.858207, -0.412435,
		0.858634, -0.061150, 0.508929,
		17.844149, 18.197613, 29.471918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.732622, 18.059008, 29.532278>,  <17.243105, 18.240417, 29.115667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.732622, 18.059008, 29.532278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.343018, 18.078985, 29.443911>,  <16.109255, 18.090971, 29.390890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.343018, 18.078985, 29.443911>,  <16.732622, 18.059008, 29.532278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.343018, 18.078985, 29.443911> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225952, 0.281596, -0.932550,
		0.015633, -0.958232, -0.285563,
		-0.974013, 0.049945, -0.220917,
		16.050814, 18.093969, 29.377636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.583401, 17.643818, 28.971121>,  <16.732622, 18.059008, 29.532278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.583401, 17.643818, 28.971121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.286489, 17.911722, 28.979523>,  <16.108343, 18.072466, 28.984564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.286489, 17.911722, 28.979523>,  <16.583401, 17.643818, 28.971121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.286489, 17.911722, 28.979523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154969, 0.202077, -0.967031,
		-0.651926, -0.714551, -0.253790,
		-0.742278, 0.669762, 0.021006,
		16.063807, 18.112652, 28.985825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.127457, 17.664839, 28.271666>,  <16.583401, 17.643818, 28.971121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.127457, 17.664839, 28.271666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.070013, 18.024015, 28.438078>,  <16.035547, 18.239521, 28.537926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.070013, 18.024015, 28.438078>,  <16.127457, 17.664839, 28.271666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.070013, 18.024015, 28.438078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063175, 0.427847, -0.901641,
		-0.987616, -0.103199, -0.118169,
		-0.143607, 0.897940, 0.416029,
		16.026932, 18.293398, 28.562887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.480875, 17.935097, 28.100275>,  <16.127457, 17.664839, 28.271666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.480875, 17.935097, 28.100275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.763116, 18.215307, 28.142967>,  <15.932461, 18.383432, 28.168583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.763116, 18.215307, 28.142967>,  <15.480875, 17.935097, 28.100275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.763116, 18.215307, 28.142967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167452, 0.311194, -0.935477,
		-0.688539, 0.642202, 0.336883,
		0.705602, 0.700524, 0.106731,
		15.974796, 18.425465, 28.174986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.264598, 18.688677, 28.008688>,  <15.480875, 17.935097, 28.100275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.264598, 18.688677, 28.008688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.646137, 18.647823, 27.895733>,  <15.875061, 18.623310, 27.827959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.646137, 18.647823, 27.895733>,  <15.264598, 18.688677, 28.008688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.646137, 18.647823, 27.895733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216449, 0.417978, -0.882295,
		0.208145, 0.902698, 0.376580,
		0.953848, -0.102135, -0.282388,
		15.932292, 18.617184, 27.811016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.012308, 19.395493, 28.094080>,  <15.264598, 18.688677, 28.008688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.012308, 19.395493, 28.094080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.900908, 19.760811, 27.975199>,  <14.834067, 19.980001, 27.903870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.900908, 19.760811, 27.975199>,  <15.012308, 19.395493, 28.094080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.900908, 19.760811, 27.975199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582488, -0.406655, -0.703804,
		-0.763639, -0.022894, 0.645237,
		-0.278501, 0.913295, -0.297202,
		14.817357, 20.034800, 27.886038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.237207, 19.425137, 28.097843>,  <15.012308, 19.395493, 28.094080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.237207, 19.425137, 28.097843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.323833, 19.724623, 27.847237>,  <14.375808, 19.904314, 27.696873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.323833, 19.724623, 27.847237>,  <14.237207, 19.425137, 28.097843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.323833, 19.724623, 27.847237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634415, -0.379846, -0.673227,
		-0.742037, 0.543267, 0.392737,
		0.216562, 0.748717, -0.626517,
		14.388802, 19.949238, 27.659281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.568798, 19.579464, 27.714577>,  <14.237207, 19.425137, 28.097843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.568798, 19.579464, 27.714577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.846393, 19.741159, 27.476259>,  <14.012949, 19.838177, 27.333269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.846393, 19.741159, 27.476259>,  <13.568798, 19.579464, 27.714577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.846393, 19.741159, 27.476259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522165, -0.287149, -0.803050,
		-0.495707, 0.868409, 0.011803,
		0.693987, 0.404241, -0.595795,
		14.054588, 19.862432, 27.297522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.185055, 19.941500, 27.207685>,  <13.568798, 19.579464, 27.714577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.185055, 19.941500, 27.207685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.544557, 19.900957, 27.037056>,  <13.760258, 19.876631, 26.934679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.544557, 19.900957, 27.037056>,  <13.185055, 19.941500, 27.207685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.544557, 19.900957, 27.037056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425638, -0.435169, -0.793385,
		-0.105216, 0.894626, -0.434252,
		0.898756, -0.101357, -0.426574,
		13.814183, 19.870550, 26.909084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.022349, 20.046179, 26.607029>,  <13.185055, 19.941500, 27.207685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.022349, 20.046179, 26.607029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.390059, 19.895161, 26.562498>,  <13.610685, 19.804550, 26.535780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.390059, 19.895161, 26.562498>,  <13.022349, 20.046179, 26.607029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.390059, 19.895161, 26.562498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304046, -0.501470, -0.809990,
		0.249979, 0.778452, -0.575780,
		0.919275, -0.377544, -0.111329,
		13.665842, 19.781897, 26.529100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.452543, 19.674927, 26.408340>,  <13.022349, 20.046179, 26.607029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.452543, 19.674927, 26.408340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.085443, 19.534683, 26.482967>,  <11.865182, 19.450537, 26.527744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.085443, 19.534683, 26.482967>,  <12.452543, 19.674927, 26.408340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.085443, 19.534683, 26.482967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238396, 0.862035, 0.447284,
		-0.317649, 0.366018, -0.874717,
		-0.917751, -0.350608, 0.186567,
		11.810117, 19.429501, 26.538937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.010534, 20.217476, 26.229807>,  <12.452543, 19.674927, 26.408340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.010534, 20.217476, 26.229807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.805023, 19.992857, 26.489252>,  <11.681716, 19.858086, 26.644918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.805023, 19.992857, 26.489252>,  <12.010534, 20.217476, 26.229807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.805023, 19.992857, 26.489252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380174, 0.826766, 0.414640,
		-0.769090, -0.033552, -0.638259,
		-0.513778, -0.561545, 0.648613,
		11.650889, 19.824394, 26.683836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.372163, 20.575077, 26.284599>,  <12.010534, 20.217476, 26.229807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.372163, 20.575077, 26.284599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.372181, 20.325766, 26.597399>,  <11.372191, 20.176178, 26.785078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.372181, 20.325766, 26.597399>,  <11.372163, 20.575077, 26.284599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.372181, 20.325766, 26.597399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282727, 0.750085, 0.597861,
		-0.959200, -0.221119, -0.176185,
		0.000045, -0.623280, 0.781999,
		11.372194, 20.138783, 26.831999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.807223, 20.681633, 26.723045>,  <11.372163, 20.575077, 26.284599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.807223, 20.681633, 26.723045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.049065, 20.498905, 26.984049>,  <11.194170, 20.389269, 27.140652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.049065, 20.498905, 26.984049>,  <10.807223, 20.681633, 26.723045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.049065, 20.498905, 26.984049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313669, 0.616453, 0.722217,
		-0.732165, -0.641328, 0.229420,
		0.604604, -0.456820, 0.652510,
		11.230446, 20.361858, 27.179802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.543968, 20.892675, 27.354074>,  <10.807223, 20.681633, 26.723045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.543968, 20.892675, 27.354074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.869215, 20.728281, 27.518965>,  <11.064363, 20.629644, 27.617899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.869215, 20.728281, 27.518965>,  <10.543968, 20.892675, 27.354074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.869215, 20.728281, 27.518965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002353, 0.705845, 0.708362,
		-0.582097, -0.576951, 0.572967,
		0.813116, -0.410987, 0.412228,
		11.113150, 20.604984, 27.642633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.471704, 20.912739, 28.070082>,  <10.543968, 20.892675, 27.354074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.471704, 20.912739, 28.070082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.866330, 20.881136, 28.012886>,  <11.103106, 20.862175, 27.978569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.866330, 20.881136, 28.012886>,  <10.471704, 20.912739, 28.070082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.866330, 20.881136, 28.012886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156625, 0.706252, 0.690418,
		0.046440, -0.703538, 0.709138,
		0.986566, -0.079006, -0.142990,
		11.162300, 20.857433, 27.969990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.720388, 21.063320, 28.732977>,  <10.471704, 20.912739, 28.070082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.720388, 21.063320, 28.732977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.051311, 21.076782, 28.508678>,  <11.249864, 21.084860, 28.374100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.051311, 21.076782, 28.508678>,  <10.720388, 21.063320, 28.732977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.051311, 21.076782, 28.508678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291863, 0.827149, 0.480251,
		0.479983, -0.560974, 0.674481,
		0.827305, 0.033657, -0.560744,
		11.299501, 21.086880, 28.340454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.196105, 21.111853, 29.180574>,  <10.720388, 21.063320, 28.732977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.196105, 21.111853, 29.180574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.307924, 21.256899, 28.824965>,  <11.375016, 21.343925, 28.611599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.307924, 21.256899, 28.824965>,  <11.196105, 21.111853, 29.180574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.307924, 21.256899, 28.824965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242148, 0.869381, 0.430745,
		0.929094, -0.335690, 0.155229,
		0.279550, 0.362614, -0.889023,
		11.391788, 21.365683, 28.558258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.941128, 21.452177, 29.245291>,  <11.196105, 21.111853, 29.180574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.941128, 21.452177, 29.245291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.740360, 21.624905, 28.945528>,  <11.619900, 21.728540, 28.765671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.740360, 21.624905, 28.945528>,  <11.941128, 21.452177, 29.245291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.740360, 21.624905, 28.945528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181553, 0.899749, 0.396851,
		0.845646, 0.063129, -0.529998,
		-0.501918, 0.431818, -0.749407,
		11.589785, 21.754450, 28.720705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.384377, 22.023615, 29.045208>,  <11.941128, 21.452177, 29.245291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.384377, 22.023615, 29.045208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.016569, 22.104155, 28.910189>,  <11.795884, 22.152479, 28.829176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.016569, 22.104155, 28.910189>,  <12.384377, 22.023615, 29.045208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.016569, 22.104155, 28.910189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077394, 0.934757, 0.346755,
		0.385346, 0.292724, -0.875112,
		-0.919521, 0.201349, -0.337550,
		11.740713, 22.164560, 28.808924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.494942, 22.569832, 28.590227>,  <12.384377, 22.023615, 29.045208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.494942, 22.569832, 28.590227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.107358, 22.596680, 28.685402>,  <11.874807, 22.612787, 28.742506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.107358, 22.596680, 28.685402>,  <12.494942, 22.569832, 28.590227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.107358, 22.596680, 28.685402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104256, 0.983611, 0.147106,
		-0.224163, 0.167346, -0.960076,
		-0.968959, 0.067118, 0.237936,
		11.816670, 22.616816, 28.756783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.355180, 23.201385, 28.340258>,  <12.494942, 22.569832, 28.590227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.355180, 23.201385, 28.340258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.062448, 23.130920, 28.603586>,  <11.886808, 23.088640, 28.761583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.062448, 23.130920, 28.603586>,  <12.355180, 23.201385, 28.340258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.062448, 23.130920, 28.603586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076009, 0.938883, 0.335739,
		-0.677234, 0.295743, -0.673714,
		-0.731831, -0.176165, 0.658323,
		11.842898, 23.078072, 28.801083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.938783, 23.839291, 28.233685>,  <12.355180, 23.201385, 28.340258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.938783, 23.839291, 28.233685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.773691, 23.679333, 28.561035>,  <11.674636, 23.583359, 28.757446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.773691, 23.679333, 28.561035>,  <11.938783, 23.839291, 28.233685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.773691, 23.679333, 28.561035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236414, 0.914711, 0.327738,
		-0.879638, -0.058208, -0.472069,
		-0.412730, -0.399894, 0.818376,
		11.649872, 23.559364, 28.806547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.314761, 24.153402, 28.344280>,  <11.938783, 23.839291, 28.233685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.314761, 24.153402, 28.344280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.375669, 23.987345, 28.703049>,  <11.412214, 23.887711, 28.918310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.375669, 23.987345, 28.703049>,  <11.314761, 24.153402, 28.344280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.375669, 23.987345, 28.703049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361070, 0.821409, 0.441492,
		-0.920023, -0.391078, -0.024820,
		0.152271, -0.415144, 0.896922,
		11.421350, 23.862801, 28.972126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.334969, 24.823954, 27.823925>,  <11.314761, 24.153402, 28.344280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.334969, 24.823954, 27.823925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.399524, 25.182014, 27.990133>,  <11.438257, 25.396851, 28.089859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.399524, 25.182014, 27.990133>,  <11.334969, 24.823954, 27.823925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.399524, 25.182014, 27.990133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225539, 0.376443, -0.898567,
		-0.960774, 0.238735, -0.141138,
		0.161389, 0.895152, 0.415520,
		11.447941, 25.450560, 28.114790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.763446, 25.396414, 27.727743>,  <11.334969, 24.823954, 27.823925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.763446, 25.396414, 27.727743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.152196, 25.489542, 27.741894>,  <11.385447, 25.545420, 27.750385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.152196, 25.489542, 27.741894>,  <10.763446, 25.396414, 27.727743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.152196, 25.489542, 27.741894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012219, 0.199881, -0.979744,
		-0.235178, 0.951757, 0.197105,
		0.971875, 0.232823, 0.035378,
		11.443759, 25.559389, 27.752506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.836935, 26.028185, 27.387653>,  <10.763446, 25.396414, 27.727743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.836935, 26.028185, 27.387653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.189043, 25.838758, 27.375902>,  <11.400308, 25.725103, 27.368851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.189043, 25.838758, 27.375902>,  <10.836935, 26.028185, 27.387653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.189043, 25.838758, 27.375902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105260, 0.255286, -0.961119,
		0.462651, 0.842951, 0.274568,
		0.880269, -0.473564, -0.029379,
		11.453124, 25.696690, 27.367088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.137911, 26.428965, 26.855040>,  <10.836935, 26.028185, 27.387653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.137911, 26.428965, 26.855040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.353773, 26.096498, 26.908606>,  <11.483291, 25.897018, 26.940744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.353773, 26.096498, 26.908606>,  <11.137911, 26.428965, 26.855040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.353773, 26.096498, 26.908606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135148, -0.071474, -0.988244,
		0.830967, 0.551411, 0.073759,
		0.539657, -0.831167, 0.133915,
		11.515670, 25.847149, 26.948780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.762832, 26.532391, 26.384481>,  <11.137911, 26.428965, 26.855040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.762832, 26.532391, 26.384481> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.716134, 26.141939, 26.457745>,  <11.688116, 25.907669, 26.501703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.716134, 26.141939, 26.457745>,  <11.762832, 26.532391, 26.384481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.716134, 26.141939, 26.457745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067219, -0.191763, -0.979137,
		0.990885, -0.101995, 0.088002,
		-0.116743, -0.976127, 0.183159,
		11.681111, 25.849102, 26.512691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.319221, 26.198864, 25.976173>,  <11.762832, 26.532391, 26.384481>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.319221, 26.198864, 25.976173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.091773, 25.876747, 26.043320>,  <11.955304, 25.683477, 26.083607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.091773, 25.876747, 26.043320>,  <12.319221, 26.198864, 25.976173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.091773, 25.876747, 26.043320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215722, -0.342902, -0.914266,
		0.793810, -0.483659, 0.368700,
		-0.568621, -0.805290, 0.167864,
		11.921186, 25.635160, 26.093679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.657783, 25.652910, 25.687889>,  <12.319221, 26.198864, 25.976173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.657783, 25.652910, 25.687889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.283752, 25.514336, 25.717865>,  <12.059334, 25.431190, 25.735851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.283752, 25.514336, 25.717865>,  <12.657783, 25.652910, 25.687889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.283752, 25.514336, 25.717865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117377, -0.502153, -0.856776,
		0.334449, -0.792354, 0.510214,
		-0.935076, -0.346435, 0.074941,
		12.003230, 25.410404, 25.740347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.386303, 25.440128, 25.420340>,  <12.657783, 25.652910, 25.687889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.386303, 25.440128, 25.420340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.418668, 25.813955, 25.281754>,  <13.438087, 26.038252, 25.198603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.418668, 25.813955, 25.281754>,  <13.386303, 25.440128, 25.420340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.418668, 25.813955, 25.281754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317874, 0.305256, 0.897650,
		0.944674, -0.182761, -0.272376,
		0.080911, 0.934568, -0.346463,
		13.442941, 26.094326, 25.177814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.023895, 25.627932, 25.574560>,  <13.386303, 25.440128, 25.420340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.023895, 25.627932, 25.574560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.845400, 25.980322, 25.511625>,  <13.738303, 26.191755, 25.473864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.845400, 25.980322, 25.511625>,  <14.023895, 25.627932, 25.574560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.845400, 25.980322, 25.511625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328895, 0.324954, 0.886698,
		0.832286, 0.343931, -0.434755,
		-0.446238, 0.880975, -0.157337,
		13.711529, 26.244614, 25.464424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.514555, 26.078203, 25.660133>,  <14.023895, 25.627932, 25.574560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.514555, 26.078203, 25.660133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.186936, 26.301861, 25.711542>,  <13.990365, 26.436056, 25.742388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.186936, 26.301861, 25.711542>,  <14.514555, 26.078203, 25.660133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.186936, 26.301861, 25.711542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379387, 0.359804, 0.852412,
		0.430380, 0.746925, -0.506829,
		-0.819047, 0.559146, 0.128521,
		13.941222, 26.469604, 25.750099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.691512, 26.868944, 25.721941>,  <14.514555, 26.078203, 25.660133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.691512, 26.868944, 25.721941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.338511, 26.819981, 25.903578>,  <14.126709, 26.790602, 26.012560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.338511, 26.819981, 25.903578>,  <14.691512, 26.868944, 25.721941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.338511, 26.819981, 25.903578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335162, 0.513646, 0.789832,
		-0.329927, 0.849225, -0.412268,
		-0.882505, -0.122410, 0.454093,
		14.073759, 26.783258, 26.039806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.513799, 27.510176, 26.025032>,  <14.691512, 26.868944, 25.721941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.513799, 27.510176, 26.025032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.271390, 27.255253, 26.215433>,  <14.125945, 27.102299, 26.329674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.271390, 27.255253, 26.215433>,  <14.513799, 27.510176, 26.025032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.271390, 27.255253, 26.215433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237672, 0.426000, 0.872947,
		-0.759111, 0.642157, -0.106695,
		-0.606021, -0.637305, 0.476004,
		14.089583, 27.064060, 26.358234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.450272, 27.899403, 26.506197>,  <14.513799, 27.510176, 26.025032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.450272, 27.899403, 26.506197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.265850, 27.575190, 26.650679>,  <14.155197, 27.380663, 26.737368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.265850, 27.575190, 26.650679>,  <14.450272, 27.899403, 26.506197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.265850, 27.575190, 26.650679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032350, 0.391427, 0.919641,
		-0.886782, 0.435690, -0.154248,
		-0.461055, -0.810531, 0.361205,
		14.127534, 27.332031, 26.759041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.952518, 28.118351, 27.055145>,  <14.450272, 27.899403, 26.506197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.952518, 28.118351, 27.055145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.021689, 27.730320, 27.123312>,  <14.063192, 27.497501, 27.164211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.021689, 27.730320, 27.123312>,  <13.952518, 28.118351, 27.055145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.021689, 27.730320, 27.123312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117222, 0.151522, 0.981479,
		-0.977934, -0.189703, -0.087512,
		0.172929, -0.970079, 0.170416,
		14.073568, 27.439297, 27.174437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.435254, 27.971598, 27.495695>,  <13.952518, 28.118351, 27.055145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.435254, 27.971598, 27.495695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.726282, 27.700491, 27.538162>,  <13.900899, 27.537827, 27.563643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.726282, 27.700491, 27.538162>,  <13.435254, 27.971598, 27.495695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.726282, 27.700491, 27.538162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011109, 0.166375, 0.986000,
		-0.685943, -0.716205, 0.128579,
		0.727570, -0.677768, 0.106168,
		13.944553, 27.497160, 27.570013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.272848, 27.505678, 27.996555>,  <13.435254, 27.971598, 27.495695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.272848, 27.505678, 27.996555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.672419, 27.494619, 27.981695>,  <13.912161, 27.487984, 27.972778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.672419, 27.494619, 27.981695>,  <13.272848, 27.505678, 27.996555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.672419, 27.494619, 27.981695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040104, 0.115258, 0.992526,
		-0.023158, -0.992951, 0.116243,
		0.998927, -0.027647, -0.037152,
		13.972096, 27.486326, 27.970551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.346276, 17.879354, 15.211274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.708523, 17.893885, 15.380290>,  <14.925871, 17.902603, 15.481700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.708523, 17.893885, 15.380290>,  <14.346276, 17.879354, 15.211274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.708523, 17.893885, 15.380290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319384, 0.713915, 0.623153,
		-0.279023, -0.699290, 0.658134,
		0.905616, 0.036323, 0.422541,
		14.980207, 17.904781, 15.507052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.256793, 17.870079, 15.967846>,  <14.346276, 17.879354, 15.211274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.256793, 17.870079, 15.967846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.616219, 18.024950, 15.885213>,  <14.831874, 18.117872, 15.835633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.616219, 18.024950, 15.885213>,  <14.256793, 17.870079, 15.967846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.616219, 18.024950, 15.885213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133196, 0.689161, 0.712261,
		0.418139, -0.612497, 0.670826,
		0.898565, 0.387176, -0.206583,
		14.885788, 18.141102, 15.823238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.605789, 17.815847, 16.596783>,  <14.256793, 17.870079, 15.967846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.605789, 17.815847, 16.596783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.774001, 18.105358, 16.377947>,  <14.874928, 18.279064, 16.246647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.774001, 18.105358, 16.377947>,  <14.605789, 17.815847, 16.596783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.774001, 18.105358, 16.377947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176634, 0.656772, 0.733110,
		0.889918, -0.211660, 0.404036,
		0.420530, 0.723775, -0.547087,
		14.900160, 18.322491, 16.213821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.538290, 18.302807, 16.972910>,  <14.605789, 17.815847, 16.596783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.538290, 18.302807, 16.972910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.661816, 18.531673, 16.668999>,  <14.735930, 18.668993, 16.486652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.661816, 18.531673, 16.668999>,  <14.538290, 18.302807, 16.972910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.661816, 18.531673, 16.668999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141824, 0.817592, 0.558058,
		0.940489, -0.064581, 0.333630,
		0.308813, 0.572165, -0.759778,
		14.754459, 18.703323, 16.441065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.067540, 18.800508, 17.262440>,  <14.538290, 18.302807, 16.972910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.067540, 18.800508, 17.262440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.908234, 18.954180, 16.929262>,  <14.812650, 19.046383, 16.729357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.908234, 18.954180, 16.929262>,  <15.067540, 18.800508, 17.262440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.908234, 18.954180, 16.929262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172307, 0.860567, 0.479306,
		0.900940, 0.334414, -0.276540,
		-0.398267, 0.384176, -0.832942,
		14.788754, 19.069433, 16.679380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.230642, 19.502855, 17.287807>,  <15.067540, 18.800508, 17.262440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.230642, 19.502855, 17.287807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.939979, 19.512794, 17.013187>,  <14.765580, 19.518759, 16.848415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.939979, 19.512794, 17.013187>,  <15.230642, 19.502855, 17.287807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.939979, 19.512794, 17.013187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354888, 0.842103, 0.406100,
		0.588236, 0.538745, -0.603102,
		-0.726658, 0.024849, -0.686550,
		14.721981, 19.520248, 16.807222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.329519, 20.158390, 16.954945>,  <15.230642, 19.502855, 17.287807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.329519, 20.158390, 16.954945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945667, 20.053738, 16.913651>,  <14.715356, 19.990946, 16.888874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945667, 20.053738, 16.913651>,  <15.329519, 20.158390, 16.954945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.945667, 20.053738, 16.913651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281040, 0.906555, 0.314919,
		0.011197, 0.331220, -0.943487,
		-0.959631, -0.261631, -0.103237,
		14.657778, 19.975248, 16.882679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.025261, 20.697874, 16.733408>,  <15.329519, 20.158390, 16.954945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.025261, 20.697874, 16.733408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.704167, 20.497339, 16.862577>,  <14.511511, 20.377018, 16.940079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.704167, 20.497339, 16.862577>,  <15.025261, 20.697874, 16.733408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.704167, 20.497339, 16.862577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406436, 0.856209, 0.318929,
		-0.436380, 0.124768, -0.891070,
		-0.802734, -0.501337, 0.322922,
		14.463347, 20.346939, 16.959454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.375026, 21.096277, 16.597647>,  <15.025261, 20.697874, 16.733408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.375026, 21.096277, 16.597647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.247897, 20.842857, 16.879812>,  <14.171620, 20.690805, 17.049110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.247897, 20.842857, 16.879812>,  <14.375026, 21.096277, 16.597647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.247897, 20.842857, 16.879812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580391, 0.718309, 0.383638,
		-0.749757, -0.287486, -0.596000,
		-0.317822, -0.633549, 0.705412,
		14.152551, 20.652792, 17.091436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.642577, 21.200249, 16.706184>,  <14.375026, 21.096277, 16.597647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.642577, 21.200249, 16.706184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.790817, 21.038273, 17.040533>,  <13.879762, 20.941088, 17.241142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.790817, 21.038273, 17.040533>,  <13.642577, 21.200249, 16.706184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.790817, 21.038273, 17.040533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580401, 0.601632, 0.548793,
		-0.725114, -0.688523, -0.012062,
		0.370600, -0.404939, 0.835871,
		13.901998, 20.916792, 17.291294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.070733, 21.225462, 17.189541>,  <13.642577, 21.200249, 16.706184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.070733, 21.225462, 17.189541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.374767, 21.143417, 17.436182>,  <13.557188, 21.094191, 17.584167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.374767, 21.143417, 17.436182>,  <13.070733, 21.225462, 17.189541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.374767, 21.143417, 17.436182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434207, 0.545645, 0.716754,
		-0.483461, -0.812527, 0.325676,
		0.760086, -0.205111, 0.616603,
		13.602793, 21.081884, 17.621162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.775452, 21.095854, 17.927204>,  <13.070733, 21.225462, 17.189541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.775452, 21.095854, 17.927204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.161034, 21.193687, 17.969095>,  <13.392383, 21.252388, 17.994230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.161034, 21.193687, 17.969095>,  <12.775452, 21.095854, 17.927204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.161034, 21.193687, 17.969095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245261, 0.664264, 0.706116,
		0.103138, -0.706351, 0.700308,
		0.963955, 0.244586, 0.104730,
		13.450220, 21.267063, 18.000513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.487238, 20.404167, 18.299925>,  <12.775452, 21.095854, 17.927204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.487238, 20.404167, 18.299925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.116152, 20.550152, 18.331280>,  <11.893500, 20.637743, 18.350092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.116152, 20.550152, 18.331280>,  <12.487238, 20.404167, 18.299925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.116152, 20.550152, 18.331280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281047, -0.544696, -0.790138,
		-0.245674, -0.755054, 0.607896,
		-0.927716, 0.364964, 0.078388,
		11.837837, 20.659641, 18.354795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.146273, 19.867311, 18.205555>,  <12.487238, 20.404167, 18.299925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.146273, 19.867311, 18.205555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.888361, 20.163151, 18.128351>,  <11.733614, 20.340654, 18.082029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.888361, 20.163151, 18.128351>,  <12.146273, 19.867311, 18.205555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.888361, 20.163151, 18.128351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224559, -0.424654, -0.877064,
		-0.730639, -0.522170, 0.439892,
		-0.644779, 0.739599, -0.193011,
		11.694927, 20.385031, 18.070448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.490438, 19.582109, 18.197775>,  <12.146273, 19.867311, 18.205555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.490438, 19.582109, 18.197775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.494632, 19.906981, 17.964449>,  <11.497148, 20.101904, 17.824453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.494632, 19.906981, 17.964449>,  <11.490438, 19.582109, 18.197775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.494632, 19.906981, 17.964449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357500, -0.541745, -0.760728,
		-0.933854, 0.216510, 0.284674,
		0.010484, 0.812180, -0.583313,
		11.497777, 20.150635, 17.789455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.815500, 19.706076, 17.883493>,  <11.490438, 19.582109, 18.197775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.815500, 19.706076, 17.883493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.073113, 19.903748, 17.649910>,  <11.227681, 20.022350, 17.509760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.073113, 19.903748, 17.649910>,  <10.815500, 19.706076, 17.883493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.073113, 19.903748, 17.649910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468032, -0.349280, -0.811757,
		-0.605119, 0.796110, 0.006343,
		0.644032, 0.494178, -0.583961,
		11.266323, 20.052002, 17.474722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.468026, 19.844500, 17.236507>,  <10.815500, 19.706076, 17.883493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.468026, 19.844500, 17.236507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.832346, 19.931650, 17.096237>,  <11.050938, 19.983940, 17.012075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.832346, 19.931650, 17.096237>,  <10.468026, 19.844500, 17.236507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.832346, 19.931650, 17.096237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295097, -0.250459, -0.922056,
		-0.288725, 0.943292, -0.163824,
		0.910800, 0.217877, -0.350676,
		11.105586, 19.997013, 16.991034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.312697, 20.198179, 16.689995>,  <10.468026, 19.844500, 17.236507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.312697, 20.198179, 16.689995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.675982, 20.040047, 16.635057>,  <10.893953, 19.945168, 16.602095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.675982, 20.040047, 16.635057>,  <10.312697, 20.198179, 16.689995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.675982, 20.040047, 16.635057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262294, -0.281958, -0.922877,
		0.326116, 0.874193, -0.359770,
		0.908213, -0.395331, -0.137344,
		10.948446, 19.921448, 16.593855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.441458, 20.438206, 16.020559>,  <10.312697, 20.198179, 16.689995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.441458, 20.438206, 16.020559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.667600, 20.116457, 16.093624>,  <10.803285, 19.923409, 16.137463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.667600, 20.116457, 16.093624>,  <10.441458, 20.438206, 16.020559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.667600, 20.116457, 16.093624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162562, -0.325758, -0.931373,
		0.808671, 0.496862, -0.314928,
		0.565354, -0.804370, 0.182660,
		10.837206, 19.875147, 16.148422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.813137, 20.431509, 15.359811>,  <10.441458, 20.438206, 16.020559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.813137, 20.431509, 15.359811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.836882, 20.078159, 15.545770>,  <10.851129, 19.866150, 15.657345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.836882, 20.078159, 15.545770>,  <10.813137, 20.431509, 15.359811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.836882, 20.078159, 15.545770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160194, -0.468113, -0.869027,
		0.985299, -0.022887, -0.169299,
		0.059362, -0.883372, 0.464898,
		10.854691, 19.813148, 15.685239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.179478, 20.008638, 14.905054>,  <10.813137, 20.431509, 15.359811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.179478, 20.008638, 14.905054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.011765, 19.742136, 15.151730>,  <10.911137, 19.582235, 15.299735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.011765, 19.742136, 15.151730>,  <11.179478, 20.008638, 14.905054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.011765, 19.742136, 15.151730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293855, -0.543116, -0.786558,
		0.858982, -0.511009, 0.031937,
		-0.419284, -0.666254, 0.616690,
		10.885980, 19.542259, 15.336737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.439271, 19.303259, 14.832390>,  <11.179478, 20.008638, 14.905054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.439271, 19.303259, 14.832390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.107358, 19.228806, 15.042843>,  <10.908210, 19.184134, 15.169115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.107358, 19.228806, 15.042843>,  <11.439271, 19.303259, 14.832390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.107358, 19.228806, 15.042843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254840, -0.712348, -0.653925,
		0.496506, -0.676695, 0.543660,
		-0.829782, -0.186131, 0.526134,
		10.858423, 19.172966, 15.200683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.380243, 18.555164, 15.078893>,  <11.439271, 19.303259, 14.832390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.380243, 18.555164, 15.078893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.006989, 18.697927, 15.061584>,  <10.783035, 18.783585, 15.051199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.006989, 18.697927, 15.061584>,  <11.380243, 18.555164, 15.078893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.006989, 18.697927, 15.061584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252959, -0.737313, -0.626404,
		-0.255472, -0.573575, 0.778297,
		-0.933138, 0.356906, -0.043272,
		10.727047, 18.804998, 15.048603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.907928, 18.051096, 15.255928>,  <11.380243, 18.555164, 15.078893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.907928, 18.051096, 15.255928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.681937, 18.306543, 15.046943>,  <10.546343, 18.459812, 14.921552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.681937, 18.306543, 15.046943>,  <10.907928, 18.051096, 15.255928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.681937, 18.306543, 15.046943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331577, -0.755553, -0.564975,
		-0.755553, -0.145959, 0.638620,
		0.564975, -0.638620, 0.522464,
		10.512444, 18.498129, 14.890203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.154098, 17.767542, 15.168816>,  <10.907928, 18.051096, 15.255928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.154098, 17.767542, 15.168816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.083690, 18.053566, 14.898199>,  <10.041445, 18.225180, 14.735829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.083690, 18.053566, 14.898199>,  <10.154098, 17.767542, 15.168816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.083690, 18.053566, 14.898199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659340, -0.595969, -0.458358,
		-0.730950, 0.365391, 0.576369,
		-0.176018, 0.715060, -0.676541,
		10.030884, 18.268084, 14.695237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.456516, 18.029444, 15.172532>,  <10.154098, 17.767542, 15.168816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.456516, 18.029444, 15.172532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.614197, 18.027609, 14.804927>,  <9.708805, 18.026508, 14.584364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.614197, 18.027609, 14.804927>,  <9.456516, 18.029444, 15.172532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.614197, 18.027609, 14.804927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722286, -0.619858, -0.306724,
		-0.568251, 0.784701, -0.247662,
		0.394201, -0.004586, -0.919013,
		9.732457, 18.026234, 14.529223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.602855, 18.018131, 15.849553>,  <9.456516, 18.029444, 15.172532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.602855, 18.018131, 15.849553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.413606, 18.274334, 15.607594>,  <9.300056, 18.428057, 15.462418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.413606, 18.274334, 15.607594>,  <9.602855, 18.018131, 15.849553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.413606, 18.274334, 15.607594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582210, 0.742625, 0.330966,
		0.661200, -0.195591, -0.724264,
		-0.473123, 0.640509, -0.604899,
		9.271669, 18.466486, 15.426124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.484224, 17.532364, 16.460464>,  <9.602855, 18.018131, 15.849553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.484224, 17.532364, 16.460464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.581514, 17.148642, 16.517834>,  <9.639889, 16.918407, 16.552256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.581514, 17.148642, 16.517834>,  <9.484224, 17.532364, 16.460464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.581514, 17.148642, 16.517834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109434, 0.174058, 0.978636,
		-0.963777, -0.222334, 0.147316,
		0.243225, -0.959308, 0.143422,
		9.654482, 16.860849, 16.560860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.033076, 17.292255, 16.950407>,  <9.484224, 17.532364, 16.460464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.033076, 17.292255, 16.950407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.355184, 17.057146, 16.981562>,  <9.548448, 16.916080, 17.000254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.355184, 17.057146, 16.981562>,  <9.033076, 17.292255, 16.950407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.355184, 17.057146, 16.981562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016171, 0.153087, 0.988080,
		-0.592692, -0.794409, 0.132781,
		0.805267, -0.587774, 0.077887,
		9.596764, 16.880814, 17.004927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.892998, 16.850752, 17.505890>,  <9.033076, 17.292255, 16.950407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.892998, 16.850752, 17.505890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.289600, 16.876896, 17.460917>,  <9.527562, 16.892582, 17.433933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.289600, 16.876896, 17.460917>,  <8.892998, 16.850752, 17.505890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.289600, 16.876896, 17.460917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111472, 0.018158, 0.993602,
		0.066983, -0.997696, 0.010718,
		0.991508, 0.065360, -0.112432,
		9.587052, 16.896503, 17.427187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.068026, 16.327351, 17.855520>,  <8.892998, 16.850752, 17.505890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.068026, 16.327351, 17.855520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.398078, 16.552572, 17.837063>,  <9.596109, 16.687706, 17.825989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.398078, 16.552572, 17.837063>,  <9.068026, 16.327351, 17.855520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.398078, 16.552572, 17.837063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038916, 0.024834, 0.998934,
		0.563600, -0.826047, -0.001420,
		0.825131, 0.563054, -0.046143,
		9.645617, 16.721489, 17.823219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.521447, 16.022272, 18.229429>,  <9.068026, 16.327351, 17.855520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.521447, 16.022272, 18.229429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.667526, 16.394423, 18.216593>,  <9.755174, 16.617714, 18.208891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.667526, 16.394423, 18.216593>,  <9.521447, 16.022272, 18.229429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.667526, 16.394423, 18.216593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043846, 0.017243, 0.998890,
		0.929897, -0.366198, -0.034496,
		0.365197, 0.930377, -0.032091,
		9.777085, 16.673536, 18.206966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.974360, 16.029066, 18.777866>,  <9.521447, 16.022272, 18.229429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.974360, 16.029066, 18.777866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.888823, 16.405947, 18.674696>,  <9.837500, 16.632074, 18.612793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.888823, 16.405947, 18.674696>,  <9.974360, 16.029066, 18.777866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.888823, 16.405947, 18.674696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058994, 0.276008, 0.959343,
		0.975085, 0.189935, -0.114607,
		-0.213846, 0.942202, -0.257926,
		9.824669, 16.688608, 18.597319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.475314, 16.443407, 19.045380>,  <9.974360, 16.029066, 18.777866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.475314, 16.443407, 19.045380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.151291, 16.674246, 19.003878>,  <9.956877, 16.812750, 18.978977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.151291, 16.674246, 19.003878>,  <10.475314, 16.443407, 19.045380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.151291, 16.674246, 19.003878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009012, 0.164672, 0.986307,
		0.586280, 0.799901, -0.128193,
		-0.810058, 0.577097, -0.103753,
		9.908274, 16.847376, 18.972752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.648822, 17.053122, 19.505613>,  <10.475314, 16.443407, 19.045380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.648822, 17.053122, 19.505613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.257016, 17.086817, 19.432447>,  <10.021933, 17.107035, 19.388548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.257016, 17.086817, 19.432447>,  <10.648822, 17.053122, 19.505613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.257016, 17.086817, 19.432447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133154, 0.410500, 0.902086,
		0.151077, 0.907961, -0.390874,
		-0.979513, 0.084238, -0.182916,
		9.963162, 17.112089, 19.377573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.408875, 17.812605, 19.715111>,  <10.648822, 17.053122, 19.505613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.408875, 17.812605, 19.715111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.111103, 17.545546, 19.718472>,  <9.932440, 17.385309, 19.720488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.111103, 17.545546, 19.718472>,  <10.408875, 17.812605, 19.715111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.111103, 17.545546, 19.718472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081006, 0.102796, 0.991399,
		-0.662769, 0.737346, -0.130608,
		-0.744429, -0.667649, 0.008401,
		9.887774, 17.345251, 19.720991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.924361, 18.122620, 20.097372>,  <10.408875, 17.812605, 19.715111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.924361, 18.122620, 20.097372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.825500, 17.735083, 20.103848>,  <9.766184, 17.502560, 20.107733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.825500, 17.735083, 20.103848>,  <9.924361, 18.122620, 20.097372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.825500, 17.735083, 20.103848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012540, 0.019906, 0.999723,
		-0.968896, 0.246880, -0.017069,
		-0.247151, -0.968842, 0.016191,
		9.751355, 17.444429, 20.108706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.360422, 18.149181, 20.620451>,  <9.924361, 18.122620, 20.097372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.360422, 18.149181, 20.620451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.481066, 17.769392, 20.585745>,  <9.553452, 17.541517, 20.564920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.481066, 17.769392, 20.585745>,  <9.360422, 18.149181, 20.620451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.481066, 17.769392, 20.585745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188262, -0.148521, 0.970824,
		-0.934660, -0.276473, -0.223545,
		0.301608, -0.949476, -0.086767,
		9.571548, 17.484549, 20.559715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.124253, 17.843904, 21.207258>,  <9.360422, 18.149181, 20.620451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.124253, 17.843904, 21.207258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.384871, 17.567169, 21.082775>,  <9.541243, 17.401129, 21.008085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.384871, 17.567169, 21.082775>,  <9.124253, 17.843904, 21.207258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.384871, 17.567169, 21.082775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100096, -0.328245, 0.939274,
		-0.751977, -0.643131, -0.144616,
		0.651546, -0.691837, -0.311208,
		9.580336, 17.359619, 20.989412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.890211, 17.175220, 21.379198>,  <9.124253, 17.843904, 21.207258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.890211, 17.175220, 21.379198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.288157, 17.176064, 21.338718>,  <9.526924, 17.176569, 21.314430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.288157, 17.176064, 21.338718>,  <8.890211, 17.175220, 21.379198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.288157, 17.176064, 21.338718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099135, -0.222219, 0.969944,
		-0.020442, -0.974994, -0.221287,
		0.994864, 0.002110, -0.101199,
		9.586616, 17.176697, 21.308359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.113924, 16.631378, 21.816767>,  <8.890211, 17.175220, 21.379198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.113924, 16.631378, 21.816767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.421289, 16.879755, 21.754839>,  <9.605709, 17.028782, 21.717682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.421289, 16.879755, 21.754839>,  <9.113924, 16.631378, 21.816767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.421289, 16.879755, 21.754839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309439, -0.148760, 0.939211,
		0.560167, -0.769610, -0.306453,
		0.768414, 0.620944, -0.154817,
		9.651814, 17.066038, 21.708393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.739939, 16.350651, 22.215132>,  <9.113924, 16.631378, 21.816767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.739939, 16.350651, 22.215132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.858188, 16.724800, 22.137484>,  <9.929137, 16.949289, 22.090895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.858188, 16.724800, 22.137484>,  <9.739939, 16.350651, 22.215132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.858188, 16.724800, 22.137484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430449, 0.050983, 0.901174,
		0.852831, -0.349966, -0.387559,
		0.295621, 0.935374, -0.194122,
		9.946875, 17.005413, 22.079247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.385871, 16.365513, 22.403849>,  <9.739939, 16.350651, 22.215132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.385871, 16.365513, 22.403849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.288579, 16.753479, 22.407833>,  <10.230204, 16.986259, 22.410223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.288579, 16.753479, 22.407833>,  <10.385871, 16.365513, 22.403849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.288579, 16.753479, 22.407833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467589, 0.108249, 0.877293,
		0.849824, 0.218041, -0.479852,
		-0.243229, 0.969918, 0.009961,
		10.215611, 17.044455, 22.410822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.979578, 16.652384, 22.558676>,  <10.385871, 16.365513, 22.403849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.979578, 16.652384, 22.558676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.708108, 16.932259, 22.647974>,  <10.545226, 17.100183, 22.701553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.708108, 16.932259, 22.647974>,  <10.979578, 16.652384, 22.558676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.708108, 16.932259, 22.647974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394432, 0.090828, 0.914425,
		0.619535, 0.708652, -0.337622,
		-0.678675, 0.699687, 0.223244,
		10.504505, 17.142164, 22.714947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.374533, 17.392300, 22.680368>,  <10.979578, 16.652384, 22.558676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.374533, 17.392300, 22.680368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.029339, 17.365908, 22.880730>,  <10.822223, 17.350073, 23.000946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.029339, 17.365908, 22.880730>,  <11.374533, 17.392300, 22.680368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.029339, 17.365908, 22.880730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438483, 0.394699, 0.807431,
		-0.250982, 0.916438, -0.311688,
		-0.862984, -0.065980, 0.500905,
		10.770444, 17.346113, 23.031002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.350109, 18.008736, 22.976234>,  <11.374533, 17.392300, 22.680368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.350109, 18.008736, 22.976234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.087206, 17.795341, 23.189178>,  <10.929464, 17.667305, 23.316944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.087206, 17.795341, 23.189178>,  <11.350109, 18.008736, 22.976234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.087206, 17.795341, 23.189178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359479, 0.398922, 0.843585,
		-0.662410, 0.745824, -0.070418,
		-0.657258, -0.533486, 0.532359,
		10.890029, 17.635296, 23.348886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.072134, 18.505232, 23.530716>,  <11.350109, 18.008736, 22.976234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.072134, 18.505232, 23.530716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.966305, 18.145359, 23.669611>,  <10.902807, 17.929436, 23.752949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.966305, 18.145359, 23.669611>,  <11.072134, 18.505232, 23.530716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.966305, 18.145359, 23.669611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308327, 0.262254, 0.914417,
		-0.913748, 0.348994, 0.208011,
		-0.264574, -0.899681, 0.347238,
		10.886932, 17.875454, 23.773783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.715103, 18.690434, 24.107361>,  <11.072134, 18.505232, 23.530716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.715103, 18.690434, 24.107361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.835703, 18.315187, 24.175520>,  <10.908063, 18.090040, 24.216415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.835703, 18.315187, 24.175520>,  <10.715103, 18.690434, 24.107361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.835703, 18.315187, 24.175520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261121, 0.253121, 0.931529,
		-0.917014, -0.236361, 0.321278,
		0.301500, -0.938116, 0.170397,
		10.926153, 18.033752, 24.226639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.314289, 18.470949, 24.701300>,  <10.715103, 18.690434, 24.107361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.314289, 18.470949, 24.701300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.635995, 18.233545, 24.689262>,  <10.829019, 18.091103, 24.682041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.635995, 18.233545, 24.689262>,  <10.314289, 18.470949, 24.701300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.635995, 18.233545, 24.689262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191217, 0.210510, 0.958708,
		-0.562667, -0.776810, 0.282795,
		0.804265, -0.593509, -0.030092,
		10.877275, 18.055492, 24.680235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.243196, 18.173952, 25.293530>,  <10.314289, 18.470949, 24.701300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.243196, 18.173952, 25.293530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.618054, 18.125505, 25.162632>,  <10.842969, 18.096437, 25.084093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.618054, 18.125505, 25.162632>,  <10.243196, 18.173952, 25.293530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.618054, 18.125505, 25.162632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348932, 0.319606, 0.880964,
		-0.002108, -0.939778, 0.341779,
		0.937146, -0.121115, -0.327245,
		10.899199, 18.089170, 25.064459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.470768, 17.675179, 25.754107>,  <10.243196, 18.173952, 25.293530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.470768, 17.675179, 25.754107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.775229, 17.882767, 25.598509>,  <10.957905, 18.007320, 25.505150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.775229, 17.882767, 25.598509>,  <10.470768, 17.675179, 25.754107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.775229, 17.882767, 25.598509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187374, 0.398236, 0.897942,
		0.620920, -0.756356, 0.205875,
		0.761151, 0.518974, -0.388994,
		11.003573, 18.038458, 25.481812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.929149, 17.703190, 26.254723>,  <10.470768, 17.675179, 25.754107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.929149, 17.703190, 26.254723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.101974, 17.975445, 26.018061>,  <11.205668, 18.138798, 25.876064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.101974, 17.975445, 26.018061>,  <10.929149, 17.703190, 26.254723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.101974, 17.975445, 26.018061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148638, 0.593333, 0.791115,
		0.889511, -0.429752, 0.155188,
		0.432061, 0.680638, -0.591654,
		11.231592, 18.179636, 25.840565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.674031, 17.817562, 26.566891>,  <10.929149, 17.703190, 26.254723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.674031, 17.817562, 26.566891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.512166, 18.102234, 26.337193>,  <11.415047, 18.273037, 26.199373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.512166, 18.102234, 26.337193>,  <11.674031, 17.817562, 26.566891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.512166, 18.102234, 26.337193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130342, 0.666435, 0.734081,
		0.905129, 0.222207, -0.362443,
		-0.404663, 0.711680, -0.574247,
		11.390767, 18.315739, 26.164919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.173145, 18.502396, 26.496435>,  <11.674031, 17.817562, 26.566891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.173145, 18.502396, 26.496435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.775981, 18.545820, 26.477074>,  <11.537683, 18.571875, 26.465456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.775981, 18.545820, 26.477074>,  <12.173145, 18.502396, 26.496435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.775981, 18.545820, 26.477074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033405, 0.645658, 0.762896,
		0.114074, 0.755871, -0.644707,
		-0.992911, 0.108563, -0.048403,
		11.478107, 18.578388, 26.462553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
