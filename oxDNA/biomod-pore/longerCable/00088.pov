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
	<23.807541, 34.912567, 35.165264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.116297, 35.140507, 35.052509>,  <24.301550, 35.277271, 34.984856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.116297, 35.140507, 35.052509>,  <23.807541, 34.912567, 35.165264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.116297, 35.140507, 35.052509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367480, -0.038103, 0.929251,
		0.518792, -0.820866, -0.238819,
		0.771890, 0.569849, -0.281884,
		24.347864, 35.311462, 34.967945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.499565, 34.546165, 35.311443>,  <23.807541, 34.912567, 35.165264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.499565, 34.546165, 35.311443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.513618, 34.945904, 35.308060>,  <24.522051, 35.185745, 35.306030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.513618, 34.945904, 35.308060>,  <24.499565, 34.546165, 35.311443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.513618, 34.945904, 35.308060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463686, -0.008803, 0.885956,
		0.885303, -0.035048, -0.463693,
		0.035133, 0.999347, -0.008458,
		24.524158, 35.245708, 35.305523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.732021, 34.637772, 35.912010>,  <24.499565, 34.546165, 35.311443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.732021, 34.637772, 35.912010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.720516, 35.016151, 35.782799>,  <24.713614, 35.243179, 35.705273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.720516, 35.016151, 35.782799>,  <24.732021, 34.637772, 35.912010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.720516, 35.016151, 35.782799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412484, 0.305593, 0.858178,
		0.910511, -0.108559, -0.398981,
		-0.028763, 0.945953, -0.323025,
		24.711887, 35.299938, 35.685890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.217094, 34.903358, 36.350159>,  <24.732021, 34.637772, 35.912010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.217094, 34.903358, 36.350159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018221, 35.248375, 36.312557>,  <24.898897, 35.455383, 36.289997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018221, 35.248375, 36.312557>,  <25.217094, 34.903358, 36.350159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.018221, 35.248375, 36.312557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539571, 0.392212, 0.745005,
		0.679465, 0.319681, -0.660402,
		-0.497182, 0.862539, -0.094004,
		24.869066, 35.507137, 36.284355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.716125, 35.339481, 36.824486>,  <25.217094, 34.903358, 36.350159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.716125, 35.339481, 36.824486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394171, 35.563457, 36.745876>,  <25.200998, 35.697842, 36.698711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394171, 35.563457, 36.745876>,  <25.716125, 35.339481, 36.824486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.394171, 35.563457, 36.745876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511096, -0.822388, -0.249915,
		-0.301556, -0.100711, 0.948115,
		-0.804887, 0.559941, -0.196523,
		25.152704, 35.731441, 36.686920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380394, 35.490009, 36.682461>,  <25.716125, 35.339481, 36.824486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380394, 35.490009, 36.682461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574682, 35.704773, 36.406548>,  <26.691256, 35.833630, 36.240997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574682, 35.704773, 36.406548>,  <26.380394, 35.490009, 36.682461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574682, 35.704773, 36.406548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070094, -0.762661, -0.642989,
		-0.871299, 0.360664, -0.332807,
		0.485722, 0.536907, -0.689786,
		26.720398, 35.865845, 36.199612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111671, 35.413155, 36.077927>,  <26.380394, 35.490009, 36.682461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111671, 35.413155, 36.077927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479727, 35.509033, 35.954060>,  <26.700560, 35.566559, 35.879738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479727, 35.509033, 35.954060>,  <26.111671, 35.413155, 36.077927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.479727, 35.509033, 35.954060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003758, -0.796146, -0.605092,
		-0.391580, 0.555604, -0.733464,
		0.920137, 0.239698, -0.309667,
		26.755768, 35.580944, 35.861160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.123827, 35.363277, 35.328281>,  <26.111671, 35.413155, 36.077927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.123827, 35.363277, 35.328281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485102, 35.305946, 35.490128>,  <26.701866, 35.271549, 35.587234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485102, 35.305946, 35.490128>,  <26.123827, 35.363277, 35.328281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485102, 35.305946, 35.490128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115792, -0.826315, -0.551177,
		0.413340, 0.544666, -0.729719,
		0.903185, -0.143328, 0.404617,
		26.756058, 35.262947, 35.611511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728525, 35.275864, 34.776070>,  <26.123827, 35.363277, 35.328281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728525, 35.275864, 34.776070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804621, 35.093819, 35.124020>,  <26.850279, 34.984592, 35.332790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804621, 35.093819, 35.124020>,  <26.728525, 35.275864, 34.776070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804621, 35.093819, 35.124020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236533, -0.838705, -0.490536,
		0.952817, 0.299074, -0.051906,
		0.190240, -0.455114, 0.869874,
		26.861692, 34.957283, 35.384983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377703, 34.989632, 34.696148>,  <26.728525, 35.275864, 34.776070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377703, 34.989632, 34.696148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229443, 34.775829, 34.999969>,  <27.140488, 34.647549, 35.182262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229443, 34.775829, 34.999969>,  <27.377703, 34.989632, 34.696148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229443, 34.775829, 34.999969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364657, -0.835884, -0.410271,
		0.854193, 0.124911, 0.504730,
		-0.370648, -0.534504, 0.759556,
		27.118248, 34.615479, 35.227837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891190, 34.389740, 34.751301>,  <27.377703, 34.989632, 34.696148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891190, 34.389740, 34.751301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550188, 34.298416, 34.939392>,  <27.345587, 34.243622, 35.052246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550188, 34.298416, 34.939392>,  <27.891190, 34.389740, 34.751301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550188, 34.298416, 34.939392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074058, -0.943254, -0.323709,
		0.517446, -0.241140, 0.821036,
		-0.852505, -0.228306, 0.470225,
		27.294437, 34.229923, 35.080460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997656, 33.845219, 35.214588>,  <27.891190, 34.389740, 34.751301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997656, 33.845219, 35.214588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626673, 33.837090, 35.065235>,  <27.404083, 33.832211, 34.975624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626673, 33.837090, 35.065235>,  <27.997656, 33.845219, 35.214588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626673, 33.837090, 35.065235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135980, -0.948489, -0.286144,
		-0.348331, -0.316158, 0.882445,
		-0.927456, -0.020322, -0.373379,
		27.348436, 33.830994, 34.953220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767876, 33.191753, 34.890152>,  <27.997656, 33.845219, 35.214588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767876, 33.191753, 34.890152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666183, 33.176834, 35.276722>,  <27.605167, 33.167881, 35.508663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666183, 33.176834, 35.276722>,  <27.767876, 33.191753, 34.890152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666183, 33.176834, 35.276722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952931, -0.161018, -0.256895,
		0.165194, -0.986246, 0.005390,
		-0.254230, -0.037301, 0.966424,
		27.589914, 33.165646, 35.566650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295559, 33.280571, 34.227158>,  <27.767876, 33.191753, 34.890152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295559, 33.280571, 34.227158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122778, 33.120499, 34.550457>,  <27.019110, 33.024456, 34.744438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122778, 33.120499, 34.550457>,  <27.295559, 33.280571, 34.227158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122778, 33.120499, 34.550457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055224, 0.906223, 0.419178,
		-0.900203, 0.136431, -0.413547,
		-0.431954, -0.400183, 0.808251,
		26.993191, 33.000443, 34.792931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678198, 33.753300, 34.426197>,  <27.295559, 33.280571, 34.227158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678198, 33.753300, 34.426197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798046, 33.530037, 34.735699>,  <26.869955, 33.396080, 34.921398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798046, 33.530037, 34.735699>,  <26.678198, 33.753300, 34.426197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.798046, 33.530037, 34.735699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206347, 0.753902, 0.623741,
		-0.931477, -0.346546, 0.110709,
		0.299619, -0.558155, 0.773751,
		26.887932, 33.362591, 34.967823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.182369, 33.732643, 34.951115>,  <26.678198, 33.753300, 34.426197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.182369, 33.732643, 34.951115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568077, 33.732822, 35.057083>,  <26.799501, 33.732929, 35.120663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568077, 33.732822, 35.057083>,  <26.182369, 33.732643, 34.951115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568077, 33.732822, 35.057083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081995, 0.951395, 0.296857,
		-0.251912, -0.307972, 0.917439,
		0.964270, 0.000444, 0.264920,
		26.857359, 33.732956, 35.136559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.235441, 33.853802, 35.689423>,  <26.182369, 33.732643, 34.951115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.235441, 33.853802, 35.689423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577677, 33.957794, 35.510368>,  <26.783018, 34.020191, 35.402935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577677, 33.957794, 35.510368>,  <26.235441, 33.853802, 35.689423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577677, 33.957794, 35.510368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111794, 0.751529, 0.650159,
		0.505444, -0.606311, 0.613933,
		0.855587, 0.259986, -0.447637,
		26.834352, 34.035789, 35.376076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651119, 34.027912, 36.265411>,  <26.235441, 33.853802, 35.689423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651119, 34.027912, 36.265411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790436, 34.215725, 35.940887>,  <26.874025, 34.328415, 35.746174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790436, 34.215725, 35.940887>,  <26.651119, 34.027912, 36.265411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790436, 34.215725, 35.940887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065210, 0.851272, 0.520657,
		0.935115, -0.234246, 0.265873,
		0.348292, 0.469536, -0.811312,
		26.894924, 34.356586, 35.697495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308529, 34.401028, 36.459038>,  <26.651119, 34.027912, 36.265411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308529, 34.401028, 36.459038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166273, 34.578251, 36.129864>,  <27.080919, 34.684586, 35.932358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166273, 34.578251, 36.129864>,  <27.308529, 34.401028, 36.459038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166273, 34.578251, 36.129864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292300, 0.889057, 0.352334,
		0.887740, -0.115241, -0.445688,
		-0.355639, 0.443055, -0.822936,
		27.059582, 34.711166, 35.882984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833488, 34.862850, 36.282013>,  <27.308529, 34.401028, 36.459038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833488, 34.862850, 36.282013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513884, 34.989613, 36.077602>,  <27.322121, 35.065670, 35.954956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513884, 34.989613, 36.077602>,  <27.833488, 34.862850, 36.282013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513884, 34.989613, 36.077602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038477, 0.875057, 0.482488,
		0.600081, 0.365851, -0.711375,
		-0.799013, 0.316904, -0.511029,
		27.274179, 35.084682, 35.924294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937851, 35.321110, 35.809784>,  <27.833488, 34.862850, 36.282013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937851, 35.321110, 35.809784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589933, 35.359745, 36.003330>,  <27.381184, 35.382927, 36.119457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589933, 35.359745, 36.003330>,  <27.937851, 35.321110, 35.809784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589933, 35.359745, 36.003330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351612, 0.809324, 0.470493,
		-0.346160, 0.579366, -0.737908,
		-0.869794, 0.096592, 0.483868,
		27.328995, 35.388721, 36.148491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719223, 35.960960, 35.682003>,  <27.937851, 35.321110, 35.809784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719223, 35.960960, 35.682003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661537, 35.760918, 36.023552>,  <27.626926, 35.640892, 36.228481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661537, 35.760918, 36.023552>,  <27.719223, 35.960960, 35.682003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661537, 35.760918, 36.023552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223465, 0.824140, 0.520439,
		-0.963984, 0.265864, -0.007094,
		-0.144213, -0.500110, 0.853870,
		27.618273, 35.610886, 36.279713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381126, 36.479568, 36.092155>,  <27.719223, 35.960960, 35.682003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381126, 36.479568, 36.092155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608425, 36.255539, 36.333290>,  <27.744804, 36.121120, 36.477970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608425, 36.255539, 36.333290>,  <27.381126, 36.479568, 36.092155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608425, 36.255539, 36.333290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415793, 0.827644, 0.376990,
		-0.710077, 0.036432, 0.703181,
		0.568249, -0.560070, 0.602839,
		27.778900, 36.087517, 36.514141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265766, 36.792969, 36.775951>,  <27.381126, 36.479568, 36.092155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265766, 36.792969, 36.775951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615891, 36.606140, 36.725880>,  <27.825966, 36.494041, 36.695839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615891, 36.606140, 36.725880>,  <27.265766, 36.792969, 36.775951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615891, 36.606140, 36.725880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480468, 0.810849, 0.334176,
		-0.054586, -0.352652, 0.934161,
		0.875312, -0.467076, -0.125177,
		27.878485, 36.466019, 36.688328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573763, 36.816654, 37.312496>,  <27.265766, 36.792969, 36.775951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573763, 36.816654, 37.312496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850863, 36.778393, 37.026573>,  <28.017122, 36.755436, 36.855019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850863, 36.778393, 37.026573>,  <27.573763, 36.816654, 37.312496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850863, 36.778393, 37.026573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439567, 0.841776, 0.313358,
		0.571732, -0.531284, 0.625188,
		0.692750, -0.095655, -0.714806,
		28.058687, 36.749695, 36.812130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238489, 37.190838, 37.518311>,  <27.573763, 36.816654, 37.312496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238489, 37.190838, 37.518311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282486, 37.304573, 37.137352>,  <28.308884, 37.372814, 36.908779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282486, 37.304573, 37.137352>,  <28.238489, 37.190838, 37.518311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282486, 37.304573, 37.137352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481804, 0.822848, 0.301307,
		0.869348, -0.492009, -0.046486,
		0.109994, 0.284338, -0.952393,
		28.315485, 37.389874, 36.851635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933928, 37.430508, 37.326916>,  <28.238489, 37.190838, 37.518311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933928, 37.430508, 37.326916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678137, 37.615345, 37.081139>,  <28.524662, 37.726246, 36.933674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678137, 37.615345, 37.081139>,  <28.933928, 37.430508, 37.326916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678137, 37.615345, 37.081139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453432, 0.872101, 0.183955,
		0.620861, -0.160974, -0.767215,
		-0.639477, 0.462091, -0.614444,
		28.486294, 37.753971, 36.896805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643215, 36.968090, 37.245132>,  <28.933928, 37.430508, 37.326916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643215, 36.968090, 37.245132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706964, 37.020855, 36.853786>,  <29.745214, 37.052513, 36.618980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706964, 37.020855, 36.853786>,  <29.643215, 36.968090, 37.245132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706964, 37.020855, 36.853786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828625, 0.520837, 0.205204,
		0.536638, -0.843403, -0.026297,
		0.159374, 0.131911, -0.978366,
		29.754776, 37.060429, 36.560276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213306, 36.662743, 37.112698>,  <29.643215, 36.968090, 37.245132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213306, 36.662743, 37.112698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134512, 36.971180, 36.870502>,  <30.087234, 37.156242, 36.725185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134512, 36.971180, 36.870502>,  <30.213306, 36.662743, 37.112698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134512, 36.971180, 36.870502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885728, 0.404752, 0.227292,
		0.420335, -0.491524, -0.762707,
		-0.196988, 0.771090, -0.605488,
		30.075417, 37.202507, 36.688854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801914, 36.756618, 36.726963>,  <30.213306, 36.662743, 37.112698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801914, 36.756618, 36.726963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621988, 37.108261, 36.790009>,  <30.514032, 37.319244, 36.827835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621988, 37.108261, 36.790009>,  <30.801914, 36.756618, 36.726963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621988, 37.108261, 36.790009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869501, 0.390729, 0.302159,
		0.204045, 0.272961, -0.940137,
		-0.449816, 0.879104, 0.157614,
		30.487043, 37.371994, 36.837292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177732, 37.325008, 36.390312>,  <30.801914, 36.756618, 36.726963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177732, 37.325008, 36.390312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973942, 37.514622, 36.677567>,  <30.851667, 37.628391, 36.849918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973942, 37.514622, 36.677567>,  <31.177732, 37.325008, 36.390312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973942, 37.514622, 36.677567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814421, 0.535042, 0.224607,
		-0.277763, 0.699300, -0.658656,
		-0.509476, 0.474036, 0.718139,
		30.821098, 37.656834, 36.893009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111296, 38.104137, 36.286583>,  <31.177732, 37.325008, 36.390312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111296, 38.104137, 36.286583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111269, 37.979568, 36.666691>,  <31.111254, 37.904827, 36.894756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111269, 37.979568, 36.666691>,  <31.111296, 38.104137, 36.286583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111269, 37.979568, 36.666691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928879, 0.351946, 0.115402,
		-0.370383, 0.882695, 0.289250,
		-0.000065, -0.311421, 0.950272,
		31.111250, 37.886143, 36.951771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422382, 38.655937, 36.723282>,  <31.111296, 38.104137, 36.286583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422382, 38.655937, 36.723282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467838, 38.338284, 36.962093>,  <31.495111, 38.147690, 37.105381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467838, 38.338284, 36.962093>,  <31.422382, 38.655937, 36.723282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467838, 38.338284, 36.962093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869879, 0.369847, 0.326379,
		-0.479996, 0.482250, 0.732829,
		0.113639, -0.794134, 0.597024,
		31.501930, 38.100044, 37.141201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715977, 38.843822, 37.330257>,  <31.422382, 38.655937, 36.723282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715977, 38.843822, 37.330257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827065, 38.461926, 37.287663>,  <31.893717, 38.232788, 37.262108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827065, 38.461926, 37.287663>,  <31.715977, 38.843822, 37.330257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827065, 38.461926, 37.287663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949342, 0.255792, 0.182538,
		-0.147039, -0.151784, 0.977415,
		0.277721, -0.954742, -0.106484,
		31.910381, 38.175503, 37.255718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391785, 38.750507, 37.739746>,  <31.715977, 38.843822, 37.330257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391785, 38.750507, 37.739746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388519, 38.448643, 37.477322>,  <32.386559, 38.267525, 37.319866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388519, 38.448643, 37.477322>,  <32.391785, 38.750507, 37.739746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388519, 38.448643, 37.477322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999037, 0.022132, -0.037894,
		0.043117, -0.655743, 0.753752,
		-0.008167, -0.754660, -0.656066,
		32.386070, 38.222244, 37.280502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020596, 38.279099, 37.986401>,  <32.391785, 38.750507, 37.739746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020596, 38.279099, 37.986401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350166, 38.118404, 37.826523>,  <33.547909, 38.021988, 37.730598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350166, 38.118404, 37.826523>,  <33.020596, 38.279099, 37.986401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350166, 38.118404, 37.826523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551342, -0.405192, -0.729275,
		0.131025, 0.821235, -0.555342,
		0.823926, -0.401737, -0.399691,
		33.597343, 37.997883, 37.706615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980152, 38.449467, 37.295498>,  <33.020596, 38.279099, 37.986401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980152, 38.449467, 37.295498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161743, 38.098061, 37.354980>,  <33.270699, 37.887215, 37.390671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161743, 38.098061, 37.354980>,  <32.980152, 38.449467, 37.295498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161743, 38.098061, 37.354980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656621, -0.442673, -0.610646,
		0.602291, 0.179575, -0.777816,
		0.453975, -0.878518, 0.148705,
		33.297935, 37.834507, 37.399593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987938, 37.926525, 36.672630>,  <32.980152, 38.449467, 37.295498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987938, 37.926525, 36.672630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893169, 37.820656, 37.046543>,  <32.836308, 37.757133, 37.270889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893169, 37.820656, 37.046543>,  <32.987938, 37.926525, 36.672630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893169, 37.820656, 37.046543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932937, -0.206509, -0.294927,
		0.271100, -0.941967, -0.197995,
		-0.236923, -0.264672, 0.934781,
		32.822094, 37.741253, 37.326977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586948, 37.200005, 36.736935>,  <32.987938, 37.926525, 36.672630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586948, 37.200005, 36.736935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511200, 37.445850, 37.043240>,  <32.465752, 37.593357, 37.227020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511200, 37.445850, 37.043240>,  <32.586948, 37.200005, 36.736935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511200, 37.445850, 37.043240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956960, -0.290196, -0.003736,
		0.219924, -0.733510, 0.643115,
		-0.189370, 0.614613, 0.765761,
		32.454388, 37.630234, 37.272968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085739, 36.876511, 37.118969>,  <32.586948, 37.200005, 36.736935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085739, 36.876511, 37.118969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043518, 37.264336, 37.207344>,  <32.018185, 37.497028, 37.260368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043518, 37.264336, 37.207344>,  <32.085739, 36.876511, 37.118969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043518, 37.264336, 37.207344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993249, -0.113542, 0.023739,
		0.048103, -0.216943, 0.974998,
		-0.105554, 0.969558, 0.220941,
		32.011852, 37.555202, 37.273624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662292, 36.959801, 37.695126>,  <32.085739, 36.876511, 37.118969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662292, 36.959801, 37.695126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609489, 37.324123, 37.538662>,  <31.577808, 37.542717, 37.444782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609489, 37.324123, 37.538662>,  <31.662292, 36.959801, 37.695126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609489, 37.324123, 37.538662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991229, -0.118790, 0.057918,
		0.006286, 0.395376, 0.918498,
		-0.132008, 0.910805, -0.391162,
		31.569887, 37.597366, 37.421314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120125, 37.247536, 38.088203>,  <31.662292, 36.959801, 37.695126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120125, 37.247536, 38.088203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121098, 37.474312, 37.758701>,  <31.121681, 37.610378, 37.561001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121098, 37.474312, 37.758701>,  <31.120125, 37.247536, 38.088203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121098, 37.474312, 37.758701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986352, -0.134260, -0.095315,
		-0.164636, 0.812741, 0.558880,
		0.002431, 0.566945, -0.823752,
		31.121826, 37.644394, 37.511574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753147, 37.892731, 38.191418>,  <31.120125, 37.247536, 38.088203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753147, 37.892731, 38.191418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755379, 37.747402, 37.818760>,  <30.756718, 37.660206, 37.595165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755379, 37.747402, 37.818760>,  <30.753147, 37.892731, 38.191418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755379, 37.747402, 37.818760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993804, -0.105442, 0.035170,
		-0.111013, 0.925677, -0.361659,
		0.005578, -0.363323, -0.931647,
		30.757051, 37.638405, 37.539265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301785, 38.285198, 37.772442>,  <30.753147, 37.892731, 38.191418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301785, 38.285198, 37.772442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305887, 37.907909, 37.639637>,  <30.308348, 37.681538, 37.559956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305887, 37.907909, 37.639637>,  <30.301785, 38.285198, 37.772442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305887, 37.907909, 37.639637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997929, 0.011435, -0.063309,
		0.063511, 0.331973, -0.941148,
		0.010254, -0.943220, -0.332012,
		30.308964, 37.624943, 37.540035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473516, 38.896118, 37.488083>,  <30.301785, 38.285198, 37.772442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473516, 38.896118, 37.488083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308933, 39.122330, 37.773987>,  <30.210184, 39.258057, 37.945530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308933, 39.122330, 37.773987>,  <30.473516, 38.896118, 37.488083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308933, 39.122330, 37.773987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720097, -0.279028, 0.635298,
		0.558715, 0.776096, -0.292425,
		-0.411458, 0.565525, 0.714761,
		30.185495, 39.291988, 37.988415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430439, 39.429779, 36.885765>,  <30.473516, 38.896118, 37.488083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430439, 39.429779, 36.885765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799622, 39.327084, 37.000473>,  <31.021132, 39.265465, 37.069298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799622, 39.327084, 37.000473>,  <30.430439, 39.429779, 36.885765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799622, 39.327084, 37.000473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012389, -0.764471, -0.644539,
		0.384706, 0.591328, -0.708754,
		0.922956, -0.256739, 0.286770,
		31.076508, 39.250061, 37.086506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501711, 40.184608, 36.955227>,  <30.430439, 39.429779, 36.885765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501711, 40.184608, 36.955227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590309, 39.878880, 37.197468>,  <30.643469, 39.695442, 37.342812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590309, 39.878880, 37.197468>,  <30.501711, 40.184608, 36.955227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590309, 39.878880, 37.197468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957915, 0.286816, 0.011636,
		-0.182589, 0.577534, 0.795686,
		0.221496, -0.764324, 0.605598,
		30.656757, 39.649582, 37.379147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937376, 40.376698, 37.553844>,  <30.501711, 40.184608, 36.955227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937376, 40.376698, 37.553844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017704, 39.989990, 37.490570>,  <31.065901, 39.757965, 37.452606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017704, 39.989990, 37.490570>,  <30.937376, 40.376698, 37.553844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017704, 39.989990, 37.490570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979309, 0.194000, 0.057603,
		-0.025001, -0.166480, 0.985728,
		0.200821, -0.966772, -0.158185,
		31.077950, 39.699959, 37.443115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350250, 40.058437, 38.153404>,  <30.937376, 40.376698, 37.553844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350250, 40.058437, 38.153404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423428, 39.872097, 37.807106>,  <31.467335, 39.760292, 37.599327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423428, 39.872097, 37.807106>,  <31.350250, 40.058437, 38.153404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423428, 39.872097, 37.807106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982388, 0.120668, 0.142662,
		0.038009, -0.876598, 0.479720,
		0.182945, -0.465849, -0.865746,
		31.478312, 39.732342, 37.547382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982468, 39.882401, 37.834282>,  <31.350250, 40.058437, 38.153404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982468, 39.882401, 37.834282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237701, 40.190098, 37.820908>,  <32.390842, 40.374714, 37.812881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237701, 40.190098, 37.820908>,  <31.982468, 39.882401, 37.834282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237701, 40.190098, 37.820908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190294, -0.115473, 0.974912,
		0.746082, -0.628438, -0.220064,
		0.638083, 0.769241, -0.033436,
		32.429127, 40.420872, 37.810879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498642, 39.721752, 38.135811>,  <31.982468, 39.882401, 37.834282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498642, 39.721752, 38.135811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587547, 40.111679, 38.143089>,  <32.640892, 40.345634, 38.147457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587547, 40.111679, 38.143089>,  <32.498642, 39.721752, 38.135811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587547, 40.111679, 38.143089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144999, -0.051507, 0.988090,
		0.964144, -0.216978, -0.152795,
		0.222264, 0.974817, 0.018198,
		32.654228, 40.404125, 38.148548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195316, 39.777473, 38.478783>,  <32.498642, 39.721752, 38.135811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195316, 39.777473, 38.478783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007023, 40.126381, 38.531776>,  <32.894047, 40.335728, 38.563572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007023, 40.126381, 38.531776>,  <33.195316, 39.777473, 38.478783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007023, 40.126381, 38.531776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428100, 0.094517, 0.898775,
		0.771455, 0.479798, -0.417912,
		-0.470731, 0.872273, 0.132486,
		32.865803, 40.388062, 38.571522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701550, 40.253952, 38.769394>,  <33.195316, 39.777473, 38.478783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701550, 40.253952, 38.769394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330410, 40.364349, 38.869740>,  <33.107727, 40.430588, 38.929947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330410, 40.364349, 38.869740>,  <33.701550, 40.253952, 38.769394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330410, 40.364349, 38.869740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252480, -0.030277, 0.967128,
		0.274514, 0.960683, -0.041590,
		-0.927845, 0.275991, 0.250865,
		33.052055, 40.447147, 38.945000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657555, 40.844929, 39.283833>,  <33.701550, 40.253952, 38.769394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657555, 40.844929, 39.283833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336143, 40.609821, 39.321507>,  <33.143295, 40.468758, 39.344112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336143, 40.609821, 39.321507>,  <33.657555, 40.844929, 39.283833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336143, 40.609821, 39.321507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345754, -0.332044, 0.877611,
		-0.484560, 0.737749, 0.470030,
		-0.803527, -0.587770, 0.094185,
		33.095085, 40.433491, 39.349762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227692, 41.022045, 39.930660>,  <33.657555, 40.844929, 39.283833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227692, 41.022045, 39.930660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255482, 40.634975, 39.833683>,  <33.272156, 40.402733, 39.775497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255482, 40.634975, 39.833683>,  <33.227692, 41.022045, 39.930660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255482, 40.634975, 39.833683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478672, -0.180886, 0.859158,
		-0.875240, -0.175743, 0.450632,
		0.069479, -0.967675, -0.242442,
		33.276325, 40.344673, 39.760952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904041, 40.613838, 40.403370>,  <33.227692, 41.022045, 39.930660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904041, 40.613838, 40.403370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183498, 40.401344, 40.211662>,  <33.351173, 40.273849, 40.096638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183498, 40.401344, 40.211662>,  <32.904041, 40.613838, 40.403370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183498, 40.401344, 40.211662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408155, -0.254245, 0.876795,
		-0.587631, -0.808179, 0.039198,
		0.698641, -0.531231, -0.479264,
		33.393089, 40.241974, 40.067883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875782, 39.873192, 40.450577>,  <32.904041, 40.613838, 40.403370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875782, 39.873192, 40.450577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239300, 40.038040, 40.424503>,  <33.457409, 40.136948, 40.408859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239300, 40.038040, 40.424503>,  <32.875782, 39.873192, 40.450577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239300, 40.038040, 40.424503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253733, -0.421857, 0.870435,
		0.331229, -0.807584, -0.487950,
		0.908794, 0.412122, -0.065180,
		33.511936, 40.161678, 40.404949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471771, 39.435005, 40.513390>,  <32.875782, 39.873192, 40.450577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471771, 39.435005, 40.513390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592815, 39.790497, 40.651134>,  <33.665443, 40.003792, 40.733780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592815, 39.790497, 40.651134>,  <33.471771, 39.435005, 40.513390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592815, 39.790497, 40.651134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303950, -0.432419, 0.848898,
		0.903349, -0.152220, -0.400985,
		0.302613, 0.888731, 0.344358,
		33.683598, 40.057117, 40.754440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151173, 39.485645, 39.778549>,  <33.471771, 39.435005, 40.513390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151173, 39.485645, 39.778549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531651, 39.501541, 39.656139>,  <33.759937, 39.511078, 39.582695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531651, 39.501541, 39.656139>,  <33.151173, 39.485645, 39.778549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531651, 39.501541, 39.656139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193442, 0.695862, 0.691633,
		0.240438, -0.717074, 0.654212,
		0.951194, 0.039743, -0.306025,
		33.817009, 39.513466, 39.564331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495964, 39.803818, 39.417679>,  <33.151173, 39.485645, 39.778549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495964, 39.803818, 39.417679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643780, 40.143299, 39.569012>,  <32.732468, 40.346989, 39.659813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643780, 40.143299, 39.569012>,  <32.495964, 39.803818, 39.417679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643780, 40.143299, 39.569012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260025, 0.485339, -0.834765,
		-0.892093, 0.210098, 0.400035,
		0.369535, 0.848708, 0.378337,
		32.754639, 40.397911, 39.682514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979050, 40.525841, 39.616646>,  <32.495964, 39.803818, 39.417679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979050, 40.525841, 39.616646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356323, 40.607765, 39.511990>,  <32.582687, 40.656921, 39.449196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356323, 40.607765, 39.511990>,  <31.979050, 40.525841, 39.616646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356323, 40.607765, 39.511990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308945, 0.250752, -0.917429,
		-0.122294, 0.946137, 0.299781,
		0.943184, 0.204812, -0.261639,
		32.639278, 40.669209, 39.433498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058601, 41.202038, 39.201164>,  <31.979050, 40.525841, 39.616646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058601, 41.202038, 39.201164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380173, 40.974468, 39.131851>,  <32.573116, 40.837925, 39.090263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380173, 40.974468, 39.131851>,  <32.058601, 41.202038, 39.201164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380173, 40.974468, 39.131851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092781, 0.167819, -0.981442,
		0.587447, 0.805084, 0.082128,
		0.803926, -0.568926, -0.173281,
		32.621349, 40.803791, 39.079868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399998, 41.613064, 38.675655>,  <32.058601, 41.202038, 39.201164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399998, 41.613064, 38.675655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555138, 41.245995, 38.641155>,  <32.648224, 41.025753, 38.620457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555138, 41.245995, 38.641155>,  <32.399998, 41.613064, 38.675655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555138, 41.245995, 38.641155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145009, 0.153158, -0.977504,
		0.910243, 0.366622, 0.192474,
		0.387853, -0.917677, -0.086247,
		32.671494, 40.970692, 38.615280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845436, 41.703789, 38.141899>,  <32.399998, 41.613064, 38.675655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845436, 41.703789, 38.141899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799950, 41.306877, 38.161671>,  <32.772659, 41.068729, 38.173534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799950, 41.306877, 38.161671>,  <32.845436, 41.703789, 38.141899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799950, 41.306877, 38.161671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092955, -0.038909, -0.994910,
		0.989155, -0.117733, -0.087813,
		-0.113717, -0.992283, 0.049431,
		32.765835, 41.009193, 38.176498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344414, 41.361187, 37.774837>,  <32.845436, 41.703789, 38.141899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344414, 41.361187, 37.774837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055630, 41.085045, 37.756145>,  <32.882359, 40.919361, 37.744930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055630, 41.085045, 37.756145>,  <33.344414, 41.361187, 37.774837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055630, 41.085045, 37.756145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166705, -0.107999, -0.980074,
		0.671550, -0.715367, 0.193057,
		-0.721963, -0.690352, -0.046728,
		32.839043, 40.877941, 37.742126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530998, 40.683750, 37.537724>,  <33.344414, 41.361187, 37.774837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530998, 40.683750, 37.537724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142941, 40.711769, 37.444855>,  <32.910107, 40.728580, 37.389133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142941, 40.711769, 37.444855>,  <33.530998, 40.683750, 37.537724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142941, 40.711769, 37.444855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207818, -0.253306, -0.944800,
		-0.124992, -0.964847, 0.231187,
		-0.970149, 0.070048, -0.232174,
		32.851894, 40.732784, 37.375202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944111, 40.117500, 37.428715>,  <33.530998, 40.683750, 37.537724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944111, 40.117500, 37.428715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005074, 40.461269, 37.233505>,  <33.041653, 40.667530, 37.116379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005074, 40.461269, 37.233505>,  <32.944111, 40.117500, 37.428715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005074, 40.461269, 37.233505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210277, -0.510682, -0.833659,
		-0.965689, 0.024438, -0.258550,
		0.152409, 0.859423, -0.488021,
		33.050797, 40.719097, 37.087097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444092, 40.254597, 36.830765>,  <32.944111, 40.117500, 37.428715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444092, 40.254597, 36.830765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790577, 40.438641, 36.752819>,  <32.998466, 40.549068, 36.706051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790577, 40.438641, 36.752819>,  <32.444092, 40.254597, 36.830765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790577, 40.438641, 36.752819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052210, -0.471185, -0.880488,
		-0.496941, 0.752516, -0.432168,
		0.866212, 0.460114, -0.194862,
		33.050442, 40.576675, 36.694359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484390, 40.377438, 36.194763>,  <32.444092, 40.254597, 36.830765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484390, 40.377438, 36.194763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869354, 40.411057, 36.298065>,  <33.100334, 40.431229, 36.360046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869354, 40.411057, 36.298065>,  <32.484390, 40.377438, 36.194763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869354, 40.411057, 36.298065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259646, -0.563617, -0.784169,
		0.079649, 0.821750, -0.564255,
		0.962414, 0.084048, 0.258256,
		33.158077, 40.436272, 36.375542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736206, 40.332054, 35.646149>,  <32.484390, 40.377438, 36.194763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736206, 40.332054, 35.646149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064713, 40.262810, 35.863609>,  <33.261814, 40.221264, 35.994087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064713, 40.262810, 35.863609>,  <32.736206, 40.332054, 35.646149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064713, 40.262810, 35.863609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405677, -0.492845, -0.769760,
		0.401188, 0.852724, -0.334531,
		0.821264, -0.173107, 0.543654,
		33.311092, 40.210876, 36.026707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253284, 40.647873, 35.200283>,  <32.736206, 40.332054, 35.646149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253284, 40.647873, 35.200283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417236, 40.404476, 35.472088>,  <33.515606, 40.258438, 35.635170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417236, 40.404476, 35.472088>,  <33.253284, 40.647873, 35.200283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417236, 40.404476, 35.472088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516068, -0.459568, -0.722821,
		0.752113, 0.646945, 0.125655,
		0.409878, -0.608490, 0.679515,
		33.540199, 40.221928, 35.675941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003124, 40.714085, 35.087376>,  <33.253284, 40.647873, 35.200283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003124, 40.714085, 35.087376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905083, 40.364548, 35.255333>,  <33.846256, 40.154823, 35.356110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905083, 40.364548, 35.255333>,  <34.003124, 40.714085, 35.087376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905083, 40.364548, 35.255333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210673, -0.470767, -0.856735,
		0.946329, -0.121532, 0.299485,
		-0.245108, -0.873847, 0.419897,
		33.831551, 40.102394, 35.381302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554825, 40.253498, 34.928497>,  <34.003124, 40.714085, 35.087376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554825, 40.253498, 34.928497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238243, 40.017548, 34.992542>,  <34.048294, 39.875977, 35.030968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238243, 40.017548, 34.992542>,  <34.554825, 40.253498, 34.928497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238243, 40.017548, 34.992542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264395, -0.566580, -0.780437,
		0.551081, -0.575351, 0.604386,
		-0.791458, -0.589881, 0.160111,
		34.000805, 39.840584, 35.040577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749111, 39.528957, 34.815948>,  <34.554825, 40.253498, 34.928497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749111, 39.528957, 34.815948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350037, 39.517738, 34.791195>,  <34.110592, 39.511009, 34.776344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350037, 39.517738, 34.791195>,  <34.749111, 39.528957, 34.815948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350037, 39.517738, 34.791195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067380, -0.525448, -0.848153,
		-0.008731, -0.850363, 0.526124,
		-0.997689, -0.028045, -0.061885,
		34.050732, 39.509327, 34.772629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541786, 38.788197, 34.741283>,  <34.749111, 39.528957, 34.815948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541786, 38.788197, 34.741283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238865, 39.017166, 34.615536>,  <34.057114, 39.154549, 34.540089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238865, 39.017166, 34.615536>,  <34.541786, 38.788197, 34.741283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238865, 39.017166, 34.615536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050945, -0.531690, -0.845405,
		-0.651074, -0.624211, 0.431812,
		-0.757302, 0.572420, -0.314370,
		34.011673, 39.188892, 34.521225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217804, 38.362087, 34.306351>,  <34.541786, 38.788197, 34.741283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217804, 38.362087, 34.306351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058910, 38.715809, 34.208202>,  <33.963573, 38.928043, 34.149315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058910, 38.715809, 34.208202>,  <34.217804, 38.362087, 34.306351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058910, 38.715809, 34.208202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102416, -0.308417, -0.945722,
		-0.911983, -0.350547, 0.213082,
		-0.397238, 0.884305, -0.245369,
		33.939739, 38.981102, 34.134590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664501, 38.230736, 33.867027>,  <34.217804, 38.362087, 34.306351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664501, 38.230736, 33.867027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725479, 38.618950, 33.792381>,  <33.762066, 38.851879, 33.747593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725479, 38.618950, 33.792381>,  <33.664501, 38.230736, 33.867027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725479, 38.618950, 33.792381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130067, -0.167477, -0.977258,
		-0.979715, 0.173253, 0.100703,
		0.152447, 0.970533, -0.186615,
		33.771214, 38.910110, 33.736397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113716, 38.446964, 33.432213>,  <33.664501, 38.230736, 33.867027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113716, 38.446964, 33.432213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417721, 38.702847, 33.386333>,  <33.600124, 38.856377, 33.358807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417721, 38.702847, 33.386333>,  <33.113716, 38.446964, 33.432213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417721, 38.702847, 33.386333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061620, -0.246615, -0.967152,
		-0.646976, 0.727984, -0.226850,
		0.760016, 0.639703, -0.114696,
		33.645725, 38.894756, 33.351925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857254, 38.920208, 32.898006>,  <33.113716, 38.446964, 33.432213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857254, 38.920208, 32.898006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255341, 38.959274, 32.896507>,  <33.494190, 38.982716, 32.895607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255341, 38.959274, 32.896507>,  <32.857254, 38.920208, 32.898006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255341, 38.959274, 32.896507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004300, -0.082049, -0.996619,
		-0.097645, 0.991831, -0.082076,
		0.995212, 0.097668, -0.003747,
		33.553905, 38.988575, 32.895382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029339, 39.588459, 32.493137>,  <32.857254, 38.920208, 32.898006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029339, 39.588459, 32.493137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369156, 39.379215, 32.465927>,  <33.573048, 39.253670, 32.449600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369156, 39.379215, 32.465927>,  <33.029339, 39.588459, 32.493137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369156, 39.379215, 32.465927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056734, 0.037610, -0.997681,
		0.524457, 0.851434, 0.002274,
		0.849545, -0.523112, -0.068030,
		33.624020, 39.222282, 32.445518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224293, 39.692245, 31.767193>,  <33.029339, 39.588459, 32.493137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224293, 39.692245, 31.767193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496765, 39.427696, 31.892778>,  <33.660248, 39.268967, 31.968130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496765, 39.427696, 31.892778>,  <33.224293, 39.692245, 31.767193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496765, 39.427696, 31.892778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504623, 0.113449, -0.855853,
		0.530423, 0.741424, 0.411026,
		0.681181, -0.661378, 0.313963,
		33.701118, 39.229282, 31.986967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873058, 39.953648, 31.639532>,  <33.224293, 39.692245, 31.767193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873058, 39.953648, 31.639532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980629, 39.568604, 31.626482>,  <34.045170, 39.337578, 31.618652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980629, 39.568604, 31.626482>,  <33.873058, 39.953648, 31.639532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980629, 39.568604, 31.626482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596938, 0.193159, -0.778688,
		0.755873, 0.189935, 0.626563,
		0.268926, -0.962608, -0.032624,
		34.061306, 39.279819, 31.616695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585697, 40.032806, 31.439585>,  <33.873058, 39.953648, 31.639532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585697, 40.032806, 31.439585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461281, 39.667366, 31.334833>,  <34.386631, 39.448101, 31.271982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461281, 39.667366, 31.334833>,  <34.585697, 40.032806, 31.439585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461281, 39.667366, 31.334833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499932, 0.077060, -0.862630,
		0.808281, -0.399238, 0.432771,
		-0.311045, -0.913603, -0.261878,
		34.367966, 39.393284, 31.256269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201241, 39.728867, 31.132624>,  <34.585697, 40.032806, 31.439585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201241, 39.728867, 31.132624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912090, 39.469009, 31.038456>,  <34.738602, 39.313095, 30.981956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912090, 39.469009, 31.038456>,  <35.201241, 39.728867, 31.132624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912090, 39.469009, 31.038456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499786, -0.256308, -0.827358,
		0.477145, -0.715734, 0.509959,
		-0.722874, -0.649639, -0.235418,
		34.695229, 39.274117, 30.967831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684628, 39.186401, 30.908783>,  <35.201241, 39.728867, 31.132624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684628, 39.186401, 30.908783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317787, 39.130749, 30.759346>,  <35.097683, 39.097359, 30.669683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317787, 39.130749, 30.759346>,  <35.684628, 39.186401, 30.908783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317787, 39.130749, 30.759346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397045, -0.234606, -0.887308,
		0.035803, -0.962083, 0.270397,
		-0.917101, -0.139128, -0.373590,
		35.042656, 39.089012, 30.647268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751266, 38.545605, 30.499266>,  <35.684628, 39.186401, 30.908783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751266, 38.545605, 30.499266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418758, 38.734592, 30.382126>,  <35.219254, 38.847984, 30.311842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418758, 38.734592, 30.382126>,  <35.751266, 38.545605, 30.499266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418758, 38.734592, 30.382126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199694, -0.237835, -0.950556,
		-0.518761, -0.848648, 0.103355,
		-0.831269, 0.472472, -0.292849,
		35.169376, 38.876335, 30.294271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486420, 38.076584, 29.933298>,  <35.751266, 38.545605, 30.499266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486420, 38.076584, 29.933298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366875, 38.457314, 29.905830>,  <35.295147, 38.685749, 29.889349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366875, 38.457314, 29.905830>,  <35.486420, 38.076584, 29.933298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366875, 38.457314, 29.905830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169079, -0.018006, -0.985438,
		-0.939197, -0.306124, -0.155552,
		-0.298866, 0.951821, -0.068670,
		35.277214, 38.742859, 29.885229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168056, 38.058136, 29.232450>,  <35.486420, 38.076584, 29.933298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168056, 38.058136, 29.232450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208431, 38.452019, 29.289253>,  <35.232658, 38.688347, 29.323334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208431, 38.452019, 29.289253>,  <35.168056, 38.058136, 29.232450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208431, 38.452019, 29.289253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064236, 0.135986, -0.988626,
		-0.992816, 0.108915, -0.049527,
		0.100942, 0.984706, 0.142006,
		35.238712, 38.747429, 29.331856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703762, 38.418877, 28.780922>,  <35.168056, 38.058136, 29.232450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703762, 38.418877, 28.780922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964310, 38.703495, 28.886312>,  <35.120636, 38.874268, 28.949547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964310, 38.703495, 28.886312>,  <34.703762, 38.418877, 28.780922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964310, 38.703495, 28.886312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002836, 0.344959, -0.938614,
		-0.758758, 0.612129, 0.222677,
		0.651367, 0.711549, 0.263476,
		35.159721, 38.916958, 28.965355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507298, 39.082539, 28.406492>,  <34.703762, 38.418877, 28.780922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507298, 39.082539, 28.406492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894562, 39.110558, 28.502625>,  <35.126919, 39.127369, 28.560305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894562, 39.110558, 28.502625>,  <34.507298, 39.082539, 28.406492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894562, 39.110558, 28.502625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221306, 0.209200, -0.952501,
		-0.117001, 0.975361, 0.187036,
		0.968160, 0.070051, 0.240330,
		35.185009, 39.131573, 28.574724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721973, 39.562374, 27.906956>,  <34.507298, 39.082539, 28.406492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721973, 39.562374, 27.906956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071301, 39.419052, 28.038971>,  <35.280899, 39.333057, 28.118181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071301, 39.419052, 28.038971>,  <34.721973, 39.562374, 27.906956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071301, 39.419052, 28.038971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347297, -0.017145, -0.937599,
		0.341604, 0.933448, 0.109465,
		0.873322, -0.358304, 0.330040,
		35.333298, 39.311562, 28.137983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261108, 40.060799, 27.792156>,  <34.721973, 39.562374, 27.906956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261108, 40.060799, 27.792156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432163, 39.700050, 27.816658>,  <35.534798, 39.483601, 27.831360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432163, 39.700050, 27.816658>,  <35.261108, 40.060799, 27.792156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432163, 39.700050, 27.816658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455426, 0.156419, -0.876425,
		0.780842, 0.402690, 0.477627,
		0.427638, -0.901872, 0.061257,
		35.560455, 39.429489, 27.835035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910526, 40.231449, 27.562685>,  <35.261108, 40.060799, 27.792156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910526, 40.231449, 27.562685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843315, 39.839191, 27.522469>,  <35.802990, 39.603836, 27.498339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843315, 39.839191, 27.522469>,  <35.910526, 40.231449, 27.562685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843315, 39.839191, 27.522469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348500, 0.036312, -0.936605,
		0.922125, -0.192415, 0.335653,
		-0.168029, -0.980641, -0.100541,
		35.792908, 39.544998, 27.492306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443214, 40.109364, 27.169117>,  <35.910526, 40.231449, 27.562685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443214, 40.109364, 27.169117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207623, 39.795406, 27.092134>,  <36.066269, 39.607033, 27.045944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207623, 39.795406, 27.092134>,  <36.443214, 40.109364, 27.169117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207623, 39.795406, 27.092134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324225, -0.011359, -0.945912,
		0.740257, -0.619523, 0.261173,
		-0.588981, -0.784896, -0.192456,
		36.030930, 39.559937, 27.034397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868931, 39.608433, 26.873825>,  <36.443214, 40.109364, 27.169117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868931, 39.608433, 26.873825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509384, 39.470150, 26.766109>,  <36.293655, 39.387180, 26.701481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509384, 39.470150, 26.766109>,  <36.868931, 39.608433, 26.873825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509384, 39.470150, 26.766109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339298, -0.160163, -0.926944,
		0.277322, -0.924572, 0.261264,
		-0.898871, -0.345708, -0.269289,
		36.239723, 39.366436, 26.685322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967785, 38.950356, 26.488008>,  <36.868931, 39.608433, 26.873825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967785, 38.950356, 26.488008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634651, 39.143486, 26.379745>,  <36.434769, 39.259365, 26.314787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634651, 39.143486, 26.379745>,  <36.967785, 38.950356, 26.488008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634651, 39.143486, 26.379745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294515, -0.027475, -0.955252,
		-0.468662, -0.875282, -0.119319,
		-0.832837, 0.482831, -0.270660,
		36.384800, 39.288334, 26.298548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740677, 38.499290, 25.981348>,  <36.967785, 38.950356, 26.488008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740677, 38.499290, 25.981348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552139, 38.840839, 25.893047>,  <36.439014, 39.045769, 25.840067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552139, 38.840839, 25.893047>,  <36.740677, 38.499290, 25.981348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552139, 38.840839, 25.893047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118264, -0.186847, -0.975244,
		-0.873983, -0.485784, -0.012913,
		-0.471345, 0.853874, -0.220752,
		36.410736, 39.097000, 25.826822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405098, 38.316185, 25.441559>,  <36.740677, 38.499290, 25.981348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405098, 38.316185, 25.441559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379101, 38.715229, 25.432199>,  <36.363503, 38.954655, 25.426584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379101, 38.715229, 25.432199>,  <36.405098, 38.316185, 25.441559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379101, 38.715229, 25.432199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289822, -0.003566, -0.957074,
		-0.954871, -0.068988, -0.288898,
		-0.064997, 0.997611, -0.023399,
		36.359600, 39.014511, 25.425180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004505, 38.404678, 24.910988>,  <36.405098, 38.316185, 25.441559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004505, 38.404678, 24.910988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180687, 38.760376, 24.960361>,  <36.286396, 38.973797, 24.989986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180687, 38.760376, 24.960361>,  <36.004505, 38.404678, 24.910988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180687, 38.760376, 24.960361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240493, 0.015597, -0.970526,
		-0.864963, 0.457159, -0.206988,
		0.440457, 0.889248, 0.123434,
		36.312824, 39.027149, 24.997393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803280, 38.883518, 24.275885>,  <36.004505, 38.404678, 24.910988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803280, 38.883518, 24.275885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143864, 39.012684, 24.441172>,  <36.348213, 39.090183, 24.540344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143864, 39.012684, 24.441172>,  <35.803280, 38.883518, 24.275885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143864, 39.012684, 24.441172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395412, 0.122279, -0.910328,
		-0.344483, 0.938497, -0.023567,
		0.851458, 0.322911, 0.413216,
		36.399300, 39.109558, 24.565136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919041, 39.465282, 23.898399>,  <35.803280, 38.883518, 24.275885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919041, 39.465282, 23.898399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274971, 39.385139, 24.062380>,  <36.488529, 39.337051, 24.160769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274971, 39.385139, 24.062380>,  <35.919041, 39.465282, 23.898399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274971, 39.385139, 24.062380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444345, 0.176230, -0.878351,
		0.103740, 0.963742, 0.245843,
		0.889829, -0.200359, 0.409952,
		36.541920, 39.325031, 24.185366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415466, 39.969242, 23.547501>,  <35.919041, 39.465282, 23.898399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415466, 39.969242, 23.547501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636761, 39.667709, 23.689299>,  <36.769539, 39.486790, 23.774378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636761, 39.667709, 23.689299>,  <36.415466, 39.969242, 23.547501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636761, 39.667709, 23.689299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406115, -0.127484, -0.904886,
		0.727324, 0.644582, 0.235613,
		0.553236, -0.753831, 0.354497,
		36.802731, 39.441559, 23.795649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070618, 40.186535, 23.346121>,  <36.415466, 39.969242, 23.547501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070618, 40.186535, 23.346121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102661, 39.795288, 23.422922>,  <37.121887, 39.560539, 23.469004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102661, 39.795288, 23.422922>,  <37.070618, 40.186535, 23.346121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102661, 39.795288, 23.422922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635045, -0.098390, -0.766183,
		0.768310, 0.183309, 0.613268,
		0.080108, -0.978119, 0.192004,
		37.126694, 39.501854, 23.480524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806892, 40.067436, 23.468931>,  <37.070618, 40.186535, 23.346121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806892, 40.067436, 23.468931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635166, 39.716125, 23.384731>,  <37.532131, 39.505337, 23.334211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635166, 39.716125, 23.384731>,  <37.806892, 40.067436, 23.468931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635166, 39.716125, 23.384731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791555, -0.253677, -0.555958,
		0.434889, -0.405303, 0.804115,
		-0.429317, -0.878281, -0.210498,
		37.506371, 39.452641, 23.321581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253475, 39.546051, 23.644932>,  <37.806892, 40.067436, 23.468931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253475, 39.546051, 23.644932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000988, 39.366650, 23.391819>,  <37.849495, 39.259010, 23.239950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000988, 39.366650, 23.391819>,  <38.253475, 39.546051, 23.644932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000988, 39.366650, 23.391819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774489, -0.320658, -0.545294,
		0.041658, -0.834281, 0.549763,
		-0.631215, -0.448501, -0.632783,
		37.811623, 39.232098, 23.201984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612408, 39.003857, 23.527401>,  <38.253475, 39.546051, 23.644932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612408, 39.003857, 23.527401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362198, 39.064323, 23.221233>,  <38.212070, 39.100605, 23.037533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362198, 39.064323, 23.221233>,  <38.612408, 39.003857, 23.527401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362198, 39.064323, 23.221233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736411, -0.209666, -0.643226,
		-0.257721, -0.966016, 0.019825,
		-0.625523, 0.151174, -0.765420,
		38.174541, 39.109676, 22.991608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861946, 38.569168, 23.063032>,  <38.612408, 39.003857, 23.527401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861946, 38.569168, 23.063032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638042, 38.810181, 22.835478>,  <38.503700, 38.954788, 22.698946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638042, 38.810181, 22.835478>,  <38.861946, 38.569168, 23.063032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638042, 38.810181, 22.835478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646509, -0.111898, -0.754655,
		-0.518359, -0.790213, -0.326905,
		-0.559758, 0.602530, -0.568884,
		38.470116, 38.990940, 22.664812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906063, 38.269207, 22.391918>,  <38.861946, 38.569168, 23.063032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906063, 38.269207, 22.391918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777889, 38.644356, 22.338678>,  <38.700985, 38.869446, 22.306734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777889, 38.644356, 22.338678>,  <38.906063, 38.269207, 22.391918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777889, 38.644356, 22.338678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543109, 0.066778, -0.837003,
		-0.776114, -0.340493, -0.530765,
		-0.320436, 0.937873, -0.133098,
		38.681759, 38.925716, 22.298750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822067, 38.367840, 21.630161>,  <38.906063, 38.269207, 22.391918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822067, 38.367840, 21.630161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826771, 38.737949, 21.781805>,  <38.829594, 38.960014, 21.872791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826771, 38.737949, 21.781805>,  <38.822067, 38.367840, 21.630161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826771, 38.737949, 21.781805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599027, 0.297055, -0.743590,
		-0.800643, 0.235842, -0.550772,
		0.011760, 0.925277, 0.379110,
		38.830299, 39.015533, 21.895538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614685, 38.871338, 21.060827>,  <38.822067, 38.367840, 21.630161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614685, 38.871338, 21.060827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825985, 39.074547, 21.332962>,  <38.952766, 39.196472, 21.496243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825985, 39.074547, 21.332962>,  <38.614685, 38.871338, 21.060827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825985, 39.074547, 21.332962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483529, 0.478656, -0.732864,
		-0.697960, 0.716101, 0.007207,
		0.528254, 0.508024, 0.680338,
		38.984463, 39.226955, 21.537064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106556, 39.112427, 20.633455>,  <38.614685, 38.871338, 21.060827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106556, 39.112427, 20.633455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286694, 38.974056, 20.304209>,  <39.394775, 38.891033, 20.106661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286694, 38.974056, 20.304209>,  <39.106556, 39.112427, 20.633455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286694, 38.974056, 20.304209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165919, 0.938261, -0.303542,
		0.877303, 0.000127, 0.479936,
		0.450344, -0.345928, -0.823119,
		39.421795, 38.870277, 20.057274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717094, 39.487457, 20.627123>,  <39.106556, 39.112427, 20.633455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717094, 39.487457, 20.627123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563850, 39.384212, 20.272360>,  <39.471905, 39.322266, 20.059502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563850, 39.384212, 20.272360>,  <39.717094, 39.487457, 20.627123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563850, 39.384212, 20.272360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012013, 0.961476, -0.274628,
		0.923624, -0.094558, -0.371452,
		-0.383110, -0.258115, -0.886907,
		39.448917, 39.306778, 20.006289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278816, 39.767902, 21.171288>,  <39.717094, 39.487457, 20.627123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278816, 39.767902, 21.171288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127518, 39.792923, 20.801851>,  <39.036739, 39.807934, 20.580191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127518, 39.792923, 20.801851>,  <39.278816, 39.767902, 21.171288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127518, 39.792923, 20.801851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117745, 0.986360, 0.115025,
		0.918186, 0.152255, -0.365721,
		-0.378246, 0.062552, -0.923589,
		39.014046, 39.811687, 20.524775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140682, 40.534122, 21.104242>,  <39.278816, 39.767902, 21.171288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140682, 40.534122, 21.104242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492634, 40.716484, 21.157854>,  <39.703804, 40.825901, 21.190022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492634, 40.716484, 21.157854>,  <39.140682, 40.534122, 21.104242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492634, 40.716484, 21.157854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330416, -0.384243, -0.862080,
		-0.341528, 0.802811, -0.488726,
		0.879877, 0.455907, 0.134031,
		39.756596, 40.853256, 21.198063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233673, 40.911648, 20.562305>,  <39.140682, 40.534122, 21.104242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233673, 40.911648, 20.562305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598511, 40.907547, 20.726250>,  <39.817413, 40.905087, 20.824617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598511, 40.907547, 20.726250>,  <39.233673, 40.911648, 20.562305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598511, 40.907547, 20.726250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369745, -0.411364, -0.833107,
		0.177145, 0.911413, -0.371410,
		0.912090, -0.010254, 0.409862,
		39.872139, 40.904472, 20.849209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872272, 40.608414, 20.183067>,  <39.233673, 40.911648, 20.562305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872272, 40.608414, 20.183067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236485, 40.575260, 20.021044>,  <40.455009, 40.555367, 19.923830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236485, 40.575260, 20.021044>,  <39.872272, 40.608414, 20.183067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236485, 40.575260, 20.021044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410286, 0.302133, 0.860454,
		0.051061, -0.949655, 0.309108,
		0.910526, -0.082887, -0.405058,
		40.509644, 40.550396, 19.899527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301666, 40.025845, 20.529224>,  <39.872272, 40.608414, 20.183067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301666, 40.025845, 20.529224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461857, 40.362740, 20.384861>,  <40.557972, 40.564877, 20.298243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461857, 40.362740, 20.384861>,  <40.301666, 40.025845, 20.529224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461857, 40.362740, 20.384861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293023, 0.255478, 0.921341,
		0.868194, -0.474726, -0.144483,
		0.400472, 0.842239, -0.360910,
		40.581997, 40.615410, 20.276588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820324, 40.224205, 21.050196>,  <40.301666, 40.025845, 20.529224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820324, 40.224205, 21.050196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642162, 40.509342, 20.833506>,  <40.535267, 40.680424, 20.703491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642162, 40.509342, 20.833506>,  <40.820324, 40.224205, 21.050196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642162, 40.509342, 20.833506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355996, 0.414170, 0.837693,
		0.821513, 0.565964, 0.069297,
		-0.445403, 0.712845, -0.541727,
		40.508541, 40.723194, 20.670988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077934, 40.836075, 21.307957>,  <40.820324, 40.224205, 21.050196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077934, 40.836075, 21.307957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713432, 40.877167, 21.148422>,  <40.494732, 40.901821, 21.052702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713432, 40.877167, 21.148422>,  <41.077934, 40.836075, 21.307957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713432, 40.877167, 21.148422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380323, 0.161721, 0.910604,
		0.158043, 0.981475, -0.108299,
		-0.911250, 0.102726, -0.398837,
		40.440056, 40.907986, 21.028770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811108, 41.410969, 21.611910>,  <41.077934, 40.836075, 21.307957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811108, 41.410969, 21.611910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483639, 41.220634, 21.483316>,  <40.287155, 41.106434, 21.406160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483639, 41.220634, 21.483316>,  <40.811108, 41.410969, 21.611910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483639, 41.220634, 21.483316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436700, 0.152331, 0.886616,
		-0.372911, 0.866243, -0.332506,
		-0.818676, -0.475834, -0.321483,
		40.238037, 41.077885, 21.386871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217140, 41.823273, 21.737753>,  <40.811108, 41.410969, 21.611910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217140, 41.823273, 21.737753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139111, 41.431156, 21.725233>,  <40.092293, 41.195889, 21.717722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139111, 41.431156, 21.725233>,  <40.217140, 41.823273, 21.737753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139111, 41.431156, 21.725233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228835, 0.014460, 0.973358,
		-0.953718, 0.197044, -0.227145,
		-0.195078, -0.980288, -0.031300,
		40.080585, 41.137070, 21.715843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558811, 41.754337, 21.968983>,  <40.217140, 41.823273, 21.737753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558811, 41.754337, 21.968983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767395, 41.425076, 22.058861>,  <39.892548, 41.227516, 22.112787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767395, 41.425076, 22.058861>,  <39.558811, 41.754337, 21.968983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767395, 41.425076, 22.058861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279490, 0.084031, 0.956465,
		-0.806203, -0.561559, -0.186245,
		0.521461, -0.823159, 0.224696,
		39.923832, 41.178127, 22.126270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126385, 41.288559, 22.528780>,  <39.558811, 41.754337, 21.968983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126385, 41.288559, 22.528780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497555, 41.140972, 22.549999>,  <39.720257, 41.052422, 22.562731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497555, 41.140972, 22.549999>,  <39.126385, 41.288559, 22.528780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497555, 41.140972, 22.549999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097878, -0.103854, 0.989765,
		-0.359682, -0.923622, -0.132483,
		0.927927, -0.368968, 0.053048,
		39.775932, 41.030281, 22.565914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055801, 40.756107, 23.046558>,  <39.126385, 41.288559, 22.528780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055801, 40.756107, 23.046558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452286, 40.804314, 23.024731>,  <39.690178, 40.833237, 23.011635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452286, 40.804314, 23.024731>,  <39.055801, 40.756107, 23.046558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452286, 40.804314, 23.024731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068176, -0.111834, 0.991386,
		0.113376, -0.986392, -0.119068,
		0.991210, 0.120516, -0.054569,
		39.749649, 40.840469, 23.008360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439659, 40.133720, 23.280996>,  <39.055801, 40.756107, 23.046558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439659, 40.133720, 23.280996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683945, 40.447311, 23.325554>,  <39.830517, 40.635468, 23.352289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683945, 40.447311, 23.325554>,  <39.439659, 40.133720, 23.280996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683945, 40.447311, 23.325554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005635, -0.136368, 0.990642,
		0.791832, -0.605626, -0.078864,
		0.610713, 0.783978, 0.111393,
		39.867157, 40.682507, 23.358973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806465, 40.015057, 23.872412>,  <39.439659, 40.133720, 23.280996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806465, 40.015057, 23.872412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917233, 40.398647, 23.848167>,  <39.983692, 40.628803, 23.833622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917233, 40.398647, 23.848167>,  <39.806465, 40.015057, 23.872412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917233, 40.398647, 23.848167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059183, 0.079977, 0.995038,
		0.959069, -0.271956, 0.078902,
		0.276917, 0.958980, -0.060609,
		40.000309, 40.686340, 23.829985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422260, 40.079700, 24.288225>,  <39.806465, 40.015057, 23.872412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422260, 40.079700, 24.288225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231197, 40.430260, 24.263657>,  <40.116562, 40.640594, 24.248915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231197, 40.430260, 24.263657>,  <40.422260, 40.079700, 24.288225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231197, 40.430260, 24.263657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022692, 0.057582, 0.998083,
		0.878255, 0.478131, -0.007617,
		-0.477653, 0.876399, -0.061422,
		40.087902, 40.693180, 24.245230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622841, 40.340183, 24.936701>,  <40.422260, 40.079700, 24.288225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622841, 40.340183, 24.936701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354507, 40.603928, 24.800920>,  <40.193508, 40.762173, 24.719452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354507, 40.603928, 24.800920>,  <40.622841, 40.340183, 24.936701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354507, 40.603928, 24.800920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123893, 0.351649, 0.927897,
		0.731185, 0.664521, -0.154208,
		-0.670834, 0.659360, -0.339450,
		40.153255, 40.801735, 24.699085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786976, 41.008850, 25.344995>,  <40.622841, 40.340183, 24.936701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786976, 41.008850, 25.344995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405952, 41.026321, 25.224518>,  <40.177338, 41.036804, 25.152231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405952, 41.026321, 25.224518>,  <40.786976, 41.008850, 25.344995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405952, 41.026321, 25.224518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295199, 0.108179, 0.949292,
		0.074048, 0.993171, -0.090153,
		-0.952562, 0.043680, -0.301194,
		40.120182, 41.039425, 25.134159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481636, 41.463131, 25.695604>,  <40.786976, 41.008850, 25.344995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481636, 41.463131, 25.695604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151119, 41.270908, 25.578094>,  <39.952808, 41.155575, 25.507589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151119, 41.270908, 25.578094>,  <40.481636, 41.463131, 25.695604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151119, 41.270908, 25.578094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393809, 0.120022, 0.911323,
		-0.402685, 0.868711, -0.288422,
		-0.826293, -0.480559, -0.293775,
		39.903233, 41.126740, 25.489962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959438, 41.813763, 25.925749>,  <40.481636, 41.463131, 25.695604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959438, 41.813763, 25.925749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798965, 41.450775, 25.875875>,  <39.702682, 41.232983, 25.845951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798965, 41.450775, 25.875875>,  <39.959438, 41.813763, 25.925749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798965, 41.450775, 25.875875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504501, 0.105291, 0.856967,
		-0.764544, 0.406707, -0.500061,
		-0.401187, -0.907471, -0.124685,
		39.678608, 41.178535, 25.838470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250584, 41.852764, 25.857082>,  <39.959438, 41.813763, 25.925749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250584, 41.852764, 25.857082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305847, 41.469860, 25.958721>,  <39.339005, 41.240116, 26.019705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305847, 41.469860, 25.958721>,  <39.250584, 41.852764, 25.857082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305847, 41.469860, 25.958721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627391, 0.113930, 0.770324,
		-0.766351, -0.265843, -0.584837,
		0.138155, -0.957260, 0.254098,
		39.347294, 41.182682, 26.034950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522602, 41.524517, 25.918968>,  <39.250584, 41.852764, 25.857082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522602, 41.524517, 25.918968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784081, 41.309593, 26.132126>,  <38.940968, 41.180637, 26.260019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784081, 41.309593, 26.132126>,  <38.522602, 41.524517, 25.918968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784081, 41.309593, 26.132126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625041, 0.013622, 0.780473,
		-0.426616, -0.843274, -0.326937,
		0.653699, -0.537311, 0.532892,
		38.980190, 41.148399, 26.291994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163235, 41.005009, 26.021301>,  <38.522602, 41.524517, 25.918968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163235, 41.005009, 26.021301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434502, 41.002289, 26.315252>,  <38.597263, 41.000656, 26.491623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434502, 41.002289, 26.315252>,  <38.163235, 41.005009, 26.021301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434502, 41.002289, 26.315252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734533, -0.038180, 0.677498,
		0.023453, -0.999248, -0.030884,
		0.678167, -0.006796, 0.734876,
		38.637951, 41.000248, 26.535715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029228, 40.430901, 26.638769>,  <38.163235, 41.005009, 26.021301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029228, 40.430901, 26.638769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281925, 40.682018, 26.820658>,  <38.433544, 40.832687, 26.929790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281925, 40.682018, 26.820658>,  <38.029228, 40.430901, 26.638769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281925, 40.682018, 26.820658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614401, 0.047837, 0.787542,
		0.472663, -0.776907, 0.415939,
		0.631744, 0.627796, 0.454721,
		38.471447, 40.870358, 26.957075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002831, 40.281788, 27.343426>,  <38.029228, 40.430901, 26.638769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002831, 40.281788, 27.343426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210480, 40.620522, 27.389696>,  <38.335068, 40.823761, 27.417458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210480, 40.620522, 27.389696>,  <38.002831, 40.281788, 27.343426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210480, 40.620522, 27.389696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466998, 0.167677, 0.868215,
		0.715841, -0.504728, 0.482516,
		0.519119, 0.846838, 0.115676,
		38.366215, 40.874573, 27.424398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405506, 40.218712, 28.000893>,  <38.002831, 40.281788, 27.343426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405506, 40.218712, 28.000893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349220, 40.606548, 27.920795>,  <38.315449, 40.839249, 27.872736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349220, 40.606548, 27.920795>,  <38.405506, 40.218712, 28.000893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349220, 40.606548, 27.920795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278266, 0.155371, 0.947854,
		0.950140, 0.189103, 0.247940,
		-0.140719, 0.969588, -0.200245,
		38.307003, 40.897423, 27.860722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603996, 40.556175, 28.575499>,  <38.405506, 40.218712, 28.000893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603996, 40.556175, 28.575499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381447, 40.839672, 28.401999>,  <38.247917, 41.009769, 28.297899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381447, 40.839672, 28.401999>,  <38.603996, 40.556175, 28.575499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381447, 40.839672, 28.401999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282068, 0.329915, 0.900885,
		0.781593, 0.623574, 0.016358,
		-0.556372, 0.708740, -0.433749,
		38.214535, 41.052296, 28.271873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649113, 41.144600, 28.916464>,  <38.603996, 40.556175, 28.575499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649113, 41.144600, 28.916464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319118, 41.253498, 28.718357>,  <38.121124, 41.318836, 28.599493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319118, 41.253498, 28.718357>,  <38.649113, 41.144600, 28.916464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319118, 41.253498, 28.718357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439516, 0.241863, 0.865060,
		0.355292, 0.931336, -0.079878,
		-0.824981, 0.272241, -0.495269,
		38.071625, 41.335171, 28.569777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482574, 41.926693, 29.183687>,  <38.649113, 41.144600, 28.916464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482574, 41.926693, 29.183687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159145, 41.731396, 29.052334>,  <37.965088, 41.614220, 28.973522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159145, 41.731396, 29.052334>,  <38.482574, 41.926693, 29.183687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159145, 41.731396, 29.052334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509703, 0.302373, 0.805465,
		-0.293967, 0.818652, -0.493347,
		-0.808571, -0.488241, -0.328382,
		37.916573, 41.584923, 28.953819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935848, 42.430141, 29.240353>,  <38.482574, 41.926693, 29.183687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935848, 42.430141, 29.240353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748554, 42.077820, 29.212244>,  <37.636177, 41.866428, 29.195379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748554, 42.077820, 29.212244>,  <37.935848, 42.430141, 29.240353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748554, 42.077820, 29.212244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737764, 0.345950, 0.579675,
		-0.486269, 0.323270, -0.811812,
		-0.468238, -0.880804, -0.070272,
		37.608082, 41.813580, 29.191162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131771, 42.545139, 29.282852>,  <37.935848, 42.430141, 29.240353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131771, 42.545139, 29.282852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162643, 42.148510, 29.324465>,  <37.181168, 41.910534, 29.349432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162643, 42.148510, 29.324465>,  <37.131771, 42.545139, 29.282852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162643, 42.148510, 29.324465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711708, 0.018276, 0.702238,
		-0.698223, -0.128241, -0.704301,
		0.077184, -0.991574, 0.104031,
		37.185799, 41.851036, 29.355675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427719, 42.161961, 29.274738>,  <37.131771, 42.545139, 29.282852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427719, 42.161961, 29.274738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694633, 41.972610, 29.504745>,  <36.854782, 41.859001, 29.642750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694633, 41.972610, 29.504745>,  <36.427719, 42.161961, 29.274738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694633, 41.972610, 29.504745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668234, -0.039557, 0.742898,
		-0.328924, -0.879972, -0.342721,
		0.667287, -0.473375, 0.575016,
		36.894821, 41.830597, 29.677250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947628, 41.728256, 29.421413>,  <36.427719, 42.161961, 29.274738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947628, 41.728256, 29.421413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262333, 41.689350, 29.665230>,  <36.451157, 41.666008, 29.811520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262333, 41.689350, 29.665230>,  <35.947628, 41.728256, 29.421413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262333, 41.689350, 29.665230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616215, -0.066527, 0.784763,
		-0.035767, -0.993034, -0.112268,
		0.786765, -0.097250, 0.609543,
		36.498363, 41.660172, 29.848093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773705, 41.299812, 29.874842>,  <35.947628, 41.728256, 29.421413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773705, 41.299812, 29.874842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058365, 41.501232, 30.070795>,  <36.229160, 41.622086, 30.188368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058365, 41.501232, 30.070795>,  <35.773705, 41.299812, 29.874842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058365, 41.501232, 30.070795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570132, 0.006519, 0.821527,
		0.410490, -0.863939, 0.291732,
		0.711651, 0.503554, 0.489883,
		36.271862, 41.652298, 30.217760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867989, 40.930294, 30.447124>,  <35.773705, 41.299812, 29.874842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867989, 40.930294, 30.447124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032055, 41.275711, 30.564466>,  <36.130497, 41.482960, 30.634871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032055, 41.275711, 30.564466>,  <35.867989, 40.930294, 30.447124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032055, 41.275711, 30.564466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496135, -0.058622, 0.866264,
		0.765253, -0.500857, 0.404389,
		0.410168, 0.863542, 0.293353,
		36.155106, 41.534775, 30.652472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928776, 40.920696, 31.184446>,  <35.867989, 40.930294, 30.447124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928776, 40.920696, 31.184446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946117, 41.313313, 31.109936>,  <35.956520, 41.548882, 31.065229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946117, 41.313313, 31.109936>,  <35.928776, 40.920696, 31.184446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946117, 41.313313, 31.109936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363658, 0.189166, 0.912124,
		0.930523, 0.028201, 0.365145,
		0.043350, 0.981540, -0.186279,
		35.959122, 41.607773, 31.054052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348557, 41.177044, 31.752131>,  <35.928776, 40.920696, 31.184446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348557, 41.177044, 31.752131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163540, 41.501163, 31.608202>,  <36.052532, 41.695637, 31.521845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163540, 41.501163, 31.608202>,  <36.348557, 41.177044, 31.752131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163540, 41.501163, 31.608202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256711, 0.266058, 0.929146,
		0.848620, 0.522137, 0.084951,
		-0.462540, 0.810300, -0.359821,
		36.024776, 41.744255, 31.500256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485725, 41.569103, 32.258427>,  <36.348557, 41.177044, 31.752131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485725, 41.569103, 32.258427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186085, 41.756214, 32.070801>,  <36.006298, 41.868481, 31.958225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186085, 41.756214, 32.070801>,  <36.485725, 41.569103, 32.258427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186085, 41.756214, 32.070801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401232, 0.243033, 0.883147,
		0.527118, 0.849774, 0.005631,
		-0.749106, 0.467782, -0.469063,
		35.961353, 41.896549, 31.930082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442493, 42.154240, 32.591827>,  <36.485725, 41.569103, 32.258427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442493, 42.154240, 32.591827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081276, 42.148106, 32.420116>,  <35.864544, 42.144424, 32.317089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081276, 42.148106, 32.420116>,  <36.442493, 42.154240, 32.591827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081276, 42.148106, 32.420116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392205, 0.436991, 0.809453,
		0.175177, 0.899335, -0.400636,
		-0.903044, -0.015334, -0.429275,
		35.810364, 42.143505, 32.291332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163994, 42.677109, 32.920589>,  <36.442493, 42.154240, 32.591827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163994, 42.677109, 32.920589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848839, 42.494598, 32.755157>,  <35.659744, 42.385090, 32.655899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848839, 42.494598, 32.755157>,  <36.163994, 42.677109, 32.920589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848839, 42.494598, 32.755157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596632, 0.399233, 0.696163,
		-0.152530, 0.795250, -0.586781,
		-0.787886, -0.456278, -0.413577,
		35.612473, 42.357716, 32.631084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602612, 43.126328, 33.068317>,  <36.163994, 42.677109, 32.920589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602612, 43.126328, 33.068317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429298, 42.775070, 32.987194>,  <35.325310, 42.564316, 32.938519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429298, 42.775070, 32.987194>,  <35.602612, 43.126328, 33.068317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429298, 42.775070, 32.987194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537330, 0.071032, 0.840376,
		-0.723565, 0.473093, -0.502629,
		-0.433278, -0.878144, -0.202811,
		35.299316, 42.511627, 32.926350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847355, 43.168385, 33.271164>,  <35.602612, 43.126328, 33.068317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847355, 43.168385, 33.271164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972538, 42.788738, 33.285179>,  <35.047649, 42.560951, 33.293587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972538, 42.788738, 33.285179>,  <34.847355, 43.168385, 33.271164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972538, 42.788738, 33.285179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361319, -0.084861, 0.928573,
		-0.878352, -0.303268, -0.369493,
		0.312962, -0.949119, 0.035039,
		35.066425, 42.504002, 33.295692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226131, 42.817028, 33.604633>,  <34.847355, 43.168385, 33.271164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226131, 42.817028, 33.604633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549599, 42.582130, 33.618504>,  <34.743679, 42.441193, 33.626827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549599, 42.582130, 33.618504>,  <34.226131, 42.817028, 33.604633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549599, 42.582130, 33.618504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313903, -0.380904, 0.869699,
		-0.497523, -0.714178, -0.492363,
		0.808663, -0.587249, 0.034674,
		34.792198, 42.405956, 33.628906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980728, 42.129959, 33.904163>,  <34.226131, 42.817028, 33.604633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980728, 42.129959, 33.904163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373806, 42.150787, 33.975262>,  <34.609653, 42.163284, 34.017921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373806, 42.150787, 33.975262>,  <33.980728, 42.129959, 33.904163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373806, 42.150787, 33.975262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149753, -0.341376, 0.927921,
		0.108992, -0.938484, -0.327673,
		0.982698, 0.052066, 0.177748,
		34.668613, 42.166409, 34.028587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144772, 41.509342, 34.299431>,  <33.980728, 42.129959, 33.904163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144772, 41.509342, 34.299431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429405, 41.771702, 34.400177>,  <34.600185, 41.929119, 34.460625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429405, 41.771702, 34.400177>,  <34.144772, 41.509342, 34.299431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429405, 41.771702, 34.400177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072065, -0.424719, 0.902453,
		0.698893, -0.624023, -0.349492,
		0.711587, 0.655903, 0.251863,
		34.642879, 41.968472, 34.475735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592194, 41.153477, 34.621792>,  <34.144772, 41.509342, 34.299431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592194, 41.153477, 34.621792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701340, 41.514320, 34.755505>,  <34.766827, 41.730827, 34.835732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701340, 41.514320, 34.755505>,  <34.592194, 41.153477, 34.621792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701340, 41.514320, 34.755505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030480, -0.339190, 0.940224,
		0.961568, -0.266746, -0.065058,
		0.272868, 0.902107, 0.334285,
		34.783199, 41.784954, 34.855789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973980, 41.023132, 35.135174>,  <34.592194, 41.153477, 34.621792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973980, 41.023132, 35.135174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906212, 41.412495, 35.196846>,  <34.865551, 41.646114, 35.233849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906212, 41.412495, 35.196846>,  <34.973980, 41.023132, 35.135174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906212, 41.412495, 35.196846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016473, -0.153628, 0.987992,
		0.985406, 0.169927, 0.009993,
		-0.169422, 0.973408, 0.154185,
		34.855385, 41.704517, 35.243103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477196, 41.206875, 35.652245>,  <34.973980, 41.023132, 35.135174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477196, 41.206875, 35.652245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191158, 41.486160, 35.665768>,  <35.019535, 41.653732, 35.673882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191158, 41.486160, 35.665768>,  <35.477196, 41.206875, 35.652245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191158, 41.486160, 35.665768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086384, -0.136259, 0.986900,
		0.693670, 0.702806, 0.157752,
		-0.715094, 0.698210, 0.033808,
		34.976631, 41.695625, 35.675911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072361, 40.827194, 35.678535>,  <35.477196, 41.206875, 35.652245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072361, 40.827194, 35.678535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213219, 40.485096, 35.830616>,  <36.297733, 40.279839, 35.921864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213219, 40.485096, 35.830616>,  <36.072361, 40.827194, 35.678535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213219, 40.485096, 35.830616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705686, -0.024232, -0.708110,
		0.614820, 0.517660, 0.595000,
		0.352142, -0.855243, 0.380203,
		36.318863, 40.228523, 35.944675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814255, 40.962505, 35.819641>,  <36.072361, 40.827194, 35.678535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814255, 40.962505, 35.819641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745907, 40.571789, 35.767982>,  <36.704899, 40.337357, 35.736988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745907, 40.571789, 35.767982>,  <36.814255, 40.962505, 35.819641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745907, 40.571789, 35.767982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809059, -0.064293, -0.584200,
		0.562340, -0.204307, 0.801269,
		-0.170872, -0.976793, -0.129142,
		36.694645, 40.278751, 35.729240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465061, 40.626339, 35.978325>,  <36.814255, 40.962505, 35.819641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465061, 40.626339, 35.978325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242462, 40.366032, 35.771709>,  <37.108902, 40.209846, 35.647739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242462, 40.366032, 35.771709>,  <37.465061, 40.626339, 35.978325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242462, 40.366032, 35.771709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792527, -0.229149, -0.565147,
		0.249414, -0.723875, 0.643271,
		-0.556501, -0.650765, -0.516538,
		37.075512, 40.170803, 35.616749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845196, 40.143551, 35.998119>,  <37.465061, 40.626339, 35.978325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845196, 40.143551, 35.998119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589973, 40.075253, 35.697792>,  <37.436840, 40.034271, 35.517593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589973, 40.075253, 35.697792>,  <37.845196, 40.143551, 35.998119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589973, 40.075253, 35.697792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764307, -0.258724, -0.590674,
		-0.093398, -0.950740, 0.295584,
		-0.638052, -0.170749, -0.750822,
		37.398560, 40.024029, 35.472546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008408, 39.525478, 35.715755>,  <37.845196, 40.143551, 35.998119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008408, 39.525478, 35.715755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817570, 39.718006, 35.421623>,  <37.703068, 39.833523, 35.245144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817570, 39.718006, 35.421623>,  <38.008408, 39.525478, 35.715755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817570, 39.718006, 35.421623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698078, -0.300764, -0.649790,
		-0.533919, -0.823330, -0.192507,
		-0.477092, 0.481321, -0.735332,
		37.674442, 39.862404, 35.201023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252254, 39.248917, 35.138416>,  <38.008408, 39.525478, 35.715755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252254, 39.248917, 35.138416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049587, 39.526630, 34.933964>,  <37.927986, 39.693260, 34.811291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049587, 39.526630, 34.933964>,  <38.252254, 39.248917, 35.138416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049587, 39.526630, 34.933964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568915, -0.176213, -0.803296,
		-0.647786, -0.697793, -0.305710,
		-0.506664, 0.694287, -0.511133,
		37.897587, 39.734917, 34.780624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086308, 38.921535, 34.564724>,  <38.252254, 39.248917, 35.138416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086308, 38.921535, 34.564724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099110, 39.317280, 34.507950>,  <38.106789, 39.554726, 34.473885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099110, 39.317280, 34.507950>,  <38.086308, 38.921535, 34.564724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099110, 39.317280, 34.507950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655949, -0.127935, -0.743884,
		-0.754126, -0.069295, -0.653063,
		0.032003, 0.989359, -0.141933,
		38.108711, 39.614086, 34.465370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021858, 39.008076, 33.866970>,  <38.086308, 38.921535, 34.564724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021858, 39.008076, 33.866970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154530, 39.368919, 33.977375>,  <38.234131, 39.585426, 34.043617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154530, 39.368919, 33.977375>,  <38.021858, 39.008076, 33.866970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154530, 39.368919, 33.977375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445301, 0.108226, -0.888816,
		-0.831683, 0.417712, -0.365814,
		0.331679, 0.902111, 0.276017,
		38.254032, 39.639553, 34.060181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807983, 39.451271, 33.346031>,  <38.021858, 39.008076, 33.866970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807983, 39.451271, 33.346031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116699, 39.665821, 33.482647>,  <38.301929, 39.794552, 33.564617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116699, 39.665821, 33.482647>,  <37.807983, 39.451271, 33.346031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116699, 39.665821, 33.482647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450272, -0.081732, -0.889143,
		-0.448997, 0.840014, -0.304594,
		0.771788, 0.536373, 0.341537,
		38.348236, 39.826733, 33.585110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016190, 39.873268, 32.828384>,  <37.807983, 39.451271, 33.346031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016190, 39.873268, 32.828384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348572, 39.890362, 33.050266>,  <38.548000, 39.900620, 33.183395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348572, 39.890362, 33.050266>,  <38.016190, 39.873268, 32.828384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348572, 39.890362, 33.050266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552228, 0.057708, -0.831694,
		-0.067555, 0.997418, 0.024352,
		0.830952, 0.042737, 0.554700,
		38.597858, 39.903183, 33.216675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477501, 40.417156, 32.501633>,  <38.016190, 39.873268, 32.828384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477501, 40.417156, 32.501633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723076, 40.186676, 32.717438>,  <38.870422, 40.048386, 32.846920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723076, 40.186676, 32.717438>,  <38.477501, 40.417156, 32.501633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723076, 40.186676, 32.717438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718769, 0.125569, -0.683815,
		0.326272, 0.807602, 0.491249,
		0.613936, -0.576204, 0.539510,
		38.907257, 40.013813, 32.879292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099365, 40.736504, 32.670471>,  <38.477501, 40.417156, 32.501633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099365, 40.736504, 32.670471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227821, 40.357689, 32.670319>,  <39.304893, 40.130402, 32.670227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227821, 40.357689, 32.670319>,  <39.099365, 40.736504, 32.670471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227821, 40.357689, 32.670319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723820, 0.245707, -0.644758,
		0.610701, 0.206778, 0.764387,
		0.321137, -0.947033, -0.000383,
		39.324162, 40.073578, 32.670204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808823, 40.799107, 32.754364>,  <39.099365, 40.736504, 32.670471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808823, 40.799107, 32.754364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760483, 40.426632, 32.616795>,  <39.731480, 40.203148, 32.534252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760483, 40.426632, 32.616795>,  <39.808823, 40.799107, 32.754364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760483, 40.426632, 32.616795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658783, 0.183933, -0.729503,
		0.742564, -0.314728, 0.591224,
		-0.120849, -0.931190, -0.343919,
		39.724228, 40.147274, 32.513618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386818, 40.583763, 32.466232>,  <39.808823, 40.799107, 32.754364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386818, 40.583763, 32.466232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142067, 40.314236, 32.300545>,  <39.995216, 40.152519, 32.201130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142067, 40.314236, 32.300545>,  <40.386818, 40.583763, 32.466232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142067, 40.314236, 32.300545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568143, -0.010066, -0.822868,
		0.550295, -0.738827, 0.388986,
		-0.611873, -0.673820, -0.414220,
		39.958504, 40.112091, 32.176277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827156, 40.046757, 32.086353>,  <40.386818, 40.583763, 32.466232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827156, 40.046757, 32.086353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471916, 39.986187, 31.912752>,  <40.258774, 39.949844, 31.808592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471916, 39.986187, 31.912752>,  <40.827156, 40.046757, 32.086353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471916, 39.986187, 31.912752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442638, -0.027191, -0.896288,
		0.123917, -0.988095, 0.091174,
		-0.888097, -0.151422, -0.433999,
		40.205486, 39.940762, 31.782553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937504, 39.731499, 31.450895>,  <40.827156, 40.046757, 32.086353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937504, 39.731499, 31.450895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556168, 39.835178, 31.388977>,  <40.327366, 39.897388, 31.351826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556168, 39.835178, 31.388977>,  <40.937504, 39.731499, 31.450895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556168, 39.835178, 31.388977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152212, -0.030141, -0.987888,
		-0.260730, -0.965352, -0.010719,
		-0.953337, 0.259203, -0.154797,
		40.270168, 39.912941, 31.342537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668709, 39.257534, 31.018503>,  <40.937504, 39.731499, 31.450895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668709, 39.257534, 31.018503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434166, 39.578262, 30.972414>,  <40.293442, 39.770699, 30.944761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434166, 39.578262, 30.972414>,  <40.668709, 39.257534, 31.018503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434166, 39.578262, 30.972414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049073, -0.106819, -0.993067,
		-0.808567, -0.587943, 0.023286,
		-0.586354, 0.801819, -0.115222,
		40.258259, 39.818810, 30.937847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183208, 39.039368, 30.569761>,  <40.668709, 39.257534, 31.018503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183208, 39.039368, 30.569761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111332, 39.431881, 30.542036>,  <40.068207, 39.667389, 30.525400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111332, 39.431881, 30.542036>,  <40.183208, 39.039368, 30.569761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111332, 39.431881, 30.542036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102527, -0.088760, -0.990762,
		-0.978366, -0.170921, 0.116557,
		-0.179688, 0.981278, -0.069315,
		40.057426, 39.726265, 30.521242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650059, 39.106850, 30.053919>,  <40.183208, 39.039368, 30.569761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650059, 39.106850, 30.053919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829102, 39.463940, 30.074680>,  <39.936527, 39.678192, 30.087137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829102, 39.463940, 30.074680>,  <39.650059, 39.106850, 30.053919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829102, 39.463940, 30.074680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099329, 0.107317, -0.989251,
		-0.888696, 0.437641, 0.136709,
		0.447608, 0.892722, 0.051901,
		39.963383, 39.731758, 30.090250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185600, 39.644398, 29.674751>,  <39.650059, 39.106850, 30.053919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185600, 39.644398, 29.674751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552151, 39.802402, 29.700756>,  <39.772079, 39.897205, 29.716360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552151, 39.802402, 29.700756>,  <39.185600, 39.644398, 29.674751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552151, 39.802402, 29.700756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019100, 0.205357, -0.978501,
		-0.399869, 0.895430, 0.195729,
		0.916373, 0.395010, 0.065013,
		39.827065, 39.920906, 29.720261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109253, 40.318779, 29.307886>,  <39.185600, 39.644398, 29.674751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109253, 40.318779, 29.307886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499550, 40.233883, 29.329361>,  <39.733727, 40.182945, 29.342247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499550, 40.233883, 29.329361>,  <39.109253, 40.318779, 29.307886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499550, 40.233883, 29.329361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082078, 0.127297, -0.988463,
		0.202961, 0.968890, 0.141629,
		0.975741, -0.212244, 0.053688,
		39.792271, 40.170208, 29.345467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493023, 40.786900, 28.813957>,  <39.109253, 40.318779, 29.307886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493023, 40.786900, 28.813957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739506, 40.478241, 28.877024>,  <39.887394, 40.293045, 28.914864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739506, 40.478241, 28.877024>,  <39.493023, 40.786900, 28.813957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739506, 40.478241, 28.877024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215919, -0.027008, -0.976038,
		0.757411, 0.635482, 0.149970,
		0.616204, -0.771643, 0.157668,
		39.924366, 40.246750, 28.924324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142391, 40.990837, 28.516634>,  <39.493023, 40.786900, 28.813957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142391, 40.990837, 28.516634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133762, 40.591209, 28.531548>,  <40.128586, 40.351433, 28.540495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133762, 40.591209, 28.531548>,  <40.142391, 40.990837, 28.516634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133762, 40.591209, 28.531548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067701, -0.038665, -0.996956,
		0.997472, -0.018987, 0.068473,
		-0.021577, -0.999072, 0.037282,
		40.127289, 40.291489, 28.542732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685062, 40.719105, 28.089182>,  <40.142391, 40.990837, 28.516634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685062, 40.719105, 28.089182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429680, 40.414402, 28.133196>,  <40.276451, 40.231583, 28.159603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429680, 40.414402, 28.133196>,  <40.685062, 40.719105, 28.089182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429680, 40.414402, 28.133196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168623, -0.277931, -0.945685,
		0.750961, -0.585223, 0.305895,
		-0.638454, -0.761754, 0.110034,
		40.238144, 40.185875, 28.166206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077156, 40.188789, 27.779345>,  <40.685062, 40.719105, 28.089182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077156, 40.188789, 27.779345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687397, 40.098877, 27.780853>,  <40.453541, 40.044930, 27.781759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687397, 40.098877, 27.780853>,  <41.077156, 40.188789, 27.779345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687397, 40.098877, 27.780853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092010, -0.414055, -0.905590,
		0.205123, -0.882061, 0.424138,
		-0.974402, -0.224782, 0.003774,
		40.395077, 40.031441, 27.781986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090191, 39.506271, 27.576818>,  <41.077156, 40.188789, 27.779345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090191, 39.506271, 27.576818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718571, 39.642761, 27.519644>,  <40.495598, 39.724655, 27.485340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718571, 39.642761, 27.519644>,  <41.090191, 39.506271, 27.576818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718571, 39.642761, 27.519644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026763, -0.323358, -0.945898,
		-0.368987, -0.882611, 0.291284,
		-0.929049, 0.341228, -0.142936,
		40.439854, 39.745129, 27.476763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687691, 38.942230, 27.298216>,  <41.090191, 39.506271, 27.576818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687691, 38.942230, 27.298216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534248, 39.293713, 27.184563>,  <40.442184, 39.504601, 27.116371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534248, 39.293713, 27.184563>,  <40.687691, 38.942230, 27.298216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534248, 39.293713, 27.184563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104516, -0.264386, -0.958737,
		-0.917565, -0.397470, 0.009580,
		-0.383602, 0.878702, -0.284134,
		40.419167, 39.557323, 27.099323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307541, 38.666046, 26.844442>,  <40.687691, 38.942230, 27.298216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307541, 38.666046, 26.844442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384956, 39.049858, 26.762611>,  <40.431404, 39.280144, 26.713512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384956, 39.049858, 26.762611>,  <40.307541, 38.666046, 26.844442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384956, 39.049858, 26.762611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063969, -0.220419, -0.973305,
		-0.979005, 0.175285, -0.104039,
		0.193538, 0.959526, -0.204579,
		40.443016, 39.337715, 26.701239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017517, 38.766537, 26.207350>,  <40.307541, 38.666046, 26.844442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017517, 38.766537, 26.207350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276909, 39.070396, 26.226946>,  <40.432545, 39.252712, 26.238705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276909, 39.070396, 26.226946>,  <40.017517, 38.766537, 26.207350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276909, 39.070396, 26.226946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362265, -0.251365, -0.897541,
		-0.669503, 0.599788, -0.438201,
		0.648483, 0.759651, 0.048992,
		40.471455, 39.298290, 26.241644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016590, 39.200836, 25.571316>,  <40.017517, 38.766537, 26.207350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016590, 39.200836, 25.571316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379147, 39.243141, 25.734911>,  <40.596680, 39.268524, 25.833069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379147, 39.243141, 25.734911>,  <40.016590, 39.200836, 25.571316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379147, 39.243141, 25.734911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414965, -0.404268, -0.815090,
		0.079137, 0.908505, -0.410311,
		0.906389, 0.105761, 0.408990,
		40.651062, 39.274868, 25.857609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440273, 39.561401, 25.036945>,  <40.016590, 39.200836, 25.571316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440273, 39.561401, 25.036945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713928, 39.396927, 25.277905>,  <40.878120, 39.298241, 25.422480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713928, 39.396927, 25.277905>,  <40.440273, 39.561401, 25.036945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713928, 39.396927, 25.277905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567396, -0.218917, -0.793811,
		0.458279, 0.884874, 0.083536,
		0.684135, -0.411186, 0.602399,
		40.919170, 39.273571, 25.458624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075577, 39.662575, 24.738342>,  <40.440273, 39.561401, 25.036945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075577, 39.662575, 24.738342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155045, 39.382080, 25.012218>,  <41.202724, 39.213783, 25.176544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155045, 39.382080, 25.012218>,  <41.075577, 39.662575, 24.738342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155045, 39.382080, 25.012218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555930, -0.494715, -0.667981,
		0.807138, 0.513346, 0.291553,
		0.198670, -0.701236, 0.684688,
		41.214645, 39.171711, 25.217625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786934, 39.648720, 24.717703>,  <41.075577, 39.662575, 24.738342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786934, 39.648720, 24.717703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622494, 39.311409, 24.856203>,  <41.523830, 39.109024, 24.939302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622494, 39.311409, 24.856203>,  <41.786934, 39.648720, 24.717703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622494, 39.311409, 24.856203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545985, -0.531936, -0.647259,
		0.729999, -0.077039, 0.679093,
		-0.411099, -0.843272, 0.346250,
		41.499165, 39.058426, 24.960077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354195, 39.172836, 24.831898>,  <41.786934, 39.648720, 24.717703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354195, 39.172836, 24.831898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004616, 38.979034, 24.816572>,  <41.794868, 38.862755, 24.807377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004616, 38.979034, 24.816572>,  <42.354195, 39.172836, 24.831898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004616, 38.979034, 24.816572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404888, -0.682191, -0.608836,
		0.268848, -0.547603, 0.792371,
		-0.873949, -0.484506, -0.038312,
		41.742432, 38.833683, 24.805079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644367, 38.433895, 24.693924>,  <42.354195, 39.172836, 24.831898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644367, 38.433895, 24.693924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252625, 38.433567, 24.613062>,  <42.017578, 38.433372, 24.564545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252625, 38.433567, 24.613062>,  <42.644367, 38.433895, 24.693924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252625, 38.433567, 24.613062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176983, -0.486720, -0.855442,
		-0.097693, -0.873558, 0.476816,
		-0.979353, -0.000818, -0.202154,
		41.958820, 38.433323, 24.552416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501095, 37.748123, 24.454544>,  <42.644367, 38.433895, 24.693924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501095, 37.748123, 24.454544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214085, 37.987774, 24.312443>,  <42.041878, 38.131565, 24.227182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214085, 37.987774, 24.312443>,  <42.501095, 37.748123, 24.454544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214085, 37.987774, 24.312443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269860, -0.231077, -0.934761,
		-0.642135, -0.766580, 0.004122,
		-0.717522, 0.599131, -0.355252,
		41.998829, 38.167515, 24.205868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243427, 37.288189, 23.778511>,  <42.501095, 37.748123, 24.454544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243427, 37.288189, 23.778511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136845, 37.673584, 23.767937>,  <42.072895, 37.904819, 23.761593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136845, 37.673584, 23.767937>,  <42.243427, 37.288189, 23.778511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136845, 37.673584, 23.767937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284762, 0.052491, -0.957160,
		-0.920823, -0.262565, -0.288350,
		-0.266452, 0.963486, -0.026434,
		42.056908, 37.962631, 23.760006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208473, 36.927860, 23.116856>,  <42.243427, 37.288189, 23.778511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208473, 36.927860, 23.116856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136150, 36.554031, 22.994291>,  <42.092758, 36.329735, 22.920753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136150, 36.554031, 22.994291>,  <42.208473, 36.927860, 23.116856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136150, 36.554031, 22.994291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185630, -0.273520, 0.943784,
		-0.965842, 0.227519, -0.124031,
		-0.180804, -0.934570, -0.306412,
		42.081909, 36.273659, 22.902369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560978, 36.751102, 23.347277>,  <42.208473, 36.927860, 23.116856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560978, 36.751102, 23.347277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769073, 36.410755, 23.317938>,  <41.893929, 36.206547, 23.300335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769073, 36.410755, 23.317938>,  <41.560978, 36.751102, 23.347277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769073, 36.410755, 23.317938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336199, -0.282993, 0.898268,
		-0.785063, -0.442652, -0.433284,
		0.520236, -0.850867, -0.073349,
		41.925144, 36.155495, 23.295933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149273, 36.194103, 23.730639>,  <41.560978, 36.751102, 23.347277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149273, 36.194103, 23.730639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505695, 36.017456, 23.688698>,  <41.719547, 35.911469, 23.663532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505695, 36.017456, 23.688698>,  <41.149273, 36.194103, 23.730639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505695, 36.017456, 23.688698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097500, -0.411843, 0.906024,
		-0.443302, -0.797093, -0.410033,
		0.891054, -0.441620, -0.104854,
		41.773010, 35.884972, 23.657242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033825, 35.480370, 23.948246>,  <41.149273, 36.194103, 23.730639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033825, 35.480370, 23.948246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421288, 35.569733, 23.991690>,  <41.653767, 35.623352, 24.017756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421288, 35.569733, 23.991690>,  <41.033825, 35.480370, 23.948246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421288, 35.569733, 23.991690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076859, -0.146216, 0.986262,
		0.236218, -0.963696, -0.124462,
		0.968656, 0.223407, 0.108607,
		41.711884, 35.636753, 24.024271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367149, 35.013977, 24.361803>,  <41.033825, 35.480370, 23.948246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367149, 35.013977, 24.361803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624470, 35.316822, 24.407318>,  <41.778862, 35.498528, 24.434628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624470, 35.316822, 24.407318>,  <41.367149, 35.013977, 24.361803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624470, 35.316822, 24.407318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021166, -0.130979, 0.991159,
		0.765319, -0.640024, -0.068234,
		0.643303, 0.757109, 0.113788,
		41.817459, 35.543953, 24.441454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716988, 34.800045, 24.963764>,  <41.367149, 35.013977, 24.361803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716988, 34.800045, 24.963764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805016, 35.189003, 24.932743>,  <41.857830, 35.422379, 24.914131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805016, 35.189003, 24.932743>,  <41.716988, 34.800045, 24.963764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805016, 35.189003, 24.932743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086527, 0.098645, 0.991354,
		0.971639, -0.211455, 0.105847,
		0.220068, 0.972397, -0.077551,
		41.871037, 35.480721, 24.909477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225010, 34.842396, 25.445360>,  <41.716988, 34.800045, 24.963764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225010, 34.842396, 25.445360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100735, 35.217781, 25.385010>,  <42.026169, 35.443012, 25.348799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100735, 35.217781, 25.385010>,  <42.225010, 34.842396, 25.445360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100735, 35.217781, 25.385010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065383, 0.137254, 0.988376,
		0.948259, 0.316946, 0.018716,
		-0.310692, 0.938460, -0.150875,
		42.007526, 35.499317, 25.339746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609745, 35.252899, 25.892668>,  <42.225010, 34.842396, 25.445360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609745, 35.252899, 25.892668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297207, 35.492237, 25.821703>,  <42.109684, 35.635841, 25.779125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297207, 35.492237, 25.821703>,  <42.609745, 35.252899, 25.892668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297207, 35.492237, 25.821703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091170, 0.171785, 0.980907,
		0.617401, 0.782603, -0.079672,
		-0.781347, 0.598349, -0.177411,
		42.062801, 35.671741, 25.768480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747246, 35.853966, 26.141123>,  <42.609745, 35.252899, 25.892668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747246, 35.853966, 26.141123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348141, 35.829918, 26.129389>,  <42.108677, 35.815491, 26.122349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348141, 35.829918, 26.129389>,  <42.747246, 35.853966, 26.141123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348141, 35.829918, 26.129389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040564, 0.195049, 0.979954,
		-0.053192, 0.978949, -0.197051,
		-0.997760, -0.060119, -0.029335,
		42.048813, 35.811882, 26.120588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461922, 36.412922, 26.540993>,  <42.747246, 35.853966, 26.141123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461922, 36.412922, 26.540993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150204, 36.162453, 26.531046>,  <41.963173, 36.012173, 26.525078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150204, 36.162453, 26.531046>,  <42.461922, 36.412922, 26.540993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150204, 36.162453, 26.531046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111957, 0.100075, 0.988661,
		-0.616581, 0.773238, -0.148091,
		-0.779290, -0.626170, -0.024865,
		41.916416, 35.974602, 26.523586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017357, 36.754490, 26.885565>,  <42.461922, 36.412922, 26.540993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017357, 36.754490, 26.885565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882568, 36.377926, 26.879805>,  <41.801697, 36.151989, 26.876348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882568, 36.377926, 26.879805>,  <42.017357, 36.754490, 26.885565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882568, 36.377926, 26.879805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191214, 0.053449, 0.980092,
		-0.921894, 0.333015, -0.198021,
		-0.336969, -0.941406, -0.014402,
		41.781479, 36.095505, 26.875484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398804, 36.707146, 27.226578>,  <42.017357, 36.754490, 26.885565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398804, 36.707146, 27.226578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524017, 36.327351, 27.235348>,  <41.599144, 36.099472, 27.240610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524017, 36.327351, 27.235348>,  <41.398804, 36.707146, 27.226578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524017, 36.327351, 27.235348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416681, -0.116557, 0.901550,
		-0.853456, -0.291351, -0.432120,
		0.313034, -0.949489, 0.021924,
		41.617928, 36.042503, 27.241924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770069, 36.271790, 27.444901>,  <41.398804, 36.707146, 27.226578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770069, 36.271790, 27.444901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089451, 36.042210, 27.517612>,  <41.281082, 35.904461, 27.561239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089451, 36.042210, 27.517612>,  <40.770069, 36.271790, 27.444901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089451, 36.042210, 27.517612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337007, -0.175888, 0.924927,
		-0.498890, -0.799777, -0.333865,
		0.798458, -0.573951, 0.181781,
		41.328987, 35.870026, 27.572147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455147, 35.722061, 27.703550>,  <40.770069, 36.271790, 27.444901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455147, 35.722061, 27.703550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835339, 35.717300, 27.827780>,  <41.063454, 35.714443, 27.902317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835339, 35.717300, 27.827780>,  <40.455147, 35.722061, 27.703550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835339, 35.717300, 27.827780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310774, -0.023074, 0.950204,
		-0.004129, -0.999663, -0.025626,
		0.950475, -0.011888, 0.310574,
		41.120480, 35.713730, 27.920952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430099, 35.267323, 28.291077>,  <40.455147, 35.722061, 27.703550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430099, 35.267323, 28.291077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767746, 35.480225, 28.316921>,  <40.970333, 35.607967, 28.332428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767746, 35.480225, 28.316921>,  <40.430099, 35.267323, 28.291077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767746, 35.480225, 28.316921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129381, 0.085260, 0.987923,
		0.520320, -0.842279, 0.140833,
		0.844114, 0.532257, 0.064613,
		41.020981, 35.639900, 28.336306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777100, 34.949535, 28.909901>,  <40.430099, 35.267323, 28.291077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777100, 34.949535, 28.909901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905243, 35.323776, 28.850533>,  <40.982128, 35.548321, 28.814913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905243, 35.323776, 28.850533>,  <40.777100, 34.949535, 28.909901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905243, 35.323776, 28.850533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241114, 0.232049, 0.942347,
		0.916098, -0.266102, 0.299925,
		0.320357, 0.935598, -0.148418,
		41.001350, 35.604454, 28.806007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306484, 35.043198, 29.363758>,  <40.777100, 34.949535, 28.909901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306484, 35.043198, 29.363758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228767, 35.424740, 29.272179>,  <41.182137, 35.653664, 29.217232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228767, 35.424740, 29.272179>,  <41.306484, 35.043198, 29.363758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228767, 35.424740, 29.272179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088626, 0.249511, 0.964308,
		0.976932, 0.167068, -0.133014,
		-0.194293, 0.953852, -0.228949,
		41.170479, 35.710896, 29.203493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701275, 35.402817, 29.855978>,  <41.306484, 35.043198, 29.363758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701275, 35.402817, 29.855978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413700, 35.653843, 29.736454>,  <41.241154, 35.804459, 29.664740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413700, 35.653843, 29.736454>,  <41.701275, 35.402817, 29.855978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413700, 35.653843, 29.736454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106162, 0.325710, 0.939491,
		0.686921, 0.707157, -0.167541,
		-0.718936, 0.627569, -0.298810,
		41.198021, 35.842113, 29.646811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621227, 35.806446, 30.461370>,  <41.701275, 35.402817, 29.855978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621227, 35.806446, 30.461370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293285, 35.911102, 30.257652>,  <41.096519, 35.973896, 30.135422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293285, 35.911102, 30.257652>,  <41.621227, 35.806446, 30.461370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293285, 35.911102, 30.257652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333324, 0.505129, 0.796078,
		0.465544, 0.822429, -0.326923,
		-0.819856, 0.261638, -0.509295,
		41.047329, 35.989594, 30.104864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664314, 36.502094, 30.520140>,  <41.621227, 35.806446, 30.461370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664314, 36.502094, 30.520140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295807, 36.363983, 30.448526>,  <41.074703, 36.281116, 30.405560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295807, 36.363983, 30.448526>,  <41.664314, 36.502094, 30.520140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295807, 36.363983, 30.448526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346649, 0.520205, 0.780526,
		-0.176367, 0.781133, -0.598938,
		-0.921265, -0.345280, -0.179032,
		41.019428, 36.260399, 30.394817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330109, 37.119587, 30.470123>,  <41.664314, 36.502094, 30.520140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330109, 37.119587, 30.470123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060917, 36.832790, 30.542809>,  <40.899403, 36.660713, 30.586420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060917, 36.832790, 30.542809>,  <41.330109, 37.119587, 30.470123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060917, 36.832790, 30.542809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386586, 0.550405, 0.740004,
		-0.630591, 0.427762, -0.647591,
		-0.672983, -0.716989, 0.181713,
		40.859020, 36.617695, 30.597322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860935, 37.493198, 30.736391>,  <41.330109, 37.119587, 30.470123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860935, 37.493198, 30.736391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785114, 37.115112, 30.842710>,  <40.739624, 36.888260, 30.906502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785114, 37.115112, 30.842710>,  <40.860935, 37.493198, 30.736391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785114, 37.115112, 30.842710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282840, 0.311794, 0.907076,
		-0.940251, 0.096757, -0.326444,
		-0.189549, -0.945211, 0.265797,
		40.728249, 36.831551, 30.922449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110909, 37.467533, 30.887129>,  <40.860935, 37.493198, 30.736391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110909, 37.467533, 30.887129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315838, 37.184975, 31.082483>,  <40.438797, 37.015438, 31.199696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315838, 37.184975, 31.082483>,  <40.110909, 37.467533, 30.887129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315838, 37.184975, 31.082483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462405, 0.252309, 0.850013,
		-0.723673, -0.661317, -0.197378,
		0.512328, -0.706400, 0.488385,
		40.469536, 36.973053, 31.228998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607983, 37.183319, 31.094166>,  <40.110909, 37.467533, 30.887129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607983, 37.183319, 31.094166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917057, 37.094215, 31.331930>,  <40.102501, 37.040752, 31.474588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917057, 37.094215, 31.331930>,  <39.607983, 37.183319, 31.094166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917057, 37.094215, 31.331930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539753, 0.262270, 0.799926,
		-0.334090, -0.938931, 0.082417,
		0.772691, -0.222762, 0.594413,
		40.148865, 37.027386, 31.510254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294334, 36.876080, 31.638794>,  <39.607983, 37.183319, 31.094166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294334, 36.876080, 31.638794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656868, 36.977364, 31.774113>,  <39.874386, 37.038136, 31.855305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656868, 36.977364, 31.774113>,  <39.294334, 36.876080, 31.638794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656868, 36.977364, 31.774113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398205, 0.243889, 0.884280,
		0.141401, -0.936164, 0.321874,
		0.906332, 0.253210, 0.338299,
		39.928768, 37.053326, 31.875603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259552, 36.739044, 32.289646>,  <39.294334, 36.876080, 31.638794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259552, 36.739044, 32.289646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596714, 36.953777, 32.304195>,  <39.799011, 37.082619, 32.312923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596714, 36.953777, 32.304195>,  <39.259552, 36.739044, 32.289646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596714, 36.953777, 32.304195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285553, 0.389020, 0.875855,
		0.456042, -0.748646, 0.481201,
		0.842903, 0.536836, 0.036369,
		39.849586, 37.114826, 32.315105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561779, 36.528915, 32.873020>,  <39.259552, 36.739044, 32.289646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561779, 36.528915, 32.873020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700195, 36.893787, 32.785221>,  <39.783245, 37.112709, 32.732540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700195, 36.893787, 32.785221>,  <39.561779, 36.528915, 32.873020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700195, 36.893787, 32.785221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150952, 0.285035, 0.946556,
		0.925996, -0.294415, 0.236330,
		0.346043, 0.912181, -0.219499,
		39.804008, 37.167442, 32.719372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101841, 36.658836, 33.362625>,  <39.561779, 36.528915, 32.873020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101841, 36.658836, 33.362625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969456, 37.009823, 33.223763>,  <39.890022, 37.220413, 33.140446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969456, 37.009823, 33.223763>,  <40.101841, 36.658836, 33.362625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969456, 37.009823, 33.223763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011125, 0.364232, 0.931242,
		0.943576, 0.312073, -0.110787,
		-0.330968, 0.877465, -0.347153,
		39.870167, 37.273064, 33.119617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480457, 37.157021, 33.688313>,  <40.101841, 36.658836, 33.362625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480457, 37.157021, 33.688313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164654, 37.380520, 33.586750>,  <39.975170, 37.514622, 33.525810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164654, 37.380520, 33.586750>,  <40.480457, 37.157021, 33.688313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164654, 37.380520, 33.586750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084392, 0.310947, 0.946673,
		0.607906, 0.768837, -0.198342,
		-0.789511, 0.558750, -0.253911,
		39.927799, 37.548145, 33.510578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616089, 37.811745, 34.066483>,  <40.480457, 37.157021, 33.688313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616089, 37.811745, 34.066483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231831, 37.763638, 33.966328>,  <40.001274, 37.734772, 33.906235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231831, 37.763638, 33.966328>,  <40.616089, 37.811745, 34.066483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231831, 37.763638, 33.966328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264971, 0.126213, 0.955960,
		-0.083369, 0.984686, -0.153114,
		-0.960645, -0.120268, -0.250391,
		39.943638, 37.727558, 33.891209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304474, 38.439869, 34.363689>,  <40.616089, 37.811745, 34.066483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304474, 38.439869, 34.363689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018055, 38.168476, 34.298031>,  <39.846203, 38.005642, 34.258636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018055, 38.168476, 34.298031>,  <40.304474, 38.439869, 34.363689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018055, 38.168476, 34.298031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336767, 0.129793, 0.932599,
		-0.611443, 0.723064, -0.321427,
		-0.716048, -0.678477, -0.164143,
		39.803242, 37.964931, 34.248787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663677, 38.776890, 34.601067>,  <40.304474, 38.439869, 34.363689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663677, 38.776890, 34.601067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589516, 38.383827, 34.600273>,  <39.545021, 38.147987, 34.599796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589516, 38.383827, 34.600273>,  <39.663677, 38.776890, 34.601067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589516, 38.383827, 34.600273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445748, 0.082301, 0.891367,
		-0.875748, 0.166144, -0.453278,
		-0.185401, -0.982661, -0.001983,
		39.533894, 38.089027, 34.599678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956963, 38.694496, 34.802750>,  <39.663677, 38.776890, 34.601067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956963, 38.694496, 34.802750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150494, 38.353794, 34.883183>,  <39.266613, 38.149372, 34.931442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150494, 38.353794, 34.883183>,  <38.956963, 38.694496, 34.802750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150494, 38.353794, 34.883183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521326, -0.095950, 0.847946,
		-0.702946, -0.515085, -0.490463,
		0.483824, -0.851752, 0.201080,
		39.295643, 38.098270, 34.943508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441647, 38.101063, 35.040775>,  <38.956963, 38.694496, 34.802750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441647, 38.101063, 35.040775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795135, 37.946800, 35.146832>,  <39.007229, 37.854244, 35.210464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795135, 37.946800, 35.146832>,  <38.441647, 38.101063, 35.040775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795135, 37.946800, 35.146832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385684, -0.279234, 0.879361,
		-0.265074, -0.879383, -0.395501,
		0.883733, -0.385634, 0.265147,
		39.060253, 37.831104, 35.226372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266773, 37.493229, 35.407383>,  <38.441647, 38.101063, 35.040775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266773, 37.493229, 35.407383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629845, 37.612766, 35.525238>,  <38.847687, 37.684486, 35.595951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629845, 37.612766, 35.525238>,  <38.266773, 37.493229, 35.407383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629845, 37.612766, 35.525238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228436, -0.237123, 0.944240,
		0.352044, -0.924374, -0.146965,
		0.907679, 0.298842, 0.294638,
		38.902149, 37.702419, 35.613628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517925, 36.928921, 35.887684>,  <38.266773, 37.493229, 35.407383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517925, 36.928921, 35.887684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769917, 37.231815, 35.956638>,  <38.921112, 37.413551, 35.998009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769917, 37.231815, 35.956638>,  <38.517925, 36.928921, 35.887684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769917, 37.231815, 35.956638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022235, -0.239464, 0.970650,
		0.776291, -0.607660, -0.167695,
		0.629983, 0.757236, 0.172383,
		38.958912, 37.458984, 36.008354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069744, 36.623173, 36.256638>,  <38.517925, 36.928921, 35.887684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069744, 36.623173, 36.256638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058357, 37.013248, 36.344456>,  <39.051525, 37.247292, 36.397148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058357, 37.013248, 36.344456>,  <39.069744, 36.623173, 36.256638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058357, 37.013248, 36.344456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116544, -0.214903, 0.969657,
		0.992778, 0.053190, -0.107534,
		-0.028467, 0.975186, 0.219550,
		39.049816, 37.305805, 36.410320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640068, 36.678238, 36.640316>,  <39.069744, 36.623173, 36.256638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640068, 36.678238, 36.640316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404388, 36.991371, 36.720337>,  <39.262981, 37.179253, 36.768349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404388, 36.991371, 36.720337>,  <39.640068, 36.678238, 36.640316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404388, 36.991371, 36.720337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169998, -0.121945, 0.977870,
		0.789905, 0.610164, -0.061231,
		-0.589195, 0.782834, 0.200052,
		39.227631, 37.226223, 36.780354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046169, 37.165485, 37.093075>,  <39.640068, 36.678238, 36.640316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046169, 37.165485, 37.093075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660469, 37.264664, 37.130470>,  <39.429047, 37.324169, 37.152908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660469, 37.264664, 37.130470>,  <40.046169, 37.165485, 37.093075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660469, 37.264664, 37.130470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114435, 0.071443, 0.990858,
		0.239001, 0.966136, -0.097263,
		-0.964253, 0.247946, 0.093485,
		39.371193, 37.339046, 37.158516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083641, 37.801224, 37.459656>,  <40.046169, 37.165485, 37.093075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083641, 37.801224, 37.459656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739849, 37.602596, 37.508175>,  <39.533573, 37.483421, 37.537285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739849, 37.602596, 37.508175>,  <40.083641, 37.801224, 37.459656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739849, 37.602596, 37.508175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093188, 0.081105, 0.992340,
		-0.502599, 0.864202, -0.023434,
		-0.859482, -0.496565, 0.121296,
		39.482006, 37.453629, 37.544563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841358, 38.088436, 38.062706>,  <40.083641, 37.801224, 37.459656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841358, 38.088436, 38.062706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635307, 37.748409, 38.018826>,  <39.511677, 37.544395, 37.992496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635307, 37.748409, 38.018826>,  <39.841358, 38.088436, 38.062706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635307, 37.748409, 38.018826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030182, -0.145900, 0.988839,
		-0.856582, 0.506067, 0.100814,
		-0.515127, -0.850064, -0.109702,
		39.480770, 37.493389, 37.985916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130035, 38.127541, 38.243675>,  <39.841358, 38.088436, 38.062706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130035, 38.127541, 38.243675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245316, 37.746727, 38.284817>,  <39.314484, 37.518238, 38.309502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245316, 37.746727, 38.284817>,  <39.130035, 38.127541, 38.243675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245316, 37.746727, 38.284817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056640, 0.124175, 0.990642,
		-0.955893, -0.279679, 0.089710,
		0.288202, -0.952029, 0.102858,
		39.331776, 37.461117, 38.315674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730476, 37.978607, 38.793041>,  <39.130035, 38.127541, 38.243675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730476, 37.978607, 38.793041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011444, 37.694138, 38.781437>,  <39.180023, 37.523457, 38.774475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011444, 37.694138, 38.781437>,  <38.730476, 37.978607, 38.793041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011444, 37.694138, 38.781437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231213, 0.189439, 0.954281,
		-0.673167, -0.677009, 0.297498,
		0.702415, -0.711176, -0.029009,
		39.222168, 37.480785, 38.772736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664474, 37.567188, 39.427998>,  <38.730476, 37.978607, 38.793041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664474, 37.567188, 39.427998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024075, 37.474510, 39.279346>,  <39.239834, 37.418903, 39.190155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024075, 37.474510, 39.279346>,  <38.664474, 37.567188, 39.427998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024075, 37.474510, 39.279346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376715, -0.023627, 0.926028,
		-0.223341, -0.972500, 0.066043,
		0.899002, -0.231699, -0.371632,
		39.293774, 37.405003, 39.167858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923817, 37.030071, 39.814533>,  <38.664474, 37.567188, 39.427998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923817, 37.030071, 39.814533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240700, 37.198235, 39.637600>,  <39.430828, 37.299133, 39.531441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240700, 37.198235, 39.637600>,  <38.923817, 37.030071, 39.814533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240700, 37.198235, 39.637600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514826, -0.071242, 0.854329,
		0.327657, -0.904532, -0.272878,
		0.792209, 0.420412, -0.442334,
		39.478363, 37.324360, 39.504898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452007, 36.539444, 39.827957>,  <38.923817, 37.030071, 39.814533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452007, 36.539444, 39.827957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594749, 36.912224, 39.802269>,  <39.680393, 37.135891, 39.786854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594749, 36.912224, 39.802269>,  <39.452007, 36.539444, 39.827957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594749, 36.912224, 39.802269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553371, -0.155499, 0.818291,
		0.752620, -0.327550, -0.571204,
		0.356853, 0.931950, -0.064225,
		39.701805, 37.191811, 39.783001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008965, 36.492245, 40.148838>,  <39.452007, 36.539444, 39.827957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008965, 36.492245, 40.148838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972626, 36.890114, 40.129375>,  <39.950821, 37.128838, 40.117699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972626, 36.890114, 40.129375>,  <40.008965, 36.492245, 40.148838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972626, 36.890114, 40.129375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300472, 0.073964, 0.950918,
		0.949454, 0.071771, -0.305592,
		-0.090851, 0.994675, -0.048660,
		39.945370, 37.188515, 40.114777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565819, 36.823978, 40.201099>,  <40.008965, 36.492245, 40.148838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565819, 36.823978, 40.201099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310940, 37.096188, 40.345806>,  <40.158012, 37.259514, 40.432629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310940, 37.096188, 40.345806>,  <40.565819, 36.823978, 40.201099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310940, 37.096188, 40.345806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372776, -0.138697, 0.917497,
		0.674554, 0.719479, -0.165306,
		-0.637193, 0.680524, 0.361763,
		40.119781, 37.300346, 40.454334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906094, 37.168079, 40.726158>,  <40.565819, 36.823978, 40.201099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906094, 37.168079, 40.726158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523319, 37.248398, 40.810024>,  <40.293655, 37.296589, 40.860344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523319, 37.248398, 40.810024>,  <40.906094, 37.168079, 40.726158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523319, 37.248398, 40.810024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220543, 0.033151, 0.974814,
		0.188784, 0.979073, -0.076006,
		-0.956933, 0.200792, 0.209669,
		40.236240, 37.308636, 40.872925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917847, 37.636131, 41.218040>,  <40.906094, 37.168079, 40.726158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917847, 37.636131, 41.218040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541050, 37.511261, 41.267342>,  <40.314972, 37.436340, 41.296925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541050, 37.511261, 41.267342>,  <40.917847, 37.636131, 41.218040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541050, 37.511261, 41.267342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109146, 0.062349, 0.992068,
		-0.317381, 0.947977, -0.024660,
		-0.941996, -0.312172, 0.123256,
		40.258450, 37.417610, 41.304317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644440, 38.022133, 41.834175>,  <40.917847, 37.636131, 41.218040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644440, 38.022133, 41.834175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418831, 37.698338, 41.768936>,  <40.283466, 37.504059, 41.729794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418831, 37.698338, 41.768936>,  <40.644440, 38.022133, 41.834175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418831, 37.698338, 41.768936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027971, -0.216128, 0.975964,
		-0.825285, 0.545904, 0.144543,
		-0.564023, -0.809492, -0.163098,
		40.249622, 37.455490, 41.720005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982571, 38.132500, 42.311798>,  <40.644440, 38.022133, 41.834175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982571, 38.132500, 42.311798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092079, 37.766319, 42.193813>,  <40.157784, 37.546612, 42.123024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092079, 37.766319, 42.193813>,  <39.982571, 38.132500, 42.311798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092079, 37.766319, 42.193813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089687, -0.329641, 0.939837,
		-0.957603, -0.230850, -0.172351,
		0.273776, -0.915448, -0.294961,
		40.174213, 37.491684, 42.105324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512417, 37.597000, 42.422344>,  <39.982571, 38.132500, 42.311798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512417, 37.597000, 42.422344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879742, 37.439693, 42.440430>,  <40.100136, 37.345310, 42.451283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879742, 37.439693, 42.440430>,  <39.512417, 37.597000, 42.422344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879742, 37.439693, 42.440430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224981, -0.424511, 0.877025,
		-0.325710, -0.815556, -0.478311,
		0.918312, -0.393266, 0.045217,
		40.155235, 37.321712, 42.453995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345760, 36.878796, 42.492031>,  <39.512417, 37.597000, 42.422344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345760, 36.878796, 42.492031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687122, 37.020866, 42.644634>,  <39.891941, 37.106110, 42.736198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687122, 37.020866, 42.644634>,  <39.345760, 36.878796, 42.492031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687122, 37.020866, 42.644634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239252, -0.383351, 0.892076,
		0.463097, -0.852579, -0.242177,
		0.853405, 0.355177, 0.381510,
		39.943146, 37.127419, 42.759087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637634, 36.232929, 42.765209>,  <39.345760, 36.878796, 42.492031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637634, 36.232929, 42.765209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967724, 36.458675, 42.774067>,  <40.165779, 36.594124, 42.779381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967724, 36.458675, 42.774067>,  <39.637634, 36.232929, 42.765209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967724, 36.458675, 42.774067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165948, -0.279750, 0.945622,
		0.539870, -0.776680, -0.324513,
		0.825228, 0.564365, 0.022141,
		40.215294, 36.627983, 42.780708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220005, 35.774097, 42.852718>,  <39.637634, 36.232929, 42.765209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220005, 35.774097, 42.852718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315063, 36.146397, 42.963879>,  <40.372097, 36.369778, 43.030575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315063, 36.146397, 42.963879>,  <40.220005, 35.774097, 42.852718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315063, 36.146397, 42.963879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193637, -0.325745, 0.925416,
		0.951857, -0.166106, -0.257638,
		0.237642, 0.930752, 0.277898,
		40.386356, 36.425621, 43.047249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726585, 35.789616, 43.277111>,  <40.220005, 35.774097, 42.852718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726585, 35.789616, 43.277111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649979, 36.157150, 43.415138>,  <40.604015, 36.377670, 43.497955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649979, 36.157150, 43.415138>,  <40.726585, 35.789616, 43.277111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649979, 36.157150, 43.415138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425657, -0.239036, 0.872742,
		0.884386, 0.314020, -0.345329,
		-0.191512, 0.918833, 0.345065,
		40.592525, 36.432800, 43.518658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317722, 35.903934, 43.723473>,  <40.726585, 35.789616, 43.277111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317722, 35.903934, 43.723473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018032, 36.153553, 43.812225>,  <40.838219, 36.303322, 43.865475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018032, 36.153553, 43.812225>,  <41.317722, 35.903934, 43.723473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018032, 36.153553, 43.812225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410120, 0.174081, 0.895264,
		0.520057, 0.761753, -0.386358,
		-0.749228, 0.624042, 0.221878,
		40.793262, 36.340767, 43.878788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605957, 36.495201, 43.945591>,  <41.317722, 35.903934, 43.723473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605957, 36.495201, 43.945591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241909, 36.501396, 44.111214>,  <41.023479, 36.505112, 44.210587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241909, 36.501396, 44.111214>,  <41.605957, 36.495201, 43.945591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241909, 36.501396, 44.111214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412652, 0.124256, 0.902374,
		-0.037477, 0.992129, -0.119477,
		-0.910118, 0.015484, 0.414061,
		40.968872, 36.506042, 44.235432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553341, 37.023369, 44.447849>,  <41.605957, 36.495201, 43.945591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553341, 37.023369, 44.447849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272629, 36.772770, 44.583500>,  <41.104202, 36.622410, 44.664890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272629, 36.772770, 44.583500>,  <41.553341, 37.023369, 44.447849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272629, 36.772770, 44.583500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362881, 0.095282, 0.926951,
		-0.613042, 0.773581, 0.160475,
		-0.701781, -0.626494, 0.339130,
		41.062096, 36.584824, 44.685238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665749, 37.077076, 45.189484>,  <41.553341, 37.023369, 44.447849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665749, 37.077076, 45.189484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420265, 36.766560, 45.131889>,  <41.272976, 36.580250, 45.097332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420265, 36.766560, 45.131889>,  <41.665749, 37.077076, 45.189484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420265, 36.766560, 45.131889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397577, -0.461415, 0.793113,
		-0.682127, 0.429492, 0.591810,
		-0.613706, -0.776294, -0.143987,
		41.236153, 36.533672, 45.088692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203426, 37.530361, 44.921074>,  <41.665749, 37.077076, 45.189484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203426, 37.530361, 44.921074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523598, 37.388515, 45.114384>,  <42.715702, 37.303406, 45.230370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523598, 37.388515, 45.114384>,  <42.203426, 37.530361, 44.921074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523598, 37.388515, 45.114384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410065, -0.912002, 0.009967,
		0.437215, -0.206153, -0.875411,
		0.800431, -0.354618, 0.483277,
		42.763725, 37.282131, 45.259365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530090, 36.991093, 44.537991>,  <42.203426, 37.530361, 44.921074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530090, 36.991093, 44.537991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506958, 36.971725, 44.936852>,  <42.493080, 36.960106, 45.176167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506958, 36.971725, 44.936852>,  <42.530090, 36.991093, 44.537991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506958, 36.971725, 44.936852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575136, -0.814802, -0.072918,
		0.816011, -0.577715, 0.019274,
		-0.057831, -0.048416, 0.997152,
		42.489609, 36.957199, 45.235996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512890, 36.287369, 44.676525>,  <42.530090, 36.991093, 44.537991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512890, 36.287369, 44.676525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335800, 36.495583, 44.968563>,  <42.229546, 36.620510, 45.143784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335800, 36.495583, 44.968563>,  <42.512890, 36.287369, 44.676525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335800, 36.495583, 44.968563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721782, -0.689990, 0.054260,
		0.532000, -0.502945, 0.681192,
		-0.442725, 0.520539, 0.730092,
		42.202984, 36.651745, 45.187592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199196, 35.830441, 45.223354>,  <42.512890, 36.287369, 44.676525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199196, 35.830441, 45.223354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961437, 36.151447, 45.243946>,  <41.818783, 36.344051, 45.256302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961437, 36.151447, 45.243946>,  <42.199196, 35.830441, 45.223354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961437, 36.151447, 45.243946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792427, -0.595418, 0.132425,
		0.136925, 0.037921, 0.989855,
		-0.594399, 0.802521, 0.051477,
		41.783119, 36.392204, 45.259388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492313, 35.716999, 45.016899>,  <42.199196, 35.830441, 45.223354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492313, 35.716999, 45.016899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260033, 35.906921, 45.281425>,  <41.120663, 36.020874, 45.440144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260033, 35.906921, 45.281425>,  <41.492313, 35.716999, 45.016899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260033, 35.906921, 45.281425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630434, 0.251707, -0.734300,
		-0.515111, -0.843327, 0.153168,
		-0.580702, 0.474808, 0.661319,
		41.085823, 36.049362, 45.479820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770252, 35.498734, 45.156403>,  <41.492313, 35.716999, 45.016899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770252, 35.498734, 45.156403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837666, 35.892643, 45.173454>,  <40.878113, 36.128990, 45.183685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837666, 35.892643, 45.173454>,  <40.770252, 35.498734, 45.156403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837666, 35.892643, 45.173454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673779, 0.146666, -0.724231,
		-0.719456, 0.093336, 0.688238,
		0.168538, 0.984773, 0.042631,
		40.888226, 36.188076, 45.186245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085014, 35.873936, 45.151119>,  <40.770252, 35.498734, 45.156403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085014, 35.873936, 45.151119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396671, 36.070381, 44.995300>,  <40.583664, 36.188248, 44.901810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396671, 36.070381, 44.995300>,  <40.085014, 35.873936, 45.151119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396671, 36.070381, 44.995300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577053, 0.319211, -0.751741,
		-0.244845, 0.810499, 0.532111,
		0.779141, 0.491116, -0.389543,
		40.630413, 36.217716, 44.878437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766624, 36.436459, 44.700699>,  <40.085014, 35.873936, 45.151119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766624, 36.436459, 44.700699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138992, 36.463234, 44.557083>,  <40.362411, 36.479298, 44.470913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138992, 36.463234, 44.557083>,  <39.766624, 36.436459, 44.700699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138992, 36.463234, 44.557083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355272, 0.393908, -0.847714,
		0.084683, 0.916709, 0.390477,
		0.930919, 0.066939, -0.359039,
		40.418266, 36.483315, 44.449371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804550, 37.104359, 44.302711>,  <39.766624, 36.436459, 44.700699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804550, 37.104359, 44.302711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114155, 36.888454, 44.170311>,  <40.299919, 36.758911, 44.090870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114155, 36.888454, 44.170311>,  <39.804550, 37.104359, 44.302711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114155, 36.888454, 44.170311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131347, 0.374521, -0.917868,
		0.619393, 0.753920, 0.218990,
		0.774015, -0.539758, -0.331002,
		40.346359, 36.726528, 44.071011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271233, 37.593914, 43.785767>,  <39.804550, 37.104359, 44.302711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271233, 37.593914, 43.785767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339500, 37.211735, 43.689442>,  <40.380463, 36.982426, 43.631645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339500, 37.211735, 43.689442>,  <40.271233, 37.593914, 43.785767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339500, 37.211735, 43.689442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037158, 0.250467, -0.967412,
		0.984628, 0.156159, 0.078250,
		0.170669, -0.955448, -0.240814,
		40.390701, 36.925102, 43.617199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828445, 37.654354, 43.344830>,  <40.271233, 37.593914, 43.785767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828445, 37.654354, 43.344830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689373, 37.289307, 43.258816>,  <40.605930, 37.070278, 43.207207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689373, 37.289307, 43.258816>,  <40.828445, 37.654354, 43.344830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689373, 37.289307, 43.258816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277328, 0.118987, -0.953379,
		0.895662, -0.391103, 0.211727,
		-0.347676, -0.912623, -0.215035,
		40.585072, 37.015518, 43.194305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306736, 37.404816, 42.864872>,  <40.828445, 37.654354, 43.344830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306736, 37.404816, 42.864872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964958, 37.199322, 42.833881>,  <40.759892, 37.076023, 42.815289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964958, 37.199322, 42.833881>,  <41.306736, 37.404816, 42.864872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964958, 37.199322, 42.833881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048530, 0.227384, -0.972595,
		0.517277, -0.827266, -0.219218,
		-0.854441, -0.513739, -0.077474,
		40.708626, 37.045200, 42.810638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368626, 36.763596, 42.442425>,  <41.306736, 37.404816, 42.864872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368626, 36.763596, 42.442425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997086, 36.911423, 42.432175>,  <40.774162, 37.000118, 42.426025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997086, 36.911423, 42.432175>,  <41.368626, 36.763596, 42.442425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997086, 36.911423, 42.432175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075058, 0.120005, -0.989932,
		-0.362774, -0.921421, -0.139206,
		-0.928849, 0.369571, -0.025625,
		40.718430, 37.022293, 42.424488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771191, 36.584648, 41.936737>,  <41.368626, 36.763596, 42.442425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771191, 36.584648, 41.936737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495586, 36.746437, 42.177296>,  <40.330223, 36.843510, 42.321629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495586, 36.746437, 42.177296>,  <40.771191, 36.584648, 41.936737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495586, 36.746437, 42.177296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557656, 0.234138, -0.796366,
		-0.462915, -0.884073, 0.064232,
		-0.689006, 0.404468, 0.601395,
		40.288883, 36.867779, 42.357716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142025, 36.298653, 41.799267>,  <40.771191, 36.584648, 41.936737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142025, 36.298653, 41.799267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072578, 36.663906, 41.946800>,  <40.030910, 36.883060, 42.035320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072578, 36.663906, 41.946800>,  <40.142025, 36.298653, 41.799267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072578, 36.663906, 41.946800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633104, 0.183383, -0.752030,
		-0.754344, -0.364076, 0.546272,
		-0.173619, 0.913137, 0.368832,
		40.020493, 36.937847, 42.057449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406277, 36.473969, 41.715500>,  <40.142025, 36.298653, 41.799267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406277, 36.473969, 41.715500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625076, 36.808537, 41.729351>,  <39.756355, 37.009277, 41.737659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625076, 36.808537, 41.729351>,  <39.406277, 36.473969, 41.715500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625076, 36.808537, 41.729351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389385, 0.290824, -0.873957,
		-0.741064, 0.464568, 0.484769,
		0.546995, 0.836419, 0.034623,
		39.789173, 37.059464, 41.739738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994030, 37.074497, 41.514660>,  <39.406277, 36.473969, 41.715500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994030, 37.074497, 41.514660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373680, 37.188366, 41.460815>,  <39.601471, 37.256687, 41.428509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373680, 37.188366, 41.460815>,  <38.994030, 37.074497, 41.514660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373680, 37.188366, 41.460815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232733, 0.346198, -0.908836,
		-0.212114, 0.893930, 0.394838,
		0.949127, 0.284669, -0.134613,
		39.658417, 37.273766, 41.420433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238880, 37.032017, 40.890247>,  <38.994030, 37.074497, 41.514660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238880, 37.032017, 40.890247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397865, 37.301937, 41.138981>,  <39.493256, 37.463890, 41.288219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397865, 37.301937, 41.138981>,  <39.238880, 37.032017, 40.890247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397865, 37.301937, 41.138981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809577, 0.576888, -0.108562,
		-0.431984, -0.460271, 0.775590,
		0.397461, 0.674797, 0.621831,
		39.517105, 37.504375, 41.325531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986496, 37.721066, 41.015877>,  <39.238880, 37.032017, 40.890247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986496, 37.721066, 41.015877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368790, 37.604565, 40.999126>,  <39.598164, 37.534664, 40.989075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368790, 37.604565, 40.999126>,  <38.986496, 37.721066, 41.015877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368790, 37.604565, 40.999126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012874, 0.183576, -0.982921,
		0.293961, 0.938869, 0.179199,
		0.955731, -0.291248, -0.041877,
		39.655510, 37.517189, 40.986565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273304, 38.242691, 40.726391>,  <38.986496, 37.721066, 41.015877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273304, 38.242691, 40.726391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530949, 37.947803, 40.644775>,  <39.685535, 37.770870, 40.595806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530949, 37.947803, 40.644775>,  <39.273304, 38.242691, 40.726391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530949, 37.947803, 40.644775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004229, 0.270171, -0.962803,
		0.764918, 0.619291, 0.177139,
		0.644113, -0.737215, -0.204040,
		39.724182, 37.726639, 40.583565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815582, 38.485561, 40.235008>,  <39.273304, 38.242691, 40.726391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815582, 38.485561, 40.235008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806137, 38.087914, 40.192753>,  <39.800468, 37.849323, 40.167400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806137, 38.087914, 40.192753>,  <39.815582, 38.485561, 40.235008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806137, 38.087914, 40.192753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133632, 0.101581, -0.985811,
		0.990750, -0.037399, 0.130448,
		-0.023617, -0.994124, -0.105639,
		39.799053, 37.789677, 40.161060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294666, 38.304115, 39.649586>,  <39.815582, 38.485561, 40.235008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294666, 38.304115, 39.649586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082886, 37.967247, 39.690426>,  <39.955818, 37.765125, 39.714931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082886, 37.967247, 39.690426>,  <40.294666, 38.304115, 39.649586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082886, 37.967247, 39.690426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031979, -0.100458, -0.994427,
		0.847738, -0.529765, 0.026255,
		-0.529451, -0.842174, 0.102103,
		39.924049, 37.714596, 39.721058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579544, 37.777519, 39.194824>,  <40.294666, 38.304115, 39.649586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579544, 37.777519, 39.194824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196674, 37.673290, 39.245300>,  <39.966953, 37.610752, 39.275585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196674, 37.673290, 39.245300>,  <40.579544, 37.777519, 39.194824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196674, 37.673290, 39.245300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014810, -0.391208, -0.920183,
		0.289142, -0.882642, 0.370594,
		-0.957172, -0.260575, 0.126187,
		39.909523, 37.595119, 39.283157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472435, 37.272362, 38.632023>,  <40.579544, 37.777519, 39.194824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472435, 37.272362, 38.632023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105228, 37.304470, 38.787354>,  <39.884903, 37.323734, 38.880550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105228, 37.304470, 38.787354>,  <40.472435, 37.272362, 38.632023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105228, 37.304470, 38.787354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386077, -0.404341, -0.829128,
		0.090463, -0.911079, 0.402183,
		-0.918020, 0.080268, 0.388325,
		39.829823, 37.328552, 38.903851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185665, 36.609875, 38.702969>,  <40.472435, 37.272362, 38.632023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185665, 36.609875, 38.702969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871754, 36.857693, 38.696098>,  <39.683407, 37.006382, 38.691978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871754, 36.857693, 38.696098>,  <40.185665, 36.609875, 38.702969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871754, 36.857693, 38.696098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357767, -0.475463, -0.803702,
		-0.506097, -0.624578, 0.594783,
		-0.784773, 0.619546, -0.017177,
		39.636322, 37.043556, 38.690945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578133, 36.211716, 38.476814>,  <40.185665, 36.609875, 38.702969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578133, 36.211716, 38.476814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511929, 36.602726, 38.424580>,  <39.472206, 36.837334, 38.393238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511929, 36.602726, 38.424580>,  <39.578133, 36.211716, 38.476814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511929, 36.602726, 38.424580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318269, -0.178267, -0.931088,
		-0.933441, -0.112543, 0.340621,
		-0.165508, 0.977525, -0.130583,
		39.462276, 36.895985, 38.385406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607075, 35.535786, 38.454910>,  <39.578133, 36.211716, 38.476814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607075, 35.535786, 38.454910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568436, 35.488636, 38.059582>,  <39.545250, 35.460346, 37.822384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568436, 35.488636, 38.059582>,  <39.607075, 35.535786, 38.454910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568436, 35.488636, 38.059582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935836, -0.348891, -0.049860,
		-0.338938, -0.929721, 0.144015,
		-0.096602, -0.117875, -0.988319,
		39.539455, 35.453274, 37.763084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694370, 34.829185, 38.280014>,  <39.607075, 35.535786, 38.454910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694370, 34.829185, 38.280014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776447, 35.090218, 37.988251>,  <39.825695, 35.246838, 37.813194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776447, 35.090218, 37.988251>,  <39.694370, 34.829185, 38.280014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776447, 35.090218, 37.988251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905621, -0.409210, -0.111344,
		-0.371142, -0.637721, -0.674957,
		0.205193, 0.652579, -0.729408,
		39.838005, 35.285992, 37.769428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960205, 34.392445, 37.725349>,  <39.694370, 34.829185, 38.280014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960205, 34.392445, 37.725349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076859, 34.770977, 37.669624>,  <40.146851, 34.998096, 37.636189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076859, 34.770977, 37.669624>,  <39.960205, 34.392445, 37.725349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076859, 34.770977, 37.669624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918158, -0.317787, -0.236640,
		-0.268212, -0.058900, -0.961558,
		0.291632, 0.946331, -0.139313,
		40.164349, 35.054878, 37.627831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498726, 34.492558, 37.132706>,  <39.960205, 34.392445, 37.725349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498726, 34.492558, 37.132706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525600, 34.829288, 37.346924>,  <40.541725, 35.031326, 37.475452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525600, 34.829288, 37.346924>,  <40.498726, 34.492558, 37.132706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525600, 34.829288, 37.346924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997515, -0.045283, -0.053967,
		-0.021180, 0.537839, -0.842781,
		0.067190, 0.841830, 0.535544,
		40.545757, 35.081837, 37.507587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740833, 35.074615, 36.707977>,  <40.498726, 34.492558, 37.132706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740833, 35.074615, 36.707977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835854, 35.075119, 37.096527>,  <40.892864, 35.075420, 37.329659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835854, 35.075119, 37.096527>,  <40.740833, 35.074615, 36.707977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835854, 35.075119, 37.096527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970095, -0.051629, -0.237169,
		0.049852, 0.998666, -0.013490,
		0.237549, 0.001263, 0.971375,
		40.907120, 35.075497, 37.387939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044415, 35.589394, 36.224773>,  <40.740833, 35.074615, 36.707977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044415, 35.589394, 36.224773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443127, 35.620804, 36.218182>,  <41.682354, 35.639648, 36.214226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443127, 35.620804, 36.218182>,  <41.044415, 35.589394, 36.224773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443127, 35.620804, 36.218182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055261, -0.820763, -0.568590,
		-0.058171, 0.565846, -0.822456,
		0.996776, 0.078525, -0.016475,
		41.742161, 35.644360, 36.213238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223671, 35.450325, 35.469040>,  <41.044415, 35.589394, 36.224773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223671, 35.450325, 35.469040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515621, 35.379452, 35.733128>,  <41.690792, 35.336929, 35.891582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515621, 35.379452, 35.733128>,  <41.223671, 35.450325, 35.469040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515621, 35.379452, 35.733128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141727, -0.905617, -0.399713,
		0.668728, 0.385311, -0.635876,
		0.729874, -0.177179, 0.660221,
		41.734585, 35.326298, 35.931194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880669, 35.250256, 35.139652>,  <41.223671, 35.450325, 35.469040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880669, 35.250256, 35.139652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830208, 35.072704, 35.494518>,  <41.799931, 34.966175, 35.707439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830208, 35.072704, 35.494518>,  <41.880669, 35.250256, 35.139652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830208, 35.072704, 35.494518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352630, -0.855964, -0.378123,
		0.927221, 0.265140, 0.264504,
		-0.126151, -0.443876, 0.887164,
		41.792362, 34.939541, 35.760666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479115, 35.020630, 35.297909>,  <41.880669, 35.250256, 35.139652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479115, 35.020630, 35.297909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185844, 34.792713, 35.446384>,  <42.009884, 34.655964, 35.535469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185844, 34.792713, 35.446384>,  <42.479115, 35.020630, 35.297909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185844, 34.792713, 35.446384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508561, -0.821786, -0.256970,
		0.451463, 0.000370, 0.892290,
		-0.733176, -0.569797, 0.371194,
		41.965893, 34.621773, 35.557743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160370, 35.480877, 35.110939>,  <42.479115, 35.020630, 35.297909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160370, 35.480877, 35.110939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312809, 35.581944, 34.755203>,  <43.404274, 35.642582, 34.541763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312809, 35.581944, 34.755203>,  <43.160370, 35.480877, 35.110939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312809, 35.581944, 34.755203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538001, -0.842897, -0.008926,
		-0.751878, -0.475064, -0.457159,
		0.381098, 0.252663, -0.889340,
		43.427139, 35.657742, 34.488400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382027, 34.900463, 34.813278>,  <43.160370, 35.480877, 35.110939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382027, 34.900463, 34.813278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526066, 35.135517, 34.523449>,  <43.612488, 35.276550, 34.349552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526066, 35.135517, 34.523449>,  <43.382027, 34.900463, 34.813278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526066, 35.135517, 34.523449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333795, -0.806420, -0.488127,
		-0.871154, -0.066085, -0.486543,
		0.360100, 0.587640, -0.724575,
		43.634094, 35.311810, 34.306076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318207, 34.508686, 34.193264>,  <43.382027, 34.900463, 34.813278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318207, 34.508686, 34.193264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559052, 34.813061, 34.096573>,  <43.703560, 34.995686, 34.038559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559052, 34.813061, 34.096573>,  <43.318207, 34.508686, 34.193264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559052, 34.813061, 34.096573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466129, -0.580841, -0.667343,
		-0.648212, 0.289141, -0.704428,
		0.602117, 0.760935, -0.241731,
		43.739685, 35.041340, 34.024052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459011, 34.408722, 33.446247>,  <43.318207, 34.508686, 34.193264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.459011, 34.408722, 33.446247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730732, 34.625233, 33.644466>,  <43.893764, 34.755138, 33.763397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730732, 34.625233, 33.644466>,  <43.459011, 34.408722, 33.446247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730732, 34.625233, 33.644466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732190, -0.545452, -0.407897,
		0.049514, 0.639922, -0.766843,
		0.679298, 0.541278, 0.495552,
		43.934521, 34.787617, 33.793133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045441, 34.609272, 32.940022>,  <43.459011, 34.408722, 33.446247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045441, 34.609272, 32.940022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.150951, 34.620052, 33.325706>,  <44.214256, 34.626518, 33.557117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.150951, 34.620052, 33.325706>,  <44.045441, 34.609272, 32.940022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.150951, 34.620052, 33.325706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831202, -0.513536, -0.213036,
		0.489415, 0.857644, -0.157856,
		0.263774, 0.026947, 0.964208,
		44.230083, 34.628136, 33.614967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.582073, 34.203075, 32.815716>,  <44.045441, 34.609272, 32.940022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.582073, 34.203075, 32.815716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.588608, 34.309837, 33.201149>,  <44.592529, 34.373894, 33.432407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.588608, 34.309837, 33.201149>,  <44.582073, 34.203075, 32.815716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.588608, 34.309837, 33.201149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819407, -0.555834, 0.140072,
		0.572979, 0.787279, -0.227788,
		0.016337, 0.266909, 0.963583,
		44.593510, 34.389912, 33.490223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312870, 34.135437, 33.188965>,  <44.582073, 34.203075, 32.815716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.312870, 34.135437, 33.188965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.056202, 34.123009, 33.495506>,  <44.902203, 34.115551, 33.679432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.056202, 34.123009, 33.495506>,  <45.312870, 34.135437, 33.188965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.056202, 34.123009, 33.495506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459440, -0.815646, 0.351619,
		0.614147, 0.577716, 0.537650,
		-0.641668, -0.031072, 0.766352,
		44.863701, 34.113686, 33.725410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.596924, 34.144768, 33.944073>,  <45.312870, 34.135437, 33.188965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.596924, 34.144768, 33.944073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.237671, 33.974174, 33.986908>,  <45.022118, 33.871819, 34.012611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.237671, 33.974174, 33.986908>,  <45.596924, 34.144768, 33.944073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.237671, 33.974174, 33.986908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405402, -0.708775, 0.577310,
		-0.170309, 0.561917, 0.809471,
		-0.898134, -0.426482, 0.107091,
		44.968231, 33.846230, 34.019035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243828, 34.231995, 34.363697>,  <45.596924, 34.144768, 33.944073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243828, 34.231995, 34.363697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.529713, 34.067875, 34.137127>,  <46.701244, 33.969402, 34.001186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.529713, 34.067875, 34.137127>,  <46.243828, 34.231995, 34.363697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.529713, 34.067875, 34.137127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056584, 0.773278, -0.631537,
		0.697125, 0.483419, 0.529456,
		0.714713, -0.410301, -0.566425,
		46.744125, 33.944786, 33.967201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.897518, 34.572018, 34.331444>,  <46.243828, 34.231995, 34.363697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.897518, 34.572018, 34.331444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.805740, 34.401543, 33.981422>,  <46.750675, 34.299259, 33.771408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.805740, 34.401543, 33.981422>,  <46.897518, 34.572018, 34.331444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.805740, 34.401543, 33.981422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098233, 0.884311, -0.456448,
		0.968353, -0.190688, -0.161032,
		-0.229442, -0.426184, -0.875056,
		46.736908, 34.273689, 33.718906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.579849, 35.057362, 34.382954>,  <46.897518, 34.572018, 34.331444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.579849, 35.057362, 34.382954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.870964, 35.265301, 34.561878>,  <48.045631, 35.390064, 34.669231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.870964, 35.265301, 34.561878>,  <47.579849, 35.057362, 34.382954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.870964, 35.265301, 34.561878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406091, -0.198930, 0.891917,
		0.552648, -0.830771, 0.066330,
		0.727784, 0.519852, 0.447307,
		48.089298, 35.421257, 34.696072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.866924, 34.605904, 34.973530>,  <47.579849, 35.057362, 34.382954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.866924, 34.605904, 34.973530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.819130, 34.999352, 35.027519>,  <47.790455, 35.235420, 35.059914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.819130, 34.999352, 35.027519>,  <47.866924, 34.605904, 34.973530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.819130, 34.999352, 35.027519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449143, -0.174789, 0.876196,
		0.885434, 0.044071, 0.462670,
		-0.119485, 0.983619, 0.134970,
		47.783283, 35.294437, 35.068008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.458794, 35.548126, 27.836210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.272732, 35.896393, 27.900166>,  <35.161095, 36.105354, 27.938540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.272732, 35.896393, 27.900166>,  <35.458794, 35.548126, 27.836210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272732, 35.896393, 27.900166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178363, -0.269096, 0.946453,
		0.867072, 0.411732, 0.280467,
		-0.465158, 0.870669, 0.159888,
		35.133183, 36.157593, 27.948132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698418, 35.802162, 28.484861>,  <35.458794, 35.548126, 27.836210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698418, 35.802162, 28.484861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.354103, 36.003662, 28.455784>,  <35.147514, 36.124561, 28.438337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.354103, 36.003662, 28.455784>,  <35.698418, 35.802162, 28.484861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354103, 36.003662, 28.455784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154022, -0.121686, 0.980546,
		0.485105, 0.855236, 0.182334,
		-0.860785, 0.503751, -0.072694,
		35.095867, 36.154789, 28.433975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739162, 36.337982, 28.911554>,  <35.698418, 35.802162, 28.484861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739162, 36.337982, 28.911554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.342545, 36.312607, 28.866287>,  <35.104572, 36.297382, 28.839127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.342545, 36.312607, 28.866287>,  <35.739162, 36.337982, 28.911554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342545, 36.312607, 28.866287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099385, -0.189277, 0.976881,
		-0.083393, 0.979872, 0.181372,
		-0.991548, -0.063439, -0.113169,
		35.045078, 36.293575, 28.832336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437752, 36.780739, 29.426073>,  <35.739162, 36.337982, 28.911554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437752, 36.780739, 29.426073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119232, 36.559692, 29.327669>,  <34.928120, 36.427063, 29.268627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119232, 36.559692, 29.327669>,  <35.437752, 36.780739, 29.426073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119232, 36.559692, 29.327669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335026, 0.064289, 0.940013,
		-0.503651, 0.830952, -0.236334,
		-0.796299, -0.552617, -0.246012,
		34.880341, 36.393906, 29.253866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855446, 37.253643, 29.671694>,  <35.437752, 36.780739, 29.426073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855446, 37.253643, 29.671694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.771545, 36.863754, 29.640903>,  <34.721203, 36.629822, 29.622429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.771545, 36.863754, 29.640903>,  <34.855446, 37.253643, 29.671694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771545, 36.863754, 29.640903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483159, 0.034885, 0.874837,
		-0.850035, 0.220694, -0.478262,
		-0.209755, -0.974719, -0.076977,
		34.708618, 36.571339, 29.617811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117001, 37.157883, 29.776438>,  <34.855446, 37.253643, 29.671694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117001, 37.157883, 29.776438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.317463, 36.825668, 29.873646>,  <34.437740, 36.626339, 29.931971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.317463, 36.825668, 29.873646>,  <34.117001, 37.157883, 29.776438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317463, 36.825668, 29.873646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432517, 0.002831, 0.901621,
		-0.749513, -0.556965, -0.357800,
		0.501159, -0.830531, 0.243019,
		34.467812, 36.576508, 29.946552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560421, 36.861458, 30.165941>,  <34.117001, 37.157883, 29.776438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560421, 36.861458, 30.165941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.894745, 36.656422, 30.244608>,  <34.095337, 36.533401, 30.291807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.894745, 36.656422, 30.244608>,  <33.560421, 36.861458, 30.165941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894745, 36.656422, 30.244608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310185, -0.145310, 0.939505,
		-0.453005, -0.846247, -0.280449,
		0.835806, -0.512592, 0.196667,
		34.145485, 36.502644, 30.303608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423252, 36.286407, 30.648899>,  <33.560421, 36.861458, 30.165941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423252, 36.286407, 30.648899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.819473, 36.329624, 30.682669>,  <34.057205, 36.355553, 30.702930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.819473, 36.329624, 30.682669>,  <33.423252, 36.286407, 30.648899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819473, 36.329624, 30.682669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071216, -0.120777, 0.990122,
		0.117168, -0.986783, -0.111942,
		0.990555, 0.108038, 0.084426,
		34.116638, 36.362034, 30.707996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590199, 35.835232, 31.100683>,  <33.423252, 36.286407, 30.648899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590199, 35.835232, 31.100683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.893337, 36.096191, 31.103203>,  <34.075222, 36.252766, 31.104713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.893337, 36.096191, 31.103203>,  <33.590199, 35.835232, 31.100683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893337, 36.096191, 31.103203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076574, -0.098528, 0.992184,
		0.647920, -0.751444, -0.124627,
		0.757850, 0.652399, 0.006298,
		34.120693, 36.291912, 31.105093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011616, 35.536392, 31.696306>,  <33.590199, 35.835232, 31.100683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011616, 35.536392, 31.696306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.162041, 35.903221, 31.643297>,  <34.252296, 36.123318, 31.611492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.162041, 35.903221, 31.643297>,  <34.011616, 35.536392, 31.696306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162041, 35.903221, 31.643297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047638, 0.123697, 0.991176,
		0.925370, -0.379054, 0.002830,
		0.376059, 0.917070, -0.132523,
		34.274857, 36.178341, 31.603540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699074, 35.696716, 32.054363>,  <34.011616, 35.536392, 31.696306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699074, 35.696716, 32.054363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.561512, 36.069672, 32.009850>,  <34.478973, 36.293446, 31.983141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.561512, 36.069672, 32.009850>,  <34.699074, 35.696716, 32.054363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561512, 36.069672, 32.009850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354343, 0.238612, 0.904160,
		0.869581, 0.271511, -0.412445,
		-0.343903, 0.932387, -0.111285,
		34.458340, 36.349388, 31.976463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298813, 36.063538, 32.237995>,  <34.699074, 35.696716, 32.054363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298813, 36.063538, 32.237995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.976654, 36.298969, 32.266026>,  <34.783360, 36.440228, 32.282845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.976654, 36.298969, 32.266026>,  <35.298813, 36.063538, 32.237995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976654, 36.298969, 32.266026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307480, 0.313798, 0.898324,
		0.506743, 0.745056, -0.433708,
		-0.805399, 0.588577, 0.070075,
		34.735035, 36.475544, 32.287048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595566, 36.592724, 32.711983>,  <35.298813, 36.063538, 32.237995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595566, 36.592724, 32.711983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.203773, 36.672379, 32.724419>,  <34.968697, 36.720169, 32.731880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.203773, 36.672379, 32.724419>,  <35.595566, 36.592724, 32.711983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203773, 36.672379, 32.724419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057817, 0.129853, 0.989846,
		0.193074, 0.971331, -0.138701,
		-0.979479, 0.199133, 0.031089,
		34.909931, 36.732117, 32.733746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416809, 37.310173, 33.071236>,  <35.595566, 36.592724, 32.711983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416809, 37.310173, 33.071236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.093296, 37.075241, 33.083294>,  <34.899189, 36.934280, 33.090530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.093296, 37.075241, 33.083294>,  <35.416809, 37.310173, 33.071236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093296, 37.075241, 33.083294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129054, 0.227260, 0.965245,
		-0.573773, 0.776783, -0.259602,
		-0.808783, -0.587335, 0.030148,
		34.850662, 36.899040, 33.092339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880455, 37.692780, 33.489578>,  <35.416809, 37.310173, 33.071236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880455, 37.692780, 33.489578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.773991, 37.307907, 33.466385>,  <34.710114, 37.076984, 33.452469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.773991, 37.307907, 33.466385>,  <34.880455, 37.692780, 33.489578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773991, 37.307907, 33.466385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268685, 0.016285, 0.963090,
		-0.925726, 0.271912, -0.262859,
		-0.266156, -0.962184, -0.057983,
		34.694145, 37.019253, 33.448990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087215, 37.646809, 33.564896>,  <34.880455, 37.692780, 33.489578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087215, 37.646809, 33.564896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.267727, 37.310528, 33.684605>,  <34.376034, 37.108761, 33.756432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.267727, 37.310528, 33.684605>,  <34.087215, 37.646809, 33.564896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267727, 37.310528, 33.684605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232660, 0.212922, 0.948964,
		-0.861519, -0.497878, -0.099510,
		0.451280, -0.840703, 0.299273,
		34.403111, 37.058315, 33.774387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647896, 37.294250, 34.008766>,  <34.087215, 37.646809, 33.564896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647896, 37.294250, 34.008766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.003304, 37.132301, 34.095116>,  <34.216549, 37.035130, 34.146927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.003304, 37.132301, 34.095116>,  <33.647896, 37.294250, 34.008766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003304, 37.132301, 34.095116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200094, 0.081487, 0.976382,
		-0.412906, -0.910733, -0.008610,
		0.888522, -0.404877, 0.215878,
		34.269859, 37.010838, 34.159878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448994, 36.812378, 34.512005>,  <33.647896, 37.294250, 34.008766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448994, 36.812378, 34.512005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847324, 36.846359, 34.525322>,  <34.086323, 36.866749, 34.533314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847324, 36.846359, 34.525322>,  <33.448994, 36.812378, 34.512005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847324, 36.846359, 34.525322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023406, -0.114839, 0.993108,
		0.088188, -0.989745, -0.112372,
		0.995829, 0.084950, 0.033294,
		34.146072, 36.871845, 34.535309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714432, 36.203976, 34.873585>,  <33.448994, 36.812378, 34.512005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714432, 36.203976, 34.873585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.984013, 36.498890, 34.892361>,  <34.145760, 36.675838, 34.903625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.984013, 36.498890, 34.892361>,  <33.714432, 36.203976, 34.873585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984013, 36.498890, 34.892361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025388, -0.086618, 0.995918,
		0.738341, -0.670007, -0.077094,
		0.673950, 0.737285, 0.046944,
		34.186199, 36.720074, 34.906445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157059, 36.007839, 35.481060>,  <33.714432, 36.203976, 34.873585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157059, 36.007839, 35.481060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.257492, 36.390343, 35.421024>,  <34.317753, 36.619846, 35.385002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.257492, 36.390343, 35.421024>,  <34.157059, 36.007839, 35.481060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257492, 36.390343, 35.421024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090910, 0.131072, 0.987196,
		0.963687, -0.261514, -0.054024,
		0.251084, 0.956259, -0.150086,
		34.332817, 36.677219, 35.375999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785862, 36.065243, 35.888893>,  <34.157059, 36.007839, 35.481060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785862, 36.065243, 35.888893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.605320, 36.415493, 35.820129>,  <34.496994, 36.625645, 35.778870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.605320, 36.415493, 35.820129>,  <34.785862, 36.065243, 35.888893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605320, 36.415493, 35.820129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111260, 0.246370, 0.962769,
		0.885382, 0.415423, -0.208622,
		-0.451354, 0.875629, -0.171912,
		34.469913, 36.678181, 35.768555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230011, 36.613239, 36.245106>,  <34.785862, 36.065243, 35.888893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230011, 36.613239, 36.245106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.852512, 36.739910, 36.207039>,  <34.626015, 36.815914, 36.184196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.852512, 36.739910, 36.207039>,  <35.230011, 36.613239, 36.245106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852512, 36.739910, 36.207039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015663, 0.330299, 0.943746,
		0.330299, 0.889167, -0.316679,
		-0.943746, 0.316679, -0.095171,
		34.569389, 36.834915, 36.178486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941986, 36.226974, 36.315723>,  <35.230011, 36.613239, 36.245106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941986, 36.226974, 36.315723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.322529, 36.162342, 36.420650>,  <36.550854, 36.123562, 36.483608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.322529, 36.162342, 36.420650>,  <35.941986, 36.226974, 36.315723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322529, 36.162342, 36.420650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253846, -0.071392, -0.964606,
		0.174586, 0.984274, -0.026903,
		0.951358, -0.161578, 0.262318,
		36.607937, 36.113869, 36.499348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382973, 36.721443, 35.867569>,  <35.941986, 36.226974, 36.315723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382973, 36.721443, 35.867569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.639553, 36.442093, 35.994572>,  <36.793503, 36.274483, 36.070774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.639553, 36.442093, 35.994572>,  <36.382973, 36.721443, 35.867569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639553, 36.442093, 35.994572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249850, -0.201135, -0.947164,
		0.725339, 0.686888, 0.045472,
		0.641450, -0.698376, 0.317510,
		36.831989, 36.232578, 36.089825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881649, 36.869335, 35.397594>,  <36.382973, 36.721443, 35.867569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881649, 36.869335, 35.397594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.944916, 36.499107, 35.535175>,  <36.982876, 36.276970, 35.617722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.944916, 36.499107, 35.535175>,  <36.881649, 36.869335, 35.397594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944916, 36.499107, 35.535175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273559, -0.293624, -0.915943,
		0.948762, 0.238959, 0.206758,
		0.158163, -0.925572, 0.343948,
		36.992363, 36.221436, 35.638359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583199, 36.664005, 35.365574>,  <36.881649, 36.869335, 35.397594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583199, 36.664005, 35.365574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.390465, 36.313732, 35.352852>,  <37.274822, 36.103569, 35.345219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.390465, 36.313732, 35.352852>,  <37.583199, 36.664005, 35.365574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390465, 36.313732, 35.352852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452708, -0.217689, -0.864677,
		0.750259, -0.431034, 0.501320,
		-0.481837, -0.875683, -0.031809,
		37.245914, 36.051025, 35.343307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985806, 36.115921, 35.206627>,  <37.583199, 36.664005, 35.365574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985806, 36.115921, 35.206627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.623787, 35.972969, 35.114395>,  <37.406574, 35.887199, 35.059055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.623787, 35.972969, 35.114395>,  <37.985806, 36.115921, 35.206627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623787, 35.972969, 35.114395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323977, -0.228047, -0.918168,
		0.275552, -0.905689, 0.322177,
		-0.905047, -0.357382, -0.230584,
		37.352272, 35.865753, 35.045219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186874, 35.649815, 34.748489>,  <37.985806, 36.115921, 35.206627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186874, 35.649815, 34.748489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.790333, 35.659466, 34.696903>,  <37.552406, 35.665257, 34.665951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.790333, 35.659466, 34.696903>,  <38.186874, 35.649815, 34.748489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790333, 35.659466, 34.696903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117324, -0.277024, -0.953673,
		-0.058740, -0.960560, 0.271798,
		-0.991354, 0.024131, -0.128969,
		37.492928, 35.666706, 34.658211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001972, 35.026966, 34.416969>,  <38.186874, 35.649815, 34.748489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001972, 35.026966, 34.416969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.684254, 35.263908, 34.362999>,  <37.493622, 35.406075, 34.330616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.684254, 35.263908, 34.362999>,  <38.001972, 35.026966, 34.416969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684254, 35.263908, 34.362999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036575, -0.268309, -0.962638,
		-0.606426, -0.759687, 0.234783,
		-0.794298, 0.592356, -0.134924,
		37.445965, 35.441616, 34.322521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429176, 34.651196, 34.139290>,  <38.001972, 35.026966, 34.416969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429176, 34.651196, 34.139290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341606, 35.027302, 34.035004>,  <37.289066, 35.252964, 33.972431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341606, 35.027302, 34.035004>,  <37.429176, 34.651196, 34.139290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341606, 35.027302, 34.035004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148004, -0.296103, -0.943619,
		-0.964452, -0.167994, 0.203987,
		-0.218923, 0.940266, -0.260714,
		37.275928, 35.309383, 33.956791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883595, 34.574593, 33.716637>,  <37.429176, 34.651196, 34.139290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883595, 34.574593, 33.716637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.034538, 34.938671, 33.648361>,  <37.125107, 35.157120, 33.607395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.034538, 34.938671, 33.648361>,  <36.883595, 34.574593, 33.716637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034538, 34.938671, 33.648361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055815, -0.161627, -0.985272,
		-0.924382, 0.381332, -0.010189,
		0.377362, 0.910199, -0.170689,
		37.147747, 35.211731, 33.597153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374126, 34.819622, 33.300106>,  <36.883595, 34.574593, 33.716637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374126, 34.819622, 33.300106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714588, 35.020927, 33.240425>,  <36.918865, 35.141708, 33.204617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714588, 35.020927, 33.240425>,  <36.374126, 34.819622, 33.300106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714588, 35.020927, 33.240425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146773, -0.044723, -0.988159,
		-0.503974, 0.862977, 0.035799,
		0.851157, 0.503261, -0.149201,
		36.969936, 35.171906, 33.195663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206554, 35.348995, 32.786995>,  <36.374126, 34.819622, 33.300106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206554, 35.348995, 32.786995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.592537, 35.244083, 32.783562>,  <36.824127, 35.181137, 32.781502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.592537, 35.244083, 32.783562>,  <36.206554, 35.348995, 32.786995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592537, 35.244083, 32.783562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000630, 0.030394, -0.999538,
		0.262422, 0.964513, 0.029163,
		0.964953, -0.262283, -0.008584,
		36.882023, 35.165398, 32.780987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442780, 35.799866, 32.226051>,  <36.206554, 35.348995, 32.786995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442780, 35.799866, 32.226051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.722229, 35.521240, 32.291428>,  <36.889900, 35.354065, 32.330654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.722229, 35.521240, 32.291428>,  <36.442780, 35.799866, 32.226051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722229, 35.521240, 32.291428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173942, -0.056222, -0.983150,
		0.694019, 0.715284, 0.081884,
		0.698628, -0.696568, 0.163438,
		36.931816, 35.312271, 32.340458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044659, 36.057644, 31.823536>,  <36.442780, 35.799866, 32.226051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044659, 36.057644, 31.823536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115730, 35.668770, 31.884586>,  <37.158371, 35.435448, 31.921217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115730, 35.668770, 31.884586>,  <37.044659, 36.057644, 31.823536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115730, 35.668770, 31.884586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039123, -0.147991, -0.988215,
		0.983311, 0.181553, 0.011740,
		0.177676, -0.972182, 0.152624,
		37.169033, 35.377117, 31.930374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597569, 35.919872, 31.393240>,  <37.044659, 36.057644, 31.823536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597569, 35.919872, 31.393240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.428192, 35.564266, 31.462931>,  <37.326569, 35.350903, 31.504745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.428192, 35.564266, 31.462931>,  <37.597569, 35.919872, 31.393240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428192, 35.564266, 31.462931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152613, -0.259573, -0.953589,
		0.892977, -0.377198, 0.245588,
		-0.423439, -0.889013, 0.174227,
		37.301159, 35.297562, 31.515200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178802, 35.361523, 31.269482>,  <37.597569, 35.919872, 31.393240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178802, 35.361523, 31.269482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.851418, 35.131699, 31.270514>,  <37.654987, 34.993805, 31.271133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.851418, 35.131699, 31.270514>,  <38.178802, 35.361523, 31.269482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851418, 35.131699, 31.270514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184645, -0.267274, -0.945765,
		0.544090, -0.773592, 0.324842,
		-0.818458, -0.574561, 0.002581,
		37.605881, 34.959332, 31.271288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324909, 34.768955, 30.864979>,  <38.178802, 35.361523, 31.269482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324909, 34.768955, 30.864979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.925087, 34.768234, 30.853033>,  <37.685196, 34.767799, 30.845865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.925087, 34.768234, 30.853033>,  <38.324909, 34.768955, 30.864979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925087, 34.768234, 30.853033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029158, -0.282383, -0.958858,
		-0.006699, -0.959300, 0.282310,
		-0.999552, -0.001808, -0.029863,
		37.625221, 34.767693, 30.844074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146465, 34.258629, 30.303408>,  <38.324909, 34.768955, 30.864979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146465, 34.258629, 30.303408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.800621, 34.457615, 30.331606>,  <37.593113, 34.577007, 30.348526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.800621, 34.457615, 30.331606>,  <38.146465, 34.258629, 30.303408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800621, 34.457615, 30.331606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170792, -0.159043, -0.972386,
		-0.472518, -0.852778, 0.222475,
		-0.864613, 0.497467, 0.070497,
		37.541237, 34.606853, 30.352755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672539, 33.916698, 29.880320>,  <38.146465, 34.258629, 30.303408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672539, 33.916698, 29.880320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494217, 34.271301, 29.929886>,  <37.387222, 34.484062, 29.959625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494217, 34.271301, 29.929886>,  <37.672539, 33.916698, 29.880320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494217, 34.271301, 29.929886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084524, 0.096125, -0.991774,
		-0.891130, -0.452612, 0.032078,
		-0.445806, 0.886511, 0.123916,
		37.360474, 34.537254, 29.967060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.783382, 34.038383, 29.358625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.900696, 34.409378, 29.451363>,  <36.971085, 34.631973, 29.507006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.900696, 34.409378, 29.451363>,  <36.783382, 34.038383, 29.358625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900696, 34.409378, 29.451363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098073, 0.212041, -0.972327,
		-0.950981, 0.307909, -0.028772,
		0.293287, 0.927486, 0.231844,
		36.988682, 34.687622, 29.520916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344196, 34.458435, 28.925955>,  <36.783382, 34.038383, 29.358625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344196, 34.458435, 28.925955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.694099, 34.633282, 29.009602>,  <36.904041, 34.738190, 29.059790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.694099, 34.633282, 29.009602>,  <36.344196, 34.458435, 28.925955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694099, 34.633282, 29.009602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081266, 0.293103, -0.952621,
		-0.477695, 0.850308, 0.220872,
		0.874759, 0.437112, 0.209115,
		36.956528, 34.764416, 29.072336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211246, 34.963890, 28.537605>,  <36.344196, 34.458435, 28.925955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211246, 34.963890, 28.537605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.603561, 34.975101, 28.614830>,  <36.838951, 34.981827, 28.661165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.603561, 34.975101, 28.614830>,  <36.211246, 34.963890, 28.537605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603561, 34.975101, 28.614830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167554, 0.385860, -0.907214,
		-0.099922, 0.922132, 0.373750,
		0.980786, 0.028027, 0.193062,
		36.897797, 34.983509, 28.672749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507549, 35.717865, 28.256828>,  <36.211246, 34.963890, 28.537605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507549, 35.717865, 28.256828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.817104, 35.470417, 28.311090>,  <37.002838, 35.321949, 28.343647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.817104, 35.470417, 28.311090>,  <36.507549, 35.717865, 28.256828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817104, 35.470417, 28.311090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331814, 0.213608, -0.918842,
		0.539436, 0.756096, 0.370576,
		0.773891, -0.618619, 0.135655,
		37.049271, 35.284832, 28.351788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081867, 36.105713, 28.117216>,  <36.507549, 35.717865, 28.256828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081867, 36.105713, 28.117216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.186584, 35.723896, 28.060219>,  <37.249416, 35.494804, 28.026020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.186584, 35.723896, 28.060219>,  <37.081867, 36.105713, 28.117216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186584, 35.723896, 28.060219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478221, 0.256543, -0.839934,
		0.838312, 0.151749, 0.523646,
		0.261797, -0.954546, -0.142494,
		37.265125, 35.437531, 28.017471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786621, 36.132671, 27.788366>,  <37.081867, 36.105713, 28.117216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786621, 36.132671, 27.788366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.633957, 35.772018, 27.706985>,  <37.542358, 35.555626, 27.658157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.633957, 35.772018, 27.706985>,  <37.786621, 36.132671, 27.788366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633957, 35.772018, 27.706985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444912, 0.013728, -0.895469,
		0.810176, -0.432287, 0.395907,
		-0.381664, -0.901632, -0.203451,
		37.519459, 35.501530, 27.645950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297092, 35.774010, 27.392376>,  <37.786621, 36.132671, 27.788366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297092, 35.774010, 27.392376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.968456, 35.553352, 27.334854>,  <37.771275, 35.420959, 27.300341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.968456, 35.553352, 27.334854>,  <38.297092, 35.774010, 27.392376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968456, 35.553352, 27.334854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278831, -0.168832, -0.945383,
		0.497234, -0.816815, 0.292526,
		-0.821591, -0.551642, -0.143804,
		37.721977, 35.387859, 27.291714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454304, 35.053543, 27.074587>,  <38.297092, 35.774010, 27.392376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454304, 35.053543, 27.074587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083122, 35.180847, 26.997009>,  <37.860413, 35.257229, 26.950462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083122, 35.180847, 26.997009>,  <38.454304, 35.053543, 27.074587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083122, 35.180847, 26.997009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106177, -0.273072, -0.956116,
		-0.357253, -0.907824, 0.219606,
		-0.927953, 0.318258, -0.193946,
		37.804737, 35.276325, 26.938826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245655, 34.434860, 26.706585>,  <38.454304, 35.053543, 27.074587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245655, 34.434860, 26.706585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.979515, 34.719204, 26.615376>,  <37.819832, 34.889809, 26.560650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.979515, 34.719204, 26.615376>,  <38.245655, 34.434860, 26.706585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979515, 34.719204, 26.615376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053523, -0.259237, -0.964329,
		-0.744612, -0.653819, 0.134436,
		-0.665348, 0.710856, -0.228026,
		37.779911, 34.932461, 26.546968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656445, 34.087029, 26.326376>,  <38.245655, 34.434860, 26.706585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656445, 34.087029, 26.326376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.629982, 34.478176, 26.246979>,  <37.614105, 34.712864, 26.199341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.629982, 34.478176, 26.246979>,  <37.656445, 34.087029, 26.326376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629982, 34.478176, 26.246979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195632, -0.182357, -0.963573,
		-0.978444, -0.102577, -0.179238,
		-0.066155, 0.977867, -0.198494,
		37.610134, 34.771538, 26.187431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254532, 34.281025, 25.738922>,  <37.656445, 34.087029, 26.326376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254532, 34.281025, 25.738922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513161, 34.586155, 25.736275>,  <37.668339, 34.769234, 25.734686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513161, 34.586155, 25.736275>,  <37.254532, 34.281025, 25.738922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513161, 34.586155, 25.736275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201089, -0.178799, -0.963117,
		-0.735876, 0.621389, -0.269002,
		0.646568, 0.762828, -0.006619,
		37.707130, 34.815002, 25.734289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281372, 34.563427, 24.983261>,  <37.254532, 34.281025, 25.738922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281372, 34.563427, 24.983261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.607113, 34.727402, 25.147593>,  <37.802559, 34.825787, 25.246191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.607113, 34.727402, 25.147593>,  <37.281372, 34.563427, 24.983261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607113, 34.727402, 25.147593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442279, 0.020007, -0.896654,
		-0.375794, 0.911893, -0.165015,
		0.814351, 0.409940, 0.410830,
		37.851418, 34.850384, 25.270842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419735, 34.991009, 24.453960>,  <37.281372, 34.563427, 24.983261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419735, 34.991009, 24.453960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.740059, 34.973942, 24.692921>,  <37.932255, 34.963699, 24.836296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.740059, 34.973942, 24.692921>,  <37.419735, 34.991009, 24.453960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740059, 34.973942, 24.692921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598899, 0.065593, -0.798134,
		-0.005127, 0.996934, 0.078083,
		0.800808, -0.042672, 0.597398,
		37.980301, 34.961140, 24.872141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972435, 35.600361, 24.254730>,  <37.419735, 34.991009, 24.453960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972435, 35.600361, 24.254730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.198879, 35.332794, 24.447426>,  <38.334747, 35.172256, 24.563044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.198879, 35.332794, 24.447426>,  <37.972435, 35.600361, 24.254730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198879, 35.332794, 24.447426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537621, -0.143403, -0.830902,
		0.624884, 0.729377, 0.278440,
		0.566112, -0.668913, 0.481739,
		38.368713, 35.132122, 24.591948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713573, 35.757210, 24.189137>,  <37.972435, 35.600361, 24.254730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713573, 35.757210, 24.189137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.709476, 35.371010, 24.293215>,  <38.707020, 35.139290, 24.355661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.709476, 35.371010, 24.293215>,  <38.713573, 35.757210, 24.189137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709476, 35.371010, 24.293215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513708, -0.228325, -0.827026,
		0.857904, 0.125193, 0.498325,
		-0.010243, -0.965502, 0.260194,
		38.706402, 35.081360, 24.371273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409428, 35.496460, 24.038029>,  <38.713573, 35.757210, 24.189137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409428, 35.496460, 24.038029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.235355, 35.140736, 24.094238>,  <39.130913, 34.927303, 24.127964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.235355, 35.140736, 24.094238>,  <39.409428, 35.496460, 24.038029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235355, 35.140736, 24.094238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494701, -0.366591, -0.787960,
		0.752255, -0.273389, 0.599476,
		-0.435182, -0.889308, 0.140524,
		39.104801, 34.873943, 24.136396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922916, 34.939953, 24.033092>,  <39.409428, 35.496460, 24.038029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922916, 34.939953, 24.033092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.560314, 34.798714, 23.940514>,  <39.342754, 34.713970, 23.884966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.560314, 34.798714, 23.940514>,  <39.922916, 34.939953, 24.033092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560314, 34.798714, 23.940514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364399, -0.377507, -0.851294,
		0.213220, -0.856041, 0.470882,
		-0.906505, -0.353103, -0.231449,
		39.288364, 34.692783, 23.871078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134312, 34.419670, 23.683208>,  <39.922916, 34.939953, 24.033092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134312, 34.419670, 23.683208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.759125, 34.476967, 23.556908>,  <39.534012, 34.511345, 23.481127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.759125, 34.476967, 23.556908>,  <40.134312, 34.419670, 23.683208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759125, 34.476967, 23.556908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280799, -0.220392, -0.934119,
		-0.203384, -0.964838, 0.166502,
		-0.937970, 0.143231, -0.315750,
		39.477734, 34.519939, 23.462183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967350, 33.764305, 23.367418>,  <40.134312, 34.419670, 23.683208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967350, 33.764305, 23.367418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.770844, 34.088852, 23.240711>,  <39.652939, 34.283581, 23.164686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.770844, 34.088852, 23.240711>,  <39.967350, 33.764305, 23.367418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770844, 34.088852, 23.240711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154748, -0.276588, -0.948447,
		-0.857155, -0.514955, 0.010319,
		-0.491261, 0.811370, -0.316767,
		39.623466, 34.332264, 23.145681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731178, 33.588383, 22.645660>,  <39.967350, 33.764305, 23.367418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731178, 33.588383, 22.645660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.684162, 33.985275, 22.661945>,  <39.655952, 34.223412, 22.671717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.684162, 33.985275, 22.661945>,  <39.731178, 33.588383, 22.645660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684162, 33.985275, 22.661945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218550, 0.065837, -0.973602,
		-0.968721, -0.105540, -0.224591,
		-0.117540, 0.992233, 0.040712,
		39.648899, 34.282944, 22.674158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307232, 33.645409, 22.114527>,  <39.731178, 33.588383, 22.645660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307232, 33.645409, 22.114527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.475956, 34.001804, 22.181717>,  <39.577190, 34.215641, 22.222031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.475956, 34.001804, 22.181717>,  <39.307232, 33.645409, 22.114527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475956, 34.001804, 22.181717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219405, 0.079453, -0.972393,
		-0.879738, 0.447017, -0.161974,
		0.421807, 0.890990, 0.167976,
		39.602497, 34.269100, 22.232109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125134, 33.975555, 21.554110>,  <39.307232, 33.645409, 22.114527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125134, 33.975555, 21.554110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.437603, 34.170876, 21.709715>,  <39.625084, 34.288067, 21.803078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.437603, 34.170876, 21.709715>,  <39.125134, 33.975555, 21.554110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437603, 34.170876, 21.709715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358426, 0.159413, -0.919847,
		-0.511179, 0.857990, -0.050492,
		0.781170, 0.488304, 0.389015,
		39.671955, 34.317368, 21.826420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104778, 34.672684, 21.243467>,  <39.125134, 33.975555, 21.554110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104778, 34.672684, 21.243467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.469101, 34.542168, 21.344637>,  <39.687695, 34.463860, 21.405338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.469101, 34.542168, 21.344637>,  <39.104778, 34.672684, 21.243467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469101, 34.542168, 21.344637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312314, 0.143920, -0.939014,
		0.269989, 0.934250, 0.232987,
		0.910805, -0.326289, 0.252923,
		39.742344, 34.444283, 21.420513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664227, 35.166813, 21.186733>,  <39.104778, 34.672684, 21.243467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664227, 35.166813, 21.186733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.851879, 34.813667, 21.178131>,  <39.964470, 34.601780, 21.172970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.851879, 34.813667, 21.178131>,  <39.664227, 35.166813, 21.186733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851879, 34.813667, 21.178131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318236, 0.191718, -0.928423,
		0.823796, 0.428710, 0.370901,
		0.469133, -0.882866, -0.021506,
		39.992619, 34.548809, 21.171679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015869, 35.671185, 21.488615>,  <39.664227, 35.166813, 21.186733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015869, 35.671185, 21.488615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.841278, 35.961136, 21.275433>,  <38.736523, 36.135105, 21.147524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.841278, 35.961136, 21.275433>,  <39.015869, 35.671185, 21.488615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841278, 35.961136, 21.275433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369527, 0.395663, 0.840774,
		0.820329, 0.563919, 0.095165,
		-0.436475, 0.724877, -0.532957,
		38.710335, 36.178600, 21.115545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207401, 36.295189, 21.833902>,  <39.015869, 35.671185, 21.488615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207401, 36.295189, 21.833902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.873943, 36.379730, 21.629799>,  <38.673870, 36.430458, 21.507336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.873943, 36.379730, 21.629799>,  <39.207401, 36.295189, 21.833902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873943, 36.379730, 21.629799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405863, 0.392158, 0.825522,
		0.374583, 0.895288, -0.241138,
		-0.833644, 0.211358, -0.510260,
		38.623852, 36.443138, 21.476721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990669, 36.906555, 22.239244>,  <39.207401, 36.295189, 21.833902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990669, 36.906555, 22.239244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.681690, 36.765152, 22.028204>,  <38.496304, 36.680309, 21.901579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.681690, 36.765152, 22.028204>,  <38.990669, 36.906555, 22.239244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681690, 36.765152, 22.028204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625718, 0.281485, 0.727491,
		-0.108659, 0.892077, -0.438626,
		-0.772444, -0.353505, -0.527602,
		38.449959, 36.659100, 21.869923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501896, 37.442638, 22.291615>,  <38.990669, 36.906555, 22.239244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501896, 37.442638, 22.291615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.307384, 37.110226, 22.183598>,  <38.190678, 36.910778, 22.118788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.307384, 37.110226, 22.183598>,  <38.501896, 37.442638, 22.291615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307384, 37.110226, 22.183598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720555, 0.206549, 0.661920,
		-0.494297, 0.516460, -0.699242,
		-0.486283, -0.831027, -0.270041,
		38.161499, 36.860916, 22.102585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835941, 37.728809, 22.202000>,  <38.501896, 37.442638, 22.291615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835941, 37.728809, 22.202000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.822536, 37.334538, 22.268110>,  <37.814495, 37.097977, 22.307775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.822536, 37.334538, 22.268110>,  <37.835941, 37.728809, 22.202000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822536, 37.334538, 22.268110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678219, 0.143892, 0.720635,
		-0.734096, -0.087943, -0.673327,
		-0.033512, -0.985678, 0.165275,
		37.812485, 37.038834, 22.317694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099522, 37.517601, 22.330246>,  <37.835941, 37.728809, 22.202000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099522, 37.517601, 22.330246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.312222, 37.221153, 22.494194>,  <37.439842, 37.043285, 22.592564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.312222, 37.221153, 22.494194>,  <37.099522, 37.517601, 22.330246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312222, 37.221153, 22.494194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633058, -0.026349, 0.773656,
		-0.562570, -0.670859, -0.483181,
		0.531745, -0.741116, 0.409869,
		37.471745, 36.998817, 22.617155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613167, 37.003700, 22.477747>,  <37.099522, 37.517601, 22.330246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613167, 37.003700, 22.477747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.929401, 36.950451, 22.716829>,  <37.119144, 36.918503, 22.860279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.929401, 36.950451, 22.716829>,  <36.613167, 37.003700, 22.477747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929401, 36.950451, 22.716829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610459, -0.094718, 0.786364,
		-0.048065, -0.986564, -0.156145,
		0.790588, -0.133117, 0.597704,
		37.166576, 36.910515, 22.896141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394382, 36.603828, 23.113600>,  <36.613167, 37.003700, 22.477747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394382, 36.603828, 23.113600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758099, 36.722214, 23.230633>,  <36.976326, 36.793243, 23.300854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758099, 36.722214, 23.230633>,  <36.394382, 36.603828, 23.113600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758099, 36.722214, 23.230633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282814, -0.076327, 0.956133,
		0.305313, -0.952145, 0.014299,
		0.909286, 0.295964, 0.292584,
		37.030884, 36.811001, 23.318407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563721, 36.102997, 23.531176>,  <36.394382, 36.603828, 23.113600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563721, 36.102997, 23.531176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804703, 36.410442, 23.617218>,  <36.949291, 36.594910, 23.668844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804703, 36.410442, 23.617218>,  <36.563721, 36.102997, 23.531176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804703, 36.410442, 23.617218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279426, -0.049340, 0.958899,
		0.747641, -0.637801, 0.185046,
		0.602457, 0.768619, 0.215107,
		36.985439, 36.641029, 23.681749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939812, 35.858051, 24.096251>,  <36.563721, 36.102997, 23.531176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939812, 35.858051, 24.096251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961166, 36.257465, 24.099722>,  <36.973980, 36.497112, 24.101805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961166, 36.257465, 24.099722>,  <36.939812, 35.858051, 24.096251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961166, 36.257465, 24.099722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322479, 0.009014, 0.946534,
		0.945070, -0.053326, 0.322488,
		0.053382, 0.998537, 0.008678,
		36.977180, 36.557026, 24.102325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409691, 36.050587, 24.627298>,  <36.939812, 35.858051, 24.096251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409691, 36.050587, 24.627298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.156868, 36.350517, 24.549042>,  <37.005177, 36.530476, 24.502089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.156868, 36.350517, 24.549042>,  <37.409691, 36.050587, 24.627298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156868, 36.350517, 24.549042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238717, 0.051788, 0.969707,
		0.737239, 0.659610, 0.146263,
		-0.632054, 0.749822, -0.195640,
		36.967251, 36.575462, 24.490349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391441, 36.482670, 25.146669>,  <37.409691, 36.050587, 24.627298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391441, 36.482670, 25.146669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051662, 36.607197, 24.976246>,  <36.847797, 36.681911, 24.873991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051662, 36.607197, 24.976246>,  <37.391441, 36.482670, 25.146669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051662, 36.607197, 24.976246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393174, 0.165104, 0.904519,
		0.351938, 0.935853, -0.017844,
		-0.849443, 0.311319, -0.426060,
		36.796829, 36.700592, 24.848429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161427, 36.959808, 25.555454>,  <37.391441, 36.482670, 25.146669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161427, 36.959808, 25.555454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.817368, 36.912994, 25.356882>,  <36.610931, 36.884907, 25.237738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.817368, 36.912994, 25.356882>,  <37.161427, 36.959808, 25.555454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817368, 36.912994, 25.356882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509510, 0.152765, 0.846795,
		-0.023268, 0.981308, -0.191032,
		-0.860150, -0.117036, -0.496432,
		36.559322, 36.877884, 25.207952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688267, 37.564041, 25.739174>,  <37.161427, 36.959808, 25.555454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688267, 37.564041, 25.739174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.439396, 37.281582, 25.603970>,  <36.290073, 37.112106, 25.522846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.439396, 37.281582, 25.603970>,  <36.688267, 37.564041, 25.739174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439396, 37.281582, 25.603970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538207, 0.072261, 0.839709,
		-0.568537, 0.704364, -0.425014,
		-0.622173, -0.706151, -0.338011,
		36.252743, 37.069736, 25.502567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170982, 37.766361, 26.018211>,  <36.688267, 37.564041, 25.739174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170982, 37.766361, 26.018211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.075729, 37.387527, 25.932110>,  <36.018578, 37.160229, 25.880449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.075729, 37.387527, 25.932110>,  <36.170982, 37.766361, 26.018211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075729, 37.387527, 25.932110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502339, -0.069580, 0.861866,
		-0.831234, 0.313364, -0.459187,
		-0.238128, -0.947080, -0.215252,
		36.004292, 37.103405, 25.867535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390404, 37.719318, 26.137394>,  <36.170982, 37.766361, 26.018211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390404, 37.719318, 26.137394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.545639, 37.350723, 26.143641>,  <35.638779, 37.129566, 26.147388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.545639, 37.350723, 26.143641>,  <35.390404, 37.719318, 26.137394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545639, 37.350723, 26.143641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529003, -0.208850, 0.822519,
		-0.754683, -0.327467, -0.568523,
		0.388084, -0.921492, 0.015616,
		35.662064, 37.074276, 26.148325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848965, 37.272873, 26.303751>,  <35.390404, 37.719318, 26.137394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848965, 37.272873, 26.303751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.189003, 37.090767, 26.409641>,  <35.393024, 36.981503, 26.473175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.189003, 37.090767, 26.409641>,  <34.848965, 37.272873, 26.303751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189003, 37.090767, 26.409641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377810, -0.177019, 0.908803,
		-0.366883, -0.872582, -0.322486,
		0.850092, -0.455263, 0.264725,
		35.444031, 36.954189, 26.489059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594376, 36.738041, 26.550438>,  <34.848965, 37.272873, 26.303751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594376, 36.738041, 26.550438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.965790, 36.735073, 26.698904>,  <35.188641, 36.733292, 26.787983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.965790, 36.735073, 26.698904>,  <34.594376, 36.738041, 26.550438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965790, 36.735073, 26.698904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357670, -0.285719, 0.889065,
		0.099455, -0.958285, -0.267954,
		0.928537, -0.007417, 0.371166,
		35.244350, 36.732849, 26.810253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658150, 36.152390, 26.754705>,  <34.594376, 36.738041, 26.550438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658150, 36.152390, 26.754705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.942722, 36.345924, 26.958578>,  <35.113464, 36.462044, 27.080902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.942722, 36.345924, 26.958578>,  <34.658150, 36.152390, 26.754705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942722, 36.345924, 26.958578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281938, -0.467831, 0.837642,
		0.643725, -0.739621, -0.196417,
		0.711428, 0.483834, 0.509682,
		35.156151, 36.491074, 27.111483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948589, 35.592518, 27.278982>,  <34.658150, 36.152390, 26.754705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948589, 35.592518, 27.278982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.033928, 35.951302, 27.433874>,  <35.085133, 36.166573, 27.526810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.033928, 35.951302, 27.433874>,  <34.948589, 35.592518, 27.278982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033928, 35.951302, 27.433874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171702, -0.355761, 0.918669,
		0.961770, -0.262482, 0.078110,
		0.213345, 0.896960, 0.387229,
		35.097931, 36.220390, 27.550043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.987801, 34.579700, 32.596851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.666565, 34.800907, 32.508102>,  <37.473824, 34.933632, 32.454853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.666565, 34.800907, 32.508102>,  <37.987801, 34.579700, 32.596851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666565, 34.800907, 32.508102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048059, 0.431256, 0.900949,
		0.593921, 0.712877, -0.372913,
		-0.803086, 0.553014, -0.221872,
		37.425640, 34.966812, 32.441540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143379, 35.204437, 32.779758>,  <37.987801, 34.579700, 32.596851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143379, 35.204437, 32.779758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.743557, 35.204342, 32.767792>,  <37.503666, 35.204285, 32.760612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.743557, 35.204342, 32.767792>,  <38.143379, 35.204437, 32.779758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743557, 35.204342, 32.767792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027584, 0.394752, 0.918373,
		0.011589, 0.918788, -0.394582,
		-0.999552, -0.000241, -0.029919,
		37.443691, 35.204269, 32.758816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096439, 35.813610, 33.051090>,  <38.143379, 35.204437, 32.779758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096439, 35.813610, 33.051090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.754681, 35.608620, 33.085453>,  <37.549625, 35.485626, 33.106071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.754681, 35.608620, 33.085453>,  <38.096439, 35.813610, 33.051090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754681, 35.608620, 33.085453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089086, 0.307333, 0.947423,
		-0.511931, 0.801821, -0.308238,
		-0.854395, -0.512474, 0.085903,
		37.498363, 35.454876, 33.111225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585873, 36.407345, 33.266037>,  <38.096439, 35.813610, 33.051090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585873, 36.407345, 33.266037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.444939, 36.047924, 33.370705>,  <37.360378, 35.832272, 33.433506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.444939, 36.047924, 33.370705>,  <37.585873, 36.407345, 33.266037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444939, 36.047924, 33.370705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034916, 0.292020, 0.955775,
		-0.935223, 0.327615, -0.134262,
		-0.352333, -0.898551, 0.261665,
		37.339237, 35.778358, 33.449203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054977, 36.565830, 33.719826>,  <37.585873, 36.407345, 33.266037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054977, 36.565830, 33.719826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.134804, 36.178684, 33.781033>,  <37.182697, 35.946396, 33.817757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.134804, 36.178684, 33.781033>,  <37.054977, 36.565830, 33.719826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134804, 36.178684, 33.781033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137664, 0.126918, 0.982314,
		-0.970167, -0.217097, -0.107912,
		0.199561, -0.967864, 0.153018,
		37.194672, 35.888325, 33.826939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429729, 36.227173, 33.973255>,  <37.054977, 36.565830, 33.719826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429729, 36.227173, 33.973255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.725792, 35.985603, 34.091541>,  <36.903431, 35.840664, 34.162514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.725792, 35.985603, 34.091541>,  <36.429729, 36.227173, 33.973255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725792, 35.985603, 34.091541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399699, -0.041487, 0.915707,
		-0.540745, -0.795965, -0.272093,
		0.740159, -0.603919, 0.295712,
		36.947842, 35.804428, 34.180256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248161, 35.872643, 34.503567>,  <36.429729, 36.227173, 33.973255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248161, 35.872643, 34.503567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.628490, 35.766441, 34.567368>,  <36.856689, 35.702721, 34.605648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.628490, 35.766441, 34.567368>,  <36.248161, 35.872643, 34.503567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628490, 35.766441, 34.567368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185430, -0.075481, 0.979754,
		-0.248090, -0.961150, -0.121001,
		0.950825, -0.265505, 0.159500,
		36.913738, 35.686790, 34.615219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260777, 35.186901, 34.941528>,  <36.248161, 35.872643, 34.503567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260777, 35.186901, 34.941528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.609390, 35.380619, 34.972221>,  <36.818558, 35.496849, 34.990635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.609390, 35.380619, 34.972221>,  <36.260777, 35.186901, 34.941528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609390, 35.380619, 34.972221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144370, 0.103898, 0.984054,
		0.468603, -0.868712, 0.160469,
		0.871532, 0.484297, 0.076729,
		36.870850, 35.525909, 34.995239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664391, 34.901791, 35.458054>,  <36.260777, 35.186901, 34.941528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664391, 34.901791, 35.458054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.825562, 35.266697, 35.428619>,  <36.922264, 35.485641, 35.410957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.825562, 35.266697, 35.428619>,  <36.664391, 34.901791, 35.458054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825562, 35.266697, 35.428619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082308, 0.116193, 0.989810,
		0.911523, -0.392767, 0.121905,
		0.402929, 0.912268, -0.073585,
		36.946442, 35.540379, 35.406544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934982, 34.957130, 36.139675>,  <36.664391, 34.901791, 35.458054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934982, 34.957130, 36.139675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.966454, 35.324196, 35.983875>,  <36.985336, 35.544434, 35.890396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.966454, 35.324196, 35.983875>,  <36.934982, 34.957130, 36.139675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966454, 35.324196, 35.983875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021890, 0.392205, 0.919617,
		0.996660, -0.063828, 0.050946,
		0.078679, 0.917661, -0.389498,
		36.990059, 35.599495, 35.867027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676235, 35.319748, 36.305771>,  <36.934982, 34.957130, 36.139675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676235, 35.319748, 36.305771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.398872, 35.604576, 36.261700>,  <37.232452, 35.775475, 36.235256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.398872, 35.604576, 36.261700>,  <37.676235, 35.319748, 36.305771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398872, 35.604576, 36.261700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125571, 0.269987, 0.954641,
		0.709516, 0.648124, -0.276627,
		-0.693411, 0.712069, -0.110175,
		37.190849, 35.818195, 36.228645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834930, 35.711552, 36.794239>,  <37.676235, 35.319748, 36.305771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834930, 35.711552, 36.794239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.466721, 35.836861, 36.700867>,  <37.245792, 35.912045, 36.644844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.466721, 35.836861, 36.700867>,  <37.834930, 35.711552, 36.794239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466721, 35.836861, 36.700867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158647, 0.246273, 0.956128,
		0.357017, 0.917175, -0.177001,
		-0.920527, 0.313273, -0.233431,
		37.190563, 35.930843, 36.630836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908623, 36.380009, 36.947865>,  <37.834930, 35.711552, 36.794239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908623, 36.380009, 36.947865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.564617, 36.178635, 36.981186>,  <37.358215, 36.057812, 37.001179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.564617, 36.178635, 36.981186>,  <37.908623, 36.380009, 36.947865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564617, 36.178635, 36.981186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148727, 0.403460, 0.902829,
		-0.488120, 0.764053, -0.421854,
		-0.860011, -0.503431, 0.083301,
		37.306614, 36.027607, 37.006176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653416, 36.207088, 37.215397>,  <37.908623, 36.380009, 36.947865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653416, 36.207088, 37.215397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.666222, 35.825996, 37.094547>,  <38.673904, 35.597340, 37.022038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.666222, 35.825996, 37.094547>,  <38.653416, 36.207088, 37.215397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666222, 35.825996, 37.094547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955293, 0.059725, -0.289565,
		0.293922, 0.297883, -0.908227,
		0.032013, -0.952732, -0.302120,
		38.675827, 35.540176, 37.003910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674732, 36.525234, 37.818974>,  <38.653416, 36.207088, 37.215397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674732, 36.525234, 37.818974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.906773, 36.840584, 37.900890>,  <39.045998, 37.029793, 37.950043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.906773, 36.840584, 37.900890>,  <38.674732, 36.525234, 37.818974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906773, 36.840584, 37.900890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293343, 0.436755, -0.850409,
		-0.759888, 0.433250, 0.484628,
		0.580104, 0.788377, 0.204794,
		39.080803, 37.077099, 37.962330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287678, 37.043064, 37.788639>,  <38.674732, 36.525234, 37.818974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287678, 37.043064, 37.788639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.659447, 37.174976, 37.722404>,  <38.882507, 37.254124, 37.682663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.659447, 37.174976, 37.722404>,  <38.287678, 37.043064, 37.788639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659447, 37.174976, 37.722404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306597, 0.440389, -0.843834,
		-0.205361, 0.835046, 0.510417,
		0.929422, 0.329783, -0.165584,
		38.938274, 37.273911, 37.672729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202095, 37.717850, 37.333340>,  <38.287678, 37.043064, 37.788639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202095, 37.717850, 37.333340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.580254, 37.597244, 37.283848>,  <38.807148, 37.524883, 37.254154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.580254, 37.597244, 37.283848>,  <38.202095, 37.717850, 37.333340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580254, 37.597244, 37.283848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014772, 0.339611, -0.940450,
		0.325577, 0.890929, 0.316615,
		0.945400, -0.301511, -0.123731,
		38.863873, 37.506790, 37.246727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583260, 38.310921, 37.121284>,  <38.202095, 37.717850, 37.333340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583260, 38.310921, 37.121284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.765537, 37.974110, 37.005821>,  <38.874905, 37.772022, 36.936543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.765537, 37.974110, 37.005821>,  <38.583260, 38.310921, 37.121284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765537, 37.974110, 37.005821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054113, 0.349892, -0.935226,
		0.888488, 0.410561, 0.205010,
		0.455698, -0.842031, -0.288658,
		38.902248, 37.721500, 36.919224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159653, 38.572865, 36.621517>,  <38.583260, 38.310921, 37.121284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159653, 38.572865, 36.621517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.118050, 38.179443, 36.562454>,  <39.093090, 37.943390, 36.527016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.118050, 38.179443, 36.562454>,  <39.159653, 38.572865, 36.621517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118050, 38.179443, 36.562454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354042, 0.102129, -0.929636,
		0.929428, -0.148965, 0.337598,
		-0.104004, -0.983554, -0.147661,
		39.086849, 37.884377, 36.518154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732281, 38.472855, 36.231644>,  <39.159653, 38.572865, 36.621517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732281, 38.472855, 36.231644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.493679, 38.154724, 36.188477>,  <39.350517, 37.963848, 36.162575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.493679, 38.154724, 36.188477>,  <39.732281, 38.472855, 36.231644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493679, 38.154724, 36.188477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319365, -0.111841, -0.941009,
		0.736336, -0.595780, 0.320711,
		-0.596503, -0.795322, -0.107919,
		39.314728, 37.916126, 36.156101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127773, 37.951668, 35.970455>,  <39.732281, 38.472855, 36.231644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127773, 37.951668, 35.970455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.750275, 37.871002, 35.865635>,  <39.523773, 37.822601, 35.802742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.750275, 37.871002, 35.865635>,  <40.127773, 37.951668, 35.970455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750275, 37.871002, 35.865635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276906, -0.048875, -0.959653,
		0.180724, -0.978234, 0.101969,
		-0.943749, -0.201669, -0.262046,
		39.467152, 37.810501, 35.787022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127357, 37.330853, 35.644287>,  <40.127773, 37.951668, 35.970455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127357, 37.330853, 35.644287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.806648, 37.527798, 35.508797>,  <39.614223, 37.645966, 35.427502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.806648, 37.527798, 35.508797>,  <40.127357, 37.330853, 35.644287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806648, 37.527798, 35.508797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344987, -0.081497, -0.935063,
		-0.487996, -0.866566, -0.104516,
		-0.801776, 0.492363, -0.338724,
		39.566116, 37.675507, 35.407181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988312, 36.999355, 35.016132>,  <40.127357, 37.330853, 35.644287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988312, 36.999355, 35.016132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.772339, 37.335186, 34.992184>,  <39.642754, 37.536686, 34.977814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.772339, 37.335186, 34.992184>,  <39.988312, 36.999355, 35.016132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772339, 37.335186, 34.992184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001303, -0.070299, -0.997525,
		-0.841707, -0.538674, 0.036863,
		-0.539933, 0.839576, -0.059873,
		39.610359, 37.587059, 34.974220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500355, 36.793427, 34.553375>,  <39.988312, 36.999355, 35.016132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500355, 36.793427, 34.553375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.492382, 37.193348, 34.552860>,  <39.487598, 37.433300, 34.552551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.492382, 37.193348, 34.552860>,  <39.500355, 36.793427, 34.553375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492382, 37.193348, 34.552860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122436, -0.003718, -0.992469,
		-0.992276, -0.019624, 0.122486,
		-0.019932, 0.999800, -0.001287,
		39.486401, 37.493290, 34.552475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946636, 36.978737, 34.096958>,  <39.500355, 36.793427, 34.553375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946636, 36.978737, 34.096958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.203781, 37.281071, 34.146683>,  <39.358067, 37.462471, 34.176517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.203781, 37.281071, 34.146683>,  <38.946636, 36.978737, 34.096958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203781, 37.281071, 34.146683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028003, 0.138987, -0.989898,
		-0.765473, 0.639846, 0.068184,
		0.642859, 0.755831, 0.124308,
		39.396637, 37.507820, 34.183975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718422, 37.424900, 33.613716>,  <38.946636, 36.978737, 34.096958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718422, 37.424900, 33.613716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.093277, 37.537601, 33.696079>,  <39.318188, 37.605221, 33.745495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.093277, 37.537601, 33.696079>,  <38.718422, 37.424900, 33.613716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093277, 37.537601, 33.696079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178654, 0.119501, -0.976628,
		-0.299770, 0.952017, 0.061652,
		0.937134, 0.281750, 0.205904,
		39.374416, 37.622128, 33.757851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801811, 38.034477, 33.213039>,  <38.718422, 37.424900, 33.613716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801811, 38.034477, 33.213039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.153526, 37.868900, 33.307274>,  <39.364555, 37.769554, 33.363815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.153526, 37.868900, 33.307274>,  <38.801811, 38.034477, 33.213039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153526, 37.868900, 33.307274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292087, 0.077950, -0.953210,
		0.376211, 0.906959, 0.189448,
		0.879290, -0.413943, 0.235585,
		39.417313, 37.744717, 33.377949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210655, 38.328766, 32.655998>,  <38.801811, 38.034477, 33.213039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210655, 38.328766, 32.655998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.417736, 38.022449, 32.808601>,  <39.541985, 37.838661, 32.900162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.417736, 38.022449, 32.808601>,  <39.210655, 38.328766, 32.655998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417736, 38.022449, 32.808601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432716, -0.150311, -0.888911,
		0.738063, 0.625279, 0.253552,
		0.517706, -0.765789, 0.381508,
		39.573048, 37.792713, 32.923054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752789, 38.869366, 32.899426>,  <39.210655, 38.328766, 32.655998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752789, 38.869366, 32.899426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.609318, 39.235039, 32.823929>,  <39.523235, 39.454441, 32.778629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.609318, 39.235039, 32.823929>,  <39.752789, 38.869366, 32.899426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609318, 39.235039, 32.823929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546043, -0.041489, 0.836729,
		0.757091, 0.403178, 0.514064,
		-0.358678, 0.914180, -0.188742,
		39.501713, 39.509293, 32.767307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646332, 39.205494, 33.592731>,  <39.752789, 38.869366, 32.899426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646332, 39.205494, 33.592731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.429752, 39.462189, 33.375477>,  <39.299805, 39.616207, 33.245125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.429752, 39.462189, 33.375477>,  <39.646332, 39.205494, 33.592731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429752, 39.462189, 33.375477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597287, 0.161029, 0.785696,
		0.591673, 0.749826, 0.296113,
		-0.541453, 0.641740, -0.543138,
		39.267315, 39.654709, 33.212536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669182, 39.876175, 33.945293>,  <39.646332, 39.205494, 33.592731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669182, 39.876175, 33.945293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.328556, 39.875454, 33.735592>,  <39.124180, 39.875019, 33.609772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.328556, 39.875454, 33.735592>,  <39.669182, 39.876175, 33.945293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328556, 39.875454, 33.735592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496988, 0.321081, 0.806170,
		0.166872, 0.947050, -0.274317,
		-0.851561, -0.001805, -0.524252,
		39.073086, 39.874912, 33.578316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297401, 40.426071, 34.262726>,  <39.669182, 39.876175, 33.945293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297401, 40.426071, 34.262726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.016258, 40.237049, 34.050056>,  <38.847572, 40.123634, 33.922455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.016258, 40.237049, 34.050056>,  <39.297401, 40.426071, 34.262726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016258, 40.237049, 34.050056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695682, 0.300750, 0.652362,
		-0.148376, 0.828397, -0.540133,
		-0.702859, -0.472556, -0.531677,
		38.805401, 40.095284, 33.890553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750370, 40.819176, 34.147335>,  <39.297401, 40.426071, 34.262726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750370, 40.819176, 34.147335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.565399, 40.466587, 34.109028>,  <38.454418, 40.255035, 34.086044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.565399, 40.466587, 34.109028>,  <38.750370, 40.819176, 34.147335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565399, 40.466587, 34.109028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781817, 0.354411, 0.512987,
		-0.418240, 0.312095, -0.853037,
		-0.462426, -0.881470, -0.095772,
		38.426670, 40.202145, 34.080296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133938, 40.843918, 33.982880>,  <38.750370, 40.819176, 34.147335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133938, 40.843918, 33.982880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.131538, 40.479038, 34.146763>,  <38.130100, 40.260113, 34.245094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.131538, 40.479038, 34.146763>,  <38.133938, 40.843918, 33.982880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131538, 40.479038, 34.146763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891532, 0.190451, 0.410974,
		-0.452918, -0.362806, -0.814393,
		-0.005998, -0.912195, 0.409712,
		38.129738, 40.205379, 34.269676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506279, 40.814243, 34.296925>,  <38.133938, 40.843918, 33.982880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506279, 40.814243, 34.296925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.639198, 40.475323, 34.462654>,  <37.718948, 40.271973, 34.562092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.639198, 40.475323, 34.462654>,  <37.506279, 40.814243, 34.296925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639198, 40.475323, 34.462654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753559, 0.025680, 0.656878,
		-0.567212, -0.530495, -0.629957,
		0.332294, -0.847299, 0.414326,
		37.738888, 40.221134, 34.586952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875484, 40.420185, 34.327805>,  <37.506279, 40.814243, 34.296925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875484, 40.420185, 34.327805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.132153, 40.251320, 34.583942>,  <37.286156, 40.150002, 34.737625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.132153, 40.251320, 34.583942>,  <36.875484, 40.420185, 34.327805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132153, 40.251320, 34.583942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747861, -0.159155, 0.644495,
		-0.170186, -0.892429, -0.417861,
		0.641670, -0.422186, 0.640327,
		37.324654, 40.124672, 34.776043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429764, 39.919952, 34.525539>,  <36.875484, 40.420185, 34.327805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429764, 39.919952, 34.525539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.731171, 39.932751, 34.788200>,  <36.912014, 39.940430, 34.945797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.731171, 39.932751, 34.788200>,  <36.429764, 39.919952, 34.525539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731171, 39.932751, 34.788200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618867, -0.302517, 0.724904,
		0.221843, -0.952607, -0.208150,
		0.753518, 0.031998, 0.656649,
		36.957226, 39.942348, 34.985195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332821, 39.405460, 34.947613>,  <36.429764, 39.919952, 34.525539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332821, 39.405460, 34.947613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.583977, 39.626682, 35.166660>,  <36.734669, 39.759415, 35.298088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.583977, 39.626682, 35.166660>,  <36.332821, 39.405460, 34.947613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583977, 39.626682, 35.166660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544825, -0.190135, 0.816709,
		0.555809, -0.811157, 0.181937,
		0.627886, 0.553058, 0.547617,
		36.772343, 39.792599, 35.330944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428001, 39.047344, 35.523033>,  <36.332821, 39.405460, 34.947613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428001, 39.047344, 35.523033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.497524, 39.435814, 35.588291>,  <36.539238, 39.668896, 35.627445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.497524, 39.435814, 35.588291>,  <36.428001, 39.047344, 35.523033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497524, 39.435814, 35.588291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521732, -0.049697, 0.851661,
		0.835217, -0.233141, 0.498054,
		0.173805, 0.971172, 0.163145,
		36.549667, 39.727165, 35.637234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790676, 39.108952, 36.205162>,  <36.428001, 39.047344, 35.523033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790676, 39.108952, 36.205162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.611797, 39.452213, 36.104298>,  <36.504471, 39.658173, 36.043781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.611797, 39.452213, 36.104298>,  <36.790676, 39.108952, 36.205162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611797, 39.452213, 36.104298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511091, -0.013807, 0.859416,
		0.734033, 0.513199, 0.444772,
		-0.447192, 0.858159, -0.252156,
		36.477638, 39.709660, 36.028652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.020103, 39.944836, 29.279800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637028, 40.052052, 29.321737>,  <40.407185, 40.116379, 29.346899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637028, 40.052052, 29.321737>,  <41.020103, 39.944836, 29.279800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637028, 40.052052, 29.321737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107207, -0.005846, 0.994220,
		0.267100, 0.963391, -0.023137,
		-0.957687, 0.268036, 0.104844,
		40.349720, 40.132462, 29.353189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999649, 40.584587, 29.647684>,  <41.020103, 39.944836, 29.279800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999649, 40.584587, 29.647684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659687, 40.377689, 29.687908>,  <40.455708, 40.253551, 29.712042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659687, 40.377689, 29.687908>,  <40.999649, 40.584587, 29.647684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659687, 40.377689, 29.687908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167330, -0.083971, 0.982318,
		-0.499655, 0.851708, 0.157919,
		-0.849909, -0.517244, 0.100560,
		40.404713, 40.222515, 29.718077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707981, 40.801048, 30.218277>,  <40.999649, 40.584587, 29.647684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707981, 40.801048, 30.218277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456528, 40.492504, 30.178650>,  <40.305656, 40.307377, 30.154875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456528, 40.492504, 30.178650>,  <40.707981, 40.801048, 30.218277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456528, 40.492504, 30.178650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086644, -0.057124, 0.994600,
		-0.772857, 0.633826, -0.030923,
		-0.628637, -0.771363, -0.099066,
		40.267937, 40.261097, 30.148930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038765, 40.974548, 30.424343>,  <40.707981, 40.801048, 30.218277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038765, 40.974548, 30.424343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015385, 40.576408, 30.454975>,  <40.001358, 40.337524, 30.473354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015385, 40.576408, 30.454975>,  <40.038765, 40.974548, 30.424343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015385, 40.576408, 30.454975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136682, 0.083967, 0.987050,
		-0.988889, 0.047224, -0.140954,
		-0.058448, -0.995349, 0.076579,
		39.997849, 40.277805, 30.477949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392277, 40.828102, 30.747585>,  <40.038765, 40.974548, 30.424343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392277, 40.828102, 30.747585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661594, 40.538784, 30.808931>,  <39.823185, 40.365192, 30.845739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661594, 40.538784, 30.808931>,  <39.392277, 40.828102, 30.747585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661594, 40.538784, 30.808931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136383, 0.082372, 0.987226,
		-0.726686, -0.685611, -0.043184,
		0.673296, -0.723293, 0.153364,
		39.863583, 40.321796, 30.854940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119823, 40.419556, 31.154934>,  <39.392277, 40.828102, 30.747585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119823, 40.419556, 31.154934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494617, 40.291550, 31.210997>,  <39.719494, 40.214745, 31.244635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494617, 40.291550, 31.210997>,  <39.119823, 40.419556, 31.154934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494617, 40.291550, 31.210997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216525, -0.217106, 0.951831,
		-0.274173, -0.922201, -0.272717,
		0.936988, -0.320016, 0.140155,
		39.775715, 40.195545, 31.253042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085739, 39.778896, 31.216320>,  <39.119823, 40.419556, 31.154934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085739, 39.778896, 31.216320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437222, 39.832767, 31.399508>,  <39.648113, 39.865089, 31.509420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437222, 39.832767, 31.399508>,  <39.085739, 39.778896, 31.216320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437222, 39.832767, 31.399508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382122, -0.376557, 0.843912,
		0.286105, -0.916552, -0.279421,
		0.878707, 0.134675, 0.457969,
		39.700832, 39.873169, 31.536898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422226, 39.123463, 31.609974>,  <39.085739, 39.778896, 31.216320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422226, 39.123463, 31.609974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561436, 39.455700, 31.783871>,  <39.644962, 39.655041, 31.888208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561436, 39.455700, 31.783871>,  <39.422226, 39.123463, 31.609974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561436, 39.455700, 31.783871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375163, -0.301589, 0.876525,
		0.859147, -0.468148, 0.206648,
		0.348020, 0.830591, 0.434741,
		39.665840, 39.704876, 31.914293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722397, 38.936584, 32.190048>,  <39.422226, 39.123463, 31.609974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722397, 38.936584, 32.190048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692997, 39.325752, 32.277702>,  <39.675358, 39.559254, 32.330296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692997, 39.325752, 32.277702>,  <39.722397, 38.936584, 32.190048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692997, 39.325752, 32.277702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402658, -0.229974, 0.885990,
		0.912395, -0.023115, 0.408658,
		-0.073500, 0.972922, 0.219134,
		39.670948, 39.617630, 32.343441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281975, 38.312828, 32.358334>,  <39.722397, 38.936584, 32.190048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281975, 38.312828, 32.358334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160938, 37.959221, 32.500854>,  <40.088318, 37.747055, 32.586365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160938, 37.959221, 32.500854>,  <40.281975, 38.312828, 32.358334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160938, 37.959221, 32.500854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418937, -0.459134, -0.783382,
		0.856115, -0.087775, 0.509277,
		-0.302588, -0.884020, 0.356299,
		40.070164, 37.694016, 32.607742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918240, 37.848911, 32.397984>,  <40.281975, 38.312828, 32.358334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918240, 37.848911, 32.397984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597134, 37.612164, 32.368969>,  <40.404469, 37.470116, 32.351559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597134, 37.612164, 32.368969>,  <40.918240, 37.848911, 32.397984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597134, 37.612164, 32.368969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431374, -0.492438, -0.755924,
		0.411684, -0.638122, 0.650628,
		-0.802766, -0.591865, -0.072540,
		40.356304, 37.434605, 32.347206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131535, 37.255116, 32.215256>,  <40.918240, 37.848911, 32.397984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131535, 37.255116, 32.215256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740826, 37.192482, 32.156742>,  <40.506401, 37.154900, 32.121635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740826, 37.192482, 32.156742>,  <41.131535, 37.255116, 32.215256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740826, 37.192482, 32.156742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208780, -0.541702, -0.814230,
		0.048256, -0.825857, 0.561811,
		-0.976771, -0.156586, -0.146282,
		40.447796, 37.145508, 32.112858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171356, 36.538662, 32.201973>,  <41.131535, 37.255116, 32.215256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171356, 36.538662, 32.201973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840416, 36.651566, 32.007725>,  <40.641853, 36.719307, 31.891176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840416, 36.651566, 32.007725>,  <41.171356, 36.538662, 32.201973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840416, 36.651566, 32.007725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353748, -0.409726, -0.840825,
		-0.436304, -0.867441, 0.239136,
		-0.827346, 0.282261, -0.485620,
		40.592213, 36.736244, 31.862038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836933, 35.877232, 31.892176>,  <41.171356, 36.538662, 32.201973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836933, 35.877232, 31.892176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695698, 36.189312, 31.685635>,  <40.610958, 36.376560, 31.561710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695698, 36.189312, 31.685635>,  <40.836933, 35.877232, 31.892176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695698, 36.189312, 31.685635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251990, -0.452201, -0.855579,
		-0.901016, -0.432211, -0.036935,
		-0.353088, 0.780197, -0.516353,
		40.589771, 36.423370, 31.530729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463837, 35.676357, 31.349955>,  <40.836933, 35.877232, 31.892176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463837, 35.676357, 31.349955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503273, 36.044506, 31.198595>,  <40.526936, 36.265396, 31.107779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503273, 36.044506, 31.198595>,  <40.463837, 35.676357, 31.349955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503273, 36.044506, 31.198595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063257, -0.385281, -0.920629,
		-0.993115, 0.066829, -0.096206,
		0.098591, 0.920376, -0.378401,
		40.532852, 36.320618, 31.085075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982944, 35.712376, 30.802290>,  <40.463837, 35.676357, 31.349955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982944, 35.712376, 30.802290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262474, 35.993561, 30.749407>,  <40.430191, 36.162273, 30.717676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262474, 35.993561, 30.749407>,  <39.982944, 35.712376, 30.802290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262474, 35.993561, 30.749407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046653, -0.229232, -0.972253,
		-0.713767, 0.673270, -0.192989,
		0.698828, 0.702965, -0.132208,
		40.472122, 36.204449, 30.709745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810238, 35.790909, 30.093037>,  <39.982944, 35.712376, 30.802290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810238, 35.790909, 30.093037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154137, 35.976967, 30.177387>,  <40.360477, 36.088604, 30.227997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154137, 35.976967, 30.177387>,  <39.810238, 35.790909, 30.093037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154137, 35.976967, 30.177387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308320, -0.143548, -0.940390,
		-0.407150, 0.873516, -0.266830,
		0.859749, 0.465148, 0.210877,
		40.412060, 36.116512, 30.240650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964447, 36.225788, 29.513723>,  <39.810238, 35.790909, 30.093037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964447, 36.225788, 29.513723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312508, 36.163677, 29.700796>,  <40.521343, 36.126411, 29.813040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312508, 36.163677, 29.700796>,  <39.964447, 36.225788, 29.513723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312508, 36.163677, 29.700796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451489, -0.129109, -0.882887,
		0.197474, 0.979398, -0.042239,
		0.870151, -0.155277, 0.467683,
		40.573551, 36.117096, 29.841101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305756, 36.690716, 29.189627>,  <39.964447, 36.225788, 29.513723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305756, 36.690716, 29.189627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585808, 36.438877, 29.324343>,  <40.753838, 36.287773, 29.405172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585808, 36.438877, 29.324343>,  <40.305756, 36.690716, 29.189627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585808, 36.438877, 29.324343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299610, -0.169099, -0.938956,
		0.648116, 0.758296, 0.070243,
		0.700128, -0.629598, 0.336789,
		40.795845, 36.249996, 29.425379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852703, 36.876945, 28.770126>,  <40.305756, 36.690716, 29.189627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852703, 36.876945, 28.770126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973843, 36.526951, 28.921217>,  <41.046528, 36.316956, 29.011871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973843, 36.526951, 28.921217>,  <40.852703, 36.876945, 28.770126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973843, 36.526951, 28.921217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426469, -0.230020, -0.874766,
		0.852294, 0.426014, 0.303492,
		0.302853, -0.874987, 0.377727,
		41.064697, 36.264454, 29.034534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578777, 36.795074, 28.614763>,  <40.852703, 36.876945, 28.770126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578777, 36.795074, 28.614763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419559, 36.431805, 28.666571>,  <41.324028, 36.213840, 28.697655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419559, 36.431805, 28.666571>,  <41.578777, 36.795074, 28.614763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419559, 36.431805, 28.666571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366722, -0.286939, -0.884975,
		0.840877, -0.304765, 0.447264,
		-0.398047, -0.908176, 0.129516,
		41.300144, 36.159351, 28.705425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187954, 36.267124, 28.540781>,  <41.578777, 36.795074, 28.614763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187954, 36.267124, 28.540781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842285, 36.075382, 28.479549>,  <41.634884, 35.960339, 28.442810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842285, 36.075382, 28.479549>,  <42.187954, 36.267124, 28.540781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842285, 36.075382, 28.479549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325037, -0.299513, -0.897019,
		0.384137, -0.824933, 0.414637,
		-0.864169, -0.479351, -0.153080,
		41.583035, 35.931576, 28.433626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453545, 35.592209, 28.315016>,  <42.187954, 36.267124, 28.540781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453545, 35.592209, 28.315016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070255, 35.621628, 28.204454>,  <41.840282, 35.639278, 28.138117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070255, 35.621628, 28.204454>,  <42.453545, 35.592209, 28.315016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070255, 35.621628, 28.204454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259409, -0.183589, -0.948157,
		-0.120482, -0.980248, 0.156840,
		-0.958223, 0.073550, -0.276404,
		41.782787, 35.643692, 28.121532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.047504, 38.999989, 26.389786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.416168, 39.127411, 26.478392>,  <35.637367, 39.203865, 26.531555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.416168, 39.127411, 26.478392>,  <35.047504, 38.999989, 26.389786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416168, 39.127411, 26.478392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203949, -0.087929, 0.975025,
		0.330075, -0.943818, -0.016072,
		0.921659, 0.318553, 0.221514,
		35.692665, 39.222977, 26.544846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341022, 38.495190, 26.812609>,  <35.047504, 38.999989, 26.389786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341022, 38.495190, 26.812609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.565083, 38.816528, 26.893467>,  <35.699520, 39.009331, 26.941982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.565083, 38.816528, 26.893467>,  <35.341022, 38.495190, 26.812609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565083, 38.816528, 26.893467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090658, -0.183106, 0.978904,
		0.823415, -0.566659, -0.029738,
		0.560150, 0.803349, 0.202145,
		35.733128, 39.057533, 26.954111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788975, 38.265720, 27.405783>,  <35.341022, 38.495190, 26.812609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788975, 38.265720, 27.405783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.778538, 38.664818, 27.430550>,  <35.772278, 38.904274, 27.445410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.778538, 38.664818, 27.430550>,  <35.788975, 38.265720, 27.405783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778538, 38.664818, 27.430550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007188, -0.061749, 0.998066,
		0.999634, 0.026485, -0.005561,
		-0.026091, 0.997740, 0.061916,
		35.770710, 38.964138, 27.449125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242199, 38.409931, 27.868048>,  <35.788975, 38.265720, 27.405783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242199, 38.409931, 27.868048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.000134, 38.728161, 27.879599>,  <35.854893, 38.919098, 27.886528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.000134, 38.728161, 27.879599>,  <36.242199, 38.409931, 27.868048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000134, 38.728161, 27.879599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120187, 0.055445, 0.991202,
		0.786976, 0.603310, -0.129171,
		-0.605164, 0.795577, 0.028876,
		35.818584, 38.966835, 27.888262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319157, 38.602474, 28.513557>,  <36.242199, 38.409931, 27.868048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319157, 38.602474, 28.513557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.009113, 38.831154, 28.405952>,  <35.823086, 38.968361, 28.341391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.009113, 38.831154, 28.405952>,  <36.319157, 38.602474, 28.513557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009113, 38.831154, 28.405952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166727, 0.225604, 0.959846,
		0.609432, 0.788837, -0.079551,
		-0.775110, 0.571698, -0.269011,
		35.776581, 39.002663, 28.325249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381214, 39.238045, 28.951641>,  <36.319157, 38.602474, 28.513557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381214, 39.238045, 28.951641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005260, 39.205921, 28.818878>,  <35.779686, 39.186649, 28.739220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005260, 39.205921, 28.818878>,  <36.381214, 39.238045, 28.951641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005260, 39.205921, 28.818878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341350, 0.193723, 0.919756,
		-0.009564, 0.977764, -0.209490,
		-0.939888, -0.080306, -0.331907,
		35.723293, 39.181831, 28.719307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086182, 39.743084, 29.267721>,  <36.381214, 39.238045, 28.951641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086182, 39.743084, 29.267721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.792542, 39.483509, 29.187735>,  <35.616360, 39.327766, 29.139742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.792542, 39.483509, 29.187735>,  <36.086182, 39.743084, 29.267721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792542, 39.483509, 29.187735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330198, 0.083819, 0.940182,
		-0.593355, 0.756214, -0.275808,
		-0.734097, -0.648933, -0.199966,
		35.572311, 39.288830, 29.127745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482155, 39.990231, 29.600685>,  <36.086182, 39.743084, 29.267721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482155, 39.990231, 29.600685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.410778, 39.600906, 29.542969>,  <35.367954, 39.367310, 29.508339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.410778, 39.600906, 29.542969>,  <35.482155, 39.990231, 29.600685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410778, 39.600906, 29.542969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482102, -0.041353, 0.875138,
		-0.857751, 0.225723, -0.461858,
		-0.178439, -0.973313, -0.144292,
		35.357246, 39.308914, 29.499681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796860, 39.930645, 29.809359>,  <35.482155, 39.990231, 29.600685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796860, 39.930645, 29.809359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.916927, 39.549126, 29.814602>,  <34.988968, 39.320213, 29.817749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.916927, 39.549126, 29.814602>,  <34.796860, 39.930645, 29.809359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916927, 39.549126, 29.814602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605416, -0.179876, 0.775316,
		-0.737135, -0.240666, -0.631437,
		0.300172, -0.953795, 0.013110,
		35.006981, 39.262989, 29.818535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144707, 39.600693, 29.844376>,  <34.796860, 39.930645, 29.809359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144707, 39.600693, 29.844376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.448315, 39.372509, 29.969893>,  <34.630478, 39.235600, 30.045202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.448315, 39.372509, 29.969893>,  <34.144707, 39.600693, 29.844376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448315, 39.372509, 29.969893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473661, -0.153161, 0.867287,
		-0.446692, -0.806918, -0.386457,
		0.759020, -0.570460, 0.313790,
		34.676022, 39.201370, 30.064030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859112, 39.048748, 30.172554>,  <34.144707, 39.600693, 29.844376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859112, 39.048748, 30.172554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.231945, 39.053120, 30.317387>,  <34.455647, 39.055740, 30.404287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.231945, 39.053120, 30.317387>,  <33.859112, 39.048748, 30.172554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231945, 39.053120, 30.317387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358827, -0.109197, 0.926995,
		0.049667, -0.993960, -0.097860,
		0.932082, 0.010927, 0.362083,
		34.511570, 39.056396, 30.426012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722160, 38.489170, 30.542921>,  <33.859112, 39.048748, 30.172554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722160, 38.489170, 30.542921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.039165, 38.696163, 30.672005>,  <34.229370, 38.820358, 30.749454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.039165, 38.696163, 30.672005>,  <33.722160, 38.489170, 30.542921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039165, 38.696163, 30.672005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383353, 0.011165, 0.923534,
		0.474306, -0.855624, 0.207225,
		0.792511, 0.517478, 0.322710,
		34.276920, 38.851406, 30.768818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064560, 38.170910, 31.064133>,  <33.722160, 38.489170, 30.542921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064560, 38.170910, 31.064133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.166267, 38.553143, 31.123743>,  <34.227291, 38.782482, 31.159510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.166267, 38.553143, 31.123743>,  <34.064560, 38.170910, 31.064133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166267, 38.553143, 31.123743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126029, -0.120037, 0.984737,
		0.958887, -0.269170, 0.089910,
		0.254270, 0.955583, 0.149025,
		34.242550, 38.839817, 31.168451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652645, 38.170952, 31.377359>,  <34.064560, 38.170910, 31.064133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652645, 38.170952, 31.377359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.431976, 38.490623, 31.472832>,  <34.299576, 38.682426, 31.530115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.431976, 38.490623, 31.472832>,  <34.652645, 38.170952, 31.377359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431976, 38.490623, 31.472832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049553, -0.317065, 0.947108,
		0.832589, 0.510664, 0.214517,
		-0.551670, 0.799182, 0.238680,
		34.266476, 38.730377, 31.544436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669594, 37.444565, 31.412420>,  <34.652645, 38.170952, 31.377359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669594, 37.444565, 31.412420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.534679, 37.071056, 31.460278>,  <34.453732, 36.846951, 31.488993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.534679, 37.071056, 31.460278>,  <34.669594, 37.444565, 31.412420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534679, 37.071056, 31.460278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169059, -0.185106, -0.968067,
		0.926097, -0.306291, 0.220296,
		-0.337289, -0.933767, 0.119645,
		34.433495, 36.790928, 31.496172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179306, 37.003292, 31.304192>,  <34.669594, 37.444565, 31.412420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179306, 37.003292, 31.304192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.835152, 36.820938, 31.213062>,  <34.628658, 36.711525, 31.158384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.835152, 36.820938, 31.213062>,  <35.179306, 37.003292, 31.304192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835152, 36.820938, 31.213062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326449, -0.149708, -0.933284,
		0.391367, -0.877356, 0.277631,
		-0.860386, -0.455889, -0.227821,
		34.577038, 36.684170, 31.144716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397568, 36.540649, 30.763214>,  <35.179306, 37.003292, 31.304192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397568, 36.540649, 30.763214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.002625, 36.477295, 30.760504>,  <34.765659, 36.439281, 30.758877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.002625, 36.477295, 30.760504>,  <35.397568, 36.540649, 30.763214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002625, 36.477295, 30.760504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051839, -0.282172, -0.957962,
		0.149814, -0.946199, 0.286815,
		-0.987354, -0.158385, -0.006777,
		34.706417, 36.429779, 30.758471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269524, 35.892769, 30.486288>,  <35.397568, 36.540649, 30.763214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269524, 35.892769, 30.486288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.926823, 36.091461, 30.430824>,  <34.721203, 36.210678, 30.397547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.926823, 36.091461, 30.430824>,  <35.269524, 35.892769, 30.486288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926823, 36.091461, 30.430824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041424, -0.334277, -0.941564,
		-0.514060, -0.800944, 0.306970,
		-0.856754, 0.496736, -0.138660,
		34.669796, 36.240482, 30.389227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856773, 35.385246, 30.197868>,  <35.269524, 35.892769, 30.486288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856773, 35.385246, 30.197868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.714649, 35.750141, 30.116306>,  <34.629375, 35.969078, 30.067369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.714649, 35.750141, 30.116306>,  <34.856773, 35.385246, 30.197868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714649, 35.750141, 30.116306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001842, -0.218823, -0.975763,
		-0.934747, -0.346322, 0.079430,
		-0.355310, 0.912238, -0.203906,
		34.608055, 36.023811, 30.055134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362686, 35.328575, 29.566492>,  <34.856773, 35.385246, 30.197868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362686, 35.328575, 29.566492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.502064, 35.703381, 29.556807>,  <34.585690, 35.928265, 29.550995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.502064, 35.703381, 29.556807>,  <34.362686, 35.328575, 29.566492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502064, 35.703381, 29.556807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021050, -0.018004, -0.999616,
		-0.937094, 0.348818, 0.013451,
		0.348442, 0.937018, -0.024214,
		34.606598, 35.984486, 29.549543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939438, 35.559898, 29.055403>,  <34.362686, 35.328575, 29.566492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939438, 35.559898, 29.055403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.220467, 35.840885, 29.100887>,  <34.389084, 36.009480, 29.128178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.220467, 35.840885, 29.100887>,  <33.939438, 35.559898, 29.055403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220467, 35.840885, 29.100887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007302, 0.166900, -0.985947,
		-0.711577, 0.691867, 0.122388,
		0.702570, 0.702470, 0.113710,
		34.431236, 36.051628, 29.135000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784779, 36.154560, 28.626545>,  <33.939438, 35.559898, 29.055403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784779, 36.154560, 28.626545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.177097, 36.201916, 28.688551>,  <34.412487, 36.230331, 28.725754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.177097, 36.201916, 28.688551>,  <33.784779, 36.154560, 28.626545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177097, 36.201916, 28.688551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097944, 0.388338, -0.916297,
		-0.168679, 0.913880, 0.369283,
		0.980793, 0.118391, 0.155014,
		34.471336, 36.237434, 28.735056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022316, 36.889233, 28.386597>,  <33.784779, 36.154560, 28.626545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022316, 36.889233, 28.386597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.328724, 36.632126, 28.383524>,  <34.512569, 36.477863, 28.381680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.328724, 36.632126, 28.383524>,  <34.022316, 36.889233, 28.386597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328724, 36.632126, 28.383524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379572, 0.461939, -0.801584,
		0.518780, 0.611117, 0.597832,
		0.766024, -0.642766, -0.007682,
		34.558533, 36.439297, 28.381220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665112, 37.330177, 28.159382>,  <34.022316, 36.889233, 28.386597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665112, 37.330177, 28.159382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.803360, 36.958778, 28.105061>,  <34.886311, 36.735939, 28.072468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.803360, 36.958778, 28.105061>,  <34.665112, 37.330177, 28.159382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803360, 36.958778, 28.105061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511565, 0.307761, -0.802237,
		0.786669, 0.207797, 0.581354,
		0.345621, -0.928495, -0.135805,
		34.907047, 36.680229, 28.064320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284458, 37.423691, 27.970634>,  <34.665112, 37.330177, 28.159382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284458, 37.423691, 27.970634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.273510, 37.039211, 27.860840>,  <35.266941, 36.808521, 27.794964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.273510, 37.039211, 27.860840>,  <35.284458, 37.423691, 27.970634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273510, 37.039211, 27.860840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535714, 0.217723, -0.815847,
		0.843955, -0.169380, 0.508969,
		-0.027374, -0.961201, -0.274487,
		35.265297, 36.750851, 27.778494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995262, 37.205811, 27.830917>,  <35.284458, 37.423691, 27.970634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995262, 37.205811, 27.830917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.744965, 36.985023, 27.610455>,  <35.594788, 36.852551, 27.478176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.744965, 36.985023, 27.610455>,  <35.995262, 37.205811, 27.830917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744965, 36.985023, 27.610455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575631, 0.150070, -0.803821,
		0.526399, -0.820247, 0.223827,
		-0.625742, -0.551973, -0.551156,
		35.557243, 36.819431, 27.445108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465420, 36.854618, 27.304651>,  <35.995262, 37.205811, 27.830917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465420, 36.854618, 27.304651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.092155, 36.812542, 27.167160>,  <35.868198, 36.787296, 27.084665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.092155, 36.812542, 27.167160>,  <36.465420, 36.854618, 27.304651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092155, 36.812542, 27.167160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342557, 0.029581, -0.939031,
		0.108945, -0.994012, 0.008430,
		-0.933159, -0.105191, -0.343728,
		35.812206, 36.780987, 27.064041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493893, 36.291843, 26.941635>,  <36.465420, 36.854618, 27.304651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493893, 36.291843, 26.941635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.187073, 36.503761, 26.796888>,  <36.002979, 36.630913, 26.710041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.187073, 36.503761, 26.796888>,  <36.493893, 36.291843, 26.941635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187073, 36.503761, 26.796888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450463, 0.043097, -0.891754,
		-0.456851, -0.847030, -0.271711,
		-0.767053, 0.529795, -0.361867,
		35.956959, 36.662701, 26.688328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562050, 35.584347, 26.733967>,  <36.493893, 36.291843, 26.941635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562050, 35.584347, 26.733967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.945591, 35.483143, 26.785473>,  <37.175716, 35.422421, 26.816376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.945591, 35.483143, 26.785473>,  <36.562050, 35.584347, 26.733967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945591, 35.483143, 26.785473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175497, -0.171746, 0.969383,
		-0.223156, -0.952096, -0.209083,
		0.958854, -0.253017, 0.128764,
		37.233246, 35.407238, 26.824102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596375, 34.773949, 27.052137>,  <36.562050, 35.584347, 26.733967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596375, 34.773949, 27.052137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.936573, 34.969032, 27.130913>,  <37.140694, 35.086082, 27.178179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.936573, 34.969032, 27.130913>,  <36.596375, 34.773949, 27.052137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936573, 34.969032, 27.130913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122772, -0.180005, 0.975974,
		0.511446, -0.854244, -0.093217,
		0.850500, 0.487714, 0.196940,
		37.191723, 35.115345, 27.189995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913074, 34.286655, 27.509872>,  <36.596375, 34.773949, 27.052137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913074, 34.286655, 27.509872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.123219, 34.625679, 27.539915>,  <37.249306, 34.829094, 27.557940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.123219, 34.625679, 27.539915>,  <36.913074, 34.286655, 27.509872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123219, 34.625679, 27.539915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078478, -0.136157, 0.987574,
		0.847254, -0.512937, -0.138046,
		0.525359, 0.847559, 0.075105,
		37.280827, 34.879948, 27.562447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611683, 34.191929, 27.846672>,  <36.913074, 34.286655, 27.509872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611683, 34.191929, 27.846672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.495529, 34.570820, 27.900986>,  <37.425838, 34.798153, 27.933575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.495529, 34.570820, 27.900986>,  <37.611683, 34.191929, 27.846672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495529, 34.570820, 27.900986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077503, -0.118151, 0.989967,
		0.953767, 0.297992, -0.039104,
		-0.290382, 0.947228, 0.135784,
		37.408413, 34.854988, 27.941721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084049, 34.623726, 28.300591>,  <37.611683, 34.191929, 27.846672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084049, 34.623726, 28.300591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.721478, 34.789452, 28.333389>,  <37.503933, 34.888889, 28.353069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.721478, 34.789452, 28.333389>,  <38.084049, 34.623726, 28.300591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721478, 34.789452, 28.333389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034483, -0.120899, 0.992066,
		0.420945, 0.902066, 0.095300,
		-0.906431, 0.414318, 0.081997,
		37.449547, 34.913746, 28.357988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193295, 35.035267, 28.867777>,  <38.084049, 34.623726, 28.300591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193295, 35.035267, 28.867777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.795525, 35.044189, 28.826563>,  <37.556862, 35.049541, 28.801834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.795525, 35.044189, 28.826563>,  <38.193295, 35.035267, 28.867777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795525, 35.044189, 28.826563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105190, -0.145004, 0.983824,
		0.007004, 0.989180, 0.146542,
		-0.994428, 0.022305, -0.103036,
		37.497196, 35.050880, 28.795652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957962, 35.506077, 29.379408>,  <38.193295, 35.035267, 28.867777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957962, 35.506077, 29.379408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.639763, 35.283543, 29.283348>,  <37.448845, 35.150021, 29.225712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.639763, 35.283543, 29.283348>,  <37.957962, 35.506077, 29.379408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639763, 35.283543, 29.283348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149761, -0.203513, 0.967550,
		-0.587159, 0.805648, 0.078576,
		-0.795497, -0.556339, -0.240150,
		37.401115, 35.116642, 29.211304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439930, 35.819107, 29.784914>,  <37.957962, 35.506077, 29.379408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439930, 35.819107, 29.784914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.298229, 35.457935, 29.687572>,  <37.213211, 35.241230, 29.629168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.298229, 35.457935, 29.687572>,  <37.439930, 35.819107, 29.784914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298229, 35.457935, 29.687572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251429, -0.158683, 0.954779,
		-0.900718, 0.399414, -0.170810,
		-0.354248, -0.902933, -0.243353,
		37.191956, 35.187054, 29.614567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800430, 35.747185, 30.073162>,  <37.439930, 35.819107, 29.784914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800430, 35.747185, 30.073162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.948265, 35.376953, 30.040400>,  <37.036964, 35.154816, 30.020742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.948265, 35.376953, 30.040400>,  <36.800430, 35.747185, 30.073162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948265, 35.376953, 30.040400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313943, -0.207349, 0.926524,
		-0.874554, -0.316717, -0.367213,
		0.369587, -0.925579, -0.081907,
		37.059143, 35.099281, 30.015827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419827, 35.243294, 30.414568>,  <36.800430, 35.747185, 30.073162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419827, 35.243294, 30.414568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.771210, 35.052208, 30.410658>,  <36.982040, 34.937557, 30.408312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.771210, 35.052208, 30.410658>,  <36.419827, 35.243294, 30.414568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771210, 35.052208, 30.410658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092030, -0.189231, 0.977610,
		-0.468871, -0.857891, -0.210196,
		0.878459, -0.477718, -0.009773,
		37.034748, 34.908894, 30.407726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348904, 34.677292, 30.646095>,  <36.419827, 35.243294, 30.414568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348904, 34.677292, 30.646095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.741600, 34.712521, 30.713539>,  <36.977219, 34.733658, 30.754005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.741600, 34.712521, 30.713539>,  <36.348904, 34.677292, 30.646095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741600, 34.712521, 30.713539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146872, -0.212353, 0.966093,
		0.120894, -0.973216, -0.195539,
		0.981740, 0.088076, 0.168610,
		37.036121, 34.738945, 30.764122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428741, 34.327862, 31.226030>,  <36.348904, 34.677292, 30.646095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428741, 34.327862, 31.226030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.782295, 34.514297, 31.241535>,  <36.994427, 34.626160, 31.250839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.782295, 34.514297, 31.241535>,  <36.428741, 34.327862, 31.226030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782295, 34.514297, 31.241535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069521, 0.048972, 0.996378,
		0.462507, -0.883379, 0.075689,
		0.883886, 0.466093, 0.038764,
		37.047462, 34.654125, 31.253164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853828, 34.114197, 31.853088>,  <36.428741, 34.327862, 31.226030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853828, 34.114197, 31.853088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.003170, 34.471569, 31.753172>,  <37.092773, 34.685993, 31.693222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.003170, 34.471569, 31.753172>,  <36.853828, 34.114197, 31.853088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003170, 34.471569, 31.753172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014214, 0.263719, 0.964495,
		0.927582, -0.363644, 0.085760,
		0.373349, 0.893429, -0.249790,
		37.115173, 34.739597, 31.678234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559231, 34.098595, 32.119061>,  <36.853828, 34.114197, 31.853088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559231, 34.098595, 32.119061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.405396, 34.465927, 32.081612>,  <37.313095, 34.686325, 32.059143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.405396, 34.465927, 32.081612>,  <37.559231, 34.098595, 32.119061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405396, 34.465927, 32.081612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266286, 0.207483, 0.941298,
		0.883845, 0.337083, -0.324333,
		-0.384590, 0.918328, -0.093622,
		37.290020, 34.741425, 32.053524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.272118, 35.043186, 27.892460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.979103, 35.298752, 27.798500>,  <41.803295, 35.452091, 27.742125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.979103, 35.298752, 27.798500>,  <42.272118, 35.043186, 27.892460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979103, 35.298752, 27.798500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135083, -0.201772, -0.970073,
		-0.667193, -0.742342, 0.061498,
		-0.732534, 0.638918, -0.234899,
		41.759342, 35.490429, 27.728031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894878, 34.726933, 27.406240>,  <42.272118, 35.043186, 27.892460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894878, 34.726933, 27.406240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.829124, 35.118896, 27.361073>,  <41.789673, 35.354076, 27.333973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.829124, 35.118896, 27.361073>,  <41.894878, 34.726933, 27.406240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829124, 35.118896, 27.361073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211684, -0.076764, -0.974319,
		-0.963415, -0.184062, -0.194813,
		-0.164381, 0.979912, -0.112918,
		41.779812, 35.412868, 27.327196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452988, 34.824368, 26.863382>,  <41.894878, 34.726933, 27.406240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452988, 34.824368, 26.863382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.594101, 35.198620, 26.858559>,  <41.678768, 35.423172, 26.855665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.594101, 35.198620, 26.858559>,  <41.452988, 34.824368, 26.863382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594101, 35.198620, 26.858559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167430, 0.050441, -0.984593,
		-0.920603, 0.349368, 0.174447,
		0.352785, 0.935627, -0.012058,
		41.699936, 35.479309, 26.854940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946564, 35.151783, 26.531639>,  <41.452988, 34.824368, 26.863382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946564, 35.151783, 26.531639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.265739, 35.392818, 26.526352>,  <41.457245, 35.537441, 26.523180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.265739, 35.392818, 26.526352>,  <40.946564, 35.151783, 26.531639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265739, 35.392818, 26.526352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183678, 0.222219, -0.957539,
		-0.574068, 0.766487, 0.288000,
		0.797940, 0.602591, -0.013218,
		41.505123, 35.573597, 26.522387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778225, 35.818378, 26.057285>,  <40.946564, 35.151783, 26.531639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778225, 35.818378, 26.057285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.177616, 35.821617, 26.079088>,  <41.417252, 35.823559, 26.092171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.177616, 35.821617, 26.079088>,  <40.778225, 35.818378, 26.057285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177616, 35.821617, 26.079088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052379, 0.167952, -0.984403,
		-0.017121, 0.985762, 0.167273,
		0.998480, 0.008093, 0.054509,
		41.477161, 35.824043, 26.095442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992538, 36.268158, 25.488184>,  <40.778225, 35.818378, 26.057285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992538, 36.268158, 25.488184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.325619, 36.068161, 25.583353>,  <41.525467, 35.948162, 25.640453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.325619, 36.068161, 25.583353>,  <40.992538, 36.268158, 25.488184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325619, 36.068161, 25.583353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228789, -0.080603, -0.970133,
		0.504241, 0.862268, 0.047276,
		0.832705, -0.499997, 0.237921,
		41.575432, 35.918163, 25.654730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465187, 36.647640, 25.226097>,  <40.992538, 36.268158, 25.488184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465187, 36.647640, 25.226097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.637478, 36.288643, 25.264004>,  <41.740852, 36.073246, 25.286747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.637478, 36.288643, 25.264004>,  <41.465187, 36.647640, 25.226097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637478, 36.288643, 25.264004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120380, -0.046932, -0.991618,
		0.894418, 0.438525, 0.087825,
		0.430727, -0.897493, 0.094767,
		41.766697, 36.019394, 25.292435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095253, 36.761864, 24.834093>,  <41.465187, 36.647640, 25.226097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095253, 36.761864, 24.834093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.031189, 36.367664, 24.856510>,  <41.992748, 36.131145, 24.869961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.031189, 36.367664, 24.856510>,  <42.095253, 36.761864, 24.834093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031189, 36.367664, 24.856510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124119, -0.076433, -0.989319,
		0.979256, -0.151495, 0.134561,
		-0.160162, -0.985498, 0.056044,
		41.983139, 36.072014, 24.873323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643131, 36.511547, 24.421923>,  <42.095253, 36.761864, 24.834093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643131, 36.511547, 24.421923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.357483, 36.231590, 24.427366>,  <42.186092, 36.063618, 24.430634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.357483, 36.231590, 24.427366>,  <42.643131, 36.511547, 24.421923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357483, 36.231590, 24.427366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172614, -0.194902, -0.965514,
		0.678405, -0.687147, 0.259994,
		-0.714123, -0.699888, 0.013611,
		42.143246, 36.021626, 24.431450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973438, 35.992004, 24.187513>,  <42.643131, 36.511547, 24.421923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973438, 35.992004, 24.187513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.587437, 35.903484, 24.131245>,  <42.355835, 35.850372, 24.097483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.587437, 35.903484, 24.131245>,  <42.973438, 35.992004, 24.187513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587437, 35.903484, 24.131245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167224, -0.106127, -0.980190,
		0.201984, -0.969414, 0.139420,
		-0.965007, -0.221298, -0.140674,
		42.297935, 35.837093, 24.089043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.884377, 35.326031, 23.704998>,  <42.973438, 35.992004, 24.187513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.884377, 35.326031, 23.704998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.543903, 35.535133, 23.686195>,  <42.339619, 35.660595, 23.674913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.543903, 35.535133, 23.686195>,  <42.884377, 35.326031, 23.704998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543903, 35.535133, 23.686195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040954, -0.023139, -0.998893,
		-0.523269, -0.852166, -0.001713,
		-0.851183, 0.522760, -0.047007,
		42.288548, 35.691959, 23.672092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341038, 34.961685, 23.261045>,  <42.884377, 35.326031, 23.704998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341038, 34.961685, 23.261045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.248055, 35.350105, 23.239054>,  <42.192265, 35.583157, 23.225859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.248055, 35.350105, 23.239054>,  <42.341038, 34.961685, 23.261045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248055, 35.350105, 23.239054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020361, -0.061375, -0.997907,
		-0.972394, -0.230848, 0.034039,
		-0.232454, 0.971052, -0.054980,
		42.178318, 35.641422, 23.222559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939278, 34.966496, 22.686110>,  <42.341038, 34.961685, 23.261045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939278, 34.966496, 22.686110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.030827, 35.349442, 22.756617>,  <42.085754, 35.579208, 22.798920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.030827, 35.349442, 22.756617>,  <41.939278, 34.966496, 22.686110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030827, 35.349442, 22.756617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116138, 0.206634, -0.971501,
		-0.966504, 0.201877, 0.158479,
		0.228871, 0.957365, 0.176267,
		42.099487, 35.636650, 22.809496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431839, 35.364559, 22.345768>,  <41.939278, 34.966496, 22.686110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431839, 35.364559, 22.345768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.752537, 35.599857, 22.388056>,  <41.944954, 35.741035, 22.413427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.752537, 35.599857, 22.388056>,  <41.431839, 35.364559, 22.345768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752537, 35.599857, 22.388056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171239, 0.395555, -0.902338,
		-0.572613, 0.705340, 0.417864,
		0.801743, 0.588245, 0.105718,
		41.993061, 35.776329, 22.419771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676529, 35.052017, 22.286591>,  <41.431839, 35.364559, 22.345768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676529, 35.052017, 22.286591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.353874, 34.855053, 22.155828>,  <40.160282, 34.736874, 22.077372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.353874, 34.855053, 22.155828>,  <40.676529, 35.052017, 22.286591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353874, 34.855053, 22.155828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280924, -0.167212, 0.945051,
		-0.520018, 0.854149, -0.003451,
		-0.806637, -0.492412, -0.326904,
		40.111881, 34.707329, 22.057756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094627, 35.414951, 22.630129>,  <40.676529, 35.052017, 22.286591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094627, 35.414951, 22.630129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.946743, 35.074509, 22.481035>,  <39.858013, 34.870243, 22.391579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.946743, 35.074509, 22.481035>,  <40.094627, 35.414951, 22.630129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946743, 35.074509, 22.481035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583606, -0.099437, 0.805925,
		-0.722992, 0.515490, -0.459948,
		-0.369711, -0.851106, -0.372735,
		39.835831, 34.819176, 22.369215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451809, 35.570076, 22.715506>,  <40.094627, 35.414951, 22.630129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451809, 35.570076, 22.715506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.507065, 35.175056, 22.685383>,  <39.540218, 34.938046, 22.667309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.507065, 35.175056, 22.685383>,  <39.451809, 35.570076, 22.715506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507065, 35.175056, 22.685383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624093, -0.145837, 0.767620,
		-0.769042, -0.059038, -0.636465,
		0.138139, -0.987546, -0.075309,
		39.548508, 34.878792, 22.662790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802437, 35.304050, 22.942467>,  <39.451809, 35.570076, 22.715506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802437, 35.304050, 22.942467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.044090, 34.986469, 22.969769>,  <39.189083, 34.795921, 22.986149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.044090, 34.986469, 22.969769>,  <38.802437, 35.304050, 22.942467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044090, 34.986469, 22.969769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447133, -0.266840, 0.853738,
		-0.659616, -0.546292, -0.516210,
		0.604135, -0.793954, 0.068253,
		39.225330, 34.748283, 22.990244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314533, 34.812912, 22.974075>,  <38.802437, 35.304050, 22.942467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314533, 34.812912, 22.974075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.668549, 34.727932, 23.139759>,  <38.880959, 34.676945, 23.239168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.668549, 34.727932, 23.139759>,  <38.314533, 34.812912, 22.974075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668549, 34.727932, 23.139759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431636, -0.041286, 0.901102,
		-0.174342, -0.976299, -0.128243,
		0.885040, -0.212454, 0.414208,
		38.934059, 34.664196, 23.264021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160534, 34.290958, 23.420456>,  <38.314533, 34.812912, 22.974075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160534, 34.290958, 23.420456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.515469, 34.406975, 23.563845>,  <38.728432, 34.476585, 23.649878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.515469, 34.406975, 23.563845>,  <38.160534, 34.290958, 23.420456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515469, 34.406975, 23.563845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334545, -0.130075, 0.933360,
		0.317341, -0.948133, -0.018390,
		0.887341, 0.290041, 0.358471,
		38.781670, 34.493988, 23.671387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286674, 33.911583, 23.952103>,  <38.160534, 34.290958, 23.420456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286674, 33.911583, 23.952103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.553467, 34.200939, 24.023476>,  <38.713543, 34.374554, 24.066299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.553467, 34.200939, 24.023476>,  <38.286674, 33.911583, 23.952103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553467, 34.200939, 24.023476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236172, -0.021868, 0.971465,
		0.706655, -0.690089, 0.156260,
		0.666980, 0.723395, 0.178433,
		38.753559, 34.417957, 24.077005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580696, 33.815613, 24.618484>,  <38.286674, 33.911583, 23.952103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580696, 33.815613, 24.618484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.619488, 34.208054, 24.551512>,  <38.642761, 34.443520, 24.511328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.619488, 34.208054, 24.551512>,  <38.580696, 33.815613, 24.618484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619488, 34.208054, 24.551512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430420, 0.193023, 0.881749,
		0.897404, -0.013445, 0.441005,
		0.096979, 0.981102, -0.167432,
		38.648582, 34.502384, 24.501282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913536, 34.142612, 25.201973>,  <38.580696, 33.815613, 24.618484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913536, 34.142612, 25.201973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.746666, 34.445992, 25.001688>,  <38.646542, 34.628021, 24.881517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.746666, 34.445992, 25.001688>,  <38.913536, 34.142612, 25.201973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746666, 34.445992, 25.001688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379017, 0.355553, 0.854358,
		0.826019, 0.546200, 0.139136,
		-0.417180, 0.758451, -0.500713,
		38.621513, 34.673527, 24.851475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038113, 34.662140, 25.593809>,  <38.913536, 34.142612, 25.201973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038113, 34.662140, 25.593809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.734032, 34.760319, 25.353195>,  <38.551582, 34.819225, 25.208826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.734032, 34.760319, 25.353195>,  <39.038113, 34.662140, 25.593809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734032, 34.760319, 25.353195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543104, 0.268042, 0.795733,
		0.356549, 0.931616, -0.070462,
		-0.760204, 0.245450, -0.601534,
		38.505970, 34.833954, 25.172735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906731, 35.362865, 25.775345>,  <39.038113, 34.662140, 25.593809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906731, 35.362865, 25.775345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.587326, 35.172024, 25.628508>,  <38.395683, 35.057518, 25.540405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.587326, 35.172024, 25.628508>,  <38.906731, 35.362865, 25.775345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587326, 35.172024, 25.628508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544451, 0.312213, 0.778522,
		-0.256825, 0.821520, -0.509064,
		-0.798507, -0.477104, -0.367093,
		38.347775, 35.028893, 25.518379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313274, 35.902309, 25.810259>,  <38.906731, 35.362865, 25.775345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313274, 35.902309, 25.810259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.138866, 35.542385, 25.804214>,  <38.034222, 35.326431, 25.800589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.138866, 35.542385, 25.804214>,  <38.313274, 35.902309, 25.810259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138866, 35.542385, 25.804214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564940, 0.260606, 0.782897,
		-0.700521, 0.349895, -0.621968,
		-0.436020, -0.899810, -0.015110,
		38.008060, 35.272442, 25.799681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572151, 36.061760, 25.831713>,  <38.313274, 35.902309, 25.810259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572151, 36.061760, 25.831713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.625854, 35.684704, 25.953964>,  <37.658077, 35.458469, 26.027315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.625854, 35.684704, 25.953964>,  <37.572151, 36.061760, 25.831713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625854, 35.684704, 25.953964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528484, 0.192789, 0.826763,
		-0.838260, -0.272517, -0.472287,
		0.134255, -0.942638, 0.305628,
		37.666130, 35.401913, 26.045652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910942, 35.914078, 26.211859>,  <37.572151, 36.061760, 25.831713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910942, 35.914078, 26.211859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.173012, 35.633015, 26.322872>,  <37.330254, 35.464378, 26.389481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.173012, 35.633015, 26.322872>,  <36.910942, 35.914078, 26.211859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173012, 35.633015, 26.322872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367607, 0.024431, 0.929660,
		-0.660011, -0.711112, -0.242294,
		0.655173, -0.702655, 0.277535,
		37.369564, 35.422218, 26.406132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155365, 35.909023, 26.183531>,  <36.910942, 35.914078, 26.211859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155365, 35.909023, 26.183531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.007008, 36.280479, 26.180260>,  <35.917995, 36.503353, 26.178297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.007008, 36.280479, 26.180260>,  <36.155365, 35.909023, 26.183531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007008, 36.280479, 26.180260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247481, 0.090346, -0.964671,
		-0.895095, -0.359810, -0.263330,
		-0.370889, 0.928641, -0.008177,
		35.895741, 36.559071, 26.177807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696808, 35.889297, 25.667255>,  <36.155365, 35.909023, 26.183531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696808, 35.889297, 25.667255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.810863, 36.266163, 25.737709>,  <35.879295, 36.492283, 25.779982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.810863, 36.266163, 25.737709>,  <35.696808, 35.889297, 25.667255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810863, 36.266163, 25.737709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348965, 0.069107, -0.934584,
		-0.892703, 0.327953, -0.309077,
		0.285140, 0.942163, 0.176136,
		35.896404, 36.548813, 25.790550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512768, 36.147942, 25.035305>,  <35.696808, 35.889297, 25.667255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512768, 36.147942, 25.035305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.755447, 36.431572, 25.179039>,  <35.901054, 36.601749, 25.265280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.755447, 36.431572, 25.179039>,  <35.512768, 36.147942, 25.035305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755447, 36.431572, 25.179039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381876, 0.136481, -0.914081,
		-0.697198, 0.691794, -0.187978,
		0.606700, 0.709080, 0.359333,
		35.937458, 36.644295, 25.286839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425289, 36.768379, 24.579233>,  <35.512768, 36.147942, 25.035305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425289, 36.768379, 24.579233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.784966, 36.783058, 24.753639>,  <36.000771, 36.791866, 24.858282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.784966, 36.783058, 24.753639>,  <35.425289, 36.768379, 24.579233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784966, 36.783058, 24.753639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421483, 0.194951, -0.885633,
		-0.117499, 0.980126, 0.159832,
		0.899192, 0.036694, 0.436013,
		36.054722, 36.794067, 24.884443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772152, 37.152512, 24.171764>,  <35.425289, 36.768379, 24.579233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772152, 37.152512, 24.171764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.075314, 37.008900, 24.389637>,  <36.257210, 36.922733, 24.520361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.075314, 37.008900, 24.389637>,  <35.772152, 37.152512, 24.171764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075314, 37.008900, 24.389637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640099, 0.248130, -0.727121,
		0.125905, 0.899739, 0.417872,
		0.757906, -0.359028, 0.544681,
		36.302685, 36.901192, 24.553041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352711, 37.653625, 24.140806>,  <35.772152, 37.152512, 24.171764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352711, 37.653625, 24.140806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.522671, 37.309093, 24.252211>,  <36.624645, 37.102375, 24.319054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.522671, 37.309093, 24.252211>,  <36.352711, 37.653625, 24.140806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522671, 37.309093, 24.252211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683989, 0.103937, -0.722050,
		0.592977, 0.497296, 0.633304,
		0.424896, -0.861333, 0.278513,
		36.650139, 37.050694, 24.335764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050819, 37.826416, 24.232594>,  <36.352711, 37.653625, 24.140806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050819, 37.826416, 24.232594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.027580, 37.431973, 24.170362>,  <37.013638, 37.195305, 24.133024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.027580, 37.431973, 24.170362>,  <37.050819, 37.826416, 24.232594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027580, 37.431973, 24.170362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471998, 0.110191, -0.874687,
		0.879683, -0.124251, 0.459041,
		-0.058099, -0.986114, -0.155579,
		37.010151, 37.136139, 24.123690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563858, 38.448364, 24.339941>,  <37.050819, 37.826416, 24.232594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563858, 38.448364, 24.339941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.334656, 38.736496, 24.183590>,  <37.197136, 38.909374, 24.089779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.334656, 38.736496, 24.183590>,  <37.563858, 38.448364, 24.339941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334656, 38.736496, 24.183590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374766, 0.193854, 0.906626,
		0.728845, 0.665990, 0.158876,
		-0.573006, 0.720331, -0.390880,
		37.162754, 38.952595, 24.066326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756794, 39.062729, 24.695461>,  <37.563858, 38.448364, 24.339941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756794, 39.062729, 24.695461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.393444, 39.133202, 24.543770>,  <37.175434, 39.175488, 24.452755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.393444, 39.133202, 24.543770>,  <37.756794, 39.062729, 24.695461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393444, 39.133202, 24.543770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340305, 0.215536, 0.915279,
		0.242994, 0.960470, -0.135832,
		-0.908376, 0.176183, -0.379227,
		37.120930, 39.186058, 24.430002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478405, 39.581799, 25.029461>,  <37.756794, 39.062729, 24.695461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478405, 39.581799, 25.029461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.137951, 39.426323, 24.888332>,  <36.933678, 39.333038, 24.803656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.137951, 39.426323, 24.888332>,  <37.478405, 39.581799, 25.029461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137951, 39.426323, 24.888332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467549, 0.255739, 0.846165,
		-0.238666, 0.885165, -0.399401,
		-0.851138, -0.388691, -0.352822,
		36.882610, 39.309715, 24.782486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998329, 40.136726, 25.161642>,  <37.478405, 39.581799, 25.029461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998329, 40.136726, 25.161642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.820251, 39.782207, 25.110607>,  <36.713402, 39.569496, 25.079987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.820251, 39.782207, 25.110607>,  <36.998329, 40.136726, 25.161642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820251, 39.782207, 25.110607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503647, 0.130040, 0.854066,
		-0.740363, 0.444490, -0.504274,
		-0.445199, -0.886295, -0.127589,
		36.686691, 39.516319, 25.072330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272110, 40.318756, 25.344250>,  <36.998329, 40.136726, 25.161642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272110, 40.318756, 25.344250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.297405, 39.920067, 25.364426>,  <36.312580, 39.680855, 25.376532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.297405, 39.920067, 25.364426>,  <36.272110, 40.318756, 25.344250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297405, 39.920067, 25.364426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389000, 0.021926, 0.920977,
		-0.919065, -0.077859, -0.386339,
		0.063236, -0.996723, 0.050439,
		36.316376, 39.621048, 25.379557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630150, 40.065296, 25.565359>,  <36.272110, 40.318756, 25.344250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630150, 40.065296, 25.565359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.863773, 39.753193, 25.654865>,  <36.003948, 39.565929, 25.708569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.863773, 39.753193, 25.654865>,  <35.630150, 40.065296, 25.565359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863773, 39.753193, 25.654865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393176, -0.030772, 0.918948,
		-0.710134, -0.624697, -0.324752,
		0.584058, -0.780261, 0.223763,
		36.038990, 39.519115, 25.721994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200413, 39.667908, 25.878956>,  <35.630150, 40.065296, 25.565359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200413, 39.667908, 25.878956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.561531, 39.550678, 26.004864>,  <35.778202, 39.480343, 26.080408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.561531, 39.550678, 26.004864>,  <35.200413, 39.667908, 25.878956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561531, 39.550678, 26.004864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327872, 0.004655, 0.944711,
		-0.278332, -0.956080, -0.091887,
		0.902791, -0.293070, 0.314767,
		35.832367, 39.462757, 26.099295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.660675, 38.926464, 24.177750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.377304, 38.798706, 24.429501>,  <41.207279, 38.722050, 24.580551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.377304, 38.798706, 24.429501>,  <41.660675, 38.926464, 24.177750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377304, 38.798706, 24.429501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544198, 0.320638, 0.775268,
		-0.449417, 0.891728, -0.053336,
		-0.708430, -0.319394, 0.629377,
		41.164776, 38.702888, 24.618313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516735, 39.089218, 23.424540>,  <41.660675, 38.926464, 24.177750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516735, 39.089218, 23.424540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.701019, 38.755836, 23.546585>,  <41.811588, 38.555805, 23.619812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.701019, 38.755836, 23.546585>,  <41.516735, 39.089218, 23.424540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701019, 38.755836, 23.546585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506292, 0.035561, 0.861628,
		-0.728981, -0.551437, -0.405590,
		0.460711, -0.833458, 0.305111,
		41.839233, 38.505798, 23.638119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006702, 38.865852, 23.814545>,  <41.516735, 39.089218, 23.424540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006702, 38.865852, 23.814545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.324211, 38.647675, 23.922180>,  <41.514717, 38.516766, 23.986761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.324211, 38.647675, 23.922180>,  <41.006702, 38.865852, 23.814545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324211, 38.647675, 23.922180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290989, 0.047922, 0.955525,
		-0.534085, -0.836773, -0.120681,
		0.793774, -0.545449, 0.269086,
		41.562344, 38.484039, 24.002907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703335, 38.506355, 24.253000>,  <41.006702, 38.865852, 23.814545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703335, 38.506355, 24.253000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.092453, 38.484337, 24.343006>,  <41.325924, 38.471127, 24.397009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.092453, 38.484337, 24.343006>,  <40.703335, 38.506355, 24.253000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092453, 38.484337, 24.343006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226164, -0.015540, 0.973965,
		-0.050126, -0.998362, -0.027569,
		0.972798, -0.055057, 0.225015,
		41.384293, 38.467823, 24.410511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743744, 38.017246, 24.863468>,  <40.703335, 38.506355, 24.253000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743744, 38.017246, 24.863468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.054943, 38.268330, 24.852850>,  <41.241661, 38.418980, 24.846479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.054943, 38.268330, 24.852850>,  <40.743744, 38.017246, 24.863468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054943, 38.268330, 24.852850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168445, 0.249110, 0.953714,
		0.605264, -0.737517, 0.299541,
		0.777999, 0.627705, -0.026547,
		41.288342, 38.456642, 24.844887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045647, 37.932240, 25.493343>,  <40.743744, 38.017246, 24.863468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045647, 37.932240, 25.493343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.163784, 38.279858, 25.334581>,  <41.234665, 38.488430, 25.239325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.163784, 38.279858, 25.334581>,  <41.045647, 37.932240, 25.493343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163784, 38.279858, 25.334581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020990, 0.409434, 0.912098,
		0.955162, -0.277709, 0.102681,
		0.295339, 0.869046, -0.396905,
		41.252384, 38.540573, 25.215509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381561, 38.188919, 26.026600>,  <41.045647, 37.932240, 25.493343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381561, 38.188919, 26.026600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.344372, 38.498566, 25.776129>,  <41.322060, 38.684353, 25.625847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.344372, 38.498566, 25.776129>,  <41.381561, 38.188919, 26.026600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344372, 38.498566, 25.776129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245721, 0.591609, 0.767868,
		0.964872, 0.225256, 0.135213,
		-0.092974, 0.774118, -0.626177,
		41.316479, 38.730801, 25.588276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744801, 38.812180, 26.343878>,  <41.381561, 38.188919, 26.026600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744801, 38.812180, 26.343878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.483585, 38.934792, 26.066870>,  <41.326859, 39.008358, 25.900665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.483585, 38.934792, 26.066870>,  <41.744801, 38.812180, 26.343878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483585, 38.934792, 26.066870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497767, 0.515440, 0.697531,
		0.570767, 0.800226, -0.184020,
		-0.653034, 0.306528, -0.692522,
		41.287674, 39.026749, 25.859114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746830, 39.537056, 26.392853>,  <41.744801, 38.812180, 26.343878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746830, 39.537056, 26.392853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.405098, 39.435993, 26.211176>,  <41.200058, 39.375355, 26.102169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.405098, 39.435993, 26.211176>,  <41.746830, 39.537056, 26.392853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405098, 39.435993, 26.211176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511364, 0.564848, 0.647652,
		0.092918, 0.785565, -0.611763,
		-0.854326, -0.252655, -0.454194,
		41.148800, 39.360195, 26.074917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389332, 40.196350, 26.425659>,  <41.746830, 39.537056, 26.392853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389332, 40.196350, 26.425659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.102154, 39.927505, 26.353207>,  <40.929848, 39.766197, 26.309736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.102154, 39.927505, 26.353207>,  <41.389332, 40.196350, 26.425659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102154, 39.927505, 26.353207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594472, 0.456639, 0.661879,
		-0.362149, 0.582873, -0.727398,
		-0.717950, -0.672116, -0.181130,
		40.886768, 39.725872, 26.298868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911865, 40.577900, 26.596209>,  <41.389332, 40.196350, 26.425659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911865, 40.577900, 26.596209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.743103, 40.215473, 26.609087>,  <40.641846, 39.998016, 26.616814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.743103, 40.215473, 26.609087>,  <40.911865, 40.577900, 26.596209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743103, 40.215473, 26.609087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631289, 0.319079, 0.706869,
		-0.650743, 0.277909, -0.706611,
		-0.421910, -0.906066, 0.032198,
		40.616531, 39.943653, 26.618746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123821, 40.755817, 26.554867>,  <40.911865, 40.577900, 26.596209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123821, 40.755817, 26.554867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.231781, 40.416470, 26.737043>,  <40.296558, 40.212860, 26.846350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.231781, 40.416470, 26.737043>,  <40.123821, 40.755817, 26.554867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231781, 40.416470, 26.737043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363602, 0.348178, 0.864040,
		-0.891597, -0.398807, -0.214493,
		0.269904, -0.848366, 0.455441,
		40.312752, 40.161961, 26.873676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795853, 40.309204, 26.914803>,  <40.123821, 40.755817, 26.554867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795853, 40.309204, 26.914803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.545357, 40.562683, 26.733141>,  <39.395061, 40.714771, 26.624144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.545357, 40.562683, 26.733141>,  <39.795853, 40.309204, 26.914803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545357, 40.562683, 26.733141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429955, -0.205218, -0.879218,
		-0.650359, -0.745864, -0.143947,
		-0.626237, 0.633698, -0.454153,
		39.357487, 40.752792, 26.596895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511311, 39.943127, 26.388636>,  <39.795853, 40.309204, 26.914803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511311, 39.943127, 26.388636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.452190, 40.327312, 26.294266>,  <39.416718, 40.557823, 26.237644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.452190, 40.327312, 26.294266>,  <39.511311, 39.943127, 26.388636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452190, 40.327312, 26.294266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275219, -0.189182, -0.942584,
		-0.949952, -0.204246, -0.236377,
		-0.147801, 0.960465, -0.235926,
		39.407848, 40.615452, 26.223488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290462, 39.968239, 25.679626>,  <39.511311, 39.943127, 26.388636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290462, 39.968239, 25.679626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.393776, 40.349457, 25.742859>,  <39.455765, 40.578190, 25.780798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.393776, 40.349457, 25.742859>,  <39.290462, 39.968239, 25.679626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393776, 40.349457, 25.742859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373040, 0.052555, -0.926325,
		-0.891141, 0.298222, -0.341952,
		0.258279, 0.953049, 0.158082,
		39.471260, 40.635372, 25.790283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950180, 40.336792, 25.088247>,  <39.290462, 39.968239, 25.679626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950180, 40.336792, 25.088247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.237305, 40.582886, 25.218620>,  <39.409580, 40.730541, 25.296844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.237305, 40.582886, 25.218620>,  <38.950180, 40.336792, 25.088247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237305, 40.582886, 25.218620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207966, 0.257298, -0.943688,
		-0.664450, 0.745176, 0.056745,
		0.717814, 0.615232, 0.325933,
		39.452648, 40.767456, 25.316401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018204, 40.831425, 24.607483>,  <38.950180, 40.336792, 25.088247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018204, 40.831425, 24.607483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.369164, 40.907284, 24.783754>,  <39.579739, 40.952801, 24.889517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.369164, 40.907284, 24.783754>,  <39.018204, 40.831425, 24.607483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369164, 40.907284, 24.783754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337697, 0.408312, -0.848081,
		-0.340774, 0.892924, 0.294210,
		0.877402, 0.189650, 0.440680,
		39.632385, 40.964180, 24.915958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166309, 41.515968, 24.442833>,  <39.018204, 40.831425, 24.607483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166309, 41.515968, 24.442833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.471195, 41.264458, 24.504364>,  <39.654129, 41.113552, 24.541283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.471195, 41.264458, 24.504364>,  <39.166309, 41.515968, 24.442833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471195, 41.264458, 24.504364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334124, 0.178627, -0.925448,
		0.554425, 0.756788, 0.346243,
		0.762217, -0.628780, 0.153826,
		39.699860, 41.075825, 24.550512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712559, 41.924236, 24.103455>,  <39.166309, 41.515968, 24.442833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712559, 41.924236, 24.103455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.806923, 41.539879, 24.161451>,  <39.863541, 41.309265, 24.196249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.806923, 41.539879, 24.161451>,  <39.712559, 41.924236, 24.103455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806923, 41.539879, 24.161451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432127, -0.029908, -0.901317,
		0.870409, 0.275285, 0.408174,
		0.235911, -0.960897, 0.144990,
		39.877697, 41.251610, 24.204948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303555, 41.916466, 23.776669>,  <39.712559, 41.924236, 24.103455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303555, 41.916466, 23.776669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.220932, 41.525253, 23.787878>,  <40.171360, 41.290524, 23.794603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.220932, 41.525253, 23.787878>,  <40.303555, 41.916466, 23.776669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220932, 41.525253, 23.787878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205796, -0.071426, -0.975985,
		0.956548, -0.195827, 0.216029,
		-0.206554, -0.978034, 0.028022,
		40.158966, 41.231842, 23.796284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886600, 41.656242, 23.383724>,  <40.303555, 41.916466, 23.776669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886600, 41.656242, 23.383724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.582508, 41.396980, 23.401379>,  <40.400051, 41.241425, 23.411970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.582508, 41.396980, 23.401379>,  <40.886600, 41.656242, 23.383724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582508, 41.396980, 23.401379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102242, -0.186458, -0.977128,
		0.641557, -0.738330, 0.208020,
		-0.760231, -0.648152, 0.044135,
		40.354439, 41.202534, 23.414619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057640, 40.984261, 22.999924>,  <40.886600, 41.656242, 23.383724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057640, 40.984261, 22.999924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.657894, 40.976952, 23.012142>,  <40.418045, 40.972569, 23.019472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.657894, 40.976952, 23.012142>,  <41.057640, 40.984261, 22.999924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657894, 40.976952, 23.012142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026877, -0.175196, -0.984167,
		0.023331, -0.984364, 0.174594,
		-0.999367, -0.018269, 0.030545,
		40.358086, 40.971470, 23.021305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930420, 40.464054, 22.539408>,  <41.057640, 40.984261, 22.999924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930420, 40.464054, 22.539408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.577625, 40.652149, 22.551949>,  <40.365948, 40.765007, 22.559473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.577625, 40.652149, 22.551949>,  <40.930420, 40.464054, 22.539408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577625, 40.652149, 22.551949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129753, -0.178336, -0.975377,
		-0.453067, -0.864334, 0.218304,
		-0.881983, 0.470236, 0.031352,
		40.313030, 40.793221, 22.561354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399212, 40.019009, 22.394379>,  <40.930420, 40.464054, 22.539408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399212, 40.019009, 22.394379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.249111, 40.379021, 22.305717>,  <40.159050, 40.595028, 22.252520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.249111, 40.379021, 22.305717>,  <40.399212, 40.019009, 22.394379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249111, 40.379021, 22.305717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043747, -0.221667, -0.974141,
		-0.925889, -0.375247, 0.043808,
		-0.375254, 0.900030, -0.221655,
		40.136536, 40.649029, 22.239222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866837, 39.852943, 21.849916>,  <40.399212, 40.019009, 22.394379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866837, 39.852943, 21.849916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.905201, 40.248592, 21.805296>,  <39.928219, 40.485981, 21.778524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.905201, 40.248592, 21.805296>,  <39.866837, 39.852943, 21.849916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905201, 40.248592, 21.805296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127505, -0.123352, -0.984138,
		-0.987190, 0.080167, -0.137948,
		0.095911, 0.989120, -0.111550,
		39.933975, 40.545330, 21.771832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569321, 39.931423, 22.473093>,  <39.866837, 39.852943, 21.849916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569321, 39.931423, 22.473093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.387245, 39.736115, 22.175262>,  <39.278000, 39.618931, 21.996565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.387245, 39.736115, 22.175262>,  <39.569321, 39.931423, 22.473093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387245, 39.736115, 22.175262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833391, -0.060759, 0.549333,
		-0.313463, 0.870575, -0.379264,
		-0.455192, -0.488271, -0.744575,
		39.250687, 39.589634, 21.951889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941467, 40.248997, 22.289854>,  <39.569321, 39.931423, 22.473093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941467, 40.248997, 22.289854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.891716, 39.878887, 22.146519>,  <38.861866, 39.656822, 22.060516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.891716, 39.878887, 22.146519>,  <38.941467, 40.248997, 22.289854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891716, 39.878887, 22.146519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837624, -0.095687, 0.537801,
		-0.531899, 0.367043, -0.763127,
		-0.124375, -0.925269, -0.358340,
		38.854404, 39.601307, 22.039017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263298, 40.164829, 22.135000>,  <38.941467, 40.248997, 22.289854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263298, 40.164829, 22.135000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.393456, 39.790806, 22.191273>,  <38.471550, 39.566391, 22.225037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.393456, 39.790806, 22.191273>,  <38.263298, 40.164829, 22.135000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393456, 39.790806, 22.191273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838188, -0.216367, 0.500627,
		-0.437674, -0.280819, -0.854156,
		0.325396, -0.935054, 0.140681,
		38.491074, 39.510288, 22.233477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702339, 39.753551, 22.003004>,  <38.263298, 40.164829, 22.135000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702339, 39.753551, 22.003004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.941978, 39.497551, 22.195452>,  <38.085762, 39.343948, 22.310921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.941978, 39.497551, 22.195452>,  <37.702339, 39.753551, 22.003004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941978, 39.497551, 22.195452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747977, -0.232965, 0.621496,
		-0.285680, -0.732199, -0.618281,
		0.599097, -0.640009, 0.481115,
		38.121708, 39.305550, 22.339787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364403, 39.129803, 21.929678>,  <37.702339, 39.753551, 22.003004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364403, 39.129803, 21.929678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.601219, 39.122879, 22.251966>,  <37.743309, 39.118725, 22.445339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.601219, 39.122879, 22.251966>,  <37.364403, 39.129803, 21.929678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601219, 39.122879, 22.251966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787182, -0.226682, 0.573550,
		0.172715, -0.973815, -0.147829,
		0.592042, -0.017307, 0.805722,
		37.778831, 39.117687, 22.493683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069439, 38.598103, 22.351992>,  <37.364403, 39.129803, 21.929678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069439, 38.598103, 22.351992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.288506, 38.795166, 22.622501>,  <37.419945, 38.913403, 22.784807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.288506, 38.795166, 22.622501>,  <37.069439, 38.598103, 22.351992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288506, 38.795166, 22.622501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664146, -0.235627, 0.709500,
		0.508888, -0.837717, 0.198149,
		0.547671, 0.492656, 0.676274,
		37.452808, 38.942963, 22.825384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885464, 38.303959, 22.966728>,  <37.069439, 38.598103, 22.351992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885464, 38.303959, 22.966728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.075897, 38.634480, 23.087112>,  <37.190159, 38.832790, 23.159344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.075897, 38.634480, 23.087112>,  <36.885464, 38.303959, 22.966728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075897, 38.634480, 23.087112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519329, -0.012011, 0.854490,
		0.709678, -0.563106, 0.423402,
		0.476083, 0.826298, 0.300961,
		37.218723, 38.882370, 23.177401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231777, 38.235046, 23.654016>,  <36.885464, 38.303959, 22.966728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231777, 38.235046, 23.654016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.207253, 38.631916, 23.610525>,  <37.192535, 38.870037, 23.584431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.207253, 38.631916, 23.610525>,  <37.231777, 38.235046, 23.654016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207253, 38.631916, 23.610525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363465, 0.079260, 0.928230,
		0.929588, 0.096435, 0.355762,
		-0.061316, 0.992179, -0.108730,
		37.188858, 38.929569, 23.577906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714680, 37.709129, 23.881821>,  <37.231777, 38.235046, 23.654016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714680, 37.709129, 23.881821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.507633, 37.368698, 23.846632>,  <37.383404, 37.164440, 23.825520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.507633, 37.368698, 23.846632>,  <37.714680, 37.709129, 23.881821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507633, 37.368698, 23.846632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424372, -0.166092, -0.890125,
		0.742953, -0.498078, 0.447146,
		-0.517619, -0.851077, -0.087972,
		37.352348, 37.113377, 23.820240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209133, 37.197140, 23.678303>,  <37.714680, 37.709129, 23.881821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209133, 37.197140, 23.678303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.841724, 37.084518, 23.567278>,  <37.621277, 37.016945, 23.500664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.841724, 37.084518, 23.567278>,  <38.209133, 37.197140, 23.678303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841724, 37.084518, 23.567278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339441, -0.201636, -0.918761,
		0.202715, -0.938121, 0.280779,
		-0.918524, -0.281555, -0.277562,
		37.566166, 37.000053, 23.484009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231903, 36.408127, 23.462107>,  <38.209133, 37.197140, 23.678303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231903, 36.408127, 23.462107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.902271, 36.563992, 23.297638>,  <37.704494, 36.657509, 23.198957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.902271, 36.563992, 23.297638>,  <38.231903, 36.408127, 23.462107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902271, 36.563992, 23.297638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326402, -0.266619, -0.906850,
		-0.462990, -0.881521, 0.092528,
		-0.824076, 0.389661, -0.411172,
		37.655048, 36.680889, 23.174286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922287, 35.886257, 23.139830>,  <38.231903, 36.408127, 23.462107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922287, 35.886257, 23.139830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.800316, 36.234325, 22.985006>,  <37.727135, 36.443169, 22.892113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.800316, 36.234325, 22.985006>,  <37.922287, 35.886257, 23.139830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800316, 36.234325, 22.985006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271507, -0.310120, -0.911103,
		-0.912854, -0.382911, -0.141694,
		-0.304929, 0.870175, -0.387057,
		37.708836, 36.495377, 22.868889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778263, 35.710583, 22.511934>,  <37.922287, 35.886257, 23.139830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778263, 35.710583, 22.511934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.812698, 36.104179, 22.449509>,  <37.833359, 36.340336, 22.412054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.812698, 36.104179, 22.449509>,  <37.778263, 35.710583, 22.511934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812698, 36.104179, 22.449509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362263, -0.176841, -0.915146,
		-0.928092, 0.022251, -0.371687,
		0.086092, 0.983988, -0.156064,
		37.838528, 36.399376, 22.402689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489052, 35.788513, 21.892355>,  <37.778263, 35.710583, 22.511934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489052, 35.788513, 21.892355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.696037, 36.125679, 21.951317>,  <37.820229, 36.327980, 21.986694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.696037, 36.125679, 21.951317>,  <37.489052, 35.788513, 21.892355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696037, 36.125679, 21.951317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333761, -0.040195, -0.941800,
		-0.787933, 0.536543, -0.302131,
		0.517460, 0.842915, 0.147406,
		37.851276, 36.378555, 21.995539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320553, 36.222057, 21.359396>,  <37.489052, 35.788513, 21.892355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320553, 36.222057, 21.359396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.671726, 36.360596, 21.491621>,  <37.882431, 36.443718, 21.570955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.671726, 36.360596, 21.491621>,  <37.320553, 36.222057, 21.359396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671726, 36.360596, 21.491621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369520, -0.051151, -0.927814,
		-0.304435, 0.936712, -0.172889,
		0.877938, 0.346345, 0.330562,
		37.935108, 36.464500, 21.590790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482761, 36.577908, 20.867241>,  <37.320553, 36.222057, 21.359396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482761, 36.577908, 20.867241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.838654, 36.555695, 21.048477>,  <38.052189, 36.542366, 21.157219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.838654, 36.555695, 21.048477>,  <37.482761, 36.577908, 20.867241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838654, 36.555695, 21.048477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453804, 0.000253, -0.891102,
		0.049374, 0.998457, 0.025427,
		0.889733, -0.055536, 0.453091,
		38.105572, 36.539032, 21.184404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904919, 36.929676, 20.497663>,  <37.482761, 36.577908, 20.867241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904919, 36.929676, 20.497663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.149136, 36.682011, 20.695200>,  <38.295666, 36.533413, 20.813723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.149136, 36.682011, 20.695200>,  <37.904919, 36.929676, 20.497663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149136, 36.682011, 20.695200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471373, -0.216994, -0.854822,
		0.636435, 0.754685, 0.159374,
		0.610538, -0.619164, 0.493841,
		38.332298, 36.496262, 20.843351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.403740, 37.381561, 35.996769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.752052, 37.195919, 36.061707>,  <33.961040, 37.084534, 36.100670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.752052, 37.195919, 36.061707>,  <33.403740, 37.381561, 35.996769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752052, 37.195919, 36.061707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185466, 0.004255, -0.982641,
		0.455354, 0.885772, 0.089780,
		0.870778, -0.464101, 0.162343,
		34.013287, 37.056690, 36.110409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802876, 37.781647, 35.612617>,  <33.403740, 37.381561, 35.996769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802876, 37.781647, 35.612617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006023, 37.441700, 35.668888>,  <34.127914, 37.237732, 35.702648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006023, 37.441700, 35.668888>,  <33.802876, 37.781647, 35.612617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006023, 37.441700, 35.668888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232636, -0.021919, -0.972317,
		0.829424, 0.526540, 0.186578,
		0.507874, -0.849868, 0.140672,
		34.158386, 37.186741, 35.711090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462822, 37.961575, 35.137737>,  <33.802876, 37.781647, 35.612617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462822, 37.961575, 35.137737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.424400, 37.571964, 35.219769>,  <34.401348, 37.338200, 35.268986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.424400, 37.571964, 35.219769>,  <34.462822, 37.961575, 35.137737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424400, 37.571964, 35.219769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330550, -0.225551, -0.916440,
		0.938888, -0.020237, 0.343628,
		-0.096052, -0.974021, 0.205078,
		34.395584, 37.279758, 35.281292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106632, 37.638844, 34.923134>,  <34.462822, 37.961575, 35.137737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106632, 37.638844, 34.923134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844482, 37.336773, 34.928829>,  <34.687195, 37.155533, 34.932247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844482, 37.336773, 34.928829>,  <35.106632, 37.638844, 34.923134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844482, 37.336773, 34.928829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332872, -0.305696, -0.892046,
		0.678000, -0.579883, 0.451721,
		-0.655371, -0.755173, 0.014235,
		34.647869, 37.110222, 34.933102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428040, 37.062725, 34.593033>,  <35.106632, 37.638844, 34.923134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428040, 37.062725, 34.593033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.038918, 36.970200, 34.588123>,  <34.805447, 36.914684, 34.585178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.038918, 36.970200, 34.588123>,  <35.428040, 37.062725, 34.593033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038918, 36.970200, 34.588123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085633, -0.309896, -0.946906,
		0.215233, -0.922202, 0.321276,
		-0.972801, -0.231317, -0.012271,
		34.747078, 36.900803, 34.584442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364292, 36.315495, 34.318054>,  <35.428040, 37.062725, 34.593033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364292, 36.315495, 34.318054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039478, 36.543701, 34.268879>,  <34.844589, 36.680626, 34.239372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039478, 36.543701, 34.268879>,  <35.364292, 36.315495, 34.318054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039478, 36.543701, 34.268879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039851, -0.155953, -0.986960,
		-0.582247, -0.806345, 0.103904,
		-0.812034, 0.570515, -0.122937,
		34.795868, 36.714855, 34.231998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834507, 35.835274, 34.076473>,  <35.364292, 36.315495, 34.318054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834507, 35.835274, 34.076473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.715031, 36.208786, 33.997646>,  <34.643345, 36.432892, 33.950352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.715031, 36.208786, 33.997646>,  <34.834507, 35.835274, 34.076473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715031, 36.208786, 33.997646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082022, -0.230849, -0.969526,
		-0.950818, -0.273427, 0.145544,
		-0.298694, 0.933781, -0.197069,
		34.625423, 36.488918, 33.938526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262154, 35.823883, 33.543697>,  <34.834507, 35.835274, 34.076473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262154, 35.823883, 33.543697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.375092, 36.204800, 33.497368>,  <34.442856, 36.433350, 33.469570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.375092, 36.204800, 33.497368>,  <34.262154, 35.823883, 33.543697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375092, 36.204800, 33.497368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297064, -0.028007, -0.954447,
		-0.912158, 0.303894, 0.274984,
		0.282349, 0.952294, -0.115823,
		34.459797, 36.490486, 33.462620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883858, 36.000252, 32.991001>,  <34.262154, 35.823883, 33.543697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883858, 36.000252, 32.991001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.156166, 36.288448, 33.043823>,  <34.319553, 36.461365, 33.075516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.156166, 36.288448, 33.043823>,  <33.883858, 36.000252, 32.991001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156166, 36.288448, 33.043823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020025, 0.198521, -0.979892,
		-0.732220, 0.664440, 0.149576,
		0.680774, 0.720492, 0.132056,
		34.360397, 36.504597, 33.083439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604568, 36.634178, 32.924095>,  <33.883858, 36.000252, 32.991001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604568, 36.634178, 32.924095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.989956, 36.713428, 32.852005>,  <34.221188, 36.760979, 32.808750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.989956, 36.713428, 32.852005>,  <33.604568, 36.634178, 32.924095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989956, 36.713428, 32.852005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203773, 0.105547, -0.973312,
		-0.173812, 0.974478, 0.142063,
		0.963465, 0.198122, -0.180227,
		34.278996, 36.772865, 32.797935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731812, 37.266621, 32.460899>,  <33.604568, 36.634178, 32.924095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731812, 37.266621, 32.460899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.044472, 37.025288, 32.397640>,  <34.232067, 36.880489, 32.359684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.044472, 37.025288, 32.397640>,  <33.731812, 37.266621, 32.460899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044472, 37.025288, 32.397640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215343, -0.023095, -0.976265,
		0.585359, 0.797156, -0.147976,
		0.781654, -0.603331, -0.158143,
		34.278969, 36.844288, 32.350197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029270, 37.558990, 31.847868>,  <33.731812, 37.266621, 32.460899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029270, 37.558990, 31.847868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164249, 37.183414, 31.874762>,  <34.245239, 36.958069, 31.890898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164249, 37.183414, 31.874762>,  <34.029270, 37.558990, 31.847868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164249, 37.183414, 31.874762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114442, -0.111812, -0.987118,
		0.934361, 0.325410, -0.145185,
		0.337452, -0.938939, 0.067232,
		34.265484, 36.901733, 31.894932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448624, 38.126606, 32.162361>,  <34.029270, 37.558990, 31.847868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448624, 38.126606, 32.162361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276608, 38.485039, 32.118366>,  <34.173397, 38.700100, 32.091969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276608, 38.485039, 32.118366>,  <34.448624, 38.126606, 32.162361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276608, 38.485039, 32.118366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047187, 0.099355, 0.993933,
		0.901575, 0.432623, -0.000443,
		-0.430042, 0.896084, -0.109990,
		34.147594, 38.753864, 32.085369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782303, 38.617203, 32.531338>,  <34.448624, 38.126606, 32.162361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782303, 38.617203, 32.531338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431267, 38.805744, 32.496330>,  <34.220646, 38.918869, 32.475327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431267, 38.805744, 32.496330>,  <34.782303, 38.617203, 32.531338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431267, 38.805744, 32.496330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020444, 0.219188, 0.975468,
		0.478975, 0.854273, -0.201994,
		-0.877591, 0.471354, -0.087520,
		34.167988, 38.947151, 32.470074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837791, 39.239483, 32.837753>,  <34.782303, 38.617203, 32.531338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837791, 39.239483, 32.837753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.446281, 39.161663, 32.863506>,  <34.211376, 39.114971, 32.878960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.446281, 39.161663, 32.863506>,  <34.837791, 39.239483, 32.837753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446281, 39.161663, 32.863506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000172, 0.313395, 0.949623,
		-0.204926, 0.929481, -0.306710,
		-0.978778, -0.194549, 0.064383,
		34.152649, 39.103298, 32.882820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570118, 39.754868, 33.154419>,  <34.837791, 39.239483, 32.837753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570118, 39.754868, 33.154419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.274212, 39.493519, 33.218731>,  <34.096668, 39.336708, 33.257317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.274212, 39.493519, 33.218731>,  <34.570118, 39.754868, 33.154419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274212, 39.493519, 33.218731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121558, 0.364786, 0.923123,
		-0.661790, 0.663354, -0.349280,
		-0.739769, -0.653371, 0.160776,
		34.052280, 39.297508, 33.266964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028107, 40.164604, 33.510300>,  <34.570118, 39.754868, 33.154419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028107, 40.164604, 33.510300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.946766, 39.779713, 33.582710>,  <33.897961, 39.548779, 33.626156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.946766, 39.779713, 33.582710>,  <34.028107, 40.164604, 33.510300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946766, 39.779713, 33.582710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195932, 0.221144, 0.955356,
		-0.959302, 0.158800, -0.233500,
		-0.203348, -0.962225, 0.181030,
		33.885761, 39.491047, 33.637020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374699, 40.189827, 33.857914>,  <34.028107, 40.164604, 33.510300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374699, 40.189827, 33.857914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540806, 39.833008, 33.929249>,  <33.640469, 39.618916, 33.972050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540806, 39.833008, 33.929249>,  <33.374699, 40.189827, 33.857914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540806, 39.833008, 33.929249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072118, 0.163136, 0.983964,
		-0.906837, -0.421466, 0.003412,
		0.415265, -0.892050, 0.178333,
		33.665386, 39.565392, 33.982750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973888, 39.900188, 34.320423>,  <33.374699, 40.189827, 33.857914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973888, 39.900188, 34.320423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.297421, 39.669975, 34.368664>,  <33.491539, 39.531845, 34.397610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.297421, 39.669975, 34.368664>,  <32.973888, 39.900188, 34.320423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297421, 39.669975, 34.368664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064341, 0.117249, 0.991016,
		-0.584507, -0.809327, 0.057804,
		0.808834, -0.575536, 0.120605,
		33.540070, 39.497314, 34.404846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760464, 39.328072, 34.777744>,  <32.973888, 39.900188, 34.320423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760464, 39.328072, 34.777744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.152462, 39.407440, 34.771652>,  <33.387661, 39.455059, 34.767998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.152462, 39.407440, 34.771652>,  <32.760464, 39.328072, 34.777744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152462, 39.407440, 34.771652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026381, 0.205378, 0.978327,
		0.197215, -0.958364, 0.206505,
		0.980005, 0.198388, -0.015221,
		33.446461, 39.466965, 34.767082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071545, 38.987942, 35.379044>,  <32.760464, 39.328072, 34.777744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071545, 38.987942, 35.379044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.365963, 39.238613, 35.276661>,  <33.542614, 39.389015, 35.215229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.365963, 39.238613, 35.276661>,  <33.071545, 38.987942, 35.379044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365963, 39.238613, 35.276661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038163, 0.339101, 0.939976,
		0.675856, -0.701633, 0.225677,
		0.736045, 0.626675, -0.255960,
		33.586777, 39.426617, 35.199875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491589, 38.984825, 35.976994>,  <33.071545, 38.987942, 35.379044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491589, 38.984825, 35.976994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.585781, 39.328285, 35.794888>,  <33.642296, 39.534363, 35.685623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.585781, 39.328285, 35.794888>,  <33.491589, 38.984825, 35.976994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585781, 39.328285, 35.794888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072199, 0.451690, 0.889249,
		0.969193, -0.242271, 0.044370,
		0.235481, 0.858651, -0.455266,
		33.656425, 39.585880, 35.658306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913197, 39.306019, 36.477726>,  <33.491589, 38.984825, 35.976994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913197, 39.306019, 36.477726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844696, 39.615536, 36.233788>,  <33.803596, 39.801247, 36.087425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844696, 39.615536, 36.233788>,  <33.913197, 39.306019, 36.477726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844696, 39.615536, 36.233788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113454, 0.630364, 0.767964,
		0.978673, 0.062324, -0.195740,
		-0.171250, 0.773794, -0.609850,
		33.793320, 39.847675, 36.050831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380772, 40.015514, 36.679207>,  <33.913197, 39.306019, 36.477726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380772, 40.015514, 36.679207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.053234, 40.102871, 36.466869>,  <33.856712, 40.155285, 36.339466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.053234, 40.102871, 36.466869>,  <34.380772, 40.015514, 36.679207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053234, 40.102871, 36.466869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222655, 0.731539, 0.644418,
		0.529068, 0.645875, -0.550393,
		-0.818848, 0.218394, -0.530841,
		33.807579, 40.168388, 36.307617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432415, 40.729996, 36.470242>,  <34.380772, 40.015514, 36.679207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432415, 40.729996, 36.470242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049477, 40.614498, 36.474602>,  <33.819714, 40.545200, 36.477219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049477, 40.614498, 36.474602>,  <34.432415, 40.729996, 36.470242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049477, 40.614498, 36.474602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219917, 0.752591, 0.620679,
		-0.187421, 0.591806, -0.783989,
		-0.957345, -0.288741, 0.010904,
		33.762272, 40.527878, 36.477871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080826, 41.319324, 36.457710>,  <34.432415, 40.729996, 36.470242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080826, 41.319324, 36.457710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.790401, 41.067757, 36.568916>,  <33.616146, 40.916817, 36.635639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.790401, 41.067757, 36.568916>,  <34.080826, 41.319324, 36.457710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790401, 41.067757, 36.568916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440615, 0.735919, 0.514084,
		-0.527917, 0.250757, -0.811434,
		-0.726059, -0.628924, 0.278017,
		33.572582, 40.879078, 36.652321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441998, 41.669403, 36.417656>,  <34.080826, 41.319324, 36.457710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441998, 41.669403, 36.417656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387745, 41.361294, 36.666904>,  <33.355194, 41.176426, 36.816452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387745, 41.361294, 36.666904>,  <33.441998, 41.669403, 36.417656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387745, 41.361294, 36.666904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369253, 0.622919, 0.689656,
		-0.919378, -0.136546, -0.368917,
		-0.135636, -0.770278, 0.623117,
		33.347054, 41.130211, 36.853840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724201, 41.920525, 35.835373>,  <33.441998, 41.669403, 36.417656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724201, 41.920525, 35.835373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.106140, 41.936768, 35.953102>,  <34.335304, 41.946514, 36.023739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.106140, 41.936768, 35.953102>,  <33.724201, 41.920525, 35.835373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106140, 41.936768, 35.953102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269696, 0.297119, -0.915961,
		-0.124646, 0.953977, 0.272750,
		0.954844, 0.040611, 0.294318,
		34.392593, 41.948952, 36.041397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982391, 42.516201, 35.708168>,  <33.724201, 41.920525, 35.835373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982391, 42.516201, 35.708168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.309937, 42.286667, 35.702782>,  <34.506462, 42.148945, 35.699551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.309937, 42.286667, 35.702782>,  <33.982391, 42.516201, 35.708168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309937, 42.286667, 35.702782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255629, 0.385583, -0.886555,
		0.513927, 0.722523, 0.462427,
		0.818861, -0.573834, -0.013464,
		34.555595, 42.114517, 35.698742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626888, 42.918320, 35.606098>,  <33.982391, 42.516201, 35.708168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626888, 42.918320, 35.606098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700764, 42.543266, 35.488304>,  <34.745090, 42.318233, 35.417625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700764, 42.543266, 35.488304>,  <34.626888, 42.918320, 35.606098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700764, 42.543266, 35.488304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311109, 0.340013, -0.887470,
		0.932256, 0.072289, 0.354504,
		0.184690, -0.937638, -0.294490,
		34.756172, 42.261974, 35.399956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137493, 43.004173, 35.188686>,  <34.626888, 42.918320, 35.606098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137493, 43.004173, 35.188686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.040581, 42.632198, 35.078037>,  <34.982433, 42.409016, 35.011646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.040581, 42.632198, 35.078037>,  <35.137493, 43.004173, 35.188686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040581, 42.632198, 35.078037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364293, 0.177062, -0.914297,
		0.899217, -0.322289, 0.295870,
		-0.242280, -0.929935, -0.276625,
		34.967896, 42.353218, 34.995049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704670, 42.651772, 34.806759>,  <35.137493, 43.004173, 35.188686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704670, 42.651772, 34.806759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.385109, 42.441944, 34.689060>,  <35.193371, 42.316048, 34.618443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.385109, 42.441944, 34.689060>,  <35.704670, 42.651772, 34.806759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385109, 42.441944, 34.689060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252489, 0.151529, -0.955661,
		0.545900, -0.837773, 0.011392,
		-0.798900, -0.524572, -0.294248,
		35.145439, 42.284573, 34.600784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951645, 42.163143, 34.242935>,  <35.704670, 42.651772, 34.806759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951645, 42.163143, 34.242935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.556152, 42.166889, 34.183170>,  <35.318855, 42.169136, 34.147312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.556152, 42.166889, 34.183170>,  <35.951645, 42.163143, 34.242935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556152, 42.166889, 34.183170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147903, -0.093396, -0.984582,
		-0.023172, -0.995585, 0.090959,
		-0.988730, 0.009361, -0.149414,
		35.259533, 42.169697, 34.138348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757065, 41.561146, 33.866589>,  <35.951645, 42.163143, 34.242935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757065, 41.561146, 33.866589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.481934, 41.840576, 33.787716>,  <35.316853, 42.008236, 33.740391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.481934, 41.840576, 33.787716>,  <35.757065, 41.561146, 33.866589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481934, 41.840576, 33.787716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258023, -0.018602, -0.965960,
		-0.678464, -0.715295, -0.167454,
		-0.687831, 0.698575, -0.197184,
		35.275585, 42.050148, 33.728561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285881, 41.273785, 33.435081>,  <35.757065, 41.561146, 33.866589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285881, 41.273785, 33.435081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.229675, 41.663376, 33.363953>,  <35.195950, 41.897129, 33.321278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.229675, 41.663376, 33.363953>,  <35.285881, 41.273785, 33.435081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229675, 41.663376, 33.363953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281412, -0.132904, -0.950339,
		-0.949243, -0.183580, -0.255415,
		-0.140518, 0.973979, -0.177819,
		35.187519, 41.955570, 33.310608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792294, 41.270290, 32.880325>,  <35.285881, 41.273785, 33.435081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792294, 41.270290, 32.880325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.947041, 41.639133, 32.883327>,  <35.039890, 41.860439, 32.885128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.947041, 41.639133, 32.883327>,  <34.792294, 41.270290, 32.880325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947041, 41.639133, 32.883327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380532, -0.152231, -0.912152,
		-0.839957, 0.355738, -0.409784,
		0.386869, 0.922104, 0.007503,
		35.063103, 41.915764, 32.885578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762760, 41.412464, 32.236904>,  <34.792294, 41.270290, 32.880325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762760, 41.412464, 32.236904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.990593, 41.726501, 32.334232>,  <35.127293, 41.914925, 32.392628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.990593, 41.726501, 32.334232>,  <34.762760, 41.412464, 32.236904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990593, 41.726501, 32.334232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403429, -0.009114, -0.914966,
		-0.716117, 0.619308, -0.321921,
		0.569580, 0.785095, 0.243320,
		35.161469, 41.962029, 32.407227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673828, 41.874714, 31.803362>,  <34.762760, 41.412464, 32.236904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673828, 41.874714, 31.803362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032867, 41.980419, 31.944490>,  <35.248291, 42.043842, 32.029167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032867, 41.980419, 31.944490>,  <34.673828, 41.874714, 31.803362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032867, 41.980419, 31.944490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389635, -0.101299, -0.915382,
		-0.206159, 0.959117, -0.193891,
		0.897599, 0.264261, 0.352821,
		35.302147, 42.059696, 32.050339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952312, 42.563049, 31.497480>,  <34.673828, 41.874714, 31.803362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952312, 42.563049, 31.497480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.256695, 42.331539, 31.614761>,  <35.439323, 42.192631, 31.685129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.256695, 42.331539, 31.614761>,  <34.952312, 42.563049, 31.497480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256695, 42.331539, 31.614761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336849, -0.033798, -0.940952,
		0.554513, 0.814784, 0.169242,
		0.760952, -0.578779, 0.293200,
		35.484982, 42.157906, 31.702721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360130, 42.759556, 30.966747>,  <34.952312, 42.563049, 31.497480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360130, 42.759556, 30.966747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.563770, 42.463253, 31.142065>,  <35.685955, 42.285473, 31.247255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.563770, 42.463253, 31.142065>,  <35.360130, 42.759556, 30.966747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563770, 42.463253, 31.142065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464837, -0.191949, -0.864339,
		0.724393, 0.643770, 0.246609,
		0.509099, -0.740754, 0.438295,
		35.716499, 42.241028, 31.273554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030357, 42.909443, 30.877422>,  <35.360130, 42.759556, 30.966747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030357, 42.909443, 30.877422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.032852, 42.512920, 30.929981>,  <36.034348, 42.275005, 30.961515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.032852, 42.512920, 30.929981>,  <36.030357, 42.909443, 30.877422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032852, 42.512920, 30.929981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591245, -0.102315, -0.799976,
		0.806468, 0.082676, 0.585469,
		0.006236, -0.991310, 0.131396,
		36.034721, 42.215527, 30.969400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654488, 42.725597, 30.949873>,  <36.030357, 42.909443, 30.877422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654488, 42.725597, 30.949873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499668, 42.371109, 30.848043>,  <36.406776, 42.158417, 30.786945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499668, 42.371109, 30.848043>,  <36.654488, 42.725597, 30.949873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499668, 42.371109, 30.848043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736697, -0.131188, -0.663376,
		0.554499, -0.444304, 0.703651,
		-0.387051, -0.886219, -0.254574,
		36.383553, 42.105244, 30.771671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222523, 42.152481, 30.891500>,  <36.654488, 42.725597, 30.949873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222523, 42.152481, 30.891500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913586, 41.999611, 30.688549>,  <36.728226, 41.907890, 30.566778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913586, 41.999611, 30.688549>,  <37.222523, 42.152481, 30.891500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913586, 41.999611, 30.688549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629357, -0.352205, -0.692720,
		0.086039, -0.854338, 0.512546,
		-0.772339, -0.382176, -0.507380,
		36.681885, 41.884956, 30.536335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559765, 41.572403, 30.630939>,  <37.222523, 42.152481, 30.891500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559765, 41.572403, 30.630939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.231571, 41.590816, 30.403017>,  <37.034653, 41.601864, 30.266264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.231571, 41.590816, 30.403017>,  <37.559765, 41.572403, 30.630939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231571, 41.590816, 30.403017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485079, -0.471348, -0.736566,
		-0.302485, -0.880745, 0.364405,
		-0.820488, 0.046034, -0.569807,
		36.985424, 41.604626, 30.232075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396236, 40.909561, 30.285265>,  <37.559765, 41.572403, 30.630939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396236, 40.909561, 30.285265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.251801, 41.195786, 30.046074>,  <37.165138, 41.367519, 29.902559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.251801, 41.195786, 30.046074>,  <37.396236, 40.909561, 30.285265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251801, 41.195786, 30.046074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668850, -0.248099, -0.700775,
		-0.649808, -0.653004, -0.389019,
		-0.361094, 0.715565, -0.597978,
		37.143471, 41.410454, 29.866680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311993, 40.629425, 29.639250>,  <37.396236, 40.909561, 30.285265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311993, 40.629425, 29.639250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.244343, 41.011158, 29.540747>,  <37.203754, 41.240200, 29.481646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.244343, 41.011158, 29.540747>,  <37.311993, 40.629425, 29.639250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244343, 41.011158, 29.540747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341637, -0.177603, -0.922899,
		-0.924490, -0.240214, -0.295999,
		-0.169123, 0.954334, -0.246258,
		37.193607, 41.297459, 29.466869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038429, 40.733669, 28.886673>,  <37.311993, 40.629425, 29.639250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038429, 40.733669, 28.886673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.196503, 41.092018, 28.967905>,  <37.291348, 41.307030, 29.016645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.196503, 41.092018, 28.967905>,  <37.038429, 40.733669, 28.886673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196503, 41.092018, 28.967905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452426, 0.002588, -0.891798,
		-0.799465, 0.444300, -0.404294,
		0.395180, 0.895874, 0.203082,
		37.315056, 41.360779, 29.028830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798393, 41.121468, 28.393497>,  <37.038429, 40.733669, 28.886673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798393, 41.121468, 28.393497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.132271, 41.279415, 28.547050>,  <37.332596, 41.374184, 28.639183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.132271, 41.279415, 28.547050>,  <36.798393, 41.121468, 28.393497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132271, 41.279415, 28.547050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421345, -0.009030, -0.906856,
		-0.354626, 0.918692, -0.173914,
		0.834691, 0.394873, 0.383884,
		37.382679, 41.397877, 28.662216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956509, 41.603394, 27.946033>,  <36.798393, 41.121468, 28.393497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956509, 41.603394, 27.946033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.303493, 41.527103, 28.129831>,  <37.511684, 41.481331, 28.240110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.303493, 41.527103, 28.129831>,  <36.956509, 41.603394, 27.946033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303493, 41.527103, 28.129831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470820, 0.016292, -0.882079,
		0.160746, 0.981509, 0.103928,
		0.867462, -0.190722, 0.459495,
		37.563732, 41.469887, 28.267679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461502, 41.885242, 27.591560>,  <36.956509, 41.603394, 27.946033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461502, 41.885242, 27.591560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714249, 41.662754, 27.807474>,  <37.865898, 41.529263, 27.937023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714249, 41.662754, 27.807474>,  <37.461502, 41.885242, 27.591560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714249, 41.662754, 27.807474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492010, -0.250276, -0.833839,
		0.598891, 0.792454, 0.115523,
		0.631867, -0.556218, 0.539784,
		37.903809, 41.495888, 27.969410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143379, 42.130470, 27.396099>,  <37.461502, 41.885242, 27.591560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143379, 42.130470, 27.396099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.188187, 41.763363, 27.548491>,  <38.215069, 41.543098, 27.639925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.188187, 41.763363, 27.548491>,  <38.143379, 42.130470, 27.396099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188187, 41.763363, 27.548491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725546, -0.186432, -0.662440,
		0.678996, 0.350622, 0.645003,
		0.112017, -0.917773, 0.380979,
		38.221790, 41.488029, 27.662785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837429, 42.030167, 27.562737>,  <38.143379, 42.130470, 27.396099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837429, 42.030167, 27.562737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.686810, 41.664494, 27.502754>,  <38.596439, 41.445091, 27.466764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.686810, 41.664494, 27.502754>,  <38.837429, 42.030167, 27.562737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686810, 41.664494, 27.502754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771031, -0.219533, -0.597760,
		0.513538, -0.340708, 0.787525,
		-0.376550, -0.914179, -0.149958,
		38.573845, 41.390240, 27.457767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439987, 41.523891, 27.579775>,  <38.837429, 42.030167, 27.562737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439987, 41.523891, 27.579775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.139530, 41.327065, 27.403753>,  <38.959255, 41.208969, 27.298140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.139530, 41.327065, 27.403753>,  <39.439987, 41.523891, 27.579775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139530, 41.327065, 27.403753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653301, -0.458438, -0.602522,
		0.094743, -0.740071, 0.665821,
		-0.751147, -0.492066, -0.440056,
		38.914185, 41.179443, 27.271736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597591, 40.798912, 27.448887>,  <39.439987, 41.523891, 27.579775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597591, 40.798912, 27.448887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.328941, 40.910126, 27.174189>,  <39.167751, 40.976856, 27.009371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.328941, 40.910126, 27.174189>,  <39.597591, 40.798912, 27.448887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328941, 40.910126, 27.174189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530547, -0.466507, -0.707736,
		-0.517150, -0.839682, 0.165804,
		-0.671622, 0.278038, -0.686745,
		39.127453, 40.993538, 26.968164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241753, 40.182423, 27.454771>,  <39.597591, 40.798912, 27.448887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241753, 40.182423, 27.454771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.598484, 40.004700, 27.420736>,  <39.812523, 39.898067, 27.400314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.598484, 40.004700, 27.420736>,  <39.241753, 40.182423, 27.454771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598484, 40.004700, 27.420736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059502, -0.071248, 0.995682,
		-0.448451, -0.893037, -0.037104,
		0.891824, -0.444307, -0.085089,
		39.866032, 39.871407, 27.395210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180172, 39.490204, 27.669510>,  <39.241753, 40.182423, 27.454771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180172, 39.490204, 27.669510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.541061, 39.658070, 27.709248>,  <39.757595, 39.758789, 27.733091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.541061, 39.658070, 27.709248>,  <39.180172, 39.490204, 27.669510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541061, 39.658070, 27.709248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095031, -0.031236, 0.994984,
		0.420663, -0.907141, 0.011700,
		0.902226, 0.419665, 0.099347,
		39.811729, 39.783970, 27.739052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523468, 39.056171, 28.154375>,  <39.180172, 39.490204, 27.669510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523468, 39.056171, 28.154375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.724197, 39.402046, 28.163303>,  <39.844635, 39.609570, 28.168659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.724197, 39.402046, 28.163303>,  <39.523468, 39.056171, 28.154375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724197, 39.402046, 28.163303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077106, -0.070419, 0.994533,
		0.861527, -0.497358, -0.102010,
		0.501822, 0.864683, 0.022319,
		39.874744, 39.661449, 28.169998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073883, 39.012737, 28.740690>,  <39.523468, 39.056171, 28.154375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073883, 39.012737, 28.740690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.065090, 39.406532, 28.671064>,  <40.059814, 39.642811, 28.629290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.065090, 39.406532, 28.671064>,  <40.073883, 39.012737, 28.740690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065090, 39.406532, 28.671064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138067, 0.175428, 0.974763,
		0.990179, -0.002606, -0.139781,
		-0.021982, 0.984489, -0.174065,
		40.058495, 39.701878, 28.618845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675579, 39.281239, 28.888281>,  <40.073883, 39.012737, 28.740690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675579, 39.281239, 28.888281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.396927, 39.566570, 28.918926>,  <40.229736, 39.737770, 28.937313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.396927, 39.566570, 28.918926>,  <40.675579, 39.281239, 28.888281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396927, 39.566570, 28.918926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146821, 0.037218, 0.988463,
		0.702246, 0.699842, -0.130659,
		-0.696631, 0.713327, 0.076615,
		40.187939, 39.780567, 28.941910>
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
