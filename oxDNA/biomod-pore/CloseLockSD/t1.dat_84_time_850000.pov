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
	<4.658504, 15.138906, 14.824686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.338470, 14.903255, 14.869933>,  <4.146450, 14.761866, 14.897081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.338470, 14.903255, 14.869933>,  <4.658504, 15.138906, 14.824686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.338470, 14.903255, 14.869933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041194, 0.134162, 0.990103,
		-0.598471, 0.796826, -0.083072,
		-0.800085, -0.589126, 0.113117,
		4.098445, 14.726518, 14.903868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.140488, 15.601092, 15.081671>,  <4.658504, 15.138906, 14.824686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.140488, 15.601092, 15.081671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.165150, 15.215796, 15.186261>,  <4.179947, 14.984619, 15.249016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.165150, 15.215796, 15.186261>,  <4.140488, 15.601092, 15.081671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.165150, 15.215796, 15.186261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294106, 0.267875, 0.917466,
		-0.953782, 0.020336, 0.299810,
		0.061654, -0.963239, 0.261476,
		4.183646, 14.926825, 15.264704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.907732, 15.494188, 15.807781>,  <4.140488, 15.601092, 15.081671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.907732, 15.494188, 15.807781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.134356, 15.170961, 15.743237>,  <4.270331, 14.977025, 15.704512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.134356, 15.170961, 15.743237>,  <3.907732, 15.494188, 15.807781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.134356, 15.170961, 15.743237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446336, 0.136334, 0.884419,
		-0.692672, -0.573096, 0.437911,
		0.566560, -0.808068, -0.161359,
		4.304325, 14.928541, 15.694830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.199069, 16.202240, 16.147528>,  <3.907732, 15.494188, 15.807781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.199069, 16.202240, 16.147528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.591778, 16.273390, 16.174307>,  <4.827404, 16.316080, 16.190374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.591778, 16.273390, 16.174307>,  <4.199069, 16.202240, 16.147528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.591778, 16.273390, 16.174307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126474, 0.874384, -0.468462,
		-0.141864, 0.451456, 0.880944,
		0.981773, 0.177874, 0.066947,
		4.886310, 16.326752, 16.194391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.354779, 16.842939, 16.476460>,  <4.199069, 16.202240, 16.147528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.354779, 16.842939, 16.476460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.618316, 16.734861, 16.195627>,  <4.776439, 16.670013, 16.027128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.618316, 16.734861, 16.195627>,  <4.354779, 16.842939, 16.476460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.618316, 16.734861, 16.195627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057198, 0.912579, -0.404881,
		0.750102, 0.306911, 0.585792,
		0.658844, -0.270196, -0.702082,
		4.815969, 16.653803, 15.985003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.817113, 17.360107, 16.484537>,  <4.354779, 16.842939, 16.476460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.817113, 17.360107, 16.484537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.869585, 17.198612, 16.122368>,  <4.901067, 17.101715, 15.905066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.869585, 17.198612, 16.122368>,  <4.817113, 17.360107, 16.484537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.869585, 17.198612, 16.122368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007108, 0.912907, -0.408105,
		0.991333, 0.059970, 0.116885,
		0.131179, -0.403738, -0.905421,
		4.908938, 17.077492, 15.850741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.304276, 17.727543, 16.134859>,  <4.817113, 17.360107, 16.484537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.304276, 17.727543, 16.134859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.094703, 17.556543, 15.840177>,  <4.968958, 17.453943, 15.663367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.094703, 17.556543, 15.840177>,  <5.304276, 17.727543, 16.134859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.094703, 17.556543, 15.840177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102993, 0.826781, -0.553015,
		0.845513, -0.365616, -0.389144,
		-0.523928, -0.427502, -0.736709,
		4.937522, 17.428293, 15.619164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.509796, 18.112022, 15.599600>,  <5.304276, 17.727543, 16.134859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.509796, 18.112022, 15.599600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.249320, 17.903824, 15.378680>,  <5.093035, 17.778904, 15.246128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.249320, 17.903824, 15.378680>,  <5.509796, 18.112022, 15.599600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.249320, 17.903824, 15.378680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036035, 0.748133, -0.662569,
		0.758068, -0.411549, -0.505926,
		-0.651179, -0.520504, -0.552305,
		5.053963, 17.747675, 15.212991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.799316, 18.026855, 14.940469>,  <5.509796, 18.112022, 15.599600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.799316, 18.026855, 14.940469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.401050, 17.998890, 14.915945>,  <5.162089, 17.982111, 14.901231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.401050, 17.998890, 14.915945>,  <5.799316, 18.026855, 14.940469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.401050, 17.998890, 14.915945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012672, 0.551169, -0.834298,
		0.092120, -0.831460, -0.547895,
		-0.995667, -0.069913, -0.061309,
		5.102349, 17.977917, 14.897552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.615962, 17.865040, 14.233814>,  <5.799316, 18.026855, 14.940469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.615962, 17.865040, 14.233814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.295920, 18.050163, 14.386466>,  <5.103895, 18.161238, 14.478057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.295920, 18.050163, 14.386466>,  <5.615962, 17.865040, 14.233814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.295920, 18.050163, 14.386466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088792, 0.537814, -0.838375,
		-0.593253, -0.704673, -0.389214,
		-0.800105, 0.462809, 0.381629,
		5.055889, 18.189007, 14.500955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.067056, 17.817051, 13.693786>,  <5.615962, 17.865040, 14.233814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.067056, 17.817051, 13.693786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.955415, 18.115818, 13.935186>,  <4.888430, 18.295078, 14.080027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.955415, 18.115818, 13.935186>,  <5.067056, 17.817051, 13.693786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.955415, 18.115818, 13.935186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057895, 0.614246, -0.786988,
		-0.958514, -0.254591, -0.128196,
		-0.279103, 0.746917, 0.603503,
		4.871684, 18.339893, 14.116238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.450693, 18.073870, 13.410348>,  <5.067056, 17.817051, 13.693786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.450693, 18.073870, 13.410348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.621327, 18.349125, 13.645121>,  <4.723708, 18.514278, 13.785984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.621327, 18.349125, 13.645121>,  <4.450693, 18.073870, 13.410348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.621327, 18.349125, 13.645121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165149, 0.697294, -0.697500,
		-0.889241, 0.200612, 0.411101,
		0.426586, 0.688139, 0.586932,
		4.749303, 18.555567, 13.821200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.119537, 18.509886, 13.087293>,  <4.450693, 18.073870, 13.410348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.119537, 18.509886, 13.087293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.405186, 18.699547, 13.293287>,  <4.576576, 18.813343, 13.416883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.405186, 18.699547, 13.293287>,  <4.119537, 18.509886, 13.087293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.405186, 18.699547, 13.293287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061318, 0.690475, -0.720753,
		-0.697330, 0.546284, 0.464010,
		0.714122, 0.474151, 0.514986,
		4.619423, 18.841793, 13.447783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.962185, 19.182398, 13.230688>,  <4.119537, 18.509886, 13.087293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.962185, 19.182398, 13.230688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.361254, 19.180307, 13.257885>,  <4.600696, 19.179052, 13.274203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.361254, 19.180307, 13.257885>,  <3.962185, 19.182398, 13.230688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.361254, 19.180307, 13.257885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047639, 0.766843, -0.640064,
		-0.048795, 0.641813, 0.765307,
		0.997672, -0.005227, 0.067993,
		4.660556, 19.178740, 13.278283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.114114, 19.843864, 13.380344>,  <3.962185, 19.182398, 13.230688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.114114, 19.843864, 13.380344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.465466, 19.728165, 13.228142>,  <4.676277, 19.658745, 13.136820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.465466, 19.728165, 13.228142>,  <4.114114, 19.843864, 13.380344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.465466, 19.728165, 13.228142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075425, 0.870007, -0.487237,
		0.471976, 0.399279, 0.786012,
		0.878379, -0.289249, -0.380506,
		4.728979, 19.641390, 13.113990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.482877, 20.478748, 13.355483>,  <4.114114, 19.843864, 13.380344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.482877, 20.478748, 13.355483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.714255, 20.246174, 13.126631>,  <4.853082, 20.106628, 12.989320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.714255, 20.246174, 13.126631>,  <4.482877, 20.478748, 13.355483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.714255, 20.246174, 13.126631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231720, 0.789609, -0.568176,
		0.782117, 0.196085, 0.591476,
		0.578445, -0.581437, -0.572130,
		4.887788, 20.071743, 12.954991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.120608, 20.817913, 13.316924>,  <4.482877, 20.478748, 13.355483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.120608, 20.817913, 13.316924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.128077, 20.573164, 13.000629>,  <5.132559, 20.426315, 12.810852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.128077, 20.573164, 13.000629>,  <5.120608, 20.817913, 13.316924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.128077, 20.573164, 13.000629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289776, 0.760242, -0.581431,
		0.956912, -0.218279, 0.191502,
		0.018673, -0.611871, -0.790737,
		5.133679, 20.389603, 12.763409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.768798, 20.913939, 12.968051>,  <5.120608, 20.817913, 13.316924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.768798, 20.913939, 12.968051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.520956, 20.770714, 12.688657>,  <5.372251, 20.684778, 12.521020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.520956, 20.770714, 12.688657>,  <5.768798, 20.913939, 12.968051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.520956, 20.770714, 12.688657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306873, 0.708551, -0.635440,
		0.722443, -0.608066, -0.329138,
		-0.619600, -0.358066, -0.698487,
		5.335075, 20.663296, 12.479111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.074790, 20.916338, 12.405636>,  <5.768798, 20.913939, 12.968051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.074790, 20.916338, 12.405636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.710952, 20.906336, 12.239738>,  <5.492650, 20.900335, 12.140199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.710952, 20.906336, 12.239738>,  <6.074790, 20.916338, 12.405636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.710952, 20.906336, 12.239738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258180, 0.748081, -0.611325,
		0.325551, -0.663136, -0.673993,
		-0.909593, -0.025006, -0.414747,
		5.438074, 20.898834, 12.115314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.247670, 20.987663, 11.743521>,  <6.074790, 20.916338, 12.405636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.247670, 20.987663, 11.743521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.862399, 21.092319, 11.768291>,  <5.631237, 21.155113, 11.783154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.862399, 21.092319, 11.768291>,  <6.247670, 20.987663, 11.743521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.862399, 21.092319, 11.768291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192930, 0.832977, -0.518582,
		-0.187267, -0.487539, -0.852782,
		-0.963176, 0.261641, 0.061928,
		5.573446, 21.170813, 11.786870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.116428, 21.399107, 11.092412>,  <6.247670, 20.987663, 11.743521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.116428, 21.399107, 11.092412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.800416, 21.472164, 11.326505>,  <5.610810, 21.515999, 11.466960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.800416, 21.472164, 11.326505>,  <6.116428, 21.399107, 11.092412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.800416, 21.472164, 11.326505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134993, 0.879338, -0.456664,
		-0.598024, -0.439779, -0.670046,
		-0.790028, 0.182644, 0.585232,
		5.563408, 21.526957, 11.502074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.552193, 21.504189, 10.665069>,  <6.116428, 21.399107, 11.092412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.552193, 21.504189, 10.665069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.457568, 21.696512, 11.002793>,  <5.400794, 21.811907, 11.205428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.457568, 21.696512, 11.002793>,  <5.552193, 21.504189, 10.665069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.457568, 21.696512, 11.002793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086067, 0.855190, -0.511120,
		-0.967797, -0.193578, -0.160923,
		-0.236561, 0.480810, 0.844311,
		5.386600, 21.840755, 11.256086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.010111, 22.119637, 10.600731>,  <5.552193, 21.504189, 10.665069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.010111, 22.119637, 10.600731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.211432, 22.222538, 10.930702>,  <5.332224, 22.284279, 11.128685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.211432, 22.222538, 10.930702>,  <5.010111, 22.119637, 10.600731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.211432, 22.222538, 10.930702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238380, 0.876276, -0.418706,
		-0.830580, 0.407382, 0.379706,
		0.503301, 0.257254, 0.824929,
		5.362422, 22.299715, 11.178181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.683642, 22.830509, 10.763607>,  <5.010111, 22.119637, 10.600731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.683642, 22.830509, 10.763607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.018591, 22.791739, 10.978795>,  <5.219561, 22.768476, 11.107907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.018591, 22.791739, 10.978795>,  <4.683642, 22.830509, 10.763607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.018591, 22.791739, 10.978795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238432, 0.950363, -0.199899,
		-0.491890, 0.295659, 0.818920,
		0.837373, -0.096929, 0.537969,
		5.269804, 22.762659, 11.140185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.752306, 23.402931, 11.333784>,  <4.683642, 22.830509, 10.763607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.752306, 23.402931, 11.333784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.114474, 23.254070, 11.252083>,  <5.331775, 23.164755, 11.203062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.114474, 23.254070, 11.252083>,  <4.752306, 23.402931, 11.333784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.114474, 23.254070, 11.252083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326488, 0.917965, -0.225270,
		0.271331, 0.137278, 0.952646,
		0.905420, -0.372150, -0.204253,
		5.386100, 23.142426, 11.190807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.503809, 23.758749, 11.691380>,  <4.752306, 23.402931, 11.333784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.503809, 23.758749, 11.691380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.524593, 23.594976, 11.327035>,  <5.537064, 23.496714, 11.108428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.524593, 23.594976, 11.327035>,  <5.503809, 23.758749, 11.691380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.524593, 23.594976, 11.327035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341573, 0.864368, -0.369048,
		0.938418, -0.291949, 0.184763,
		0.051960, -0.409431, -0.910860,
		5.540181, 23.472147, 11.053777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.086998, 23.853523, 12.235068>,  <5.503809, 23.758749, 11.691380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.086998, 23.853523, 12.235068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.853293, 23.774771, 12.549997>,  <5.713070, 23.727520, 12.738955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.853293, 23.774771, 12.549997>,  <6.086998, 23.853523, 12.235068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.853293, 23.774771, 12.549997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549530, 0.617912, 0.562318,
		-0.597205, 0.761198, -0.252831,
		-0.584263, -0.196881, 0.787321,
		5.678014, 23.715706, 12.786194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.787346, 24.571369, 12.480958>,  <6.086998, 23.853523, 12.235068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.787346, 24.571369, 12.480958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.837149, 24.270201, 12.739449>,  <5.867031, 24.089500, 12.894543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.837149, 24.270201, 12.739449>,  <5.787346, 24.571369, 12.480958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.837149, 24.270201, 12.739449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678450, 0.539850, 0.498264,
		-0.724019, 0.376395, 0.578034,
		0.124508, -0.752920, 0.646227,
		5.874501, 24.044325, 12.933316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.463314, 24.596718, 12.312963>,  <5.787346, 24.571369, 12.480958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.463314, 24.596718, 12.312963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.704474, 24.280289, 12.354372>,  <6.849171, 24.090431, 12.379218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.704474, 24.280289, 12.354372>,  <6.463314, 24.596718, 12.312963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.704474, 24.280289, 12.354372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763295, 0.534181, -0.363362,
		0.232145, 0.298091, 0.925878,
		0.602901, -0.791071, 0.103524,
		6.885345, 24.042967, 12.385429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.002882, 24.818155, 12.679425>,  <6.463314, 24.596718, 12.312963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.002882, 24.818155, 12.679425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.101131, 24.506424, 12.448836>,  <7.160081, 24.319386, 12.310483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.101131, 24.506424, 12.448836>,  <7.002882, 24.818155, 12.679425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.101131, 24.506424, 12.448836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672888, 0.565149, -0.477314,
		0.697775, -0.270660, 0.663214,
		0.245625, -0.779326, -0.576471,
		7.174819, 24.272627, 12.275895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.762371, 24.691744, 12.735992>,  <7.002882, 24.818155, 12.679425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.762371, 24.691744, 12.735992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.658666, 24.546089, 12.378181>,  <7.596442, 24.458696, 12.163493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.658666, 24.546089, 12.378181>,  <7.762371, 24.691744, 12.735992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.658666, 24.546089, 12.378181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784346, 0.461052, -0.415010,
		0.563547, -0.809218, 0.166077,
		-0.259264, -0.364139, -0.894531,
		7.580886, 24.436848, 12.109821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.390339, 24.333212, 12.401542>,  <7.762371, 24.691744, 12.735992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.390339, 24.333212, 12.401542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.128494, 24.497984, 12.147991>,  <7.971387, 24.596848, 11.995861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.128494, 24.497984, 12.147991>,  <8.390339, 24.333212, 12.401542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.128494, 24.497984, 12.147991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730791, 0.559409, -0.391160,
		0.193466, -0.719288, -0.667230,
		-0.654611, 0.411930, -0.633875,
		7.932111, 24.621563, 11.957829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.406333, 24.010386, 13.157779>,  <8.390339, 24.333212, 12.401542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.406333, 24.010386, 13.157779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.013406, 23.947767, 13.198851>,  <7.777649, 23.910196, 13.223494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.013406, 23.947767, 13.198851>,  <8.406333, 24.010386, 13.157779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.013406, 23.947767, 13.198851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186952, 0.791207, -0.582272,
		0.009911, -0.591173, -0.806484,
		-0.982319, -0.156545, 0.102680,
		7.718710, 23.900805, 13.229654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.979502, 23.967646, 13.584973>,  <8.406333, 24.010386, 13.157779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.979502, 23.967646, 13.584973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.917814, 23.648479, 13.818056>,  <8.880801, 23.456980, 13.957906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.917814, 23.648479, 13.818056>,  <8.979502, 23.967646, 13.584973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.917814, 23.648479, 13.818056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014592, -0.587858, -0.808833,
		0.987929, -0.133241, 0.079016,
		-0.154220, -0.797916, 0.582706,
		8.871549, 23.409105, 13.992867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.369517, 23.717295, 14.230700>,  <8.979502, 23.967646, 13.584973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.369517, 23.717295, 14.230700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.077226, 23.550236, 14.446702>,  <8.901851, 23.450001, 14.576303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.077226, 23.550236, 14.446702>,  <9.369517, 23.717295, 14.230700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.077226, 23.550236, 14.446702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496037, -0.868302, -0.000322,
		0.469022, 0.267627, 0.841662,
		-0.730730, -0.417646, 0.540005,
		8.858006, 23.424942, 14.608704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.652314, 23.021860, 14.556087>,  <9.369517, 23.717295, 14.230700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.652314, 23.021860, 14.556087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.256232, 22.988451, 14.600841>,  <9.018583, 22.968407, 14.627692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.256232, 22.988451, 14.600841>,  <9.652314, 23.021860, 14.556087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.256232, 22.988451, 14.600841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092307, -0.992842, 0.075790,
		0.104752, 0.085375, 0.990827,
		-0.990205, -0.083521, 0.111883,
		8.959170, 22.963394, 14.634405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.433338, 22.812902, 15.271917>,  <9.652314, 23.021860, 14.556087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.433338, 22.812902, 15.271917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.169169, 22.705173, 14.991545>,  <9.010668, 22.640535, 14.823321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.169169, 22.705173, 14.991545>,  <9.433338, 22.812902, 15.271917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.169169, 22.705173, 14.991545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300977, -0.950143, 0.081498,
		-0.687935, -0.157141, 0.708557,
		-0.660423, -0.269325, -0.700932,
		8.971043, 22.624376, 14.781265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.094552, 22.258423, 15.510015>,  <9.433338, 22.812902, 15.271917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.094552, 22.258423, 15.510015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.013636, 22.230690, 15.119268>,  <8.965086, 22.214050, 14.884820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.013636, 22.230690, 15.119268>,  <9.094552, 22.258423, 15.510015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.013636, 22.230690, 15.119268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014107, -0.997181, 0.073694,
		-0.979224, 0.028688, 0.200742,
		-0.202291, -0.069331, -0.976868,
		8.952949, 22.209890, 14.826208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.491252, 21.716671, 15.493501>,  <9.094552, 22.258423, 15.510015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.491252, 21.716671, 15.493501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.595888, 21.726616, 15.107557>,  <8.658670, 21.732584, 14.875991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.595888, 21.726616, 15.107557>,  <8.491252, 21.716671, 15.493501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.595888, 21.726616, 15.107557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156962, -0.985265, -0.067946,
		-0.952331, 0.169220, -0.253834,
		0.261591, 0.024865, -0.964859,
		8.674365, 21.734076, 14.818100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.057997, 21.300646, 15.174273>,  <8.491252, 21.716671, 15.493501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.057997, 21.300646, 15.174273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.335329, 21.297880, 14.886038>,  <8.501728, 21.296221, 14.713097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.335329, 21.297880, 14.886038>,  <8.057997, 21.300646, 15.174273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.335329, 21.297880, 14.886038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341767, -0.883496, -0.320360,
		-0.634420, 0.468388, -0.614918,
		0.693331, -0.006916, -0.720587,
		8.543328, 21.295805, 14.669862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.744878, 21.208008, 14.570118>,  <8.057997, 21.300646, 15.174273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.744878, 21.208008, 14.570118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.123471, 21.103256, 14.494658>,  <8.350627, 21.040405, 14.449383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.123471, 21.103256, 14.494658>,  <7.744878, 21.208008, 14.570118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.123471, 21.103256, 14.494658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313178, -0.886502, -0.340637,
		-0.078031, 0.381488, -0.921074,
		0.946483, -0.261880, -0.188648,
		8.407416, 21.024693, 14.438064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.693045, 20.779350, 13.940780>,  <7.744878, 21.208008, 14.570118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.693045, 20.779350, 13.940780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.053212, 20.712301, 14.101355>,  <8.269312, 20.672071, 14.197700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.053212, 20.712301, 14.101355>,  <7.693045, 20.779350, 13.940780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.053212, 20.712301, 14.101355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170338, -0.984953, -0.029207,
		0.400292, -0.042081, -0.915421,
		0.900417, -0.167623, 0.401437,
		8.323338, 20.662014, 14.221786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.950130, 20.252943, 13.619727>,  <7.693045, 20.779350, 13.940780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.950130, 20.252943, 13.619727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.157627, 20.225134, 13.960567>,  <8.282125, 20.208448, 14.165071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.157627, 20.225134, 13.960567>,  <7.950130, 20.252943, 13.619727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.157627, 20.225134, 13.960567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043954, -0.997539, -0.054630,
		0.853800, -0.009115, -0.520521,
		0.518742, -0.069522, 0.852099,
		8.313250, 20.204277, 14.216196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.430527, 19.772005, 13.447051>,  <7.950130, 20.252943, 13.619727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.430527, 19.772005, 13.447051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.408642, 19.797066, 13.845665>,  <8.395511, 19.812101, 14.084833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.408642, 19.797066, 13.845665>,  <8.430527, 19.772005, 13.447051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.408642, 19.797066, 13.845665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054633, -0.996347, 0.065639,
		0.997006, 0.058035, 0.051090,
		-0.054713, 0.062651, 0.996535,
		8.392228, 19.815861, 14.144626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.789833, 19.169950, 13.584525>,  <8.430527, 19.772005, 13.447051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.789833, 19.169950, 13.584525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.604286, 19.260096, 13.927230>,  <8.492958, 19.314182, 14.132853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.604286, 19.260096, 13.927230>,  <8.789833, 19.169950, 13.584525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.604286, 19.260096, 13.927230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100803, -0.947395, 0.303778,
		0.880151, 0.227276, 0.416748,
		-0.463867, 0.225361, 0.856761,
		8.465126, 19.327703, 14.184258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.089764, 18.787090, 14.152299>,  <8.789833, 19.169950, 13.584525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.089764, 18.787090, 14.152299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.716865, 18.877096, 14.265637>,  <8.493125, 18.931099, 14.333641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.716865, 18.877096, 14.265637>,  <9.089764, 18.787090, 14.152299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.716865, 18.877096, 14.265637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123806, -0.934213, 0.334543,
		0.339983, 0.276796, 0.898774,
		-0.932247, 0.225013, 0.283347,
		8.437191, 18.944599, 14.350641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.906771, 18.206768, 14.563048>,  <9.089764, 18.787090, 14.152299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.906771, 18.206768, 14.563048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.542337, 18.366758, 14.523160>,  <8.323677, 18.462753, 14.499227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.542337, 18.366758, 14.523160>,  <8.906771, 18.206768, 14.563048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.542337, 18.366758, 14.523160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410981, -0.900108, 0.144571,
		-0.031935, 0.172700, 0.984457,
		-0.911084, 0.399976, -0.099722,
		8.269012, 18.486752, 14.493243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.420390, 17.893797, 15.076674>,  <8.906771, 18.206768, 14.563048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.420390, 17.893797, 15.076674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.195606, 18.034998, 14.777451>,  <8.060736, 18.119719, 14.597917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.195606, 18.034998, 14.777451>,  <8.420390, 17.893797, 15.076674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.195606, 18.034998, 14.777451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449695, -0.889420, -0.081886,
		-0.694245, 0.290382, 0.658561,
		-0.561959, 0.353001, -0.748059,
		8.027019, 18.140898, 14.553033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.650513, 17.861158, 15.310019>,  <8.420390, 17.893797, 15.076674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.650513, 17.861158, 15.310019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.693051, 17.844566, 14.912633>,  <7.718574, 17.834612, 14.674202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.693051, 17.844566, 14.912633>,  <7.650513, 17.861158, 15.310019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.693051, 17.844566, 14.912633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610241, -0.791558, -0.032274,
		-0.785046, 0.609685, -0.109489,
		0.106344, -0.041478, -0.993464,
		7.724954, 17.832123, 14.614594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.072566, 17.585720, 15.198035>,  <7.650513, 17.861158, 15.310019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.072566, 17.585720, 15.198035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.276441, 17.544853, 14.856327>,  <7.398766, 17.520332, 14.651302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.276441, 17.544853, 14.856327>,  <7.072566, 17.585720, 15.198035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.276441, 17.544853, 14.856327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431859, -0.889157, -0.151321,
		-0.744121, 0.446051, -0.497315,
		0.509688, -0.102168, -0.854271,
		7.429348, 17.514202, 14.600045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.483885, 17.253048, 14.821614>,  <7.072566, 17.585720, 15.198035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.483885, 17.253048, 14.821614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.811628, 17.188244, 14.601648>,  <7.008274, 17.149361, 14.469668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.811628, 17.188244, 14.601648>,  <6.483885, 17.253048, 14.821614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.811628, 17.188244, 14.601648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354607, -0.896940, -0.264106,
		-0.450452, 0.411401, -0.792365,
		0.819357, -0.162011, -0.549915,
		7.057436, 17.139641, 14.436674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.232292, 17.135967, 14.181665>,  <6.483885, 17.253048, 14.821614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.232292, 17.135967, 14.181665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.586722, 16.953766, 14.216047>,  <6.799380, 16.844446, 14.236676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.586722, 16.953766, 14.216047>,  <6.232292, 17.135967, 14.181665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.586722, 16.953766, 14.216047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407581, -0.853917, -0.323580,
		0.220790, 0.251682, -0.942289,
		0.886075, -0.455502, 0.085956,
		6.852545, 16.817116, 14.241834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.243667, 16.751017, 13.579529>,  <6.232292, 17.135967, 14.181665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.243667, 16.751017, 13.579529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.519050, 16.579641, 13.813611>,  <6.684280, 16.476816, 13.954061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.519050, 16.579641, 13.813611>,  <6.243667, 16.751017, 13.579529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.519050, 16.579641, 13.813611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325680, -0.903571, -0.278374,
		0.648041, 0.001060, -0.761605,
		0.688459, -0.428437, 0.585205,
		6.725588, 16.451111, 13.989173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.667577, 16.232338, 13.203729>,  <6.243667, 16.751017, 13.579529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.667577, 16.232338, 13.203729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.693981, 16.128735, 13.589175>,  <6.709823, 16.066572, 13.820443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.693981, 16.128735, 13.589175>,  <6.667577, 16.232338, 13.203729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.693981, 16.128735, 13.589175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227837, -0.944123, -0.238164,
		0.971459, -0.203826, -0.121333,
		0.066010, -0.259011, 0.963616,
		6.713784, 16.051031, 13.878260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.783226, 15.605109, 13.139066>,  <6.667577, 16.232338, 13.203729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.783226, 15.605109, 13.139066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.683196, 15.646162, 13.524175>,  <6.623178, 15.670794, 13.755239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.683196, 15.646162, 13.524175>,  <6.783226, 15.605109, 13.139066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.683196, 15.646162, 13.524175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283119, -0.958657, 0.028654,
		0.925908, -0.265413, 0.268794,
		-0.250076, 0.102632, 0.962771,
		6.608173, 15.676951, 13.813006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.124846, 15.090442, 13.501789>,  <6.783226, 15.605109, 13.139066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.124846, 15.090442, 13.501789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.811703, 15.168409, 13.738143>,  <6.623818, 15.215190, 13.879955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.811703, 15.168409, 13.738143>,  <7.124846, 15.090442, 13.501789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.811703, 15.168409, 13.738143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197809, -0.978362, 0.060666,
		0.589923, -0.069389, 0.804472,
		-0.782855, 0.194920, 0.590884,
		6.576847, 15.226885, 13.915408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.017753, 14.557876, 14.010473>,  <7.124846, 15.090442, 13.501789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.017753, 14.557876, 14.010473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.657054, 14.725492, 13.968037>,  <6.440635, 14.826063, 13.942575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.657054, 14.725492, 13.968037>,  <7.017753, 14.557876, 14.010473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.657054, 14.725492, 13.968037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419054, -0.907663, -0.023267,
		-0.106044, 0.023477, 0.994084,
		-0.901747, 0.419043, -0.106090,
		6.386530, 14.851205, 13.936210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.591148, 14.135200, 14.555653>,  <7.017753, 14.557876, 14.010473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.591148, 14.135200, 14.555653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.419159, 14.289204, 14.228999>,  <6.315966, 14.381606, 14.033007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.419159, 14.289204, 14.228999>,  <6.591148, 14.135200, 14.555653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.419159, 14.289204, 14.228999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455109, -0.873616, -0.172253,
		-0.779743, 0.297594, 0.550852,
		-0.429972, 0.385011, -0.816634,
		6.290167, 14.404707, 13.984009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.956036, 13.654145, 14.950428>,  <6.591148, 14.135200, 14.555653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.956036, 13.654145, 14.950428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.331585, 13.701129, 15.079868>,  <7.556915, 13.729319, 15.157533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.331585, 13.701129, 15.079868>,  <6.956036, 13.654145, 14.950428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.331585, 13.701129, 15.079868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328738, -0.026830, -0.944040,
		-0.102204, 0.992715, -0.063803,
		0.938875, 0.117459, 0.323601,
		7.613248, 13.736366, 15.176949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.423002, 14.168117, 14.696090>,  <6.956036, 13.654145, 14.950428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.423002, 14.168117, 14.696090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.745345, 13.931512, 14.685473>,  <7.938751, 13.789549, 14.679104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.745345, 13.931512, 14.685473>,  <7.423002, 14.168117, 14.696090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.745345, 13.931512, 14.685473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441972, 0.630747, -0.637824,
		0.394021, 0.502266, 0.769725,
		0.805859, -0.591513, -0.026541,
		7.987103, 13.754058, 14.677511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.100380, 14.567717, 14.981795>,  <7.423002, 14.168117, 14.696090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.100380, 14.567717, 14.981795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.130704, 14.291737, 14.693845>,  <8.148898, 14.126148, 14.521074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.130704, 14.291737, 14.693845>,  <8.100380, 14.567717, 14.981795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.130704, 14.291737, 14.693845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661565, 0.574968, -0.481397,
		0.746046, -0.439750, 0.500035,
		0.075810, -0.689950, -0.719876,
		8.153447, 14.084751, 14.477882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.816463, 14.510124, 14.938759>,  <8.100380, 14.567717, 14.981795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.816463, 14.510124, 14.938759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.640525, 14.431005, 14.588350>,  <8.534962, 14.383534, 14.378105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.640525, 14.431005, 14.588350>,  <8.816463, 14.510124, 14.938759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.640525, 14.431005, 14.588350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533636, 0.727003, -0.432087,
		0.722332, -0.657529, -0.214223,
		-0.439850, -0.197793, -0.876019,
		8.508571, 14.371667, 14.325544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.358677, 14.639568, 14.471399>,  <8.816463, 14.510124, 14.938759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.358677, 14.639568, 14.471399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.025769, 14.623147, 14.250259>,  <8.826025, 14.613294, 14.117576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.025769, 14.623147, 14.250259>,  <9.358677, 14.639568, 14.471399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.025769, 14.623147, 14.250259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377367, 0.688587, -0.619227,
		0.406106, -0.723991, -0.557597,
		-0.832269, -0.041053, -0.552850,
		8.776089, 14.610831, 14.084404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.691987, 15.070529, 14.021093>,  <9.358677, 14.639568, 14.471399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.691987, 15.070529, 14.021093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.294169, 15.102930, 13.994801>,  <9.055479, 15.122371, 13.979025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.294169, 15.102930, 13.994801>,  <9.691987, 15.070529, 14.021093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.294169, 15.102930, 13.994801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104049, 0.815401, -0.569470,
		0.007470, -0.573202, -0.819380,
		-0.994544, 0.081002, -0.065732,
		8.995806, 15.127231, 13.975081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.114013, 14.838964, 14.629568>,  <9.691987, 15.070529, 14.021093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.114013, 14.838964, 14.629568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.390683, 14.550111, 14.625406>,  <10.556685, 14.376799, 14.622910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.390683, 14.550111, 14.625406>,  <10.114013, 14.838964, 14.629568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.390683, 14.550111, 14.625406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381681, 0.353278, 0.854116,
		-0.613110, -0.594743, 0.519979,
		0.691676, -0.722133, -0.010404,
		10.598186, 14.333471, 14.622285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.117272, 14.337493, 15.272237>,  <10.114013, 14.838964, 14.629568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.117272, 14.337493, 15.272237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.485638, 14.302577, 15.120289>,  <10.706656, 14.281628, 15.029120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.485638, 14.302577, 15.120289>,  <10.117272, 14.337493, 15.272237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.485638, 14.302577, 15.120289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385310, 0.056871, 0.921033,
		-0.058794, -0.994558, 0.086007,
		0.920912, -0.087291, -0.379869,
		10.761911, 14.276390, 15.006328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.465741, 13.815379, 15.674795>,  <10.117272, 14.337493, 15.272237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.465741, 13.815379, 15.674795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.759318, 14.043459, 15.527175>,  <10.935465, 14.180307, 15.438602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.759318, 14.043459, 15.527175>,  <10.465741, 13.815379, 15.674795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.759318, 14.043459, 15.527175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386563, 0.096097, 0.917243,
		0.558477, -0.815865, -0.149888,
		0.733943, 0.570201, -0.369052,
		10.979502, 14.214520, 15.416459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.183205, 13.439502, 15.766216>,  <10.465741, 13.815379, 15.674795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.183205, 13.439502, 15.766216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.253635, 13.832845, 15.748303>,  <11.295894, 14.068851, 15.737556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.253635, 13.832845, 15.748303>,  <11.183205, 13.439502, 15.766216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.253635, 13.832845, 15.748303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530361, -0.056444, 0.845891,
		0.829285, -0.172693, -0.531473,
		0.176078, 0.983357, -0.044781,
		11.306458, 14.127851, 15.734869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.786992, 13.484338, 16.166437>,  <11.183205, 13.439502, 15.766216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.786992, 13.484338, 16.166437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.662571, 13.863543, 16.139547>,  <11.587918, 14.091065, 16.123413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.662571, 13.863543, 16.139547>,  <11.786992, 13.484338, 16.166437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.662571, 13.863543, 16.139547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338100, 0.176486, 0.924414,
		0.888220, 0.264813, -0.375420,
		-0.311053, 0.948012, -0.067225,
		11.569255, 14.147946, 16.119379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.347366, 13.898148, 16.509100>,  <11.786992, 13.484338, 16.166437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.347366, 13.898148, 16.509100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.018424, 14.125599, 16.501190>,  <11.821058, 14.262070, 16.496445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.018424, 14.125599, 16.501190>,  <12.347366, 13.898148, 16.509100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.018424, 14.125599, 16.501190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144027, 0.241666, 0.959611,
		0.550441, 0.786295, -0.280633,
		-0.822357, 0.568628, -0.019776,
		11.771717, 14.296187, 16.495258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.513653, 14.570540, 16.830252>,  <12.347366, 13.898148, 16.509100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.513653, 14.570540, 16.830252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.116662, 14.531569, 16.859909>,  <11.878468, 14.508185, 16.877703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.116662, 14.531569, 16.859909>,  <12.513653, 14.570540, 16.830252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.116662, 14.531569, 16.859909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028643, 0.404005, 0.914308,
		-0.119034, 0.909554, -0.398175,
		-0.992477, -0.097429, 0.074142,
		11.818919, 14.502340, 16.882153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.262465, 15.253702, 17.098656>,  <12.513653, 14.570540, 16.830252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.262465, 15.253702, 17.098656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.946996, 15.017309, 17.166458>,  <11.757714, 14.875473, 17.207140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.946996, 15.017309, 17.166458>,  <12.262465, 15.253702, 17.098656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.946996, 15.017309, 17.166458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101728, 0.397339, 0.912016,
		-0.606336, 0.702040, -0.373491,
		-0.788675, -0.590983, 0.169504,
		11.710393, 14.840014, 17.217310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.901268, 15.648796, 17.570459>,  <12.262465, 15.253702, 17.098656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.901268, 15.648796, 17.570459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.763735, 15.274443, 17.601189>,  <11.681215, 15.049830, 17.619625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.763735, 15.274443, 17.601189>,  <11.901268, 15.648796, 17.570459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.763735, 15.274443, 17.601189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073400, 0.108345, 0.991400,
		-0.936158, 0.335236, -0.105946,
		-0.343832, -0.935883, 0.076822,
		11.660585, 14.993677, 17.624235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.271254, 15.676370, 18.056866>,  <11.901268, 15.648796, 17.570459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.271254, 15.676370, 18.056866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.394216, 15.295746, 18.054480>,  <11.467993, 15.067371, 18.053047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.394216, 15.295746, 18.054480>,  <11.271254, 15.676370, 18.056866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.394216, 15.295746, 18.054480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194930, -0.069107, 0.978380,
		-0.931399, -0.299596, -0.206731,
		0.307405, -0.951560, -0.005966,
		11.486437, 15.010278, 18.052691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.735106, 15.306622, 18.382088>,  <11.271254, 15.676370, 18.056866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.735106, 15.306622, 18.382088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.065096, 15.081453, 18.402235>,  <11.263090, 14.946352, 18.414324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.065096, 15.081453, 18.402235>,  <10.735106, 15.306622, 18.382088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.065096, 15.081453, 18.402235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205808, -0.216218, 0.954407,
		-0.526364, -0.797728, -0.294228,
		0.824975, -0.562920, 0.050369,
		11.312589, 14.912577, 18.417345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.502795, 14.598494, 18.385586>,  <10.735106, 15.306622, 18.382088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.502795, 14.598494, 18.385586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.851954, 14.649201, 18.574045>,  <11.061448, 14.679626, 18.687120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.851954, 14.649201, 18.574045>,  <10.502795, 14.598494, 18.385586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.851954, 14.649201, 18.574045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430868, -0.252795, 0.866284,
		0.228923, -0.959179, -0.166042,
		0.872896, 0.126770, 0.471150,
		11.113822, 14.687232, 18.715389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.545630, 14.070510, 18.817804>,  <10.502795, 14.598494, 18.385586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.545630, 14.070510, 18.817804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.835437, 14.294599, 18.978415>,  <11.009321, 14.429052, 19.074781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.835437, 14.294599, 18.978415>,  <10.545630, 14.070510, 18.817804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.835437, 14.294599, 18.978415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329159, -0.230603, 0.915684,
		0.605580, -0.795596, 0.017326,
		0.724519, 0.560222, 0.401526,
		11.052793, 14.462666, 19.098873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.989983, 13.632883, 19.268574>,  <10.545630, 14.070510, 18.817804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.989983, 13.632883, 19.268574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.044556, 14.010957, 19.387241>,  <11.077299, 14.237802, 19.458443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.044556, 14.010957, 19.387241>,  <10.989983, 13.632883, 19.268574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.044556, 14.010957, 19.387241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209506, -0.265166, 0.941167,
		0.968243, -0.190559, 0.161844,
		0.136432, 0.945185, 0.296668,
		11.085485, 14.294512, 19.476242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.456991, 13.545296, 19.866570>,  <10.989983, 13.632883, 19.268574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.456991, 13.545296, 19.866570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.285880, 13.902534, 19.922260>,  <11.183213, 14.116878, 19.955675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.285880, 13.902534, 19.922260>,  <11.456991, 13.545296, 19.866570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.285880, 13.902534, 19.922260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059063, -0.181323, 0.981648,
		0.901952, 0.411705, 0.130315,
		-0.427779, 0.893096, 0.139228,
		11.157546, 14.170464, 19.964029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.812895, 13.821359, 20.486649>,  <11.456991, 13.545296, 19.866570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.812895, 13.821359, 20.486649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.479957, 14.041025, 20.456673>,  <11.280193, 14.172825, 20.438686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.479957, 14.041025, 20.456673>,  <11.812895, 13.821359, 20.486649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.479957, 14.041025, 20.456673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112770, -0.035414, 0.992990,
		0.542663, 0.834962, 0.091406,
		-0.832346, 0.549167, -0.074941,
		11.230253, 14.205775, 20.434191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.946865, 14.284669, 20.985344>,  <11.812895, 13.821359, 20.486649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.946865, 14.284669, 20.985344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.551989, 14.312057, 20.927702>,  <11.315063, 14.328489, 20.893116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.551989, 14.312057, 20.927702>,  <11.946865, 14.284669, 20.985344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.551989, 14.312057, 20.927702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153279, -0.156358, 0.975735,
		0.044274, 0.985325, 0.164849,
		-0.987191, 0.068468, -0.144107,
		11.255832, 14.332597, 20.884470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.647952, 14.684533, 21.537231>,  <11.946865, 14.284669, 20.985344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.647952, 14.684533, 21.537231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.342012, 14.470788, 21.393307>,  <11.158449, 14.342541, 21.306952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.342012, 14.470788, 21.393307>,  <11.647952, 14.684533, 21.537231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.342012, 14.470788, 21.393307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222505, -0.305032, 0.925984,
		-0.604565, 0.788297, 0.114405,
		-0.764848, -0.534362, -0.359812,
		11.112558, 14.310479, 21.285362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.272350, 14.716659, 22.090115>,  <11.647952, 14.684533, 21.537231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.272350, 14.716659, 22.090115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.089582, 14.438123, 21.868725>,  <10.979921, 14.271001, 21.735891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.089582, 14.438123, 21.868725>,  <11.272350, 14.716659, 22.090115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.089582, 14.438123, 21.868725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460508, -0.347166, 0.816950,
		-0.761023, 0.628161, -0.162043,
		-0.456921, -0.696340, -0.553475,
		10.952506, 14.229220, 21.702682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.564053, 14.800095, 22.142439>,  <11.272350, 14.716659, 22.090115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.564053, 14.800095, 22.142439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.637068, 14.423784, 22.028162>,  <10.680877, 14.197998, 21.959597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.637068, 14.423784, 22.028162>,  <10.564053, 14.800095, 22.142439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.637068, 14.423784, 22.028162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409415, -0.336914, 0.847861,
		-0.893901, -0.037801, -0.446668,
		0.182538, -0.940776, -0.285692,
		10.691830, 14.141551, 21.942455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.908642, 14.437075, 22.101221>,  <10.564053, 14.800095, 22.142439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.908642, 14.437075, 22.101221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.188144, 14.156483, 22.157316>,  <10.355844, 13.988128, 22.190973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.188144, 14.156483, 22.157316>,  <9.908642, 14.437075, 22.101221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.188144, 14.156483, 22.157316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553707, -0.406238, 0.726897,
		-0.452933, -0.585574, -0.672275,
		0.698756, -0.701479, 0.140238,
		10.397770, 13.946038, 22.199387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.463277, 14.019722, 22.376070>,  <9.908642, 14.437075, 22.101221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.463277, 14.019722, 22.376070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.815910, 13.846833, 22.451958>,  <10.027491, 13.743100, 22.497490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.815910, 13.846833, 22.451958>,  <9.463277, 14.019722, 22.376070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.815910, 13.846833, 22.451958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434027, -0.584259, 0.685757,
		-0.185554, -0.686895, -0.702670,
		0.881584, -0.432222, 0.189719,
		10.080385, 13.717167, 22.508873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.430116, 13.321304, 22.386372>,  <9.463277, 14.019722, 22.376070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.430116, 13.321304, 22.386372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.745752, 13.408174, 22.616213>,  <9.935135, 13.460296, 22.754118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.745752, 13.408174, 22.616213>,  <9.430116, 13.321304, 22.386372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.745752, 13.408174, 22.616213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470024, -0.388781, 0.792418,
		0.395488, -0.895368, -0.204707,
		0.789092, 0.217174, 0.574603,
		9.982480, 13.473326, 22.788593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.482515, 12.771393, 22.871439>,  <9.430116, 13.321304, 22.386372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.482515, 12.771393, 22.871439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.696122, 13.069975, 23.030251>,  <9.824286, 13.249124, 23.125538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.696122, 13.069975, 23.030251>,  <9.482515, 12.771393, 22.871439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.696122, 13.069975, 23.030251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274756, -0.290891, 0.916456,
		0.799585, -0.598489, 0.049752,
		0.534016, 0.746454, 0.397030,
		9.856327, 13.293911, 23.149359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.716123, 12.434687, 23.569857>,  <9.482515, 12.771393, 22.871439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.716123, 12.434687, 23.569857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.768313, 12.831264, 23.571455>,  <9.799628, 13.069210, 23.572414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.768313, 12.831264, 23.571455>,  <9.716123, 12.434687, 23.569857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.768313, 12.831264, 23.571455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316300, 0.037807, 0.947906,
		0.939644, -0.124943, 0.318527,
		0.130477, 0.991444, 0.003995,
		9.807457, 13.128696, 23.572653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.003032, 12.448411, 24.140076>,  <9.716123, 12.434687, 23.569857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.003032, 12.448411, 24.140076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.859965, 12.814794, 24.067303>,  <9.774126, 13.034623, 24.023640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.859965, 12.814794, 24.067303>,  <10.003032, 12.448411, 24.140076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.859965, 12.814794, 24.067303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374500, 0.037780, 0.926457,
		0.855468, 0.399495, 0.329513,
		-0.357666, 0.915957, -0.181930,
		9.752666, 13.089581, 24.012724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.130763, 12.770892, 24.766651>,  <10.003032, 12.448411, 24.140076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.130763, 12.770892, 24.766651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.847012, 12.998741, 24.600609>,  <9.676761, 13.135450, 24.500984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.847012, 12.998741, 24.600609>,  <10.130763, 12.770892, 24.766651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.847012, 12.998741, 24.600609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394452, 0.167233, 0.903571,
		0.584113, 0.804713, 0.106057,
		-0.709379, 0.569622, -0.415104,
		9.634198, 13.169628, 24.476078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.069213, 13.416609, 25.149931>,  <10.130763, 12.770892, 24.766651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.069213, 13.416609, 25.149931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.730800, 13.353594, 24.946201>,  <9.527752, 13.315784, 24.823963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.730800, 13.353594, 24.946201>,  <10.069213, 13.416609, 25.149931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.730800, 13.353594, 24.946201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489132, -0.150681, 0.859096,
		-0.212085, 0.975949, 0.050424,
		-0.846032, -0.157537, -0.509325,
		9.476990, 13.306333, 24.793404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.747367, 13.820381, 25.460424>,  <10.069213, 13.416609, 25.149931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.747367, 13.820381, 25.460424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.474607, 13.586802, 25.284235>,  <9.310952, 13.446653, 25.178520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.474607, 13.586802, 25.284235>,  <9.747367, 13.820381, 25.460424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.474607, 13.586802, 25.284235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459271, -0.126869, 0.879190,
		-0.569285, 0.801815, -0.181679,
		-0.681898, -0.583949, -0.440475,
		9.270038, 13.411617, 25.152092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.072049, 14.001432, 25.670160>,  <9.747367, 13.820381, 25.460424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.072049, 14.001432, 25.670160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.028563, 13.624042, 25.544920>,  <9.002471, 13.397607, 25.469776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.028563, 13.624042, 25.544920>,  <9.072049, 14.001432, 25.670160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.028563, 13.624042, 25.544920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461645, -0.231028, 0.856452,
		-0.880378, 0.237652, -0.410435,
		-0.108716, -0.943476, -0.313102,
		8.995948, 13.340999, 25.450989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.401519, 13.808878, 25.846619>,  <9.072049, 14.001432, 25.670160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.401519, 13.808878, 25.846619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.580373, 13.458455, 25.774405>,  <8.687685, 13.248201, 25.731077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.580373, 13.458455, 25.774405>,  <8.401519, 13.808878, 25.846619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.580373, 13.458455, 25.774405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162656, -0.278105, 0.946679,
		-0.879553, -0.393928, -0.266847,
		0.447135, -0.876058, -0.180533,
		8.714514, 13.195638, 25.720245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.947866, 13.285892, 26.046484>,  <8.401519, 13.808878, 25.846619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.947866, 13.285892, 26.046484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.329689, 13.167501, 26.060463>,  <8.558783, 13.096468, 26.068850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.329689, 13.167501, 26.060463>,  <7.947866, 13.285892, 26.046484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.329689, 13.167501, 26.060463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154992, -0.392839, 0.906452,
		-0.254558, -0.870676, -0.420860,
		0.954557, -0.295975, 0.034948,
		8.616055, 13.078710, 26.070948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.934549, 12.477338, 26.226923>,  <7.947866, 13.285892, 26.046484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.934549, 12.477338, 26.226923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.310548, 12.595573, 26.295080>,  <8.536147, 12.666514, 26.335974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.310548, 12.595573, 26.295080>,  <7.934549, 12.477338, 26.226923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.310548, 12.595573, 26.295080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020844, -0.548233, 0.836066,
		0.340546, -0.782347, -0.521499,
		0.939997, 0.295589, 0.170391,
		8.592546, 12.684250, 26.346197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.370564, 11.905380, 26.355591>,  <7.934549, 12.477338, 26.226923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.370564, 11.905380, 26.355591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.562899, 12.212473, 26.525007>,  <8.678299, 12.396729, 26.626657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.562899, 12.212473, 26.525007>,  <8.370564, 11.905380, 26.355591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.562899, 12.212473, 26.525007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082012, -0.520307, 0.850032,
		0.872967, -0.373990, -0.313145,
		0.480835, 0.767732, 0.423539,
		8.707150, 12.442793, 26.652069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.993312, 11.641863, 26.643225>,  <8.370564, 11.905380, 26.355591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.993312, 11.641863, 26.643225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.885578, 11.972480, 26.840927>,  <8.820938, 12.170850, 26.959549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.885578, 11.972480, 26.840927>,  <8.993312, 11.641863, 26.643225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.885578, 11.972480, 26.840927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052919, -0.499743, 0.864556,
		0.961592, 0.259010, 0.090858,
		-0.269334, 0.826542, 0.494255,
		8.804778, 12.220443, 26.989204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.529858, 11.777271, 27.056103>,  <8.993312, 11.641863, 26.643225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.529858, 11.777271, 27.056103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.215011, 11.958116, 27.223932>,  <9.026102, 12.066623, 27.324629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.215011, 11.958116, 27.223932>,  <9.529858, 11.777271, 27.056103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.215011, 11.958116, 27.223932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104154, -0.573044, 0.812879,
		0.607945, 0.683532, 0.403964,
		-0.787118, 0.452112, 0.419572,
		8.978875, 12.093749, 27.349804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.671268, 11.668389, 27.731794>,  <9.529858, 11.777271, 27.056103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.671268, 11.668389, 27.731794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.309289, 11.830791, 27.782755>,  <9.092102, 11.928233, 27.813332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.309289, 11.830791, 27.782755>,  <9.671268, 11.668389, 27.731794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.309289, 11.830791, 27.782755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053507, -0.405596, 0.912485,
		0.422148, 0.818933, 0.388767,
		-0.904946, 0.406006, 0.127403,
		9.037806, 11.952593, 27.820976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.606888, 11.912456, 28.503384>,  <9.671268, 11.668389, 27.731794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.606888, 11.912456, 28.503384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.237810, 11.884004, 28.351818>,  <9.016364, 11.866932, 28.260878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.237810, 11.884004, 28.351818>,  <9.606888, 11.912456, 28.503384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.237810, 11.884004, 28.351818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271693, -0.577341, 0.769975,
		-0.273532, 0.813399, 0.513383,
		-0.922693, -0.071130, -0.378916,
		8.961002, 11.862664, 28.238144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.145489, 12.110396, 29.076679>,  <9.606888, 11.912456, 28.503384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.145489, 12.110396, 29.076679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.921473, 11.889186, 28.829935>,  <8.787063, 11.756459, 28.681889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.921473, 11.889186, 28.829935>,  <9.145489, 12.110396, 29.076679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.921473, 11.889186, 28.829935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336901, -0.528209, 0.779418,
		-0.756871, 0.644326, 0.109503,
		-0.560040, -0.553027, -0.616860,
		8.753461, 11.723278, 28.644876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.443782, 12.066763, 29.408689>,  <9.145489, 12.110396, 29.076679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.443782, 12.066763, 29.408689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.485917, 11.771739, 29.141884>,  <8.511198, 11.594725, 28.981800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.485917, 11.771739, 29.141884>,  <8.443782, 12.066763, 29.408689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.485917, 11.771739, 29.141884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258074, -0.668043, 0.697937,
		-0.960365, 0.098620, -0.260716,
		0.105339, -0.737559, -0.667017,
		8.517519, 11.550471, 28.941778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.828907, 11.665055, 29.531971>,  <8.443782, 12.066763, 29.408689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.828907, 11.665055, 29.531971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.113984, 11.440999, 29.363064>,  <8.285030, 11.306565, 29.261719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.113984, 11.440999, 29.363064>,  <7.828907, 11.665055, 29.531971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.113984, 11.440999, 29.363064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161620, -0.716897, 0.678187,
		-0.682607, -0.415089, -0.601456,
		0.712690, -0.560142, -0.422272,
		8.327792, 11.272957, 29.236383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.594140, 10.931555, 29.404465>,  <7.828907, 11.665055, 29.531971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.594140, 10.931555, 29.404465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.990595, 10.947895, 29.455023>,  <8.228469, 10.957700, 29.485357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.990595, 10.947895, 29.455023>,  <7.594140, 10.931555, 29.404465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.990595, 10.947895, 29.455023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052676, -0.752638, 0.656324,
		0.121941, -0.657166, -0.743817,
		0.991139, 0.040852, 0.126395,
		8.287937, 10.960151, 29.492941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.795611, 10.219711, 29.257669>,  <7.594140, 10.931555, 29.404465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.795611, 10.219711, 29.257669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.036186, 10.422433, 29.504707>,  <8.180532, 10.544065, 29.652929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.036186, 10.422433, 29.504707>,  <7.795611, 10.219711, 29.257669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.036186, 10.422433, 29.504707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237373, -0.624769, 0.743853,
		0.762842, -0.593981, -0.255458,
		0.601437, 0.506804, 0.617595,
		8.216618, 10.574474, 29.689985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.136598, 9.689100, 29.585611>,  <7.795611, 10.219711, 29.257669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.136598, 9.689100, 29.585611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.184011, 10.013207, 29.815191>,  <8.212460, 10.207671, 29.952940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.184011, 10.013207, 29.815191>,  <8.136598, 9.689100, 29.585611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.184011, 10.013207, 29.815191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318620, -0.516420, 0.794853,
		0.940442, -0.277089, 0.196954,
		0.118534, 0.810267, 0.573949,
		8.219572, 10.256288, 29.987375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.937343, 9.511679, 30.323353>,  <8.136598, 9.689100, 29.585611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.937343, 9.511679, 30.323353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.038290, 9.896152, 30.367964>,  <8.098858, 10.126836, 30.394730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.038290, 9.896152, 30.367964>,  <7.937343, 9.511679, 30.323353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.038290, 9.896152, 30.367964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192991, -0.062943, 0.979180,
		0.948190, -0.268637, 0.169615,
		0.252367, 0.961183, 0.111527,
		8.114000, 10.184506, 30.401423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.586877, 9.189866, 30.600077>,  <7.937343, 9.511679, 30.323353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.586877, 9.189866, 30.600077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.720795, 8.954188, 30.305931>,  <8.801146, 8.812781, 30.129444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.720795, 8.954188, 30.305931>,  <8.586877, 9.189866, 30.600077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.720795, 8.954188, 30.305931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110910, 0.799616, -0.590180,
		0.935741, 0.116030, 0.333056,
		0.334795, -0.589195, -0.735365,
		8.821233, 8.777430, 30.085321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.691007, 9.671237, 30.159792>,  <8.586877, 9.189866, 30.600077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.691007, 9.671237, 30.159792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.840678, 9.345388, 29.982531>,  <8.930481, 9.149879, 29.876175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.840678, 9.345388, 29.982531>,  <8.691007, 9.671237, 30.159792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.840678, 9.345388, 29.982531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213148, 0.540619, -0.813817,
		0.902528, 0.210057, 0.375923,
		0.374180, -0.814620, -0.443151,
		8.952932, 9.101003, 29.849585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.156523, 9.870748, 29.707069>,  <8.691007, 9.671237, 30.159792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.156523, 9.870748, 29.707069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.094554, 9.501534, 29.566212>,  <9.057372, 9.280005, 29.481697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.094554, 9.501534, 29.566212>,  <9.156523, 9.870748, 29.707069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.094554, 9.501534, 29.566212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105626, 0.338930, -0.934863,
		0.982264, -0.182027, 0.044989,
		-0.154922, -0.923034, -0.352146,
		9.048078, 9.224623, 29.460567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.768792, 9.461724, 29.391333>,  <9.156523, 9.870748, 29.707069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.768792, 9.461724, 29.391333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.405732, 9.384349, 29.242334>,  <9.187896, 9.337923, 29.152935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.405732, 9.384349, 29.242334>,  <9.768792, 9.461724, 29.391333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.405732, 9.384349, 29.242334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321102, 0.251514, -0.913036,
		0.270305, -0.948326, -0.166173,
		-0.907650, -0.193440, -0.372495,
		9.133437, 9.326317, 29.130587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.741576, 9.014761, 28.800436>,  <9.768792, 9.461724, 29.391333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.741576, 9.014761, 28.800436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.425630, 9.256527, 28.758879>,  <9.236062, 9.401587, 28.733944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.425630, 9.256527, 28.758879>,  <9.741576, 9.014761, 28.800436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.425630, 9.256527, 28.758879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326013, 0.270329, -0.905890,
		-0.519448, -0.749403, -0.410571,
		-0.789867, 0.604414, -0.103894,
		9.188669, 9.437851, 28.727711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.483327, 8.796102, 28.225527>,  <9.741576, 9.014761, 28.800436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.483327, 8.796102, 28.225527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.338543, 9.167834, 28.254723>,  <9.251673, 9.390874, 28.272240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.338543, 9.167834, 28.254723>,  <9.483327, 8.796102, 28.225527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.338543, 9.167834, 28.254723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389943, 0.222066, -0.893661,
		-0.846717, -0.295007, -0.442766,
		-0.361960, 0.929332, 0.072991,
		9.229955, 9.446633, 28.276621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.037277, 8.813782, 27.639992>,  <9.483327, 8.796102, 28.225527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.037277, 8.813782, 27.639992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.148622, 9.186794, 27.731993>,  <9.215428, 9.410602, 27.787193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.148622, 9.186794, 27.731993>,  <9.037277, 8.813782, 27.639992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.148622, 9.186794, 27.731993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332537, 0.131087, -0.933935,
		-0.901074, 0.336455, -0.273612,
		0.278360, 0.932531, 0.230003,
		9.232130, 9.466554, 27.800993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.686951, 9.249117, 27.193998>,  <9.037277, 8.813782, 27.639992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.686951, 9.249117, 27.193998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.010833, 9.454602, 27.307472>,  <9.205162, 9.577893, 27.375557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.010833, 9.454602, 27.307472>,  <8.686951, 9.249117, 27.193998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.010833, 9.454602, 27.307472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158967, 0.273330, -0.948694,
		-0.564895, 0.813259, 0.139654,
		0.809705, 0.513712, 0.283684,
		9.253744, 9.608716, 27.392578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.668289, 9.899511, 26.920778>,  <8.686951, 9.249117, 27.193998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.668289, 9.899511, 26.920778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.055477, 9.865294, 27.015198>,  <9.287789, 9.844763, 27.071850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.055477, 9.865294, 27.015198>,  <8.668289, 9.899511, 26.920778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.055477, 9.865294, 27.015198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242699, 0.078067, -0.966956,
		0.064291, 0.993271, 0.096328,
		0.967969, -0.085545, 0.236046,
		9.345868, 9.839630, 27.086012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.916707, 10.291374, 26.470398>,  <8.668289, 9.899511, 26.920778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.916707, 10.291374, 26.470398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.248477, 10.100638, 26.586796>,  <9.447539, 9.986197, 26.656633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.248477, 10.100638, 26.586796>,  <8.916707, 10.291374, 26.470398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.248477, 10.100638, 26.586796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390134, 0.121635, -0.912689,
		0.399811, 0.870534, 0.286919,
		0.829425, -0.476840, 0.290994,
		9.497305, 9.957586, 26.674093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.508176, 10.705644, 26.117647>,  <8.916707, 10.291374, 26.470398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.508176, 10.705644, 26.117647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.625278, 10.330762, 26.193480>,  <9.695540, 10.105833, 26.238979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.625278, 10.330762, 26.193480>,  <9.508176, 10.705644, 26.117647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.625278, 10.330762, 26.193480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395239, -0.061929, -0.916488,
		0.870678, 0.343238, 0.352290,
		0.292757, -0.937205, 0.189581,
		9.713105, 10.049601, 26.250355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.134092, 10.691025, 25.855099>,  <9.508176, 10.705644, 26.117647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.134092, 10.691025, 25.855099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.071485, 10.297702, 25.892206>,  <10.033920, 10.061707, 25.914471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.071485, 10.297702, 25.892206>,  <10.134092, 10.691025, 25.855099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.071485, 10.297702, 25.892206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571128, -0.166739, -0.803748,
		0.805801, -0.072819, 0.587693,
		-0.156520, -0.983308, 0.092769,
		10.024529, 10.002709, 25.920036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.777575, 10.520923, 26.130213>,  <10.134092, 10.691025, 25.855099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.777575, 10.520923, 26.130213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.614979, 10.219275, 25.923885>,  <10.517422, 10.038285, 25.800089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.614979, 10.219275, 25.923885>,  <10.777575, 10.520923, 26.130213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.614979, 10.219275, 25.923885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677276, 0.130226, -0.724112,
		0.613241, -0.643695, 0.457812,
		-0.406488, -0.754120, -0.515819,
		10.493032, 9.993038, 25.769140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.319206, 10.215772, 25.918772>,  <10.777575, 10.520923, 26.130213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.319206, 10.215772, 25.918772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.029847, 10.070962, 25.683609>,  <10.856232, 9.984076, 25.542511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.029847, 10.070962, 25.683609>,  <11.319206, 10.215772, 25.918772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.029847, 10.070962, 25.683609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663186, -0.127498, -0.737515,
		0.192041, -0.923408, 0.332322,
		-0.723397, -0.362024, -0.587907,
		10.812828, 9.962355, 25.507236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.625105, 9.658242, 25.586622>,  <11.319206, 10.215772, 25.918772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.625105, 9.658242, 25.586622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.307556, 9.753057, 25.362629>,  <11.117027, 9.809945, 25.228233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.307556, 9.753057, 25.362629>,  <11.625105, 9.658242, 25.586622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.307556, 9.753057, 25.362629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583779, 0.039329, -0.810959,
		-0.170204, -0.970704, -0.169600,
		-0.793872, 0.237037, -0.559983,
		11.069395, 9.824167, 25.194633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.592404, 9.060698, 25.072393>,  <11.625105, 9.658242, 25.586622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.592404, 9.060698, 25.072393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.408907, 9.395057, 24.951841>,  <11.298809, 9.595672, 24.879509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.408907, 9.395057, 24.951841>,  <11.592404, 9.060698, 25.072393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.408907, 9.395057, 24.951841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446112, -0.076670, -0.891687,
		-0.768466, -0.543505, -0.337732,
		-0.458743, 0.835897, -0.301382,
		11.271284, 9.645825, 24.861427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.297338, 8.839261, 24.443689>,  <11.592404, 9.060698, 25.072393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.297338, 8.839261, 24.443689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.334216, 9.237512, 24.449738>,  <11.356343, 9.476462, 24.453365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.334216, 9.237512, 24.449738>,  <11.297338, 8.839261, 24.443689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.334216, 9.237512, 24.449738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476503, -0.030783, -0.878634,
		-0.874325, 0.088210, -0.477257,
		0.092195, 0.995626, 0.015118,
		11.361875, 9.536200, 24.454273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.251781, 8.960948, 23.739195>,  <11.297338, 8.839261, 24.443689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.251781, 8.960948, 23.739195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.405322, 9.288574, 23.909740>,  <11.497447, 9.485150, 24.012068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.405322, 9.288574, 23.909740>,  <11.251781, 8.960948, 23.739195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.405322, 9.288574, 23.909740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523624, 0.187242, -0.831119,
		-0.760575, 0.542283, -0.357009,
		0.383854, 0.819067, 0.426363,
		11.520478, 9.534294, 24.037649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.128320, 9.500920, 23.257780>,  <11.251781, 8.960948, 23.739195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.128320, 9.500920, 23.257780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.438398, 9.593178, 23.493025>,  <11.624446, 9.648532, 23.634171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.438398, 9.593178, 23.493025>,  <11.128320, 9.500920, 23.257780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.438398, 9.593178, 23.493025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574110, 0.131201, -0.808198,
		-0.263567, 0.964152, -0.030708,
		0.775197, 0.230644, 0.588110,
		11.670958, 9.662371, 23.669458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.430468, 9.949203, 22.908648>,  <11.128320, 9.500920, 23.257780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.430468, 9.949203, 22.908648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.726137, 9.833194, 23.151796>,  <11.903539, 9.763588, 23.297686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.726137, 9.833194, 23.151796>,  <11.430468, 9.949203, 22.908648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.726137, 9.833194, 23.151796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611930, -0.087841, -0.786019,
		0.281360, 0.952980, 0.112544,
		0.739174, -0.290023, 0.607872,
		11.947889, 9.746187, 23.334158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.064863, 10.426903, 23.024883>,  <11.430468, 9.949203, 22.908648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.064863, 10.426903, 23.024883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.176943, 10.043956, 23.052980>,  <12.244190, 9.814187, 23.069839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.176943, 10.043956, 23.052980>,  <12.064863, 10.426903, 23.024883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.176943, 10.043956, 23.052980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619118, 0.124311, -0.775396,
		0.733608, 0.260754, 0.627556,
		0.280199, -0.957368, 0.070242,
		12.261003, 9.756745, 23.074053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.710098, 10.473743, 23.130859>,  <12.064863, 10.426903, 23.024883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.710098, 10.473743, 23.130859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.553885, 10.153020, 22.949934>,  <12.460157, 9.960586, 22.841379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.553885, 10.153020, 22.949934>,  <12.710098, 10.473743, 23.130859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.553885, 10.153020, 22.949934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467580, 0.250471, -0.847722,
		0.793002, -0.542555, 0.277093,
		-0.390533, -0.801809, -0.452312,
		12.436726, 9.912477, 22.814240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.243273, 10.254042, 22.701675>,  <12.710098, 10.473743, 23.130859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.243273, 10.254042, 22.701675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.907233, 10.096286, 22.552711>,  <12.705609, 10.001633, 22.463333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.907233, 10.096286, 22.552711>,  <13.243273, 10.254042, 22.701675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.907233, 10.096286, 22.552711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298509, 0.237104, -0.924486,
		0.452907, -0.887828, -0.081463,
		-0.840099, -0.394389, -0.372411,
		12.655203, 9.977969, 22.440989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.470148, 9.935138, 22.182064>,  <13.243273, 10.254042, 22.701675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.470148, 9.935138, 22.182064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.084978, 10.000822, 22.096453>,  <12.853876, 10.040233, 22.045086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.084978, 10.000822, 22.096453>,  <13.470148, 9.935138, 22.182064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.084978, 10.000822, 22.096453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258724, 0.337485, -0.905078,
		-0.076392, -0.926897, -0.367459,
		-0.962926, 0.164211, -0.214030,
		12.796101, 10.050085, 22.032244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.268994, 9.570437, 21.464092>,  <13.470148, 9.935138, 22.182064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.268994, 9.570437, 21.464092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.003676, 9.857544, 21.548803>,  <12.844485, 10.029808, 21.599630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.003676, 9.857544, 21.548803>,  <13.268994, 9.570437, 21.464092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.003676, 9.857544, 21.548803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041366, 0.317725, -0.947280,
		-0.747213, -0.619566, -0.240437,
		-0.663296, 0.717766, 0.211779,
		12.804688, 10.072874, 21.612337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.620430, 9.477313, 20.953533>,  <13.268994, 9.570437, 21.464092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.620430, 9.477313, 20.953533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.655080, 9.856565, 21.075872>,  <12.675870, 10.084117, 21.149277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.655080, 9.856565, 21.075872>,  <12.620430, 9.477313, 20.953533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.655080, 9.856565, 21.075872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038302, 0.303606, -0.952027,
		-0.995504, 0.094184, -0.010015,
		0.086625, 0.948131, 0.305849,
		12.681067, 10.141005, 21.167627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.165193, 9.944008, 20.494316>,  <12.620430, 9.477313, 20.953533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.165193, 9.944008, 20.494316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.385847, 10.213982, 20.690342>,  <12.518240, 10.375966, 20.807957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.385847, 10.213982, 20.690342>,  <12.165193, 9.944008, 20.494316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.385847, 10.213982, 20.690342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039632, 0.565672, -0.823677,
		-0.833142, 0.473793, 0.285297,
		0.551637, 0.674933, 0.490063,
		12.551338, 10.416462, 20.837360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.012846, 10.599311, 20.182840>,  <12.165193, 9.944008, 20.494316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.012846, 10.599311, 20.182840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.347874, 10.670765, 20.389360>,  <12.548890, 10.713637, 20.513273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.347874, 10.670765, 20.389360>,  <12.012846, 10.599311, 20.182840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.347874, 10.670765, 20.389360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395287, 0.454202, -0.798404,
		-0.377128, 0.872806, 0.309814,
		0.837569, 0.178635, 0.516301,
		12.599145, 10.724356, 20.544250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.100363, 11.301520, 20.184689>,  <12.012846, 10.599311, 20.182840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.100363, 11.301520, 20.184689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.456431, 11.124459, 20.227873>,  <12.670073, 11.018223, 20.253784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.456431, 11.124459, 20.227873>,  <12.100363, 11.301520, 20.184689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.456431, 11.124459, 20.227873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374537, 0.575971, -0.726622,
		0.259458, 0.687253, 0.678502,
		0.890170, -0.442652, 0.107962,
		12.723482, 10.991664, 20.260262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.520617, 11.761279, 20.433712>,  <12.100363, 11.301520, 20.184689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.520617, 11.761279, 20.433712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.749833, 11.486281, 20.255283>,  <12.887362, 11.321282, 20.148226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.749833, 11.486281, 20.255283>,  <12.520617, 11.761279, 20.433712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.749833, 11.486281, 20.255283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345196, 0.696144, -0.629463,
		0.743280, 0.206725, 0.636238,
		0.573039, -0.687494, -0.446069,
		12.921745, 11.280033, 20.121462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.909802, 12.194529, 20.043438>,  <12.520617, 11.761279, 20.433712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.909802, 12.194529, 20.043438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.061178, 11.848944, 19.910559>,  <13.152003, 11.641593, 19.830832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.061178, 11.848944, 19.910559>,  <12.909802, 12.194529, 20.043438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.061178, 11.848944, 19.910559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224858, 0.433946, -0.872427,
		0.897899, 0.255463, 0.358491,
		0.378439, -0.863961, -0.332197,
		13.174710, 11.589755, 19.810900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.573679, 12.267353, 19.837738>,  <12.909802, 12.194529, 20.043438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.573679, 12.267353, 19.837738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.477434, 11.931276, 19.643343>,  <13.419687, 11.729630, 19.526707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.477434, 11.931276, 19.643343>,  <13.573679, 12.267353, 19.837738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.477434, 11.931276, 19.643343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452291, 0.345961, -0.822036,
		0.858801, -0.417600, 0.296769,
		-0.240612, -0.840192, -0.485988,
		13.405251, 11.679219, 19.497547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.167492, 11.871593, 19.546204>,  <13.573679, 12.267353, 19.837738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.167492, 11.871593, 19.546204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.844898, 11.782597, 19.327085>,  <13.651341, 11.729198, 19.195614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.844898, 11.782597, 19.327085>,  <14.167492, 11.871593, 19.546204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.844898, 11.782597, 19.327085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452804, 0.363351, -0.814214,
		0.380205, -0.904693, -0.192286,
		-0.806481, -0.222500, -0.547797,
		13.602953, 11.715849, 19.162746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.564195, 11.641758, 18.923077>,  <14.167492, 11.871593, 19.546204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.564195, 11.641758, 18.923077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.180769, 11.700694, 18.825550>,  <13.950713, 11.736055, 18.767035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.180769, 11.700694, 18.825550>,  <14.564195, 11.641758, 18.923077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.180769, 11.700694, 18.825550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284095, 0.431026, -0.856450,
		-0.021098, -0.890229, -0.455024,
		-0.958564, 0.147340, -0.243815,
		13.893200, 11.744896, 18.752405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.451303, 11.378830, 18.326340>,  <14.564195, 11.641758, 18.923077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.451303, 11.378830, 18.326340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.184830, 11.673433, 18.373245>,  <14.024945, 11.850196, 18.401388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.184830, 11.673433, 18.373245>,  <14.451303, 11.378830, 18.326340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.184830, 11.673433, 18.373245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220303, 0.344563, -0.912548,
		-0.712505, -0.582091, -0.391798,
		-0.666185, 0.736509, 0.117266,
		13.984974, 11.894386, 18.408424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.060802, 11.379395, 17.780025>,  <14.451303, 11.378830, 18.326340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.060802, 11.379395, 17.780025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.982298, 11.742369, 17.928644>,  <13.935195, 11.960153, 18.017817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.982298, 11.742369, 17.928644>,  <14.060802, 11.379395, 17.780025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.982298, 11.742369, 17.928644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257794, 0.413338, -0.873323,
		-0.946057, -0.075617, -0.315053,
		-0.196261, 0.907432, 0.371548,
		13.923420, 12.014599, 18.040108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.804886, 11.855412, 17.207510>,  <14.060802, 11.379395, 17.780025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.804886, 11.855412, 17.207510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.909766, 12.115015, 17.493177>,  <13.972694, 12.270778, 17.664577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.909766, 12.115015, 17.493177>,  <13.804886, 11.855412, 17.207510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.909766, 12.115015, 17.493177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423260, 0.587734, -0.689507,
		-0.867238, 0.483068, -0.120596,
		0.262200, 0.649010, 0.714169,
		13.988426, 12.309718, 17.707428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.709380, 12.540490, 16.891037>,  <13.804886, 11.855412, 17.207510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.709380, 12.540490, 16.891037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.951456, 12.577255, 17.207340>,  <14.096702, 12.599314, 17.397121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.951456, 12.577255, 17.207340>,  <13.709380, 12.540490, 16.891037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.951456, 12.577255, 17.207340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611993, 0.581550, -0.535970,
		-0.509127, 0.808302, 0.295699,
		0.605189, 0.091912, 0.790758,
		14.133013, 12.604829, 17.444567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.847377, 13.233502, 16.840673>,  <13.709380, 12.540490, 16.891037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.847377, 13.233502, 16.840673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.135311, 13.044647, 17.044210>,  <14.308072, 12.931334, 17.166332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.135311, 13.044647, 17.044210>,  <13.847377, 13.233502, 16.840673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.135311, 13.044647, 17.044210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688572, 0.578378, -0.437433,
		-0.087774, 0.665255, 0.741439,
		0.719836, -0.472139, 0.508842,
		14.351262, 12.903006, 17.196863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.367001, 13.763732, 16.916037>,  <13.847377, 13.233502, 16.840673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.367001, 13.763732, 16.916037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.573339, 13.432545, 17.004009>,  <14.697143, 13.233832, 17.056793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.573339, 13.432545, 17.004009>,  <14.367001, 13.763732, 16.916037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.573339, 13.432545, 17.004009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821794, 0.405740, -0.400037,
		0.241983, 0.387096, 0.889720,
		0.515847, -0.827969, 0.219931,
		14.728094, 13.184155, 17.069988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.087448, 13.993003, 17.077103>,  <14.367001, 13.763732, 16.916037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.087448, 13.993003, 17.077103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.110516, 13.614731, 16.949125>,  <15.124356, 13.387768, 16.872339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.110516, 13.614731, 16.949125>,  <15.087448, 13.993003, 17.077103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.110516, 13.614731, 16.949125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812837, 0.230546, -0.534924,
		0.579629, -0.229214, 0.781979,
		0.057670, -0.945679, -0.319945,
		15.127816, 13.331027, 16.853142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.714581, 13.732506, 17.285597>,  <15.087448, 13.993003, 17.077103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.714581, 13.732506, 17.285597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.586387, 13.506185, 16.981714>,  <15.509470, 13.370392, 16.799385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.586387, 13.506185, 16.981714>,  <15.714581, 13.732506, 17.285597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.586387, 13.506185, 16.981714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858414, 0.165629, -0.485483,
		0.400517, -0.807734, 0.432612,
		-0.320487, -0.565804, -0.759707,
		15.490240, 13.336444, 16.753801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.362978, 13.507428, 16.965618>,  <15.714581, 13.732506, 17.285597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.362978, 13.507428, 16.965618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.092415, 13.428609, 16.681746>,  <15.930078, 13.381317, 16.511423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.092415, 13.428609, 16.681746>,  <16.362978, 13.507428, 16.965618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.092415, 13.428609, 16.681746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690124, 0.167042, -0.704149,
		0.257299, -0.966058, 0.023001,
		-0.676407, -0.197051, -0.709680,
		15.889493, 13.369494, 16.468842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.634369, 12.983579, 16.497322>,  <16.362978, 13.507428, 16.965618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.634369, 12.983579, 16.497322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.352444, 13.147575, 16.265757>,  <16.183289, 13.245974, 16.126818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.352444, 13.147575, 16.265757>,  <16.634369, 12.983579, 16.497322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.352444, 13.147575, 16.265757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689410, 0.203548, -0.695185,
		-0.167183, -0.889087, -0.426116,
		-0.704815, 0.409992, -0.578916,
		16.140999, 13.270573, 16.092081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.677588, 12.701276, 15.739649>,  <16.634369, 12.983579, 16.497322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.677588, 12.701276, 15.739649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.517403, 13.066960, 15.764459>,  <16.421291, 13.286371, 15.779345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.517403, 13.066960, 15.764459>,  <16.677588, 12.701276, 15.739649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.517403, 13.066960, 15.764459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463551, 0.260512, -0.846909,
		-0.790412, -0.310402, -0.528109,
		-0.400461, 0.914212, 0.062024,
		16.397264, 13.341224, 15.783066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.118490, 12.208510, 15.367972>,  <16.677588, 12.701276, 15.739649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.118490, 12.208510, 15.367972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.352448, 12.463614, 15.568436>,  <17.492823, 12.616676, 15.688714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.352448, 12.463614, 15.568436>,  <17.118490, 12.208510, 15.367972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.352448, 12.463614, 15.568436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790764, 0.310841, 0.527323,
		0.180524, -0.704729, 0.686126,
		0.584896, 0.637758, 0.501160,
		17.527916, 12.654943, 15.718783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.576757, 11.939952, 15.749190>,  <17.118490, 12.208510, 15.367972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.576757, 11.939952, 15.749190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.851040, 11.655575, 15.686747>,  <17.015610, 11.484949, 15.649281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.851040, 11.655575, 15.686747>,  <16.576757, 11.939952, 15.749190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.851040, 11.655575, 15.686747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190345, -0.031866, 0.981200,
		-0.702551, -0.702529, 0.113473,
		0.685705, -0.710942, -0.156110,
		17.056751, 11.442292, 15.639914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.495293, 11.210331, 16.068417>,  <16.576757, 11.939952, 15.749190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.495293, 11.210331, 16.068417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.866653, 11.352289, 16.024382>,  <17.089470, 11.437464, 15.997960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.866653, 11.352289, 16.024382>,  <16.495293, 11.210331, 16.068417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.866653, 11.352289, 16.024382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098768, 0.049921, 0.993857,
		0.358212, -0.933572, 0.011295,
		0.928402, 0.354896, -0.110089,
		17.145174, 11.458757, 15.991355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.015793, 10.841435, 16.528170>,  <16.495293, 11.210331, 16.068417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.015793, 10.841435, 16.528170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.139837, 11.213793, 16.450951>,  <17.214264, 11.437207, 16.404619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.139837, 11.213793, 16.450951>,  <17.015793, 10.841435, 16.528170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.139837, 11.213793, 16.450951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241215, 0.119372, 0.963102,
		0.919590, -0.345235, -0.187527,
		0.310111, 0.930894, -0.193049,
		17.232870, 11.493061, 16.393036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.507580, 10.766043, 17.110506>,  <17.015793, 10.841435, 16.528170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.507580, 10.766043, 17.110506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.511433, 11.146008, 16.985561>,  <17.513744, 11.373988, 16.910595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.511433, 11.146008, 16.985561>,  <17.507580, 10.766043, 17.110506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.511433, 11.146008, 16.985561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359301, 0.288228, 0.887596,
		0.933172, -0.120782, -0.338529,
		0.009632, 0.949914, -0.312363,
		17.514322, 11.430983, 16.891853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.118010, 10.984169, 17.313040>,  <17.507580, 10.766043, 17.110506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.118010, 10.984169, 17.313040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.882002, 11.302510, 17.258642>,  <17.740396, 11.493515, 17.226004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.882002, 11.302510, 17.258642>,  <18.118010, 10.984169, 17.313040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.882002, 11.302510, 17.258642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170379, 0.287374, 0.942543,
		0.789207, 0.532949, -0.305153,
		-0.590020, 0.795853, -0.135994,
		17.704996, 11.541266, 17.217844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.405434, 11.483794, 17.840387>,  <18.118010, 10.984169, 17.313040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.405434, 11.483794, 17.840387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.028582, 11.588636, 17.756781>,  <17.802469, 11.651542, 17.706617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.028582, 11.588636, 17.756781>,  <18.405434, 11.483794, 17.840387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.028582, 11.588636, 17.756781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169275, 0.166221, 0.971451,
		0.289365, 0.950616, -0.112234,
		-0.942132, 0.262106, -0.209015,
		17.745941, 11.667268, 17.694077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.298820, 12.062812, 18.312874>,  <18.405434, 11.483794, 17.840387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.298820, 12.062812, 18.312874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.924707, 11.976811, 18.200428>,  <17.700239, 11.925211, 18.132961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.924707, 11.976811, 18.200428>,  <18.298820, 12.062812, 18.312874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.924707, 11.976811, 18.200428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316479, 0.152576, 0.936249,
		-0.158404, 0.964622, -0.210745,
		-0.935280, -0.215001, -0.281113,
		17.644123, 11.912311, 18.116095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.931286, 12.640137, 18.428179>,  <18.298820, 12.062812, 18.312874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.931286, 12.640137, 18.428179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.666363, 12.340523, 18.421322>,  <17.507408, 12.160754, 18.417208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.666363, 12.340523, 18.421322>,  <17.931286, 12.640137, 18.428179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.666363, 12.340523, 18.421322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297423, 0.241848, 0.923606,
		-0.687666, 0.616813, -0.382958,
		-0.662310, -0.749034, -0.017144,
		17.467670, 12.115812, 18.416180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.209278, 12.861555, 18.751831>,  <17.931286, 12.640137, 18.428179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.209278, 12.861555, 18.751831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.228157, 12.463038, 18.780609>,  <17.239485, 12.223928, 18.797876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.228157, 12.463038, 18.780609>,  <17.209278, 12.861555, 18.751831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.228157, 12.463038, 18.780609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354367, 0.050641, 0.933734,
		-0.933915, -0.069565, -0.350662,
		0.047197, -0.996291, 0.071946,
		17.242315, 12.164151, 18.802193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.558142, 12.697511, 19.141870>,  <17.209278, 12.861555, 18.751831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.558142, 12.697511, 19.141870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.808796, 12.387200, 19.171535>,  <16.959188, 12.201015, 19.189335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.808796, 12.387200, 19.171535>,  <16.558142, 12.697511, 19.141870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.808796, 12.387200, 19.171535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259505, -0.117987, 0.958507,
		-0.734837, -0.619880, -0.275253,
		0.626636, -0.775776, 0.074161,
		16.996786, 12.154468, 19.193785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.191776, 12.163083, 19.464108>,  <16.558142, 12.697511, 19.141870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.191776, 12.163083, 19.464108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.567326, 12.037272, 19.520098>,  <16.792654, 11.961786, 19.553692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.567326, 12.037272, 19.520098>,  <16.191776, 12.163083, 19.464108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.567326, 12.037272, 19.520098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250331, -0.344592, 0.904760,
		-0.236332, -0.884495, -0.402263,
		0.938872, -0.314523, 0.139978,
		16.848988, 11.942915, 19.562090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.189726, 11.506499, 19.775417>,  <16.191776, 12.163083, 19.464108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.189726, 11.506499, 19.775417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.577629, 11.575606, 19.844376>,  <16.810371, 11.617070, 19.885752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.577629, 11.575606, 19.844376>,  <16.189726, 11.506499, 19.775417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.577629, 11.575606, 19.844376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076014, -0.457421, 0.885995,
		0.231930, -0.872306, -0.430455,
		0.969758, 0.172768, 0.172397,
		16.868557, 11.627437, 19.896095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.520699, 10.795820, 19.932219>,  <16.189726, 11.506499, 19.775417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.520699, 10.795820, 19.932219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.711555, 11.106582, 20.096537>,  <16.826069, 11.293039, 20.195127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.711555, 11.106582, 20.096537>,  <16.520699, 10.795820, 19.932219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.711555, 11.106582, 20.096537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087733, -0.422994, 0.901875,
		0.874436, -0.466364, -0.133668,
		0.477143, 0.776905, 0.410796,
		16.854698, 11.339653, 20.219776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181192, 10.574058, 20.337950>,  <16.520699, 10.795820, 19.932219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.181192, 10.574058, 20.337950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.065218, 10.927801, 20.484289>,  <16.995632, 11.140047, 20.572092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.065218, 10.927801, 20.484289>,  <17.181192, 10.574058, 20.337950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.065218, 10.927801, 20.484289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068642, -0.400498, 0.913723,
		0.954581, 0.239810, 0.176823,
		-0.289938, 0.884360, 0.365847,
		16.978237, 11.193110, 20.594044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620466, 10.692080, 20.989321>,  <17.181192, 10.574058, 20.337950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.620466, 10.692080, 20.989321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.314081, 10.945059, 21.035473>,  <17.130251, 11.096847, 21.063164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.314081, 10.945059, 21.035473>,  <17.620466, 10.692080, 20.989321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.314081, 10.945059, 21.035473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236188, -0.443758, 0.864462,
		0.597928, 0.634894, 0.489278,
		-0.765962, 0.632447, 0.115381,
		17.084293, 11.134793, 21.070087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.567032, 10.810296, 21.685190>,  <17.620466, 10.692080, 20.989321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.567032, 10.810296, 21.685190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.222820, 10.991458, 21.591921>,  <17.016294, 11.100155, 21.535959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.222820, 10.991458, 21.591921>,  <17.567032, 10.810296, 21.685190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.222820, 10.991458, 21.591921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432824, -0.408689, 0.803516,
		0.268619, 0.792371, 0.547716,
		-0.860528, 0.452904, -0.233175,
		16.964663, 11.127329, 21.521969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.412111, 11.236584, 22.253317>,  <17.567032, 10.810296, 21.685190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.412111, 11.236584, 22.253317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.069845, 11.151626, 22.064543>,  <16.864485, 11.100651, 21.951279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.069845, 11.151626, 22.064543>,  <17.412111, 11.236584, 22.253317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.069845, 11.151626, 22.064543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420398, -0.246568, 0.873195,
		-0.301827, 0.945564, 0.121690,
		-0.855667, -0.212396, -0.471934,
		16.813145, 11.087907, 21.922962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.898928, 11.675795, 22.646826>,  <17.412111, 11.236584, 22.253317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.898928, 11.675795, 22.646826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.714987, 11.377585, 22.453857>,  <16.604622, 11.198660, 22.338076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.714987, 11.377585, 22.453857>,  <16.898928, 11.675795, 22.646826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.714987, 11.377585, 22.453857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476123, -0.251575, 0.842625,
		-0.749562, 0.617175, -0.239273,
		-0.459852, -0.745523, -0.482423,
		16.577032, 11.153929, 22.309132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.241283, 11.732521, 22.954573>,  <16.898928, 11.675795, 22.646826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.241283, 11.732521, 22.954573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.241447, 11.379457, 22.766569>,  <16.241545, 11.167618, 22.653767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.241447, 11.379457, 22.766569>,  <16.241283, 11.732521, 22.954573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.241447, 11.379457, 22.766569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571226, -0.385985, 0.724373,
		-0.820793, 0.268184, -0.504357,
		0.000409, -0.882662, -0.470008,
		16.241570, 11.114657, 22.625566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.536558, 11.658883, 22.887518>,  <16.241283, 11.732521, 22.954573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.536558, 11.658883, 22.887518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.693389, 11.291604, 22.864933>,  <15.787488, 11.071237, 22.851381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.693389, 11.291604, 22.864933>,  <15.536558, 11.658883, 22.887518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.693389, 11.291604, 22.864933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671561, -0.327630, 0.664578,
		-0.628713, -0.222646, -0.745082,
		0.392077, -0.918198, -0.056465,
		15.811012, 11.016145, 22.847994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.992629, 11.274137, 22.781277>,  <15.536558, 11.658883, 22.887518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.992629, 11.274137, 22.781277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.270017, 11.010313, 22.897264>,  <15.436449, 10.852018, 22.966856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.270017, 11.010313, 22.897264>,  <14.992629, 11.274137, 22.781277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.270017, 11.010313, 22.897264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600636, -0.306950, 0.738254,
		-0.397919, -0.686119, -0.609017,
		0.693467, -0.659563, 0.289966,
		15.478057, 10.812445, 22.984255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.780668, 10.611609, 22.642790>,  <14.992629, 11.274137, 22.781277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.780668, 10.611609, 22.642790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.038273, 10.583103, 22.947466>,  <15.192836, 10.566000, 23.130272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.038273, 10.583103, 22.947466>,  <14.780668, 10.611609, 22.642790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.038273, 10.583103, 22.947466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752818, -0.236122, 0.614419,
		0.136067, -0.969107, -0.205713,
		0.644011, -0.071263, 0.761689,
		15.231477, 10.561724, 23.175972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.475162, 10.143781, 23.049198>,  <14.780668, 10.611609, 22.642790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.475162, 10.143781, 23.049198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.758478, 10.285794, 23.293255>,  <14.928468, 10.371002, 23.439690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.758478, 10.285794, 23.293255>,  <14.475162, 10.143781, 23.049198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.758478, 10.285794, 23.293255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571266, -0.219481, 0.790875,
		0.414702, -0.908724, 0.047362,
		0.708292, 0.355034, 0.610142,
		14.970965, 10.392304, 23.476297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.453003, 9.588017, 23.625700>,  <14.475162, 10.143781, 23.049198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.453003, 9.588017, 23.625700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.673065, 9.896318, 23.754242>,  <14.805102, 10.081299, 23.831367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.673065, 9.896318, 23.754242>,  <14.453003, 9.588017, 23.625700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.673065, 9.896318, 23.754242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301192, -0.175774, 0.937223,
		0.778853, -0.612407, 0.135441,
		0.550155, 0.770753, 0.321354,
		14.838112, 10.127544, 23.850649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.871779, 9.307390, 24.132116>,  <14.453003, 9.588017, 23.625700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.871779, 9.307390, 24.132116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.840979, 9.700109, 24.201569>,  <14.822498, 9.935740, 24.243240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.840979, 9.700109, 24.201569>,  <14.871779, 9.307390, 24.132116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.840979, 9.700109, 24.201569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396746, -0.189940, 0.898062,
		0.914693, 0.000265, 0.404149,
		-0.077002, 0.981795, 0.173632,
		14.817878, 9.994647, 24.253658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.251014, 9.475370, 24.818138>,  <14.871779, 9.307390, 24.132116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.251014, 9.475370, 24.818138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.955052, 9.725493, 24.718916>,  <14.777475, 9.875567, 24.659382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.955052, 9.725493, 24.718916>,  <15.251014, 9.475370, 24.818138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.955052, 9.725493, 24.718916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346776, -0.038561, 0.937155,
		0.576445, 0.779425, 0.245372,
		-0.739904, 0.625307, -0.248057,
		14.733081, 9.913086, 24.644499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.256547, 10.134241, 25.139400>,  <15.251014, 9.475370, 24.818138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.256547, 10.134241, 25.139400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.874197, 10.065782, 25.043890>,  <14.644787, 10.024706, 24.986584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.874197, 10.065782, 25.043890>,  <15.256547, 10.134241, 25.139400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.874197, 10.065782, 25.043890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256061, 0.086966, 0.962741,
		-0.144006, 0.981400, -0.126952,
		-0.955874, -0.171148, -0.238775,
		14.587435, 10.014438, 24.972258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.852038, 10.652502, 25.431826>,  <15.256547, 10.134241, 25.139400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.852038, 10.652502, 25.431826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.612315, 10.339703, 25.363348>,  <14.468481, 10.152023, 25.322262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.612315, 10.339703, 25.363348>,  <14.852038, 10.652502, 25.431826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.612315, 10.339703, 25.363348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201673, -0.059470, 0.977646,
		-0.774698, 0.620437, -0.122067,
		-0.599309, -0.781998, -0.171196,
		14.432523, 10.105103, 25.311989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.216790, 10.900650, 25.676756>,  <14.852038, 10.652502, 25.431826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.216790, 10.900650, 25.676756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.211957, 10.500737, 25.683575>,  <14.209057, 10.260790, 25.687666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.211957, 10.500737, 25.683575>,  <14.216790, 10.900650, 25.676756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.211957, 10.500737, 25.683575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456086, 0.020680, 0.889695,
		-0.889854, 0.002977, -0.456236,
		-0.012084, -0.999782, 0.017045,
		14.208332, 10.200803, 25.688688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.609788, 10.771441, 25.955601>,  <14.216790, 10.900650, 25.676756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.609788, 10.771441, 25.955601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.782568, 10.414642, 26.008905>,  <13.886236, 10.200562, 26.040888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.782568, 10.414642, 26.008905>,  <13.609788, 10.771441, 25.955601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.782568, 10.414642, 26.008905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426894, -0.072054, 0.901427,
		-0.794469, -0.446258, -0.411913,
		0.431949, -0.891999, 0.133260,
		13.912152, 10.147042, 26.048883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.064842, 10.342737, 26.197554>,  <13.609788, 10.771441, 25.955601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.064842, 10.342737, 26.197554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.404968, 10.155626, 26.294010>,  <13.609044, 10.043360, 26.351883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.404968, 10.155626, 26.294010>,  <13.064842, 10.342737, 26.197554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.404968, 10.155626, 26.294010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369740, -0.204933, 0.906253,
		-0.374509, -0.859759, -0.347214,
		0.850315, -0.467778, 0.241139,
		13.660063, 10.015293, 26.366352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.867513, 9.608652, 26.392885>,  <13.064842, 10.342737, 26.197554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.867513, 9.608652, 26.392885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.218755, 9.703771, 26.558960>,  <13.429501, 9.760842, 26.658606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.218755, 9.703771, 26.558960>,  <12.867513, 9.608652, 26.392885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.218755, 9.703771, 26.558960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370109, -0.212360, 0.904391,
		0.303231, -0.947816, -0.098464,
		0.878106, 0.237797, 0.415189,
		13.482186, 9.775109, 26.683517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.960846, 9.019905, 26.830027>,  <12.867513, 9.608652, 26.392885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.960846, 9.019905, 26.830027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.188611, 9.318871, 26.966930>,  <13.325271, 9.498250, 27.049072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.188611, 9.318871, 26.966930>,  <12.960846, 9.019905, 26.830027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.188611, 9.318871, 26.966930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304011, -0.195370, 0.932420,
		0.763770, -0.634984, 0.115976,
		0.569414, 0.747413, 0.342260,
		13.359435, 9.543095, 27.069609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.236181, 8.779200, 27.490582>,  <12.960846, 9.019905, 26.830027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.236181, 8.779200, 27.490582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.306842, 9.168656, 27.548290>,  <13.349238, 9.402330, 27.582916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.306842, 9.168656, 27.548290>,  <13.236181, 8.779200, 27.490582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.306842, 9.168656, 27.548290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184922, -0.111138, 0.976449,
		0.966746, -0.199171, 0.160415,
		0.176652, 0.973642, 0.144274,
		13.359838, 9.460749, 27.591572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.573236, 8.878570, 28.144987>,  <13.236181, 8.779200, 27.490582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.573236, 8.878570, 28.144987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.457460, 9.258204, 28.095249>,  <13.387995, 9.485984, 28.065407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.457460, 9.258204, 28.095249>,  <13.573236, 8.878570, 28.144987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.457460, 9.258204, 28.095249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383708, 0.003967, 0.923446,
		0.876922, 0.314994, 0.363023,
		-0.289439, 0.949085, -0.124344,
		13.370628, 9.542929, 28.057945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.854173, 9.268855, 28.671057>,  <13.573236, 8.878570, 28.144987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.854173, 9.268855, 28.671057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.544291, 9.496059, 28.559919>,  <13.358361, 9.632382, 28.493237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.544291, 9.496059, 28.559919>,  <13.854173, 9.268855, 28.671057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.544291, 9.496059, 28.559919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336399, 0.001830, 0.941718,
		0.535414, 0.823019, 0.189660,
		-0.774705, 0.568011, -0.277843,
		13.311879, 9.666463, 28.476566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.799623, 9.869404, 29.180485>,  <13.854173, 9.268855, 28.671057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.799623, 9.869404, 29.180485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.456837, 9.787273, 28.991402>,  <13.251165, 9.737995, 28.877953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.456837, 9.787273, 28.991402>,  <13.799623, 9.869404, 29.180485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.456837, 9.787273, 28.991402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450000, -0.148986, 0.880513,
		-0.251218, 0.967287, 0.035280,
		-0.856965, -0.205325, -0.472707,
		13.199747, 9.725676, 28.849590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.403025, 10.350363, 29.331345>,  <13.799623, 9.869404, 29.180485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.403025, 10.350363, 29.331345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.224599, 10.628583, 29.556639>,  <14.117543, 10.795515, 29.691816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.224599, 10.628583, 29.556639>,  <14.403025, 10.350363, 29.331345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.224599, 10.628583, 29.556639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063538, 0.603117, -0.795118,
		-0.892743, -0.390461, -0.224835,
		-0.446064, 0.695550, 0.563238,
		14.090779, 10.837248, 29.725611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.802448, 10.650508, 28.954851>,  <14.403025, 10.350363, 29.331345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.802448, 10.650508, 28.954851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.908811, 10.932384, 29.217974>,  <13.972628, 11.101509, 29.375847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.908811, 10.932384, 29.217974>,  <13.802448, 10.650508, 28.954851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.908811, 10.932384, 29.217974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124016, 0.701708, -0.701588,
		-0.955989, 0.104977, 0.273980,
		0.265905, 0.704688, 0.657807,
		13.988582, 11.143790, 29.415316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.368764, 11.317845, 28.765839>,  <13.802448, 10.650508, 28.954851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.368764, 11.317845, 28.765839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.700096, 11.430953, 28.959295>,  <13.898895, 11.498817, 29.075369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.700096, 11.430953, 28.959295>,  <13.368764, 11.317845, 28.765839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.700096, 11.430953, 28.959295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173242, 0.691686, -0.701112,
		-0.532782, 0.664540, 0.523957,
		0.828330, 0.282769, 0.483644,
		13.948595, 11.515783, 29.104389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.308958, 12.016258, 28.916399>,  <13.368764, 11.317845, 28.765839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.308958, 12.016258, 28.916399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.703457, 11.952231, 28.932869>,  <13.940156, 11.913815, 28.942751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.703457, 11.952231, 28.932869>,  <13.308958, 12.016258, 28.916399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.703457, 11.952231, 28.932869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154639, 0.805730, -0.571739,
		0.058340, 0.570243, 0.819402,
		0.986247, -0.160066, 0.041175,
		13.999331, 11.904211, 28.945221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.676178, 12.779037, 28.692776>,  <13.308958, 12.016258, 28.916399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.676178, 12.779037, 28.692776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.992464, 12.534180, 28.695612>,  <14.182236, 12.387265, 28.697313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.992464, 12.534180, 28.695612>,  <13.676178, 12.779037, 28.692776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.992464, 12.534180, 28.695612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469830, 0.599380, -0.648076,
		0.392468, 0.515774, 0.761542,
		0.790714, -0.612145, 0.007089,
		14.229678, 12.350536, 28.697739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.230567, 13.231962, 28.660242>,  <13.676178, 12.779037, 28.692776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.230567, 13.231962, 28.660242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.343769, 12.869603, 28.534220>,  <14.411690, 12.652188, 28.458607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.343769, 12.869603, 28.534220>,  <14.230567, 13.231962, 28.660242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.343769, 12.869603, 28.534220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529778, 0.421471, -0.736001,
		0.799527, 0.041383, 0.599202,
		0.283005, -0.905897, -0.315054,
		14.428671, 12.597834, 28.439703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.932688, 13.263652, 28.378521>,  <14.230567, 13.231962, 28.660242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.932688, 13.263652, 28.378521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.800356, 12.923976, 28.213875>,  <14.720957, 12.720170, 28.115088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.800356, 12.923976, 28.213875>,  <14.932688, 13.263652, 28.378521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.800356, 12.923976, 28.213875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424140, 0.255838, -0.868707,
		0.843005, -0.461976, 0.275537,
		-0.330829, -0.849191, -0.411616,
		14.701107, 12.669219, 28.090389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.427993, 13.019337, 27.962090>,  <14.932688, 13.263652, 28.378521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.427993, 13.019337, 27.962090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.110410, 12.819685, 27.823236>,  <14.919860, 12.699894, 27.739925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.110410, 12.819685, 27.823236>,  <15.427993, 13.019337, 27.962090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.110410, 12.819685, 27.823236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289062, 0.192395, -0.937778,
		0.534860, -0.844898, -0.008473,
		-0.793957, -0.499130, -0.347132,
		14.872223, 12.669946, 27.719097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.772044, 12.659507, 27.450651>,  <15.427993, 13.019337, 27.962090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.772044, 12.659507, 27.450651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.386404, 12.648416, 27.345018>,  <15.155020, 12.641761, 27.281639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.386404, 12.648416, 27.345018>,  <15.772044, 12.659507, 27.450651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.386404, 12.648416, 27.345018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255265, 0.177123, -0.950509,
		0.073130, -0.983798, -0.163687,
		-0.964102, -0.027727, -0.264082,
		15.097174, 12.640098, 27.265793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.704399, 12.186736, 26.887651>,  <15.772044, 12.659507, 27.450651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.704399, 12.186736, 26.887651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.376835, 12.416300, 26.886124>,  <15.180296, 12.554038, 26.885208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.376835, 12.416300, 26.886124>,  <15.704399, 12.186736, 26.887651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.376835, 12.416300, 26.886124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133158, 0.183524, -0.973955,
		-0.558260, -0.798090, -0.226711,
		-0.818911, 0.573909, -0.003818,
		15.131162, 12.588472, 26.884977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.425384, 12.012253, 26.202414>,  <15.704399, 12.186736, 26.887651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.425384, 12.012253, 26.202414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.259521, 12.353480, 26.329117>,  <15.160005, 12.558217, 26.405140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.259521, 12.353480, 26.329117>,  <15.425384, 12.012253, 26.202414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.259521, 12.353480, 26.329117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144403, 0.405370, -0.902675,
		-0.898448, -0.328557, -0.291274,
		-0.414655, 0.853068, 0.316760,
		15.135125, 12.609401, 26.424145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.823434, 12.140621, 25.745363>,  <15.425384, 12.012253, 26.202414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.823434, 12.140621, 25.745363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.960457, 12.475825, 25.915255>,  <15.042670, 12.676948, 26.017189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.960457, 12.475825, 25.915255>,  <14.823434, 12.140621, 25.745363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.960457, 12.475825, 25.915255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308048, 0.326903, -0.893443,
		-0.887559, 0.436892, -0.146165,
		0.342557, 0.838010, 0.424729,
		15.063224, 12.727228, 26.042673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.760962, 12.728628, 25.253189>,  <14.823434, 12.140621, 25.745363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.760962, 12.728628, 25.253189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.999770, 12.947214, 25.488117>,  <15.143055, 13.078366, 25.629074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.999770, 12.947214, 25.488117>,  <14.760962, 12.728628, 25.253189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.999770, 12.947214, 25.488117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440741, 0.388295, -0.809305,
		-0.670311, 0.742026, -0.009031,
		0.597018, 0.546466, 0.587320,
		15.178876, 13.111154, 25.664312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.848629, 13.427990, 24.931425>,  <14.760962, 12.728628, 25.253189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.848629, 13.427990, 24.931425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.154651, 13.377309, 25.183975>,  <15.338264, 13.346900, 25.335506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.154651, 13.377309, 25.183975>,  <14.848629, 13.427990, 24.931425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.154651, 13.377309, 25.183975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622815, 0.394792, -0.675456,
		-0.163680, 0.909992, 0.380950,
		0.765055, -0.126703, 0.631377,
		15.384168, 13.339298, 25.373388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.166324, 14.047232, 24.926378>,  <14.848629, 13.427990, 24.931425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.166324, 14.047232, 24.926378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.431460, 13.775558, 25.052460>,  <15.590542, 13.612555, 25.128109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.431460, 13.775558, 25.052460>,  <15.166324, 14.047232, 24.926378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.431460, 13.775558, 25.052460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601634, 0.232508, -0.764184,
		0.445733, 0.696169, 0.562735,
		0.662841, -0.679183, 0.315203,
		15.630313, 13.571804, 25.147020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.732826, 14.445638, 24.861879>,  <15.166324, 14.047232, 24.926378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.732826, 14.445638, 24.861879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.869263, 14.069655, 24.857128>,  <15.951125, 13.844067, 24.854279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.869263, 14.069655, 24.857128>,  <15.732826, 14.445638, 24.861879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.869263, 14.069655, 24.857128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699143, 0.262111, -0.665205,
		0.628376, 0.218593, 0.746566,
		0.341092, -0.939955, -0.011877,
		15.971590, 13.787669, 24.853565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.437622, 14.436186, 24.902868>,  <15.732826, 14.445638, 24.861879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.437622, 14.436186, 24.902868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.355951, 14.086048, 24.727558>,  <16.306948, 13.875965, 24.622372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.355951, 14.086048, 24.727558>,  <16.437622, 14.436186, 24.902868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.355951, 14.086048, 24.727558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755173, 0.144044, -0.639504,
		0.622917, -0.461545, 0.631626,
		-0.204178, -0.875344, -0.438273,
		16.294697, 13.823444, 24.596077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.148602, 14.195531, 24.681587>,  <16.437622, 14.436186, 24.902868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.148602, 14.195531, 24.681587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.888838, 13.964632, 24.483576>,  <16.732979, 13.826093, 24.364769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.888838, 13.964632, 24.483576>,  <17.148602, 14.195531, 24.681587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.888838, 13.964632, 24.483576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654362, -0.092569, -0.750494,
		0.387397, -0.811305, 0.437844,
		-0.649410, -0.577248, -0.495027,
		16.694016, 13.791457, 24.335068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.473330, 13.760846, 24.296211>,  <17.148602, 14.195531, 24.681587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.473330, 13.760846, 24.296211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.125883, 13.763103, 24.098032>,  <16.917416, 13.764458, 23.979124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.125883, 13.763103, 24.098032>,  <17.473330, 13.760846, 24.296211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.125883, 13.763103, 24.098032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494551, 0.071140, -0.866232,
		0.030349, -0.997450, -0.064589,
		-0.868619, 0.005653, -0.495449,
		16.865297, 13.764797, 23.949398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.617771, 13.302629, 23.893000>,  <17.473330, 13.760846, 24.296211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.617771, 13.302629, 23.893000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.294991, 13.474512, 23.730923>,  <17.101322, 13.577641, 23.633677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.294991, 13.474512, 23.730923>,  <17.617771, 13.302629, 23.893000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.294991, 13.474512, 23.730923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302325, -0.288833, -0.908391,
		-0.507375, -0.855528, 0.103163,
		-0.806950, 0.429707, -0.405194,
		17.052906, 13.603424, 23.609364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.196651, 12.839715, 23.614523>,  <17.617771, 13.302629, 23.893000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.196651, 12.839715, 23.614523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.128359, 13.180646, 23.416780>,  <17.087383, 13.385204, 23.298136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.128359, 13.180646, 23.416780>,  <17.196651, 12.839715, 23.614523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.128359, 13.180646, 23.416780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292585, -0.435237, -0.851447,
		-0.940874, -0.290011, -0.175070,
		-0.170732, 0.852328, -0.494356,
		17.077139, 13.436344, 23.268475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181936, 12.596214, 22.924116>,  <17.196651, 12.839715, 23.614523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.181936, 12.596214, 22.924116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.153128, 12.988216, 22.849924>,  <17.135843, 13.223417, 22.805408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.153128, 12.988216, 22.849924>,  <17.181936, 12.596214, 22.924116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.153128, 12.988216, 22.849924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319926, -0.153437, -0.934935,
		-0.944701, -0.126673, -0.302479,
		-0.072019, 0.980006, -0.185478,
		17.131521, 13.282218, 22.794281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.785860, 12.668769, 22.337763>,  <17.181936, 12.596214, 22.924116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.785860, 12.668769, 22.337763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.058340, 12.959444, 22.373291>,  <17.221828, 13.133849, 22.394608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.058340, 12.959444, 22.373291>,  <16.785860, 12.668769, 22.337763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.058340, 12.959444, 22.373291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239654, -0.106709, -0.964976,
		-0.691759, 0.678630, -0.246844,
		0.681202, 0.726688, 0.088819,
		17.262701, 13.177450, 22.399937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.790113, 13.000407, 21.726273>,  <16.785860, 12.668769, 22.337763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.790113, 13.000407, 21.726273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.127337, 13.155225, 21.875647>,  <17.329670, 13.248116, 21.965271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.127337, 13.155225, 21.875647>,  <16.790113, 13.000407, 21.726273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.127337, 13.155225, 21.875647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350920, 0.130321, -0.927293,
		-0.407569, 0.912805, -0.025953,
		0.843056, 0.387043, 0.373436,
		17.380253, 13.271338, 21.987677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.790819, 13.495778, 21.346369>,  <16.790113, 13.000407, 21.726273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.790819, 13.495778, 21.346369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.171345, 13.494067, 21.469645>,  <17.399660, 13.493040, 21.543610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.171345, 13.494067, 21.469645>,  <16.790819, 13.495778, 21.346369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.171345, 13.494067, 21.469645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298548, 0.261294, -0.917929,
		-0.076601, 0.965250, 0.249851,
		0.951316, -0.004278, 0.308189,
		17.456739, 13.492784, 21.562101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.086178, 14.114318, 21.063133>,  <16.790819, 13.495778, 21.346369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.086178, 14.114318, 21.063133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.373724, 13.846471, 21.137802>,  <17.546251, 13.685762, 21.182604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.373724, 13.846471, 21.137802>,  <17.086178, 14.114318, 21.063133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.373724, 13.846471, 21.137802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433861, 0.222372, -0.873107,
		0.543137, 0.708635, 0.450376,
		0.718865, -0.669617, 0.186670,
		17.589384, 13.645586, 21.193804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.778469, 14.425404, 20.940062>,  <17.086178, 14.114318, 21.063133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.778469, 14.425404, 20.940062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.880310, 14.038746, 20.928902>,  <17.941414, 13.806751, 20.922205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.880310, 14.038746, 20.928902>,  <17.778469, 14.425404, 20.940062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.880310, 14.038746, 20.928902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484821, 0.152553, -0.861206,
		0.836735, 0.205739, 0.507489,
		0.254603, -0.966643, -0.027899,
		17.956692, 13.748753, 20.920532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.514538, 14.343332, 20.827370>,  <17.778469, 14.425404, 20.940062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.514538, 14.343332, 20.827370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.345600, 14.002840, 20.702770>,  <18.244238, 13.798545, 20.628012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.345600, 14.002840, 20.702770>,  <18.514538, 14.343332, 20.827370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.345600, 14.002840, 20.702770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614120, -0.015956, -0.789051,
		0.666695, -0.524548, 0.529498,
		-0.422343, -0.851232, -0.311498,
		18.218897, 13.747471, 20.609322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.078171, 13.922173, 20.648340>,  <18.514538, 14.343332, 20.827370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.078171, 13.922173, 20.648340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.751101, 13.793207, 20.457569>,  <18.554859, 13.715828, 20.343107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.751101, 13.793207, 20.457569>,  <19.078171, 13.922173, 20.648340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.751101, 13.793207, 20.457569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457857, 0.137978, -0.878254,
		0.348966, -0.936489, 0.034798,
		-0.817674, -0.322413, -0.476928,
		18.505798, 13.696484, 20.314491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.352528, 13.609714, 20.110767>,  <19.078171, 13.922173, 20.648340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.352528, 13.609714, 20.110767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.975103, 13.635811, 19.980883>,  <18.748650, 13.651469, 19.902952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.975103, 13.635811, 19.980883>,  <19.352528, 13.609714, 20.110767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.975103, 13.635811, 19.980883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331203, 0.187313, -0.924780,
		0.000486, -0.980131, -0.198350,
		-0.943559, 0.065244, -0.324713,
		18.692036, 13.655384, 19.883469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.404331, 13.293010, 19.425625>,  <19.352528, 13.609714, 20.110767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.404331, 13.293010, 19.425625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.066210, 13.506706, 19.428436>,  <18.863337, 13.634924, 19.430122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.066210, 13.506706, 19.428436>,  <19.404331, 13.293010, 19.425625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.066210, 13.506706, 19.428436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177310, 0.292911, -0.939556,
		-0.504009, -0.792962, -0.342325,
		-0.845303, 0.534242, 0.007029,
		18.812618, 13.666979, 19.430546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.194374, 13.252960, 18.748516>,  <19.404331, 13.293010, 19.425625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.194374, 13.252960, 18.748516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.998705, 13.571677, 18.890408>,  <18.881304, 13.762907, 18.975542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.998705, 13.571677, 18.890408>,  <19.194374, 13.252960, 18.748516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.998705, 13.571677, 18.890408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184466, 0.492027, -0.850813,
		-0.852456, -0.350760, -0.387668,
		-0.489174, 0.796792, 0.354728,
		18.851954, 13.810715, 18.996826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.947550, 13.554315, 18.198172>,  <19.194374, 13.252960, 18.748516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.947550, 13.554315, 18.198172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.908815, 13.846034, 18.469095>,  <18.885574, 14.021066, 18.631649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.908815, 13.846034, 18.469095>,  <18.947550, 13.554315, 18.198172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.908815, 13.846034, 18.469095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401206, 0.651370, -0.644011,
		-0.910855, 0.209378, -0.355674,
		-0.096834, 0.729299, 0.677308,
		18.879765, 14.064824, 18.672287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.518322, 13.981656, 17.789158>,  <18.947550, 13.554315, 18.198172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.518322, 13.981656, 17.789158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.720648, 14.177011, 18.073589>,  <18.842043, 14.294224, 18.244247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.720648, 14.177011, 18.073589>,  <18.518322, 13.981656, 17.789158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.720648, 14.177011, 18.073589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209531, 0.730059, -0.650470,
		-0.836810, 0.478009, 0.266941,
		0.505813, 0.488387, 0.711078,
		18.872391, 14.323526, 18.286913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.277115, 14.627391, 17.706419>,  <18.518322, 13.981656, 17.789158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.277115, 14.627391, 17.706419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.627432, 14.639970, 17.899084>,  <18.837622, 14.647517, 18.014683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.627432, 14.639970, 17.899084>,  <18.277115, 14.627391, 17.706419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.627432, 14.639970, 17.899084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311754, 0.724973, -0.614186,
		-0.368507, 0.688059, 0.625122,
		0.875792, 0.031447, 0.481663,
		18.890169, 14.649405, 18.043583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.383459, 15.308623, 17.731499>,  <18.277115, 14.627391, 17.706419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.383459, 15.308623, 17.731499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.731836, 15.128980, 17.811255>,  <18.940863, 15.021194, 17.859108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.731836, 15.128980, 17.811255>,  <18.383459, 15.308623, 17.731499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.731836, 15.128980, 17.811255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473803, 0.659981, -0.583040,
		0.130255, 0.602267, 0.787597,
		0.870945, -0.449109, 0.199390,
		18.993120, 14.994246, 17.871071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.852058, 15.889022, 17.872849>,  <18.383459, 15.308623, 17.731499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.852058, 15.889022, 17.872849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.088991, 15.589400, 17.754145>,  <19.231150, 15.409628, 17.682922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.088991, 15.589400, 17.754145>,  <18.852058, 15.889022, 17.872849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.088991, 15.589400, 17.754145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537220, 0.641682, -0.547392,
		0.600450, 0.164813, 0.782494,
		0.592330, -0.749053, -0.296757,
		19.266689, 15.364684, 17.665117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.395554, 16.220570, 17.682476>,  <18.852058, 15.889022, 17.872849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.395554, 16.220570, 17.682476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.483807, 15.859871, 17.533789>,  <19.536758, 15.643452, 17.444576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.483807, 15.859871, 17.533789>,  <19.395554, 16.220570, 17.682476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.483807, 15.859871, 17.533789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727060, 0.406097, -0.553597,
		0.650157, -0.148118, 0.745223,
		0.220635, -0.901746, -0.371717,
		19.549997, 15.589347, 17.422274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.056007, 16.135075, 17.757452>,  <19.395554, 16.220570, 17.682476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.056007, 16.135075, 17.757452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.919825, 15.912867, 17.454008>,  <19.838116, 15.779542, 17.271942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.919825, 15.912867, 17.454008>,  <20.056007, 16.135075, 17.757452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.919825, 15.912867, 17.454008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608950, 0.484473, -0.628065,
		0.716428, -0.675784, 0.173342,
		-0.340456, -0.555520, -0.758609,
		19.817688, 15.746211, 17.226425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.675560, 15.838306, 17.475834>,  <20.056007, 16.135075, 17.757452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.675560, 15.838306, 17.475834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.393883, 15.787716, 17.196373>,  <20.224876, 15.757361, 17.028696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.393883, 15.787716, 17.196373>,  <20.675560, 15.838306, 17.475834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.393883, 15.787716, 17.196373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656206, 0.259812, -0.708443,
		0.271126, -0.957340, -0.099957,
		-0.704191, -0.126485, -0.698654,
		20.182625, 15.749773, 16.986776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.994009, 15.595171, 16.933191>,  <20.675560, 15.838306, 17.475834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.994009, 15.595171, 16.933191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.667555, 15.765764, 16.777224>,  <20.471684, 15.868120, 16.683643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.667555, 15.765764, 16.777224>,  <20.994009, 15.595171, 16.933191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.667555, 15.765764, 16.777224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566314, 0.456075, -0.686501,
		-0.114949, -0.781094, -0.613742,
		-0.816134, 0.426484, -0.389919,
		20.422714, 15.893709, 16.660248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.929716, 15.391541, 16.161379>,  <20.994009, 15.595171, 16.933191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.929716, 15.391541, 16.161379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.757099, 15.741611, 16.248869>,  <20.653528, 15.951653, 16.301363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.757099, 15.741611, 16.248869>,  <20.929716, 15.391541, 16.161379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.757099, 15.741611, 16.248869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522506, 0.440149, -0.730244,
		-0.735363, -0.200845, -0.647227,
		-0.431543, 0.875174, 0.218727,
		20.627636, 16.004162, 16.314487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.371893, 15.927833, 15.726916>,  <20.929716, 15.391541, 16.161379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.371893, 15.927833, 15.726916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.055513, 16.094118, 15.906508>,  <20.865686, 16.193890, 16.014263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.055513, 16.094118, 15.906508>,  <21.371893, 15.927833, 15.726916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.055513, 16.094118, 15.906508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274082, 0.896742, -0.347465,
		-0.547065, -0.151770, -0.823216,
		-0.790948, 0.415715, 0.448979,
		20.818230, 16.218832, 16.041203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.988060, 16.234779, 15.266392>,  <21.371893, 15.927833, 15.726916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.988060, 16.234779, 15.266392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.872787, 16.442501, 15.588205>,  <20.803623, 16.567135, 15.781293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.872787, 16.442501, 15.588205>,  <20.988060, 16.234779, 15.266392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.872787, 16.442501, 15.588205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040226, 0.846001, -0.531662,
		-0.956730, -0.120852, -0.264692,
		-0.288182, 0.519305, 0.804533,
		20.786333, 16.598293, 15.829565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.260466, 16.365013, 15.314900>,  <20.988060, 16.234779, 15.266392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.260466, 16.365013, 15.314900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.479525, 16.652899, 15.485588>,  <20.610960, 16.825630, 15.588000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.479525, 16.652899, 15.485588>,  <20.260466, 16.365013, 15.314900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.479525, 16.652899, 15.485588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377454, 0.667664, -0.641680,
		-0.746733, 0.190349, 0.637305,
		0.547649, 0.719717, 0.426719,
		20.643820, 16.868814, 15.613604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.838404, 16.966057, 15.424653>,  <20.260466, 16.365013, 15.314900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.838404, 16.966057, 15.424653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.208521, 17.116756, 15.407248>,  <20.430592, 17.207176, 15.396806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.208521, 17.116756, 15.407248>,  <19.838404, 16.966057, 15.424653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.208521, 17.116756, 15.407248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299620, 0.655836, -0.692897,
		-0.232514, 0.654169, 0.719722,
		0.925292, 0.376751, -0.043511,
		20.486109, 17.229782, 15.394196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.899881, 17.693846, 15.809399>,  <19.838404, 16.966057, 15.424653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.899881, 17.693846, 15.809399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.155493, 17.627947, 15.508865>,  <20.308859, 17.588408, 15.328546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.155493, 17.627947, 15.508865>,  <19.899881, 17.693846, 15.809399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.155493, 17.627947, 15.508865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473234, 0.685834, -0.552885,
		0.606377, 0.708865, 0.360302,
		0.639028, -0.164749, -0.751333,
		20.347200, 17.578522, 15.283465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.050476, 18.256996, 15.434380>,  <19.899881, 17.693846, 15.809399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.050476, 18.256996, 15.434380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.213919, 18.075029, 15.117876>,  <20.311985, 17.965849, 14.927974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.213919, 18.075029, 15.117876>,  <20.050476, 18.256996, 15.434380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.213919, 18.075029, 15.117876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154824, 0.819822, -0.551291,
		0.899482, 0.347769, 0.264554,
		0.408609, -0.454917, -0.791258,
		20.336502, 17.938555, 14.880499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.646421, 18.622889, 15.192872>,  <20.050476, 18.256996, 15.434380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.646421, 18.622889, 15.192872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.500040, 18.406050, 14.890294>,  <20.412210, 18.275946, 14.708747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.500040, 18.406050, 14.890294>,  <20.646421, 18.622889, 15.192872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.500040, 18.406050, 14.890294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197002, 0.839533, -0.506335,
		0.909543, -0.036274, -0.414024,
		-0.365954, -0.542096, -0.756445,
		20.390253, 18.243422, 14.663361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.858486, 18.902353, 14.492846>,  <20.646421, 18.622889, 15.192872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.858486, 18.902353, 14.492846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.518358, 18.701687, 14.429239>,  <20.314281, 18.581287, 14.391076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.518358, 18.701687, 14.429239>,  <20.858486, 18.902353, 14.492846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.518358, 18.701687, 14.429239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258300, 0.661101, -0.704434,
		0.458516, -0.557921, -0.691728,
		-0.850320, -0.501667, -0.159014,
		20.263262, 18.551188, 14.381535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.853300, 18.786829, 13.731631>,  <20.858486, 18.902353, 14.492846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.853300, 18.786829, 13.731631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.486591, 18.760509, 13.889213>,  <20.266565, 18.744719, 13.983761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.486591, 18.760509, 13.889213>,  <20.853300, 18.786829, 13.731631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.486591, 18.760509, 13.889213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332498, 0.672224, -0.661483,
		-0.221300, -0.737418, -0.638154,
		-0.916773, -0.065799, 0.393953,
		20.211559, 18.740770, 14.007399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.401602, 18.643997, 13.096404>,  <20.853300, 18.786829, 13.731631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.401602, 18.643997, 13.096404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.179762, 18.789042, 13.395986>,  <20.046658, 18.876068, 13.575734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.179762, 18.789042, 13.395986>,  <20.401602, 18.643997, 13.096404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.179762, 18.789042, 13.395986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406664, 0.667141, -0.624137,
		-0.725978, -0.650718, -0.222534,
		-0.554599, 0.362613, 0.748954,
		20.013382, 18.897825, 13.620672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.671188, 18.713577, 12.852735>,  <20.401602, 18.643997, 13.096404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.671188, 18.713577, 12.852735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.723503, 18.970091, 13.155166>,  <19.754892, 19.123999, 13.336624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.723503, 18.970091, 13.155166>,  <19.671188, 18.713577, 12.852735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.723503, 18.970091, 13.155166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350141, 0.743360, -0.569927,
		-0.927521, -0.190194, 0.321761,
		0.130787, 0.641282, 0.756077,
		19.762739, 19.162476, 13.381989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.208538, 19.215044, 12.633749>,  <19.671188, 18.713577, 12.852735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.208538, 19.215044, 12.633749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.406984, 19.388397, 12.934693>,  <19.526052, 19.492409, 13.115260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.406984, 19.388397, 12.934693>,  <19.208538, 19.215044, 12.633749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.406984, 19.388397, 12.934693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158936, 0.897208, -0.412017,
		-0.853587, 0.084830, 0.513998,
		0.496114, 0.433385, 0.752362,
		19.555819, 19.518414, 13.160402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.747883, 19.726908, 12.770002>,  <19.208538, 19.215044, 12.633749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.747883, 19.726908, 12.770002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.107491, 19.829420, 12.912036>,  <19.323256, 19.890928, 12.997256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.107491, 19.829420, 12.912036>,  <18.747883, 19.726908, 12.770002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.107491, 19.829420, 12.912036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210188, 0.963889, -0.163518,
		-0.384169, 0.072372, 0.920422,
		0.899019, 0.256281, 0.355085,
		19.377195, 19.906303, 13.018561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.617275, 20.265543, 13.154150>,  <18.747883, 19.726908, 12.770002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.617275, 20.265543, 13.154150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.009514, 20.294430, 13.081255>,  <19.244858, 20.311762, 13.037518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.009514, 20.294430, 13.081255>,  <18.617275, 20.265543, 13.154150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.009514, 20.294430, 13.081255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101837, 0.982044, -0.158803,
		0.167497, 0.174280, 0.970346,
		0.980599, 0.072218, -0.182238,
		19.303694, 20.316095, 13.026584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.920189, 20.793329, 13.619500>,  <18.617275, 20.265543, 13.154150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.920189, 20.793329, 13.619500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.142939, 20.762001, 13.288741>,  <19.276588, 20.743204, 13.090286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.142939, 20.762001, 13.288741>,  <18.920189, 20.793329, 13.619500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.142939, 20.762001, 13.288741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008727, 0.996041, -0.088465,
		0.830552, 0.042047, 0.555351,
		0.556873, -0.078322, -0.826897,
		19.309999, 20.738504, 13.040672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.580748, 21.279663, 13.699162>,  <18.920189, 20.793329, 13.619500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.580748, 21.279663, 13.699162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.523411, 21.208797, 13.309688>,  <19.489010, 21.166277, 13.076003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.523411, 21.208797, 13.309688>,  <19.580748, 21.279663, 13.699162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.523411, 21.208797, 13.309688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043420, 0.984025, -0.172655,
		0.988720, 0.017530, -0.148742,
		-0.143339, -0.177166, -0.973687,
		19.480408, 21.155647, 13.017582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.015099, 21.719261, 13.461549>,  <19.580748, 21.279663, 13.699162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.015099, 21.719261, 13.461549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.799614, 21.647526, 13.132277>,  <19.670322, 21.604485, 12.934713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.799614, 21.647526, 13.132277>,  <20.015099, 21.719261, 13.461549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.799614, 21.647526, 13.132277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000342, 0.977035, -0.213081,
		0.842489, -0.115071, -0.526281,
		-0.538714, -0.179338, -0.823180,
		19.638000, 21.593725, 12.885323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.398102, 21.996952, 12.906638>,  <20.015099, 21.719261, 13.461549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.398102, 21.996952, 12.906638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.018715, 21.974634, 12.781870>,  <19.791082, 21.961245, 12.707009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.018715, 21.974634, 12.781870>,  <20.398102, 21.996952, 12.906638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.018715, 21.974634, 12.781870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086947, 0.900770, -0.425504,
		0.304708, -0.430698, -0.849501,
		-0.948469, -0.055793, -0.311920,
		19.734175, 21.957897, 12.688293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.366774, 22.491957, 12.387436>,  <20.398102, 21.996952, 12.906638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.366774, 22.491957, 12.387436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.970675, 22.440878, 12.409713>,  <19.733015, 22.410231, 12.423079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.970675, 22.440878, 12.409713>,  <20.366774, 22.491957, 12.387436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.970675, 22.440878, 12.409713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138484, 0.945843, -0.293604,
		-0.015183, -0.298453, -0.954304,
		-0.990248, -0.127698, 0.055692,
		19.673599, 22.402569, 12.426420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.063168, 22.606829, 11.693894>,  <20.366774, 22.491957, 12.387436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.063168, 22.606829, 11.693894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.809715, 22.683010, 11.993825>,  <19.657644, 22.728718, 12.173783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.809715, 22.683010, 11.993825>,  <20.063168, 22.606829, 11.693894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.809715, 22.683010, 11.993825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287751, 0.841668, -0.456941,
		-0.718129, -0.505295, -0.478505,
		-0.633632, 0.190452, 0.749826,
		19.619625, 22.740145, 12.218773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.426786, 22.848616, 11.333340>,  <20.063168, 22.606829, 11.693894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.426786, 22.848616, 11.333340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.373812, 22.971409, 11.710321>,  <19.342028, 23.045086, 11.936511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.373812, 22.971409, 11.710321>,  <19.426786, 22.848616, 11.333340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.373812, 22.971409, 11.710321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409014, 0.849177, -0.334076,
		-0.902867, -0.429720, 0.013101,
		-0.132434, 0.306985, 0.942455,
		19.334082, 23.063503, 11.993058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.825720, 23.314316, 11.300081>,  <19.426786, 22.848616, 11.333340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.825720, 23.314316, 11.300081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.997206, 23.402437, 11.650548>,  <19.100098, 23.455309, 11.860828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.997206, 23.402437, 11.650548>,  <18.825720, 23.314316, 11.300081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.997206, 23.402437, 11.650548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211353, 0.967358, -0.139815,
		-0.878370, -0.125240, 0.461283,
		0.428715, 0.220302, 0.876168,
		19.125820, 23.468529, 11.913399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.356623, 23.753798, 11.670135>,  <18.825720, 23.314316, 11.300081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.356623, 23.753798, 11.670135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.708481, 23.799898, 11.854715>,  <18.919596, 23.827559, 11.965464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.708481, 23.799898, 11.854715>,  <18.356623, 23.753798, 11.670135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.708481, 23.799898, 11.854715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100034, 0.993327, -0.057399,
		-0.464989, 0.004330, 0.885306,
		0.879647, 0.115251, 0.461453,
		18.972374, 23.834473, 11.993151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.277893, 24.332703, 12.162953>,  <18.356623, 23.753798, 11.670135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.277893, 24.332703, 12.162953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.666721, 24.306396, 12.072842>,  <18.900019, 24.290613, 12.018774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.666721, 24.306396, 12.072842>,  <18.277893, 24.332703, 12.162953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.666721, 24.306396, 12.072842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041787, 0.993096, -0.109610,
		0.230933, 0.097135, 0.968109,
		0.972072, -0.065766, -0.225280,
		18.958344, 24.286667, 12.005258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.459448, 24.942478, 12.343449>,  <18.277893, 24.332703, 12.162953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.459448, 24.942478, 12.343449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.770416, 24.810957, 12.128970>,  <18.956997, 24.732044, 12.000282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.770416, 24.810957, 12.128970>,  <18.459448, 24.942478, 12.343449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.770416, 24.810957, 12.128970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208986, 0.939082, -0.272856,
		0.593249, 0.100066, 0.798775,
		0.777419, -0.328804, -0.536197,
		19.003641, 24.712317, 11.968111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.037920, 25.402702, 12.525997>,  <18.459448, 24.942478, 12.343449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.037920, 25.402702, 12.525997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.117456, 25.237814, 12.170349>,  <19.165178, 25.138880, 11.956961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.117456, 25.237814, 12.170349>,  <19.037920, 25.402702, 12.525997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.117456, 25.237814, 12.170349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223737, 0.902372, -0.368330,
		0.954151, -0.125689, 0.271659,
		0.198842, -0.412223, -0.889120,
		19.177109, 25.114147, 11.903613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.570494, 25.697371, 12.270053>,  <19.037920, 25.402702, 12.525997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.570494, 25.697371, 12.270053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.398405, 25.557028, 11.937353>,  <19.295151, 25.472822, 11.737733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.398405, 25.557028, 11.937353>,  <19.570494, 25.697371, 12.270053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.398405, 25.557028, 11.937353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175456, 0.871309, -0.458296,
		0.885506, -0.343106, -0.313300,
		-0.430225, -0.350854, -0.831750,
		19.269339, 25.451771, 11.687828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.942581, 25.961054, 11.688468>,  <19.570494, 25.697371, 12.270053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.942581, 25.961054, 11.688468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.600588, 25.836626, 11.522461>,  <19.395391, 25.761969, 11.422856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.600588, 25.836626, 11.522461>,  <19.942581, 25.961054, 11.688468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.600588, 25.836626, 11.522461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059786, 0.735736, -0.674625,
		0.515197, -0.601606, -0.610445,
		-0.854984, -0.311069, -0.415017,
		19.344093, 25.743305, 11.397956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.138819, 25.958981, 10.946236>,  <19.942581, 25.961054, 11.688468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.138819, 25.958981, 10.946236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.756718, 26.030554, 11.040451>,  <19.527458, 26.073498, 11.096980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.756718, 26.030554, 11.040451>,  <20.138819, 25.958981, 10.946236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.756718, 26.030554, 11.040451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033939, 0.857330, -0.513647,
		-0.293842, -0.482668, -0.825038,
		-0.955251, 0.178932, 0.235538,
		19.470142, 26.084234, 11.111113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.819939, 25.716398, 11.100274>,  <20.138819, 25.958981, 10.946236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.819939, 25.716398, 11.100274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.779060, 25.498728, 11.433363>,  <20.754534, 25.368126, 11.633217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.779060, 25.498728, 11.433363>,  <20.819939, 25.716398, 11.100274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.779060, 25.498728, 11.433363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994656, -0.043571, 0.093596,
		-0.014650, 0.837838, 0.545722,
		-0.102196, -0.544177, 0.832723,
		20.748402, 25.335474, 11.683180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.164597, 25.992588, 11.742504>,  <20.819939, 25.716398, 11.100274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.164597, 25.992588, 11.742504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.133478, 25.594469, 11.765593>,  <21.114807, 25.355598, 11.779446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.133478, 25.594469, 11.765593>,  <21.164597, 25.992588, 11.742504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.133478, 25.594469, 11.765593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996915, -0.077053, 0.014963,
		-0.010445, 0.058707, 0.998221,
		-0.077794, -0.995297, 0.057721,
		21.110140, 25.295879, 11.782909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.295162, 25.866526, 12.383239>,  <21.164597, 25.992588, 11.742504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.295162, 25.866526, 12.383239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.374660, 25.603029, 12.092981>,  <21.422359, 25.444931, 11.918827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.374660, 25.603029, 12.092981>,  <21.295162, 25.866526, 12.383239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.374660, 25.603029, 12.092981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979960, 0.143672, 0.137977,
		0.013364, -0.738525, 0.674094,
		0.198747, -0.658741, -0.725644,
		21.434284, 25.405407, 11.875288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.799429, 25.341269, 12.598207>,  <21.295162, 25.866526, 12.383239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.799429, 25.341269, 12.598207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.822735, 25.267529, 12.205753>,  <21.836718, 25.223284, 11.970282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.822735, 25.267529, 12.205753>,  <21.799429, 25.341269, 12.598207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.822735, 25.267529, 12.205753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998243, 0.000098, 0.059261,
		-0.010828, -0.982861, 0.184032,
		0.058263, -0.184350, -0.981132,
		21.840214, 25.212223, 11.911413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.014629, 24.699791, 12.355338>,  <21.799429, 25.341269, 12.598207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.014629, 24.699791, 12.355338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.120762, 24.973763, 12.083906>,  <22.184441, 25.138145, 11.921047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.120762, 24.973763, 12.083906>,  <22.014629, 24.699791, 12.355338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.120762, 24.973763, 12.083906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950662, -0.303192, 0.065689,
		-0.160748, -0.662530, -0.731583,
		0.265331, 0.684930, -0.678580,
		22.200361, 25.179241, 11.880332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.197241, 24.481215, 11.567114>,  <22.014629, 24.699791, 12.355338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.197241, 24.481215, 11.567114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.402342, 24.810066, 11.666060>,  <22.525402, 25.007378, 11.725429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.402342, 24.810066, 11.666060>,  <22.197241, 24.481215, 11.567114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.402342, 24.810066, 11.666060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858026, -0.480779, -0.180673,
		-0.029608, 0.304888, -0.951928,
		0.512752, 0.822128, 0.247367,
		22.556168, 25.056705, 11.740271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.829645, 24.526701, 11.133795>,  <22.197241, 24.481215, 11.567114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.829645, 24.526701, 11.133795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.907217, 24.756857, 11.451617>,  <22.953760, 24.894951, 11.642310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.907217, 24.756857, 11.451617>,  <22.829645, 24.526701, 11.133795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.907217, 24.756857, 11.451617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977581, -0.181060, -0.107485,
		0.082016, 0.797587, -0.597603,
		0.193931, 0.575390, 0.794555,
		22.965397, 24.929474, 11.689983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.413305, 24.159014, 11.522935>,  <22.829645, 24.526701, 11.133795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.413305, 24.159014, 11.522935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.191860, 24.052345, 11.207365>,  <23.058994, 23.988344, 11.018023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.191860, 24.052345, 11.207365>,  <23.413305, 24.159014, 11.522935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.191860, 24.052345, 11.207365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150014, -0.899911, 0.409459,
		-0.819152, 0.345031, 0.458195,
		-0.553611, -0.266673, -0.788924,
		23.025778, 23.972343, 10.970688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.833879, 23.789446, 11.683444>,  <23.413305, 24.159014, 11.522935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.833879, 23.789446, 11.683444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.902929, 23.638494, 11.319513>,  <22.944359, 23.547924, 11.101154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.902929, 23.638494, 11.319513>,  <22.833879, 23.789446, 11.683444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.902929, 23.638494, 11.319513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017388, -0.922383, 0.385885,
		-0.984835, -0.082433, -0.152662,
		0.172623, -0.377379, -0.909828,
		22.954716, 23.525280, 11.046565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.250732, 23.334911, 11.560521>,  <22.833879, 23.789446, 11.683444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.250732, 23.334911, 11.560521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.551800, 23.227573, 11.320028>,  <22.732441, 23.163172, 11.175733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.551800, 23.227573, 11.320028>,  <22.250732, 23.334911, 11.560521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.551800, 23.227573, 11.320028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011101, -0.907873, 0.419099,
		-0.658305, -0.322117, -0.680349,
		0.752670, -0.268343, -0.601233,
		22.777601, 23.147070, 11.139659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.016983, 22.751989, 11.082893>,  <22.250732, 23.334911, 11.560521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.016983, 22.751989, 11.082893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.416809, 22.740511, 11.080191>,  <22.656704, 22.733624, 11.078568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.416809, 22.740511, 11.080191>,  <22.016983, 22.751989, 11.082893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.416809, 22.740511, 11.080191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026291, -0.971424, 0.235891,
		-0.013333, -0.235611, -0.971756,
		0.999565, -0.028694, -0.006758,
		22.716679, 22.731903, 11.078163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.145548, 22.166925, 10.680493>,  <22.016983, 22.751989, 11.082893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.145548, 22.166925, 10.680493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.482410, 22.218773, 10.889863>,  <22.684528, 22.249882, 11.015485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.482410, 22.218773, 10.889863>,  <22.145548, 22.166925, 10.680493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.482410, 22.218773, 10.889863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093515, -0.991079, 0.094963,
		0.531064, -0.031026, -0.846763,
		0.842155, 0.129616, 0.523425,
		22.735058, 22.257658, 11.046890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.483681, 21.645084, 10.500175>,  <22.145548, 22.166925, 10.680493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.483681, 21.645084, 10.500175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.676001, 21.749540, 10.834991>,  <22.791391, 21.812214, 11.035881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.676001, 21.749540, 10.834991>,  <22.483681, 21.645084, 10.500175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.676001, 21.749540, 10.834991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231928, -0.958496, 0.165814,
		0.845602, 0.114410, -0.521409,
		0.480798, 0.261142, 0.837041,
		22.820240, 21.827883, 11.086103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.862963, 21.049665, 10.595490>,  <22.483681, 21.645084, 10.500175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.862963, 21.049665, 10.595490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.857025, 21.240004, 10.947252>,  <22.853462, 21.354206, 11.158309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.857025, 21.240004, 10.947252>,  <22.862963, 21.049665, 10.595490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.857025, 21.240004, 10.947252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045437, -0.878272, 0.475999,
		0.998857, 0.047023, -0.008584,
		-0.014844, 0.475844, 0.879404,
		22.852571, 21.382757, 11.211074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.264740, 20.563011, 11.061842>,  <22.862963, 21.049665, 10.595490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.264740, 20.563011, 11.061842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.044125, 20.815592, 11.279859>,  <22.911755, 20.967140, 11.410668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.044125, 20.815592, 11.279859>,  <23.264740, 20.563011, 11.061842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.044125, 20.815592, 11.279859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173410, -0.725933, 0.665545,
		0.815924, 0.272560, 0.509882,
		-0.551541, 0.631453, 0.545041,
		22.878662, 21.005028, 11.443371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.452576, 20.466858, 11.722817>,  <23.264740, 20.563011, 11.061842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.452576, 20.466858, 11.722817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.090851, 20.620031, 11.798269>,  <22.873816, 20.711935, 11.843540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.090851, 20.620031, 11.798269>,  <23.452576, 20.466858, 11.722817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.090851, 20.620031, 11.798269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126544, -0.662511, 0.738286,
		0.407683, 0.643772, 0.647574,
		-0.904313, 0.382933, 0.188629,
		22.819557, 20.734911, 11.854857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.453844, 20.597408, 12.369386>,  <23.452576, 20.466858, 11.722817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.453844, 20.597408, 12.369386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.056700, 20.587746, 12.322657>,  <22.818413, 20.581947, 12.294620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.056700, 20.587746, 12.322657>,  <23.453844, 20.597408, 12.369386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.056700, 20.587746, 12.322657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061082, -0.738227, 0.671782,
		-0.102469, 0.674120, 0.731479,
		-0.992859, -0.024156, -0.116822,
		22.758842, 20.580500, 12.287610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.267506, 20.664005, 13.019006>,  <23.453844, 20.597408, 12.369386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.267506, 20.664005, 13.019006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.970976, 20.495203, 12.810256>,  <22.793058, 20.393923, 12.685006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.970976, 20.495203, 12.810256>,  <23.267506, 20.664005, 13.019006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.970976, 20.495203, 12.810256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029006, -0.756712, 0.653105,
		-0.670522, 0.499299, 0.548727,
		-0.741323, -0.422004, -0.521875,
		22.748579, 20.368601, 12.653693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.778557, 20.476328, 13.484631>,  <23.267506, 20.664005, 13.019006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.778557, 20.476328, 13.484631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.625708, 20.251129, 13.191505>,  <22.533997, 20.116011, 13.015630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.625708, 20.251129, 13.191505>,  <22.778557, 20.476328, 13.484631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.625708, 20.251129, 13.191505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204365, -0.721876, 0.661158,
		-0.901230, 0.402407, 0.160790,
		-0.382125, -0.562996, -0.732814,
		22.511070, 20.082230, 12.971662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.159643, 20.204012, 13.769520>,  <22.778557, 20.476328, 13.484631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.159643, 20.204012, 13.769520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.266512, 19.965815, 13.466467>,  <22.330633, 19.822897, 13.284636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.266512, 19.965815, 13.466467>,  <22.159643, 20.204012, 13.769520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.266512, 19.965815, 13.466467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063291, -0.795358, 0.602827,
		-0.961569, -0.113105, -0.250185,
		0.267170, -0.595494, -0.757633,
		22.346663, 19.787167, 13.239177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.651928, 19.620523, 13.833964>,  <22.159643, 20.204012, 13.769520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.651928, 19.620523, 13.833964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.980288, 19.496483, 13.642148>,  <22.177303, 19.422058, 13.527059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.980288, 19.496483, 13.642148>,  <21.651928, 19.620523, 13.833964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.980288, 19.496483, 13.642148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091247, -0.900158, 0.425898,
		-0.563734, -0.305864, -0.767236,
		0.820901, -0.310101, -0.479540,
		22.226559, 19.403452, 13.498286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.531908, 19.015646, 13.541412>,  <21.651928, 19.620523, 13.833964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.531908, 19.015646, 13.541412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.931559, 19.000736, 13.548974>,  <22.171349, 18.991791, 13.553511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.931559, 19.000736, 13.548974>,  <21.531908, 19.015646, 13.541412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.931559, 19.000736, 13.548974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040413, -0.976921, 0.209744,
		0.010651, -0.210324, -0.977573,
		0.999126, -0.037273, 0.018905,
		22.231297, 18.989553, 13.554646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.816536, 18.475071, 13.078167>,  <21.531908, 19.015646, 13.541412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.816536, 18.475071, 13.078167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.097132, 18.539841, 13.355783>,  <22.265490, 18.578703, 13.522353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.097132, 18.539841, 13.355783>,  <21.816536, 18.475071, 13.078167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.097132, 18.539841, 13.355783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045560, -0.961665, 0.270415,
		0.711222, -0.221314, -0.667221,
		0.701489, 0.161926, 0.694041,
		22.307579, 18.588419, 13.563995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.041479, 17.813110, 13.167604>,  <21.816536, 18.475071, 13.078167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.041479, 17.813110, 13.167604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.203327, 17.997864, 13.483313>,  <22.300436, 18.108715, 13.672737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.203327, 17.997864, 13.483313>,  <22.041479, 17.813110, 13.167604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.203327, 17.997864, 13.483313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208624, -0.793695, 0.571423,
		0.890370, -0.395869, -0.224784,
		0.404619, 0.461883, 0.789270,
		22.324713, 18.136429, 13.720094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.428400, 17.298046, 13.511056>,  <22.041479, 17.813110, 13.167604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.428400, 17.298046, 13.511056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.405437, 17.566492, 13.806706>,  <22.391661, 17.727560, 13.984097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.405437, 17.566492, 13.806706>,  <22.428400, 17.298046, 13.511056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.405437, 17.566492, 13.806706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146245, -0.738014, 0.658747,
		0.987581, -0.070277, 0.140514,
		-0.057406, 0.671116, 0.739127,
		22.388216, 17.767826, 14.028444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.889244, 17.062962, 14.062476>,  <22.428400, 17.298046, 13.511056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.889244, 17.062962, 14.062476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.593147, 17.287764, 14.210093>,  <22.415489, 17.422646, 14.298662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.593147, 17.287764, 14.210093>,  <22.889244, 17.062962, 14.062476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.593147, 17.287764, 14.210093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125705, -0.654899, 0.745189,
		0.660486, 0.505229, 0.555429,
		-0.740241, 0.562007, 0.369042,
		22.371075, 17.456366, 14.320806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.082954, 16.926975, 14.675257>,  <22.889244, 17.062962, 14.062476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.082954, 16.926975, 14.675257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.713314, 17.079494, 14.665071>,  <22.491529, 17.171005, 14.658960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.713314, 17.079494, 14.665071>,  <23.082954, 16.926975, 14.675257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.713314, 17.079494, 14.665071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305792, -0.697858, 0.647677,
		0.229188, 0.606305, 0.761490,
		-0.924102, 0.381298, -0.025462,
		22.436083, 17.193884, 14.657433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.627363, 16.591135, 14.284561>,  <23.082954, 16.926975, 14.675257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.627363, 16.591135, 14.284561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.804852, 16.793665, 13.988791>,  <23.911345, 16.915182, 13.811330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.804852, 16.793665, 13.988791>,  <23.627363, 16.591135, 14.284561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.804852, 16.793665, 13.988791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616896, 0.425916, 0.661842,
		0.650039, -0.749821, -0.123361,
		0.443721, 0.506324, -0.739424,
		23.937967, 16.945562, 13.766964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.303268, 16.512188, 14.348453>,  <23.627363, 16.591135, 14.284561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.303268, 16.512188, 14.348453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.234146, 16.860643, 14.164604>,  <24.192673, 17.069717, 14.054295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.234146, 16.860643, 14.164604>,  <24.303268, 16.512188, 14.348453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.234146, 16.860643, 14.164604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532944, 0.475129, 0.700159,
		0.828317, -0.123961, -0.546374,
		-0.172806, 0.871140, -0.459622,
		24.182304, 17.121986, 14.026717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.899940, 15.966569, 14.426301>,  <24.303268, 16.512188, 14.348453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.899940, 15.966569, 14.426301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897547, 16.093323, 14.805679>,  <24.896111, 16.169374, 15.033306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897547, 16.093323, 14.805679>,  <24.899940, 15.966569, 14.426301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.897547, 16.093323, 14.805679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409324, -0.864587, 0.291449,
		0.912369, 0.389965, -0.124535,
		-0.005983, 0.316885, 0.948445,
		24.895752, 16.188389, 15.090213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.552551, 15.839144, 14.758712>,  <24.899940, 15.966569, 14.426301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.552551, 15.839144, 14.758712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287697, 15.852098, 15.058186>,  <25.128784, 15.859870, 15.237870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287697, 15.852098, 15.058186>,  <25.552551, 15.839144, 14.758712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.287697, 15.852098, 15.058186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428150, -0.803601, 0.413416,
		0.615032, 0.594287, 0.518226,
		-0.662135, 0.032385, 0.748685,
		25.089056, 15.861814, 15.282791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.923746, 15.781976, 15.431330>,  <25.552551, 15.839144, 14.758712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.923746, 15.781976, 15.431330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549578, 15.641627, 15.448659>,  <25.325077, 15.557418, 15.459057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549578, 15.641627, 15.448659>,  <25.923746, 15.781976, 15.431330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.549578, 15.641627, 15.448659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343112, -0.871457, 0.350481,
		-0.085219, 0.342712, 0.935567,
		-0.935421, -0.350872, 0.043324,
		25.268951, 15.536366, 15.461657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326351, 15.201452, 15.334866>,  <25.923746, 15.781976, 15.431330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326351, 15.201452, 15.334866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.695808, 15.114360, 15.208708>,  <26.917482, 15.062104, 15.133013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.695808, 15.114360, 15.208708>,  <26.326351, 15.201452, 15.334866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.695808, 15.114360, 15.208708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251302, -0.965412, -0.069479,
		-0.289357, 0.143433, -0.946414,
		0.923645, -0.217731, -0.315394,
		26.972902, 15.049041, 15.114090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.528196, 15.874015, 24.632189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.157133, 15.943333, 24.499874>,  <11.934495, 15.984923, 24.420486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.157133, 15.943333, 24.499874>,  <12.528196, 15.874015, 24.632189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.157133, 15.943333, 24.499874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332924, -0.017438, -0.942793,
		-0.169151, -0.984715, -0.041517,
		-0.927658, 0.173296, -0.330785,
		11.878836, 15.995321, 24.400639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.442099, 15.473906, 24.101217>,  <12.528196, 15.874015, 24.632189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.442099, 15.473906, 24.101217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.141901, 15.725362, 24.019661>,  <11.961782, 15.876236, 23.970728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.141901, 15.725362, 24.019661>,  <12.442099, 15.473906, 24.101217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.141901, 15.725362, 24.019661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235270, -0.034160, -0.971329,
		-0.617582, -0.776945, -0.122263,
		-0.750493, 0.628641, -0.203889,
		11.916753, 15.913954, 23.958494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.942989, 15.087090, 23.570248>,  <12.442099, 15.473906, 24.101217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.942989, 15.087090, 23.570248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.863771, 15.477762, 23.537096>,  <11.816241, 15.712166, 23.517204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.863771, 15.477762, 23.537096>,  <11.942989, 15.087090, 23.570248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.863771, 15.477762, 23.537096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089516, -0.066181, -0.993784,
		-0.976097, -0.204232, -0.074322,
		-0.198043, 0.976683, -0.082881,
		11.804358, 15.770767, 23.512232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.409024, 15.158216, 22.946276>,  <11.942989, 15.087090, 23.570248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.409024, 15.158216, 22.946276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.600506, 15.503506, 23.010380>,  <11.715395, 15.710680, 23.048841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.600506, 15.503506, 23.010380>,  <11.409024, 15.158216, 22.946276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.600506, 15.503506, 23.010380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083314, 0.137046, -0.987055,
		-0.874014, 0.485859, -0.006314,
		0.478704, 0.863226, 0.160259,
		11.744117, 15.762473, 23.058456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.170836, 15.494403, 22.385578>,  <11.409024, 15.158216, 22.946276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.170836, 15.494403, 22.385578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.486982, 15.711895, 22.498489>,  <11.676670, 15.842390, 22.566236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.486982, 15.711895, 22.498489>,  <11.170836, 15.494403, 22.385578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.486982, 15.711895, 22.498489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293288, 0.068718, -0.953551,
		-0.537872, 0.836442, -0.105157,
		0.790365, 0.543730, 0.282280,
		11.724092, 15.875014, 22.583174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.142310, 16.186281, 22.015461>,  <11.170836, 15.494403, 22.385578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.142310, 16.186281, 22.015461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.517326, 16.110435, 22.132124>,  <11.742336, 16.064928, 22.202122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.517326, 16.110435, 22.132124>,  <11.142310, 16.186281, 22.015461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.517326, 16.110435, 22.132124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330154, 0.220811, -0.917737,
		0.109616, 0.956707, 0.269622,
		0.937541, -0.189615, 0.291657,
		11.798589, 16.053551, 22.219622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.498895, 16.686401, 21.609081>,  <11.142310, 16.186281, 22.015461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.498895, 16.686401, 21.609081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.781389, 16.442728, 21.753374>,  <11.950886, 16.296524, 21.839951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.781389, 16.442728, 21.753374>,  <11.498895, 16.686401, 21.609081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.781389, 16.442728, 21.753374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544743, 0.142130, -0.826471,
		0.452200, 0.780191, 0.432224,
		0.706237, -0.609181, 0.360733,
		11.993260, 16.259974, 21.861593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.086256, 16.982866, 21.536379>,  <11.498895, 16.686401, 21.609081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.086256, 16.982866, 21.536379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.186498, 16.596096, 21.555344>,  <12.246643, 16.364033, 21.566723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.186498, 16.596096, 21.555344>,  <12.086256, 16.982866, 21.536379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.186498, 16.596096, 21.555344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532081, 0.096656, -0.841158,
		0.808756, 0.236027, 0.538706,
		0.250605, -0.966928, 0.047414,
		12.261679, 16.306017, 21.569569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.810067, 16.956764, 21.372427>,  <12.086256, 16.982866, 21.536379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.810067, 16.956764, 21.372427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.692386, 16.579596, 21.310013>,  <12.621777, 16.353294, 21.272564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.692386, 16.579596, 21.310013>,  <12.810067, 16.956764, 21.372427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.692386, 16.579596, 21.310013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434433, 0.013483, -0.900603,
		0.851301, -0.332746, 0.405669,
		-0.294203, -0.942920, -0.156034,
		12.604125, 16.296721, 21.263203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.375415, 16.466499, 21.287092>,  <12.810067, 16.956764, 21.372427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.375415, 16.466499, 21.287092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.066668, 16.301208, 21.093821>,  <12.881419, 16.202034, 20.977858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.066668, 16.301208, 21.093821>,  <13.375415, 16.466499, 21.287092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.066668, 16.301208, 21.093821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587589, -0.173408, -0.790360,
		0.242811, -0.893965, 0.376656,
		-0.771869, -0.413227, -0.483179,
		12.835107, 16.177240, 20.948868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.558209, 15.860715, 21.013199>,  <13.375415, 16.466499, 21.287092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.558209, 15.860715, 21.013199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.229839, 15.924121, 20.793762>,  <13.032817, 15.962165, 20.662100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.229839, 15.924121, 20.793762>,  <13.558209, 15.860715, 21.013199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.229839, 15.924121, 20.793762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543045, -0.080374, -0.835848,
		-0.176587, -0.984080, -0.020100,
		-0.820925, 0.158515, -0.548593,
		12.983562, 15.971676, 20.629185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.567421, 15.488250, 20.454384>,  <13.558209, 15.860715, 21.013199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.567421, 15.488250, 20.454384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.292204, 15.744008, 20.317114>,  <13.127073, 15.897463, 20.234753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.292204, 15.744008, 20.317114>,  <13.567421, 15.488250, 20.454384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.292204, 15.744008, 20.317114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388553, -0.074796, -0.918386,
		-0.612880, -0.765231, -0.196977,
		-0.688044, 0.639396, -0.343174,
		13.085791, 15.935827, 20.214161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.208765, 15.195224, 19.796597>,  <13.567421, 15.488250, 20.454384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.208765, 15.195224, 19.796597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.170300, 15.593032, 19.780199>,  <13.147222, 15.831717, 19.770361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.170300, 15.593032, 19.780199>,  <13.208765, 15.195224, 19.796597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.170300, 15.593032, 19.780199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378724, -0.001531, -0.925508,
		-0.920500, -0.104525, -0.376502,
		-0.096162, 0.994521, -0.040995,
		13.141452, 15.891388, 19.767900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.117776, 15.379740, 19.033625>,  <13.208765, 15.195224, 19.796597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.117776, 15.379740, 19.033625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.208670, 15.740782, 19.179867>,  <13.263206, 15.957407, 19.267612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.208670, 15.740782, 19.179867>,  <13.117776, 15.379740, 19.033625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.208670, 15.740782, 19.179867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409336, 0.252126, -0.876856,
		-0.883634, 0.348908, -0.312177,
		0.227234, 0.902605, 0.365607,
		13.276840, 16.011564, 19.289549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.921268, 15.851892, 18.551811>,  <13.117776, 15.379740, 19.033625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.921268, 15.851892, 18.551811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.230327, 16.004271, 18.754946>,  <13.415762, 16.095697, 18.876827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.230327, 16.004271, 18.754946>,  <12.921268, 15.851892, 18.551811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.230327, 16.004271, 18.754946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487372, 0.156657, -0.859027,
		-0.406798, 0.911230, -0.064621,
		0.772648, 0.380944, 0.507836,
		13.462121, 16.118553, 18.907297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.263742, 16.060242, 17.998201>,  <12.921268, 15.851892, 18.551811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.263742, 16.060242, 17.998201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.523963, 16.195915, 18.270006>,  <13.680096, 16.277319, 18.433090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.523963, 16.195915, 18.270006>,  <13.263742, 16.060242, 17.998201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.523963, 16.195915, 18.270006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617526, 0.284588, -0.733260,
		-0.442091, 0.896641, -0.024315,
		0.650551, 0.339183, 0.679513,
		13.719129, 16.297670, 18.473860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.331245, 16.741489, 17.848064>,  <13.263742, 16.060242, 17.998201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.331245, 16.741489, 17.848064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.652737, 16.577988, 18.021011>,  <13.845632, 16.479887, 18.124781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.652737, 16.577988, 18.021011>,  <13.331245, 16.741489, 17.848064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.652737, 16.577988, 18.021011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583080, 0.396372, -0.709160,
		0.118494, 0.822076, 0.556911,
		0.803727, -0.408755, 0.432369,
		13.893855, 16.455360, 18.150723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.839734, 17.164396, 17.691450>,  <13.331245, 16.741489, 17.848064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.839734, 17.164396, 17.691450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.031727, 16.821793, 17.767355>,  <14.146922, 16.616230, 17.812897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.031727, 16.821793, 17.767355>,  <13.839734, 17.164396, 17.691450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.031727, 16.821793, 17.767355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707216, 0.249784, -0.661403,
		0.519099, 0.451662, 0.725629,
		0.479981, -0.856510, 0.189760,
		14.175721, 16.564840, 17.824284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.542239, 17.386726, 17.810629>,  <13.839734, 17.164396, 17.691450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.542239, 17.386726, 17.810629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.556264, 16.995565, 17.728191>,  <14.564678, 16.760868, 17.678730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.556264, 16.995565, 17.728191>,  <14.542239, 17.386726, 17.810629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.556264, 16.995565, 17.728191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750835, 0.161872, -0.640346,
		0.659558, -0.132290, 0.739921,
		0.035061, -0.977904, -0.206092,
		14.566782, 16.702194, 17.666363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.319906, 17.188334, 17.659298>,  <14.542239, 17.386726, 17.810629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.319906, 17.188334, 17.659298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.142829, 16.852823, 17.532505>,  <15.036582, 16.651518, 17.456429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.142829, 16.852823, 17.532505>,  <15.319906, 17.188334, 17.659298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.142829, 16.852823, 17.532505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634347, -0.043109, -0.771846,
		0.633740, -0.542769, 0.551158,
		-0.442694, -0.838775, -0.316984,
		15.010021, 16.601191, 17.437410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.846923, 16.657148, 17.661797>,  <15.319906, 17.188334, 17.659298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.846923, 16.657148, 17.661797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.567444, 16.573555, 17.388111>,  <15.399756, 16.523399, 17.223900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.567444, 16.573555, 17.388111>,  <15.846923, 16.657148, 17.661797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.567444, 16.573555, 17.388111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692225, 0.044057, -0.720336,
		0.180682, -0.976926, 0.113881,
		-0.698698, -0.208983, -0.684213,
		15.357835, 16.510860, 17.182848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.116888, 16.054693, 17.316376>,  <15.846923, 16.657148, 17.661797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.116888, 16.054693, 17.316376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.872832, 16.271008, 17.084763>,  <15.726398, 16.400795, 16.945795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.872832, 16.271008, 17.084763>,  <16.116888, 16.054693, 17.316376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.872832, 16.271008, 17.084763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701363, 0.028712, -0.712226,
		-0.368535, -0.840671, -0.396804,
		-0.610141, 0.540784, -0.579034,
		15.689790, 16.433243, 16.911053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.726545, 16.352018, 16.863342>,  <16.116888, 16.054693, 17.316376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.726545, 16.352018, 16.863342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.065603, 16.494638, 17.020502>,  <17.269039, 16.580210, 17.114798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.065603, 16.494638, 17.020502>,  <16.726545, 16.352018, 16.863342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.065603, 16.494638, 17.020502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449377, 0.088793, 0.888919,
		0.282056, -0.930048, 0.235489,
		0.847647, 0.356548, 0.392897,
		17.319897, 16.601603, 17.138371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.868618, 15.920986, 17.410362>,  <16.726545, 16.352018, 16.863342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.868618, 15.920986, 17.410362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.053690, 16.272409, 17.457798>,  <17.164734, 16.483263, 17.486259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.053690, 16.272409, 17.457798>,  <16.868618, 15.920986, 17.410362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.053690, 16.272409, 17.457798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338506, 0.051444, 0.939557,
		0.819354, -0.474858, 0.321199,
		0.462680, 0.878558, 0.118592,
		17.192493, 16.535976, 17.493376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.190338, 15.859055, 18.068979>,  <16.868618, 15.920986, 17.410362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.190338, 15.859055, 18.068979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.215492, 16.251835, 17.997629>,  <17.230585, 16.487503, 17.954819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.215492, 16.251835, 17.997629>,  <17.190338, 15.859055, 18.068979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.215492, 16.251835, 17.997629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272375, 0.188831, 0.943480,
		0.960134, -0.010745, 0.279333,
		0.062885, 0.981951, -0.178377,
		17.234358, 16.546421, 17.944117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.614004, 16.067547, 18.610901>,  <17.190338, 15.859055, 18.068979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.614004, 16.067547, 18.610901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.430025, 16.398117, 18.480997>,  <17.319637, 16.596458, 18.403055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.430025, 16.398117, 18.480997>,  <17.614004, 16.067547, 18.610901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.430025, 16.398117, 18.480997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342432, 0.172367, 0.923596,
		0.819262, 0.536013, 0.203715,
		-0.459946, 0.826426, -0.324762,
		17.292042, 16.646046, 18.383568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.867125, 16.584536, 19.023258>,  <17.614004, 16.067547, 18.610901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.867125, 16.584536, 19.023258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.507540, 16.689905, 18.883270>,  <17.291790, 16.753126, 18.799278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.507540, 16.689905, 18.883270>,  <17.867125, 16.584536, 19.023258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.507540, 16.689905, 18.883270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302373, 0.204872, 0.930913,
		0.316923, 0.942675, -0.104520,
		-0.898961, 0.263423, -0.349968,
		17.237852, 16.768932, 18.778280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.691715, 17.187574, 19.477922>,  <17.867125, 16.584536, 19.023258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.691715, 17.187574, 19.477922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.349112, 17.072451, 19.306549>,  <17.143549, 17.003376, 19.203726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.349112, 17.072451, 19.306549>,  <17.691715, 17.187574, 19.477922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.349112, 17.072451, 19.306549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493186, 0.211652, 0.843784,
		-0.152170, 0.934007, -0.323226,
		-0.856511, -0.287810, -0.428432,
		17.092157, 16.986107, 19.178019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.213207, 17.774805, 19.535749>,  <17.691715, 17.187574, 19.477922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.213207, 17.774805, 19.535749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.022120, 17.425873, 19.494133>,  <16.907467, 17.216513, 19.469164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.022120, 17.425873, 19.494133>,  <17.213207, 17.774805, 19.535749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.022120, 17.425873, 19.494133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398963, 0.109911, 0.910356,
		-0.782697, 0.476401, -0.400535,
		-0.477718, -0.872331, -0.104040,
		16.878805, 17.164173, 19.462921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.566513, 17.868462, 19.925642>,  <17.213207, 17.774805, 19.535749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.566513, 17.868462, 19.925642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.591095, 17.480087, 19.833117>,  <16.605844, 17.247063, 19.777601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.591095, 17.480087, 19.833117>,  <16.566513, 17.868462, 19.925642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.591095, 17.480087, 19.833117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464426, -0.232951, 0.854425,
		-0.883477, 0.054918, -0.465244,
		0.061456, -0.970937, -0.231312,
		16.609531, 17.188807, 19.763723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.879714, 17.621014, 20.020163>,  <16.566513, 17.868462, 19.925642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.879714, 17.621014, 20.020163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.104729, 17.290314, 20.017756>,  <16.239737, 17.091894, 20.016312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.104729, 17.290314, 20.017756>,  <15.879714, 17.621014, 20.020163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.104729, 17.290314, 20.017756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514756, -0.355926, 0.779963,
		-0.646977, -0.435660, -0.625796,
		0.562536, -0.826751, -0.006017,
		16.273489, 17.042288, 20.015949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.418525, 17.085899, 20.104784>,  <15.879714, 17.621014, 20.020163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.418525, 17.085899, 20.104784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.762170, 16.911024, 20.211210>,  <15.968357, 16.806099, 20.275066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.762170, 16.911024, 20.211210>,  <15.418525, 17.085899, 20.104784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.762170, 16.911024, 20.211210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465590, -0.451790, 0.760994,
		-0.212492, -0.777657, -0.591689,
		0.859112, -0.437189, 0.266068,
		16.019903, 16.779867, 20.291031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.241868, 16.338827, 20.280880>,  <15.418525, 17.085899, 20.104784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.241868, 16.338827, 20.280880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.587440, 16.399620, 20.472933>,  <15.794783, 16.436096, 20.588165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.587440, 16.399620, 20.472933>,  <15.241868, 16.338827, 20.280880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.587440, 16.399620, 20.472933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304691, -0.601359, 0.738600,
		0.400986, -0.784391, -0.473225,
		0.863929, 0.151981, 0.480134,
		15.846619, 16.445213, 20.616972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.439445, 15.637136, 20.464548>,  <15.241868, 16.338827, 20.280880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.439445, 15.637136, 20.464548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.650018, 15.876781, 20.705856>,  <15.776361, 16.020569, 20.850641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.650018, 15.876781, 20.705856>,  <15.439445, 15.637136, 20.464548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.650018, 15.876781, 20.705856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309113, -0.526125, 0.792238,
		0.792035, -0.603538, -0.091775,
		0.526431, 0.599112, 0.603271,
		15.807947, 16.056515, 20.886837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.833077, 15.150233, 20.980797>,  <15.439445, 15.637136, 20.464548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.833077, 15.150233, 20.980797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.790827, 15.511667, 21.146870>,  <15.765476, 15.728527, 21.246513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.790827, 15.511667, 21.146870>,  <15.833077, 15.150233, 20.980797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.790827, 15.511667, 21.146870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366897, -0.423475, 0.828285,
		0.924246, -0.064841, 0.376252,
		-0.105626, 0.903584, 0.415184,
		15.759139, 15.782743, 21.271425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.191885, 15.135990, 21.676804>,  <15.833077, 15.150233, 20.980797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.191885, 15.135990, 21.676804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.919781, 15.428971, 21.665770>,  <15.756518, 15.604760, 21.659149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.919781, 15.428971, 21.665770>,  <16.191885, 15.135990, 21.676804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.919781, 15.428971, 21.665770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367477, -0.308247, 0.877465,
		0.634199, 0.607039, 0.478848,
		-0.680259, 0.732453, -0.027583,
		15.715703, 15.648707, 21.657495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.183880, 15.545201, 22.373367>,  <16.191885, 15.135990, 21.676804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.183880, 15.545201, 22.373367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.831536, 15.635725, 22.207054>,  <15.620131, 15.690040, 22.107267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.831536, 15.635725, 22.207054>,  <16.183880, 15.545201, 22.373367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.831536, 15.635725, 22.207054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465988, -0.259902, 0.845758,
		0.083341, 0.938741, 0.334395,
		-0.880857, 0.226310, -0.415782,
		15.567279, 15.703618, 22.082319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.798632, 15.952477, 22.977459>,  <16.183880, 15.545201, 22.373367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.798632, 15.952477, 22.977459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.522859, 15.827636, 22.715994>,  <15.357395, 15.752731, 22.559114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.522859, 15.827636, 22.715994>,  <15.798632, 15.952477, 22.977459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.522859, 15.827636, 22.715994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663951, -0.088467, 0.742524,
		-0.289571, 0.945920, -0.146228,
		-0.689433, -0.312102, -0.653663,
		15.316029, 15.734005, 22.519896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.140585, 16.404779, 23.072910>,  <15.798632, 15.952477, 22.977459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.140585, 16.404779, 23.072910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.016511, 16.059713, 22.913115>,  <14.942066, 15.852674, 22.817238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.016511, 16.059713, 22.913115>,  <15.140585, 16.404779, 23.072910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.016511, 16.059713, 22.913115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765357, -0.022663, 0.643207,
		-0.563927, 0.505264, -0.653219,
		-0.310185, -0.862667, -0.399487,
		14.923455, 15.800913, 22.793268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.443316, 16.466290, 23.023354>,  <15.140585, 16.404779, 23.072910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.443316, 16.466290, 23.023354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.485607, 16.070797, 22.980955>,  <14.510982, 15.833502, 22.955517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.485607, 16.070797, 22.980955>,  <14.443316, 16.466290, 23.023354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.485607, 16.070797, 22.980955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765005, -0.148971, 0.626559,
		-0.635288, 0.014842, -0.772133,
		0.105726, -0.988730, -0.105994,
		14.517325, 15.774178, 22.949158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<13.700369, 16.270641, 22.896345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.932078, 15.964984, 23.009853>,  <14.071104, 15.781590, 23.077959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.932078, 15.964984, 23.009853>,  <13.700369, 16.270641, 22.896345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.932078, 15.964984, 23.009853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546678, -0.105966, 0.830611,
		-0.604635, -0.636283, -0.479124,
		0.579275, -0.764143, 0.283771,
		14.105861, 15.735741, 23.094984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.267002, 15.910439, 23.279560>,  <13.700369, 16.270641, 22.896345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.267002, 15.910439, 23.279560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.605879, 15.743037, 23.410479>,  <13.809205, 15.642596, 23.489029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.605879, 15.743037, 23.410479>,  <13.267002, 15.910439, 23.279560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.605879, 15.743037, 23.410479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427802, -0.172053, 0.887346,
		-0.315046, -0.891769, -0.324799,
		0.847190, -0.418505, 0.327296,
		13.860036, 15.617486, 23.508667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.231762, 15.200972, 23.518511>,  <13.267002, 15.910439, 23.279560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.231762, 15.200972, 23.518511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.523567, 15.389659, 23.716619>,  <13.698650, 15.502872, 23.835484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.523567, 15.389659, 23.716619>,  <13.231762, 15.200972, 23.518511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.523567, 15.389659, 23.716619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487822, -0.148713, 0.860182,
		0.479418, -0.869117, 0.121628,
		0.729512, 0.471720, 0.495270,
		13.742421, 15.531175, 23.865200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.260438, 14.772991, 24.093382>,  <13.231762, 15.200972, 23.518511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.260438, 14.772991, 24.093382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.495969, 15.079925, 24.194956>,  <13.637287, 15.264084, 24.255899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.495969, 15.079925, 24.194956>,  <13.260438, 14.772991, 24.093382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.495969, 15.079925, 24.194956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068344, -0.265781, 0.961608,
		0.805364, -0.583577, -0.104056,
		0.588828, 0.767332, 0.253934,
		13.672617, 15.310124, 24.271135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.572826, 14.417435, 24.562338>,  <13.260438, 14.772991, 24.093382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.572826, 14.417435, 24.562338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.643248, 14.805834, 24.627043>,  <13.685500, 15.038874, 24.665865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.643248, 14.805834, 24.627043>,  <13.572826, 14.417435, 24.562338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.643248, 14.805834, 24.627043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005470, -0.163360, 0.986551,
		0.984365, -0.174570, -0.023448,
		0.176053, 0.970999, 0.161761,
		13.696064, 15.097134, 24.675571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.099309, 14.476620, 25.112404>,  <13.572826, 14.417435, 24.562338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.099309, 14.476620, 25.112404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.927359, 14.837735, 25.117752>,  <13.824188, 15.054404, 25.120960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.927359, 14.837735, 25.117752>,  <14.099309, 14.476620, 25.112404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.927359, 14.837735, 25.117752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078110, -0.051936, 0.995591,
		0.899503, 0.426936, 0.092843,
		-0.429875, 0.902789, 0.013368,
		13.798396, 15.108572, 25.121763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.380226, 14.832787, 25.662462>,  <14.099309, 14.476620, 25.112404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.380226, 14.832787, 25.662462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.029704, 15.014732, 25.598982>,  <13.819390, 15.123900, 25.560894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.029704, 15.014732, 25.598982>,  <14.380226, 14.832787, 25.662462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.029704, 15.014732, 25.598982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270609, -0.192215, 0.943305,
		0.398572, 0.869569, 0.291529,
		-0.876306, 0.454865, -0.158702,
		13.766812, 15.151192, 25.551371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.371799, 15.285918, 26.199514>,  <14.380226, 14.832787, 25.662462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.371799, 15.285918, 26.199514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.985854, 15.269753, 26.095661>,  <13.754288, 15.260054, 26.033348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.985854, 15.269753, 26.095661>,  <14.371799, 15.285918, 26.199514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.985854, 15.269753, 26.095661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257954, -0.042445, 0.965224,
		-0.050028, 0.998281, 0.030529,
		-0.964861, -0.040413, -0.259634,
		13.696396, 15.257628, 26.017771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.025615, 15.798453, 26.637613>,  <14.371799, 15.285918, 26.199514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.025615, 15.798453, 26.637613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.714857, 15.571996, 26.527401>,  <13.528402, 15.436121, 26.461273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.714857, 15.571996, 26.527401>,  <14.025615, 15.798453, 26.637613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.714857, 15.571996, 26.527401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333954, -0.000465, 0.942589,
		-0.533769, 0.824307, -0.188705,
		-0.776895, -0.566143, -0.275529,
		13.481789, 15.402153, 26.444742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.510583, 16.083694, 27.017195>,  <14.025615, 15.798453, 26.637613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.510583, 16.083694, 27.017195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.390309, 15.713185, 26.926323>,  <13.318145, 15.490880, 26.871799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.390309, 15.713185, 26.926323>,  <13.510583, 16.083694, 27.017195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.390309, 15.713185, 26.926323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346264, -0.115922, 0.930947,
		-0.888645, 0.358585, -0.285879,
		-0.300684, -0.926271, -0.227178,
		13.300104, 15.435304, 26.858170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.692883, 16.137516, 27.099564>,  <13.510583, 16.083694, 27.017195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.692883, 16.137516, 27.099564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.849015, 15.769546, 27.114433>,  <12.942695, 15.548763, 27.123354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.849015, 15.769546, 27.114433>,  <12.692883, 16.137516, 27.099564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.849015, 15.769546, 27.114433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352187, -0.111887, 0.929218,
		-0.850651, -0.375793, -0.367658,
		0.390330, -0.919924, 0.037173,
		12.966114, 15.493568, 27.125586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.183124, 15.671503, 27.506420>,  <12.692883, 16.137516, 27.099564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.183124, 15.671503, 27.506420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.525011, 15.464161, 27.517479>,  <12.730144, 15.339756, 27.524115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.525011, 15.464161, 27.517479>,  <12.183124, 15.671503, 27.506420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.525011, 15.464161, 27.517479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253830, -0.370898, 0.893311,
		-0.452801, -0.770545, -0.448588,
		0.854717, -0.518357, 0.027644,
		12.781426, 15.308655, 27.525772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.027931, 15.013628, 27.850212>,  <12.183124, 15.671503, 27.506420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.027931, 15.013628, 27.850212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.427552, 15.003252, 27.864189>,  <12.667325, 14.997026, 27.872576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.427552, 15.003252, 27.864189>,  <12.027931, 15.013628, 27.850212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.427552, 15.003252, 27.864189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042550, -0.413699, 0.909419,
		-0.009135, -0.910044, -0.414411,
		0.999053, -0.025941, 0.034943,
		12.727268, 14.995470, 27.874672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.213503, 14.409146, 28.208874>,  <12.027931, 15.013628, 27.850212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.213503, 14.409146, 28.208874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.545334, 14.627848, 28.254234>,  <12.744432, 14.759068, 28.281450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.545334, 14.627848, 28.254234>,  <12.213503, 14.409146, 28.208874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.545334, 14.627848, 28.254234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063469, -0.294100, 0.953665,
		0.554772, -0.783942, -0.278681,
		0.829578, 0.546754, 0.113403,
		12.794208, 14.791874, 28.288256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.746556, 14.018649, 28.600309>,  <12.213503, 14.409146, 28.208874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.746556, 14.018649, 28.600309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.864645, 14.397747, 28.648678>,  <12.935498, 14.625206, 28.677700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.864645, 14.397747, 28.648678>,  <12.746556, 14.018649, 28.600309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.864645, 14.397747, 28.648678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230558, -0.193492, 0.953627,
		0.927193, -0.253651, -0.275634,
		0.295221, 0.947746, 0.120923,
		12.953212, 14.682071, 28.684956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.432701, 13.936644, 28.723806>,  <12.746556, 14.018649, 28.600309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.432701, 13.936644, 28.723806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.290766, 14.279719, 28.872646>,  <13.205605, 14.485565, 28.961950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.290766, 14.279719, 28.872646>,  <13.432701, 13.936644, 28.723806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.290766, 14.279719, 28.872646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121562, -0.352292, 0.927962,
		0.926991, 0.374510, 0.020745,
		-0.354839, 0.857690, 0.372098,
		13.184314, 14.537026, 28.984276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.786424, 14.022776, 29.310152>,  <13.432701, 13.936644, 28.723806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.786424, 14.022776, 29.310152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.488334, 14.286451, 29.350372>,  <13.309480, 14.444656, 29.374504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.488334, 14.286451, 29.350372>,  <13.786424, 14.022776, 29.310152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.488334, 14.286451, 29.350372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112452, -0.272869, 0.955457,
		0.657263, 0.700723, 0.277475,
		-0.745225, 0.659189, 0.100549,
		13.264767, 14.484208, 29.380537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.735762, 14.199767, 30.015034>,  <13.786424, 14.022776, 29.310152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.735762, 14.199767, 30.015034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.374401, 14.333201, 29.907265>,  <13.157585, 14.413262, 29.842604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.374401, 14.333201, 29.907265>,  <13.735762, 14.199767, 30.015034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.374401, 14.333201, 29.907265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355157, -0.230037, 0.906061,
		0.240272, 0.914223, 0.326292,
		-0.903401, 0.333586, -0.269421,
		13.103381, 14.433277, 29.826439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.506768, 14.653621, 30.586466>,  <13.735762, 14.199767, 30.015034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.506768, 14.653621, 30.586466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.192897, 14.487535, 30.402346>,  <13.004574, 14.387882, 30.291874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.192897, 14.487535, 30.402346>,  <13.506768, 14.653621, 30.586466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.192897, 14.487535, 30.402346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343792, -0.326396, 0.880495,
		-0.515836, 0.849153, 0.113368,
		-0.784678, -0.415216, -0.460299,
		12.957494, 14.362969, 30.264256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.931911, 14.837770, 30.962265>,  <13.506768, 14.653621, 30.586466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.931911, 14.837770, 30.962265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.766783, 14.559328, 30.727312>,  <12.667706, 14.392262, 30.586340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.766783, 14.559328, 30.727312>,  <12.931911, 14.837770, 30.962265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.766783, 14.559328, 30.727312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483650, -0.378927, 0.788985,
		-0.771791, 0.609796, -0.180242,
		-0.412821, -0.696105, -0.587381,
		12.642937, 14.350496, 30.551098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.171679, 14.765488, 31.159531>,  <12.931911, 14.837770, 30.962265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.171679, 14.765488, 31.159531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.326823, 14.442152, 30.982374>,  <12.419909, 14.248151, 30.876080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.326823, 14.442152, 30.982374>,  <12.171679, 14.765488, 31.159531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.326823, 14.442152, 30.982374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408419, -0.581482, 0.703614,
		-0.826293, -0.092017, -0.555673,
		0.387859, -0.808339, -0.442893,
		12.443181, 14.199651, 30.849506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.605010, 14.230584, 31.150795>,  <12.171679, 14.765488, 31.159531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.605010, 14.230584, 31.150795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.965380, 14.057707, 31.135067>,  <12.181602, 13.953980, 31.125631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.965380, 14.057707, 31.135067>,  <11.605010, 14.230584, 31.150795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.965380, 14.057707, 31.135067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265717, -0.620984, 0.737410,
		-0.343119, -0.653902, -0.674301,
		0.900924, -0.432193, -0.039318,
		12.235657, 13.928049, 31.123272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.251625, 13.712649, 31.035824>,  <11.605010, 14.230584, 31.150795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.251625, 13.712649, 31.035824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.614327, 13.634981, 31.185541>,  <11.831948, 13.588381, 31.275372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.614327, 13.634981, 31.185541>,  <11.251625, 13.712649, 31.035824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.614327, 13.634981, 31.185541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399073, -0.681802, 0.613095,
		0.136149, -0.705297, -0.695715,
		0.906755, -0.194169, 0.374292,
		11.886353, 13.576731, 31.297829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.071650, 13.216016, 31.511648>,  <11.251625, 13.712649, 31.035824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.071650, 13.216016, 31.511648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.717394, 13.048610, 31.592133>,  <10.504840, 12.948166, 31.640423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.717394, 13.048610, 31.592133>,  <11.071650, 13.216016, 31.511648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.717394, 13.048610, 31.592133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288442, 0.156209, -0.944669,
		0.363929, -0.894674, -0.259062,
		-0.885639, -0.418517, 0.201213,
		10.451702, 12.923055, 31.652496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.900128, 12.809380, 30.941875>,  <11.071650, 13.216016, 31.511648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.900128, 12.809380, 30.941875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.542615, 12.844501, 31.117804>,  <10.328107, 12.865573, 31.223360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.542615, 12.844501, 31.117804>,  <10.900128, 12.809380, 30.941875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.542615, 12.844501, 31.117804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431807, 0.096566, -0.896782,
		-0.121212, -0.991446, -0.048395,
		-0.893784, 0.087803, 0.439818,
		10.274480, 12.870841, 31.249748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.346575, 12.352541, 30.581587>,  <10.900128, 12.809380, 30.941875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.346575, 12.352541, 30.581587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.118964, 12.626007, 30.764370>,  <9.982398, 12.790087, 30.874039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.118964, 12.626007, 30.764370>,  <10.346575, 12.352541, 30.581587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.118964, 12.626007, 30.764370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440227, 0.216091, -0.871496,
		-0.694557, -0.697069, 0.178007,
		-0.569027, 0.683666, 0.456956,
		9.948256, 12.831107, 30.901457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.612396, 12.306816, 30.372431>,  <10.346575, 12.352541, 30.581587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.612396, 12.306816, 30.372431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.704629, 12.681098, 30.479231>,  <9.759969, 12.905667, 30.543310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.704629, 12.681098, 30.479231>,  <9.612396, 12.306816, 30.372431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.704629, 12.681098, 30.479231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379592, 0.339152, -0.860747,
		-0.895959, 0.097121, 0.433388,
		0.230581, 0.935705, 0.267000,
		9.773804, 12.961809, 30.559330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.119075, 12.784308, 30.114834>,  <9.612396, 12.306816, 30.372431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.119075, 12.784308, 30.114834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.448598, 13.002438, 30.176754>,  <9.646312, 13.133315, 30.213905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.448598, 13.002438, 30.176754>,  <9.119075, 12.784308, 30.114834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.448598, 13.002438, 30.176754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079456, 0.381463, -0.920963,
		-0.561272, 0.746398, 0.357582,
		0.823808, 0.545323, 0.154799,
		9.695741, 13.166035, 30.223194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.829748, 13.364483, 29.950115>,  <9.119075, 12.784308, 30.114834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.829748, 13.364483, 29.950115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.226828, 13.406073, 29.925661>,  <9.465075, 13.431026, 29.910990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.226828, 13.406073, 29.925661>,  <8.829748, 13.364483, 29.950115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.226828, 13.406073, 29.925661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101747, 0.449688, -0.887371,
		-0.064773, 0.887113, 0.456984,
		0.992699, 0.103974, -0.061133,
		9.524637, 13.437264, 29.907322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.865520, 13.822253, 29.593632>,  <8.829748, 13.364483, 29.950115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.865520, 13.822253, 29.593632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.250814, 13.721649, 29.555864>,  <9.481992, 13.661286, 29.533203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.250814, 13.721649, 29.555864>,  <8.865520, 13.822253, 29.593632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.250814, 13.721649, 29.555864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012889, 0.394318, -0.918884,
		0.268340, 0.883887, 0.383063,
		0.963238, -0.251511, -0.094418,
		9.539785, 13.646196, 29.527538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.136069, 14.453255, 29.326199>,  <8.865520, 13.822253, 29.593632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.136069, 14.453255, 29.326199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.424177, 14.191076, 29.235334>,  <9.597042, 14.033770, 29.180817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.424177, 14.191076, 29.235334>,  <9.136069, 14.453255, 29.326199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.424177, 14.191076, 29.235334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066367, 0.391071, -0.917965,
		0.690512, 0.646107, 0.325177,
		0.720270, -0.655446, -0.227159,
		9.640258, 13.994442, 29.167187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.667544, 14.841216, 29.078850>,  <9.136069, 14.453255, 29.326199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.667544, 14.841216, 29.078850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.709554, 14.478925, 28.914593>,  <9.734759, 14.261550, 28.816038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.709554, 14.478925, 28.914593>,  <9.667544, 14.841216, 29.078850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.709554, 14.478925, 28.914593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268659, 0.423411, -0.865185,
		0.957493, -0.019457, 0.287800,
		0.105024, -0.905729, -0.410641,
		9.741061, 14.207206, 28.791401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.253313, 14.953938, 28.764940>,  <9.667544, 14.841216, 29.078850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.253313, 14.953938, 28.764940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.099708, 14.626629, 28.593843>,  <10.007545, 14.430243, 28.491186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.099708, 14.626629, 28.593843>,  <10.253313, 14.953938, 28.764940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.099708, 14.626629, 28.593843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326436, 0.313024, -0.891883,
		0.863698, -0.482125, 0.146909,
		-0.384013, -0.818274, -0.427741,
		9.984504, 14.381146, 28.465521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.834232, 14.626628, 28.381674>,  <10.253313, 14.953938, 28.764940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.834232, 14.626628, 28.381674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.499220, 14.503852, 28.200861>,  <10.298213, 14.430186, 28.092373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.499220, 14.503852, 28.200861>,  <10.834232, 14.626628, 28.381674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.499220, 14.503852, 28.200861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310748, 0.412896, -0.856127,
		0.449424, -0.857498, -0.250430,
		-0.837528, -0.306943, -0.452031,
		10.247961, 14.411770, 28.065252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.938692, 14.185220, 27.820854>,  <10.834232, 14.626628, 28.381674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.938692, 14.185220, 27.820854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.571632, 14.315830, 27.730255>,  <10.351397, 14.394197, 27.675896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.571632, 14.315830, 27.730255>,  <10.938692, 14.185220, 27.820854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.571632, 14.315830, 27.730255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292194, 0.168103, -0.941469,
		-0.269338, -0.930120, -0.249668,
		-0.917649, 0.326525, -0.226499,
		10.296338, 14.413788, 27.662306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.932099, 13.948858, 27.214840>,  <10.938692, 14.185220, 27.820854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.932099, 13.948858, 27.214840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.642719, 14.224493, 27.231709>,  <10.469091, 14.389874, 27.241831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.642719, 14.224493, 27.231709>,  <10.932099, 13.948858, 27.214840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.642719, 14.224493, 27.231709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312951, 0.381780, -0.869658,
		-0.615371, -0.615957, -0.491849,
		-0.723451, 0.689087, 0.042172,
		10.425684, 14.431219, 27.244360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.826745, 13.907152, 26.581568>,  <10.932099, 13.948858, 27.214840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.826745, 13.907152, 26.581568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.669932, 14.255358, 26.700575>,  <10.575845, 14.464281, 26.771980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.669932, 14.255358, 26.700575>,  <10.826745, 13.907152, 26.581568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.669932, 14.255358, 26.700575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313473, 0.430459, -0.846428,
		-0.864896, -0.238562, -0.441636,
		-0.392032, 0.870513, 0.297519,
		10.552322, 14.516512, 26.789831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.532702, 14.164776, 25.954124>,  <10.826745, 13.907152, 26.581568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.532702, 14.164776, 25.954124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.591096, 14.462597, 26.214687>,  <10.626132, 14.641290, 26.371025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.591096, 14.462597, 26.214687>,  <10.532702, 14.164776, 25.954124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.591096, 14.462597, 26.214687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403960, 0.556200, -0.726263,
		-0.903053, 0.369164, -0.219573,
		0.145984, 0.744553, 0.651406,
		10.634892, 14.685963, 26.410109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.244582, 14.771758, 25.587313>,  <10.532702, 14.164776, 25.954124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.244582, 14.771758, 25.587313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.471955, 14.907594, 25.887062>,  <10.608379, 14.989096, 26.066912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.471955, 14.907594, 25.887062>,  <10.244582, 14.771758, 25.587313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.471955, 14.907594, 25.887062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388394, 0.692193, -0.608291,
		-0.725282, 0.636826, 0.261571,
		0.568433, 0.339590, 0.749375,
		10.642486, 15.009471, 26.111874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.053371, 15.509699, 25.794512>,  <10.244582, 14.771758, 25.587313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.053371, 15.509699, 25.794512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.436500, 15.439043, 25.885181>,  <10.666376, 15.396649, 25.939583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.436500, 15.439043, 25.885181>,  <10.053371, 15.509699, 25.794512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.436500, 15.439043, 25.885181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286657, 0.642830, -0.710350,
		-0.020237, 0.745365, 0.666350,
		0.957819, -0.176638, 0.226673,
		10.723845, 15.386051, 25.953184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.356031, 16.132416, 25.731424>,  <10.053371, 15.509699, 25.794512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.356031, 16.132416, 25.731424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.654735, 15.867148, 25.711176>,  <10.833957, 15.707988, 25.699026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.654735, 15.867148, 25.711176>,  <10.356031, 16.132416, 25.731424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.654735, 15.867148, 25.711176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502031, 0.611959, -0.611123,
		0.436255, 0.430946, 0.789915,
		0.746757, -0.663168, -0.050622,
		10.878761, 15.668198, 25.695990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.985324, 16.483362, 25.771879>,  <10.356031, 16.132416, 25.731424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.985324, 16.483362, 25.771879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.046971, 16.136639, 25.582190>,  <11.083960, 15.928604, 25.468376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.046971, 16.136639, 25.582190>,  <10.985324, 16.483362, 25.771879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.046971, 16.136639, 25.582190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364433, 0.495987, -0.788153,
		0.918388, -0.051353, 0.392335,
		0.154119, -0.866810, -0.474223,
		11.093207, 15.876595, 25.439922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.606832, 16.701883, 25.437683>,  <10.985324, 16.483362, 25.771879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.606832, 16.701883, 25.437683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.500649, 16.347307, 25.286020>,  <11.436940, 16.134562, 25.195023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.500649, 16.347307, 25.286020>,  <11.606832, 16.701883, 25.437683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.500649, 16.347307, 25.286020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238382, 0.320707, -0.916690,
		0.934188, -0.333724, 0.126178,
		-0.265456, -0.886440, -0.379155,
		11.421013, 16.081375, 25.172274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.203584, 16.458754, 25.062862>,  <11.606832, 16.701883, 25.437683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.203584, 16.458754, 25.062862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.896867, 16.251427, 24.911402>,  <11.712836, 16.127031, 24.820524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.896867, 16.251427, 24.911402>,  <12.203584, 16.458754, 25.062862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.896867, 16.251427, 24.911402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333828, 0.181839, -0.924929,
		0.548260, -0.835633, 0.033596,
		-0.766792, -0.518317, -0.378652,
		11.666829, 16.095932, 24.797806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<19.795389, 27.254242, 7.984302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.897722, 27.039932, 7.662434>,  <19.959122, 26.911346, 7.469313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.897722, 27.039932, 7.662434>,  <19.795389, 27.254242, 7.984302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.897722, 27.039932, 7.662434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109380, -0.810983, 0.574755,
		-0.960514, -0.235055, -0.148871,
		0.255831, -0.535776, -0.804670,
		19.974472, 26.879200, 7.421033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.775503, 26.948811, 8.632874>,  <19.795389, 27.254242, 7.984302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.775503, 26.948811, 8.632874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.624914, 27.314899, 8.690345>,  <19.534561, 27.534552, 8.724827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.624914, 27.314899, 8.690345>,  <19.775503, 26.948811, 8.632874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.624914, 27.314899, 8.690345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873108, -0.402365, 0.275292,
		0.309762, -0.021804, 0.950564,
		-0.376471, 0.915219, 0.143675,
		19.511972, 27.589466, 8.733447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.374624, 26.933590, 9.249856>,  <19.775503, 26.948811, 8.632874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.374624, 26.933590, 9.249856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.249102, 27.227201, 9.008948>,  <19.173788, 27.403368, 8.864404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.249102, 27.227201, 9.008948>,  <19.374624, 26.933590, 9.249856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.249102, 27.227201, 9.008948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946822, -0.289411, 0.140604,
		-0.071096, 0.614363, 0.785814,
		-0.313804, 0.734029, -0.602268,
		19.154961, 27.447411, 8.828268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.916048, 27.417740, 9.456859>,  <19.374624, 26.933590, 9.249856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.916048, 27.417740, 9.456859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.748695, 27.578302, 9.782762>,  <18.648283, 27.674641, 9.978303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.748695, 27.578302, 9.782762>,  <18.916048, 27.417740, 9.456859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.748695, 27.578302, 9.782762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360570, -0.749924, 0.554621,
		0.833634, 0.525820, 0.169020,
		-0.418383, 0.401407, 0.814756,
		18.623180, 27.698725, 10.027188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.439781, 27.539520, 10.072629>,  <18.916048, 27.417740, 9.456859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.439781, 27.539520, 10.072629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.073948, 27.484604, 10.224781>,  <18.854448, 27.451654, 10.316072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.073948, 27.484604, 10.224781>,  <19.439781, 27.539520, 10.072629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.073948, 27.484604, 10.224781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334594, -0.785179, 0.521096,
		0.227125, 0.603859, 0.764048,
		-0.914583, -0.137292, 0.380381,
		18.799574, 27.443417, 10.338895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.515368, 27.200930, 10.757455>,  <19.439781, 27.539520, 10.072629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.515368, 27.200930, 10.757455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.135740, 27.129805, 10.653416>,  <18.907963, 27.087130, 10.590992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.135740, 27.129805, 10.653416>,  <19.515368, 27.200930, 10.757455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.135740, 27.129805, 10.653416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058792, -0.910976, 0.408248,
		-0.309534, 0.372164, 0.875033,
		-0.949069, -0.177812, -0.260097,
		18.851019, 27.076462, 10.575386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.136471, 27.069376, 11.355853>,  <19.515368, 27.200930, 10.757455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.136471, 27.069376, 11.355853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.023621, 26.876944, 11.023837>,  <18.955910, 26.761484, 10.824627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.023621, 26.876944, 11.023837>,  <19.136471, 27.069376, 11.355853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.023621, 26.876944, 11.023837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009511, -0.863742, 0.503845,
		-0.959330, 0.150042, 0.239108,
		-0.282126, -0.481080, -0.830040,
		18.938982, 26.732620, 10.774825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.427666, 26.627199, 11.410377>,  <19.136471, 27.069376, 11.355853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.427666, 26.627199, 11.410377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.679209, 26.482077, 11.135303>,  <18.830135, 26.395002, 10.970260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.679209, 26.482077, 11.135303>,  <18.427666, 26.627199, 11.410377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.679209, 26.482077, 11.135303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039089, -0.868586, 0.493995,
		-0.776536, -0.337534, -0.532036,
		0.628859, -0.362808, -0.687682,
		18.867867, 26.373234, 10.928999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.125240, 25.956665, 11.173283>,  <18.427666, 26.627199, 11.410377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.125240, 25.956665, 11.173283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.500668, 25.942444, 11.035980>,  <18.725924, 25.933910, 10.953599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.500668, 25.942444, 11.035980>,  <18.125240, 25.956665, 11.173283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.500668, 25.942444, 11.035980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087976, -0.937162, 0.337621,
		-0.333689, -0.347079, -0.876463,
		0.938569, -0.035553, -0.343256,
		18.782238, 25.931778, 10.933003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.300795, 25.313154, 10.737044>,  <18.125240, 25.956665, 11.173283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.300795, 25.313154, 10.737044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.631529, 25.450584, 10.915167>,  <18.829969, 25.533043, 11.022040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.631529, 25.450584, 10.915167>,  <18.300795, 25.313154, 10.737044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.631529, 25.450584, 10.915167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202504, -0.920491, 0.334197,
		0.524722, -0.186150, -0.830671,
		0.826837, 0.343574, 0.445306,
		18.879580, 25.553658, 11.048759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.896879, 24.890535, 10.517885>,  <18.300795, 25.313154, 10.737044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.896879, 24.890535, 10.517885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.977516, 25.062759, 10.869789>,  <19.025898, 25.166094, 11.080932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.977516, 25.062759, 10.869789>,  <18.896879, 24.890535, 10.517885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.977516, 25.062759, 10.869789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173271, -0.899711, 0.400621,
		0.964022, 0.071675, -0.255977,
		0.201591, 0.430561, 0.879761,
		19.037992, 25.191927, 11.133718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.434246, 24.448891, 10.791182>,  <18.896879, 24.890535, 10.517885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.434246, 24.448891, 10.791182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.373127, 24.650148, 11.131416>,  <19.336454, 24.770903, 11.335557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.373127, 24.650148, 11.131416>,  <19.434246, 24.448891, 10.791182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.373127, 24.650148, 11.131416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157712, -0.837250, 0.523584,
		0.975592, 0.214151, 0.048579,
		-0.152799, 0.503143, 0.850588,
		19.327288, 24.801090, 11.386593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.000681, 24.370592, 11.185897>,  <19.434246, 24.448891, 10.791182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.000681, 24.370592, 11.185897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.707333, 24.473104, 11.437766>,  <19.531324, 24.534613, 11.588888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.707333, 24.473104, 11.437766>,  <20.000681, 24.370592, 11.185897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.707333, 24.473104, 11.437766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123038, -0.860891, 0.493689,
		0.668604, 0.439530, 0.599818,
		-0.733369, 0.256282, 0.629674,
		19.487322, 24.549990, 11.626668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.248505, 24.300524, 11.892941>,  <20.000681, 24.370592, 11.185897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.248505, 24.300524, 11.892941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.850836, 24.277449, 11.929361>,  <19.612234, 24.263603, 11.951213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.850836, 24.277449, 11.929361>,  <20.248505, 24.300524, 11.892941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.850836, 24.277449, 11.929361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091759, -0.896155, 0.434151,
		0.056549, 0.439976, 0.896227,
		-0.994174, -0.057686, 0.091049,
		19.552584, 24.260143, 11.956676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.089025, 24.089827, 12.555823>,  <20.248505, 24.300524, 11.892941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.089025, 24.089827, 12.555823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.768822, 23.991901, 12.337008>,  <19.576700, 23.933146, 12.205718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.768822, 23.991901, 12.337008>,  <20.089025, 24.089827, 12.555823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.768822, 23.991901, 12.337008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014468, -0.904606, 0.426004,
		-0.599147, 0.348935, 0.720602,
		-0.800508, -0.244814, -0.547041,
		19.528669, 23.918457, 12.172895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.000629, 23.514395, 12.838185>,  <20.089025, 24.089827, 12.555823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.000629, 23.514395, 12.838185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.699486, 23.550158, 12.577353>,  <19.518799, 23.571615, 12.420855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.699486, 23.550158, 12.577353>,  <20.000629, 23.514395, 12.838185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.699486, 23.550158, 12.577353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309883, -0.922203, 0.231332,
		-0.580667, 0.376229, 0.721996,
		-0.752860, 0.089407, -0.652079,
		19.473627, 23.576981, 12.381730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.235113, 23.508217, 13.154499>,  <20.000629, 23.514395, 12.838185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.235113, 23.508217, 13.154499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.261471, 23.363533, 12.782516>,  <19.277285, 23.276722, 12.559325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.261471, 23.363533, 12.782516>,  <19.235113, 23.508217, 13.154499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.261471, 23.363533, 12.782516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226237, -0.913129, 0.339135,
		-0.971841, 0.188044, -0.142002,
		0.065894, -0.361711, -0.929959,
		19.281239, 23.255020, 12.503528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.608717, 22.984673, 12.923289>,  <19.235113, 23.508217, 13.154499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.608717, 22.984673, 12.923289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.931778, 22.896673, 12.704458>,  <19.125614, 22.843874, 12.573159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.931778, 22.896673, 12.704458>,  <18.608717, 22.984673, 12.923289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.931778, 22.896673, 12.704458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200551, -0.974969, 0.095996,
		-0.554504, 0.032186, -0.831559,
		0.807654, -0.220000, -0.547078,
		19.174074, 22.830673, 12.540335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.451822, 22.358225, 12.786444>,  <18.608717, 22.984673, 12.923289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.451822, 22.358225, 12.786444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.834379, 22.357912, 12.669608>,  <19.063913, 22.357723, 12.599506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.834379, 22.357912, 12.669608>,  <18.451822, 22.358225, 12.786444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.834379, 22.357912, 12.669608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009115, -0.999589, -0.027165,
		-0.291948, 0.028642, -0.956005,
		0.956391, -0.000783, -0.292089,
		19.121296, 22.357677, 12.581982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.533812, 21.880180, 12.194466>,  <18.451822, 22.358225, 12.786444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.533812, 21.880180, 12.194466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.893806, 21.919085, 12.364434>,  <19.109804, 21.942427, 12.466415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.893806, 21.919085, 12.364434>,  <18.533812, 21.880180, 12.194466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.893806, 21.919085, 12.364434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096543, -0.995056, 0.023282,
		0.425086, 0.020070, -0.904930,
		0.899989, 0.097262, 0.424922,
		19.163803, 21.948263, 12.491911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.831875, 21.326061, 11.873516>,  <18.533812, 21.880180, 12.194466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.831875, 21.326061, 11.873516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.063477, 21.415466, 12.187151>,  <19.202438, 21.469109, 12.375332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.063477, 21.415466, 12.187151>,  <18.831875, 21.326061, 11.873516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.063477, 21.415466, 12.187151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154977, -0.974328, 0.163299,
		0.800459, 0.026965, -0.598781,
		0.579006, 0.223511, 0.784088,
		19.237179, 21.482519, 12.422378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.628218, 21.026550, 11.741010>,  <18.831875, 21.326061, 11.873516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.628218, 21.026550, 11.741010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.584949, 21.040075, 12.138433>,  <19.558989, 21.048191, 12.376886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.584949, 21.040075, 12.138433>,  <19.628218, 21.026550, 11.741010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.584949, 21.040075, 12.138433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498669, -0.862747, 0.083653,
		0.860016, 0.504505, 0.076464,
		-0.108172, 0.033813, 0.993557,
		19.552498, 21.050219, 12.436500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.146021, 20.583033, 12.046266>,  <19.628218, 21.026550, 11.741010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.146021, 20.583033, 12.046266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.898609, 20.623680, 12.357931>,  <19.750162, 20.648067, 12.544930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.898609, 20.623680, 12.357931>,  <20.146021, 20.583033, 12.046266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.898609, 20.623680, 12.357931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239630, -0.919972, 0.310208,
		0.748332, 0.378584, 0.544678,
		-0.618528, 0.101617, 0.779164,
		19.713051, 20.654165, 12.591681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.534542, 20.456196, 12.666129>,  <20.146021, 20.583033, 12.046266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.534542, 20.456196, 12.666129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.151072, 20.402534, 12.766486>,  <19.920990, 20.370338, 12.826700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.151072, 20.402534, 12.766486>,  <20.534542, 20.456196, 12.666129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.151072, 20.402534, 12.766486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224274, -0.898944, 0.376298,
		0.175057, 0.417016, 0.891882,
		-0.958674, -0.134152, 0.250893,
		19.863470, 20.362289, 12.841754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.590204, 20.245529, 13.338332>,  <20.534542, 20.456196, 12.666129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.590204, 20.245529, 13.338332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.210917, 20.141148, 13.265907>,  <19.983343, 20.078520, 13.222452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.210917, 20.141148, 13.265907>,  <20.590204, 20.245529, 13.338332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.210917, 20.141148, 13.265907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143800, -0.861011, 0.487834,
		-0.283198, 0.436537, 0.853952,
		-0.948220, -0.260952, -0.181062,
		19.926451, 20.062862, 13.211589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.416580, 20.004454, 14.025911>,  <20.590204, 20.245529, 13.338332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.416580, 20.004454, 14.025911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.144550, 19.871969, 13.764286>,  <19.981333, 19.792479, 13.607311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.144550, 19.871969, 13.764286>,  <20.416580, 20.004454, 14.025911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.144550, 19.871969, 13.764286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087371, -0.849164, 0.520852,
		-0.727918, 0.411365, 0.548557,
		-0.680075, -0.331209, -0.654063,
		19.940527, 19.772606, 13.568068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.884468, 19.847048, 14.455083>,  <20.416580, 20.004454, 14.025911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.884468, 19.847048, 14.455083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.850842, 19.649223, 14.109056>,  <19.830666, 19.530529, 13.901439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.850842, 19.649223, 14.109056>,  <19.884468, 19.847048, 14.455083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.850842, 19.649223, 14.109056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103857, -0.859065, 0.501220,
		-0.991033, 0.131979, 0.020854,
		-0.084065, -0.494560, -0.865068,
		19.825623, 19.500854, 13.849535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.362534, 19.349222, 14.655482>,  <19.884468, 19.847048, 14.455083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.362534, 19.349222, 14.655482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.532606, 19.205667, 14.323116>,  <19.634651, 19.119535, 14.123696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.532606, 19.205667, 14.323116>,  <19.362534, 19.349222, 14.655482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.532606, 19.205667, 14.323116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056349, -0.905753, 0.420044,
		-0.903341, -0.225426, -0.364909,
		0.425206, -0.358880, -0.830906,
		19.660162, 19.098001, 14.073842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.113367, 18.613735, 14.541257>,  <19.362534, 19.349222, 14.655482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.113367, 18.613735, 14.541257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.438372, 18.629581, 14.308618>,  <19.633373, 18.639090, 14.169034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.438372, 18.629581, 14.308618>,  <19.113367, 18.613735, 14.541257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.438372, 18.629581, 14.308618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268611, -0.910905, 0.313209,
		-0.517373, -0.410709, -0.750762,
		0.812510, 0.039617, -0.581599,
		19.682125, 18.641466, 14.134138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.157204, 17.961464, 14.213504>,  <19.113367, 18.613735, 14.541257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.157204, 17.961464, 14.213504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.517719, 18.129642, 14.255271>,  <19.734028, 18.230549, 14.280332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.517719, 18.129642, 14.255271>,  <19.157204, 17.961464, 14.213504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.517719, 18.129642, 14.255271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369353, -0.871727, 0.321981,
		0.226400, -0.251630, -0.940970,
		0.901289, 0.420446, 0.104419,
		19.788105, 18.255775, 14.286596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.718512, 17.524258, 13.822734>,  <19.157204, 17.961464, 14.213504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.718512, 17.524258, 13.822734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.929268, 17.740803, 14.084823>,  <20.055721, 17.870729, 14.242076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.929268, 17.740803, 14.084823>,  <19.718512, 17.524258, 13.822734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.929268, 17.740803, 14.084823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373430, -0.839965, 0.393711,
		0.763503, 0.037237, -0.644730,
		0.526890, 0.541361, 0.655221,
		20.087336, 17.903212, 14.281389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.462570, 17.230322, 13.805053>,  <19.718512, 17.524258, 13.822734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.462570, 17.230322, 13.805053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.389997, 17.428738, 14.144706>,  <20.346453, 17.547787, 14.348497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.389997, 17.428738, 14.144706>,  <20.462570, 17.230322, 13.805053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.389997, 17.428738, 14.144706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212203, -0.823374, 0.526332,
		0.960235, 0.275683, 0.044126,
		-0.181433, 0.496039, 0.849133,
		20.335567, 17.577549, 14.399446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.071613, 17.219025, 14.231842>,  <20.462570, 17.230322, 13.805053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.071613, 17.219025, 14.231842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.735611, 17.255039, 14.445865>,  <20.534010, 17.276648, 14.574279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.735611, 17.255039, 14.445865>,  <21.071613, 17.219025, 14.231842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.735611, 17.255039, 14.445865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225094, -0.839442, 0.494642,
		0.493686, 0.535939, 0.684867,
		-0.840004, 0.090038, 0.535057,
		20.483610, 17.282051, 14.606381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.251736, 17.700165, 14.786525>,  <21.071613, 17.219025, 14.231842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.251736, 17.700165, 14.786525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.618496, 17.554415, 14.721375>,  <21.838552, 17.466965, 14.682286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.618496, 17.554415, 14.721375>,  <21.251736, 17.700165, 14.786525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.618496, 17.554415, 14.721375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348403, 0.929792, -0.118750,
		0.194708, 0.052136, 0.979475,
		0.916899, -0.364374, -0.162873,
		21.893566, 17.445103, 14.672513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.638813, 18.248302, 14.972497>,  <21.251736, 17.700165, 14.786525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.638813, 18.248302, 14.972497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.890587, 18.015156, 14.766943>,  <22.041651, 17.875267, 14.643611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.890587, 18.015156, 14.766943>,  <21.638813, 18.248302, 14.972497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.890587, 18.015156, 14.766943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477391, 0.811866, -0.336113,
		0.613115, -0.033763, 0.789272,
		0.629435, -0.582867, -0.513885,
		22.079416, 17.840296, 14.612778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.169096, 18.569195, 14.989278>,  <21.638813, 18.248302, 14.972497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.169096, 18.569195, 14.989278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.254099, 18.323900, 14.684967>,  <22.305101, 18.176723, 14.502380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.254099, 18.323900, 14.684967>,  <22.169096, 18.569195, 14.989278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.254099, 18.323900, 14.684967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571768, 0.709399, -0.412109,
		0.792415, -0.347411, 0.501383,
		0.212509, -0.613236, -0.760777,
		22.317852, 18.139929, 14.456734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.788668, 18.844793, 14.688858>,  <22.169096, 18.569195, 14.989278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.788668, 18.844793, 14.688858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.658831, 18.620384, 14.384255>,  <22.580929, 18.485739, 14.201494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.658831, 18.620384, 14.384255>,  <22.788668, 18.844793, 14.688858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.658831, 18.620384, 14.384255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311545, 0.696758, -0.646118,
		0.893074, -0.446968, -0.051377,
		-0.324591, -0.561024, -0.761507,
		22.561453, 18.452078, 14.155804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.390528, 18.773760, 14.255501>,  <22.788668, 18.844793, 14.688858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.390528, 18.773760, 14.255501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.051485, 18.714336, 14.051739>,  <22.848059, 18.678682, 13.929482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.051485, 18.714336, 14.051739>,  <23.390528, 18.773760, 14.255501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.051485, 18.714336, 14.051739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259137, 0.721855, -0.641695,
		0.463044, -0.675911, -0.573353,
		-0.847607, -0.148556, -0.509404,
		22.797203, 18.669769, 13.898917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.495129, 18.769068, 13.475420>,  <23.390528, 18.773760, 14.255501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.495129, 18.769068, 13.475420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.105358, 18.849199, 13.516138>,  <22.871496, 18.897278, 13.540569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.105358, 18.849199, 13.516138>,  <23.495129, 18.769068, 13.475420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.105358, 18.849199, 13.516138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027229, 0.554942, -0.831443,
		-0.223052, -0.807408, -0.546205,
		-0.974426, 0.200328, 0.101796,
		22.813030, 18.909298, 13.546677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.258858, 18.978209, 12.772832>,  <23.495129, 18.769068, 13.475420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.258858, 18.978209, 12.772832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.951187, 19.085880, 13.004663>,  <22.766584, 19.150484, 13.143761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.951187, 19.085880, 13.004663>,  <23.258858, 18.978209, 12.772832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.951187, 19.085880, 13.004663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271805, 0.683018, -0.677945,
		-0.578350, -0.678991, -0.452197,
		-0.769177, 0.269180, 0.579577,
		22.720434, 19.166634, 13.178535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.724655, 19.014595, 12.277350>,  <23.258858, 18.978209, 12.772832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.724655, 19.014595, 12.277350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.603319, 19.231449, 12.590801>,  <22.530518, 19.361563, 12.778872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.603319, 19.231449, 12.590801>,  <22.724655, 19.014595, 12.277350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.603319, 19.231449, 12.590801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412711, 0.666489, -0.620857,
		-0.858868, -0.511743, 0.021572,
		-0.303341, 0.542137, 0.783628,
		22.512318, 19.394091, 12.825890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.214537, 19.358931, 11.922616>,  <22.724655, 19.014595, 12.277350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.214537, 19.358931, 11.922616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.334957, 19.566711, 12.242500>,  <22.407209, 19.691380, 12.434431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.334957, 19.566711, 12.242500>,  <22.214537, 19.358931, 11.922616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.334957, 19.566711, 12.242500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274898, 0.850288, -0.448822,
		-0.913127, -0.084721, 0.398776,
		0.301050, 0.519454, 0.799710,
		22.425272, 19.722548, 12.482413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.642920, 19.827164, 12.184825>,  <22.214537, 19.358931, 11.922616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.642920, 19.827164, 12.184825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.995375, 19.978279, 12.298573>,  <22.206848, 20.068949, 12.366821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.995375, 19.978279, 12.298573>,  <21.642920, 19.827164, 12.184825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.995375, 19.978279, 12.298573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228820, 0.866955, -0.442753,
		-0.413804, 0.325058, 0.850355,
		0.881140, 0.377791, 0.284370,
		22.259716, 20.091616, 12.383883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.493984, 20.555864, 12.293104>,  <21.642920, 19.827164, 12.184825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.493984, 20.555864, 12.293104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.893564, 20.542854, 12.280177>,  <22.133312, 20.535048, 12.272421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.893564, 20.542854, 12.280177>,  <21.493984, 20.555864, 12.293104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.893564, 20.542854, 12.280177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012804, 0.874687, -0.484519,
		0.044028, 0.483596, 0.874183,
		0.998948, -0.032526, -0.032319,
		22.193249, 20.533096, 12.270481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.622665, 21.183022, 12.016816>,  <21.493984, 20.555864, 12.293104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.622665, 21.183022, 12.016816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.998430, 21.054840, 11.968138>,  <22.223890, 20.977930, 11.938931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.998430, 21.054840, 11.968138>,  <21.622665, 21.183022, 12.016816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.998430, 21.054840, 11.968138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252072, 0.886399, -0.388274,
		0.232295, 0.334075, 0.913473,
		0.939414, -0.320455, -0.121695,
		22.280254, 20.958704, 11.931629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.060526, 21.791559, 12.069616>,  <21.622665, 21.183022, 12.016816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.060526, 21.791559, 12.069616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.301767, 21.531696, 11.884484>,  <22.446512, 21.375778, 11.773405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.301767, 21.531696, 11.884484>,  <22.060526, 21.791559, 12.069616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.301767, 21.531696, 11.884484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379711, 0.744099, -0.549670,
		0.701488, 0.155766, 0.695451,
		0.603104, -0.649657, -0.462830,
		22.482698, 21.336800, 11.745635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.679691, 21.943310, 12.326265>,  <22.060526, 21.791559, 12.069616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.679691, 21.943310, 12.326265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.710049, 21.762812, 11.970598>,  <22.728262, 21.654512, 11.757198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.710049, 21.762812, 11.970598>,  <22.679691, 21.943310, 12.326265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.710049, 21.762812, 11.970598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582400, 0.743879, -0.327802,
		0.809352, -0.492974, 0.319258,
		0.075892, -0.451243, -0.889168,
		22.732817, 21.627439, 11.703848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.408207, 22.100060, 12.177287>,  <22.679691, 21.943310, 12.326265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.408207, 22.100060, 12.177287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.193428, 22.023655, 11.848605>,  <23.064560, 21.977812, 11.651396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.193428, 22.023655, 11.848605>,  <23.408207, 22.100060, 12.177287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.193428, 22.023655, 11.848605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302323, 0.865766, -0.398810,
		0.787583, -0.462561, -0.407124,
		-0.536948, -0.191013, -0.821706,
		23.032343, 21.966351, 11.602094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.763748, 22.479362, 11.796601>,  <23.408207, 22.100060, 12.177287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.763748, 22.479362, 11.796601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.449392, 22.396385, 11.563589>,  <23.260778, 22.346600, 11.423781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.449392, 22.396385, 11.563589>,  <23.763748, 22.479362, 11.796601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.449392, 22.396385, 11.563589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043371, 0.921240, -0.386569,
		0.616841, -0.329066, -0.714998,
		-0.785892, -0.207442, -0.582531,
		23.213625, 22.334152, 11.388830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.993839, 22.629494, 11.040349>,  <23.763748, 22.479362, 11.796601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.993839, 22.629494, 11.040349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.595600, 22.666586, 11.045733>,  <23.356657, 22.688841, 11.048964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.595600, 22.666586, 11.045733>,  <23.993839, 22.629494, 11.040349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.595600, 22.666586, 11.045733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082751, 0.937495, -0.338018,
		-0.043965, -0.335417, -0.941043,
		-0.995600, 0.092733, 0.013461,
		23.296921, 22.694407, 11.049771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.691994, 22.706112, 10.292451>,  <23.993839, 22.629494, 11.040349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.691994, 22.706112, 10.292451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.425543, 22.853676, 10.551736>,  <23.265673, 22.942215, 10.707307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.425543, 22.853676, 10.551736>,  <23.691994, 22.706112, 10.292451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.425543, 22.853676, 10.551736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039497, 0.850438, -0.524591,
		-0.744793, -0.375046, -0.551928,
		-0.666126, 0.368912, 0.648213,
		23.225704, 22.964350, 10.746200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.286961, 23.114552, 9.851142>,  <23.691994, 22.706112, 10.292451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.286961, 23.114552, 9.851142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.185932, 23.246456, 10.215003>,  <23.125315, 23.325598, 10.433320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.185932, 23.246456, 10.215003>,  <23.286961, 23.114552, 9.851142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.185932, 23.246456, 10.215003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208654, 0.899450, -0.383995,
		-0.944813, -0.286788, -0.158367,
		-0.252569, 0.329759, 0.909652,
		23.110161, 23.345385, 10.487899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.420849, 16.921295, 21.627790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.240932, 16.641367, 21.405823>,  <16.132982, 16.473410, 21.272642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.240932, 16.641367, 21.405823>,  <16.420849, 16.921295, 21.627790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.240932, 16.641367, 21.405823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521120, 0.298955, -0.799413,
		0.725342, -0.648750, 0.230222,
		-0.449793, -0.699821, -0.554921,
		16.105995, 16.431421, 21.239346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.892452, 16.464924, 21.329226>,  <16.420849, 16.921295, 21.627790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.892452, 16.464924, 21.329226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.563761, 16.465673, 21.101276>,  <16.366547, 16.466124, 20.964506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.563761, 16.465673, 21.101276>,  <16.892452, 16.464924, 21.329226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.563761, 16.465673, 21.101276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539337, 0.325533, -0.776624,
		0.184056, -0.945529, -0.268512,
		-0.821730, 0.001877, -0.569875,
		16.317242, 16.466236, 20.930313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.987719, 16.097763, 20.706482>,  <16.892452, 16.464924, 21.329226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.987719, 16.097763, 20.706482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.676617, 16.312885, 20.576332>,  <16.489956, 16.441957, 20.498243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.676617, 16.312885, 20.576332>,  <16.987719, 16.097763, 20.706482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.676617, 16.312885, 20.576332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446763, 0.108845, -0.888007,
		-0.442159, -0.836014, -0.324925,
		-0.777753, 0.537804, -0.325373,
		16.443291, 16.474226, 20.478720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.816492, 15.831403, 20.158699>,  <16.987719, 16.097763, 20.706482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.816492, 15.831403, 20.158699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.660646, 16.196589, 20.110210>,  <16.567139, 16.415701, 20.081118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.660646, 16.196589, 20.110210>,  <16.816492, 15.831403, 20.158699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.660646, 16.196589, 20.110210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316891, 0.009307, -0.948416,
		-0.864742, -0.407933, -0.292936,
		-0.389616, 0.912964, -0.121222,
		16.543762, 16.470478, 20.073843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.498892, 15.836234, 19.570370>,  <16.816492, 15.831403, 20.158699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.498892, 15.836234, 19.570370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.520802, 16.232443, 19.620750>,  <16.533947, 16.470169, 19.650980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.520802, 16.232443, 19.620750>,  <16.498892, 15.836234, 19.570370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.520802, 16.232443, 19.620750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317687, 0.102300, -0.942661,
		-0.946612, 0.091646, -0.309074,
		0.054773, 0.990523, 0.125953,
		16.537233, 16.529600, 19.658537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.128757, 16.098303, 19.021036>,  <16.498892, 15.836234, 19.570370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.128757, 16.098303, 19.021036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.357172, 16.397091, 19.157246>,  <16.494221, 16.576365, 19.238972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.357172, 16.397091, 19.157246>,  <16.128757, 16.098303, 19.021036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.357172, 16.397091, 19.157246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360939, 0.144109, -0.921388,
		-0.737321, 0.649052, -0.187319,
		0.571035, 0.746970, 0.340523,
		16.528482, 16.621181, 19.259403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.004492, 16.607372, 18.570679>,  <16.128757, 16.098303, 19.021036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.004492, 16.607372, 18.570679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.351606, 16.704422, 18.744152>,  <16.559875, 16.762651, 18.848236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.351606, 16.704422, 18.744152>,  <16.004492, 16.607372, 18.570679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.351606, 16.704422, 18.744152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384103, 0.226238, -0.895143,
		-0.315299, 0.943372, 0.103133,
		0.867785, 0.242624, 0.433685,
		16.611942, 16.777208, 18.874258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.155910, 17.161215, 18.267246>,  <16.004492, 16.607372, 18.570679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.155910, 17.161215, 18.267246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.519806, 17.084787, 18.414688>,  <16.738144, 17.038931, 18.503153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.519806, 17.084787, 18.414688>,  <16.155910, 17.161215, 18.267246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.519806, 17.084787, 18.414688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358180, -0.087784, -0.929517,
		0.209959, 0.977643, -0.011424,
		0.909739, -0.191069, 0.368603,
		16.792728, 17.027468, 18.525269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.526455, 17.597080, 17.926191>,  <16.155910, 17.161215, 18.267246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.526455, 17.597080, 17.926191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.765072, 17.304432, 18.058174>,  <16.908241, 17.128843, 18.137363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.765072, 17.304432, 18.058174>,  <16.526455, 17.597080, 17.926191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.765072, 17.304432, 18.058174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514644, 0.033233, -0.856760,
		0.615857, 0.680903, 0.396348,
		0.596542, -0.731619, 0.329956,
		16.944035, 17.084946, 18.157162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.295364, 17.857122, 17.908731>,  <16.526455, 17.597080, 17.926191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.295364, 17.857122, 17.908731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.269133, 17.457989, 17.906549>,  <17.253393, 17.218510, 17.905239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.269133, 17.457989, 17.906549>,  <17.295364, 17.857122, 17.908731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.269133, 17.457989, 17.906549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674637, -0.040308, -0.737048,
		0.735231, -0.052016, 0.675818,
		-0.065580, -0.997832, -0.005456,
		17.249458, 17.158640, 17.904913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.886723, 17.645491, 17.723579>,  <17.295364, 17.857122, 17.908731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.886723, 17.645491, 17.723579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.677006, 17.308138, 17.676548>,  <17.551176, 17.105726, 17.648329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.677006, 17.308138, 17.676548>,  <17.886723, 17.645491, 17.723579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.677006, 17.308138, 17.676548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519223, -0.207182, -0.829146,
		0.674926, -0.495765, 0.546527,
		-0.524292, -0.843382, -0.117580,
		17.519718, 17.055124, 17.641273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.358355, 17.143370, 17.718847>,  <17.886723, 17.645491, 17.723579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.358355, 17.143370, 17.718847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.044756, 16.986126, 17.526672>,  <17.856598, 16.891781, 17.411367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.044756, 16.986126, 17.526672>,  <18.358355, 17.143370, 17.718847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.044756, 16.986126, 17.526672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589979, -0.231138, -0.773628,
		0.193073, -0.889967, 0.413137,
		-0.783995, -0.393109, -0.480435,
		17.809557, 16.868193, 17.382542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.576313, 16.504965, 17.410992>,  <18.358355, 17.143370, 17.718847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.576313, 16.504965, 17.410992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.250254, 16.647535, 17.228348>,  <18.054619, 16.733078, 17.118761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.250254, 16.647535, 17.228348>,  <18.576313, 16.504965, 17.410992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.250254, 16.647535, 17.228348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423409, -0.171304, -0.889595,
		-0.395294, -0.918486, -0.011276,
		-0.815149, 0.356426, -0.456610,
		18.005709, 16.754463, 17.091364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.005373, 16.709631, 16.759134>,  <18.576313, 16.504965, 17.410992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.005373, 16.709631, 16.759134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.371666, 16.565292, 16.829813>,  <19.591442, 16.478689, 16.872219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.371666, 16.565292, 16.829813>,  <19.005373, 16.709631, 16.759134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.371666, 16.565292, 16.829813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155562, 0.087052, 0.983983,
		-0.370447, -0.928554, 0.023583,
		0.915735, -0.360845, 0.176695,
		19.646387, 16.457039, 16.882822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.349264, 16.427567, 16.117115>,  <19.005373, 16.709631, 16.759134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.349264, 16.427567, 16.117115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.670635, 16.225489, 16.243149>,  <19.863459, 16.104242, 16.318769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.670635, 16.225489, 16.243149>,  <19.349264, 16.427567, 16.117115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.670635, 16.225489, 16.243149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584170, -0.771147, 0.253136,
		0.115095, -0.387441, -0.914682,
		0.803430, -0.505195, 0.315087,
		19.911663, 16.073931, 16.337675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.312820, 15.671774, 15.985874>,  <19.349264, 16.427567, 16.117115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.312820, 15.671774, 15.985874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.550301, 15.709537, 16.305525>,  <19.692789, 15.732194, 16.497316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.550301, 15.709537, 16.305525>,  <19.312820, 15.671774, 15.985874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.550301, 15.709537, 16.305525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494811, -0.740318, 0.455073,
		0.634570, -0.665595, -0.392815,
		0.593702, 0.094407, 0.799127,
		19.728411, 15.737859, 16.545263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.342936, 15.015347, 16.261278>,  <19.312820, 15.671774, 15.985874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.342936, 15.015347, 16.261278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.482262, 15.247006, 16.556103>,  <19.565857, 15.386003, 16.732998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.482262, 15.247006, 16.556103>,  <19.342936, 15.015347, 16.261278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.482262, 15.247006, 16.556103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259658, -0.695922, 0.669529,
		0.900697, -0.424591, -0.092018,
		0.348314, 0.579150, 0.737064,
		19.586756, 15.420752, 16.777222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.555546, 14.524127, 16.724495>,  <19.342936, 15.015347, 16.261278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.555546, 14.524127, 16.724495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.564503, 14.859359, 16.942532>,  <19.569878, 15.060497, 17.073353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.564503, 14.859359, 16.942532>,  <19.555546, 14.524127, 16.724495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.564503, 14.859359, 16.942532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268834, -0.520097, 0.810695,
		0.962926, -0.164691, 0.213659,
		0.022391, 0.838078, 0.545090,
		19.571220, 15.110783, 17.106058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.846716, 14.246549, 17.352055>,  <19.555546, 14.524127, 16.724495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.846716, 14.246549, 17.352055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.679976, 14.596814, 17.449585>,  <19.579931, 14.806973, 17.508102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.679976, 14.596814, 17.449585>,  <19.846716, 14.246549, 17.352055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.679976, 14.596814, 17.449585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360357, -0.405463, 0.840085,
		0.834493, 0.262325, 0.484569,
		-0.416850, 0.875663, 0.243825,
		19.554920, 14.859513, 17.522732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.128757, 14.388443, 17.993994>,  <19.846716, 14.246549, 17.352055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.128757, 14.388443, 17.993994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.787651, 14.594749, 17.961063>,  <19.582987, 14.718534, 17.941305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.787651, 14.594749, 17.961063>,  <20.128757, 14.388443, 17.993994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.787651, 14.594749, 17.961063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284777, -0.327015, 0.901090,
		0.437829, 0.791863, 0.425745,
		-0.852765, 0.515766, -0.082328,
		19.531822, 14.749479, 17.936365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.065790, 14.720665, 18.613546>,  <20.128757, 14.388443, 17.993994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.065790, 14.720665, 18.613546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.702181, 14.721814, 18.446854>,  <19.484015, 14.722504, 18.346838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.702181, 14.721814, 18.446854>,  <20.065790, 14.720665, 18.613546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.702181, 14.721814, 18.446854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377466, -0.429463, 0.820415,
		-0.176613, 0.903080, 0.391477,
		-0.909025, 0.002873, -0.416731,
		19.429474, 14.722676, 18.321835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.588757, 15.014347, 19.133532>,  <20.065790, 14.720665, 18.613546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.588757, 15.014347, 19.133532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.352823, 14.828982, 18.869003>,  <19.211262, 14.717763, 18.710287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.352823, 14.828982, 18.869003>,  <19.588757, 15.014347, 19.133532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.352823, 14.828982, 18.869003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537578, -0.385770, 0.749794,
		-0.602581, 0.797766, -0.021579,
		-0.589836, -0.463412, -0.661319,
		19.175873, 14.689959, 18.670607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.000620, 14.969277, 19.503878>,  <19.588757, 15.014347, 19.133532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.000620, 14.969277, 19.503878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.916439, 14.719214, 19.203241>,  <18.865931, 14.569177, 19.022860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.916439, 14.719214, 19.203241>,  <19.000620, 14.969277, 19.503878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.916439, 14.719214, 19.203241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548718, -0.560744, 0.620061,
		-0.809086, 0.542903, -0.225027,
		-0.210451, -0.625158, -0.751590,
		18.853304, 14.531667, 18.977764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.290466, 14.895888, 19.474367>,  <19.000620, 14.969277, 19.503878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.290466, 14.895888, 19.474367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.431454, 14.557153, 19.315054>,  <18.516047, 14.353911, 19.219465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.431454, 14.557153, 19.315054>,  <18.290466, 14.895888, 19.474367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.431454, 14.557153, 19.315054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458370, -0.527275, 0.715457,
		-0.815882, -0.069615, -0.574013,
		0.352469, -0.846838, -0.398285,
		18.537195, 14.303102, 19.195568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.719162, 14.427799, 19.427940>,  <18.290466, 14.895888, 19.474367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.719162, 14.427799, 19.427940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.046217, 14.197558, 19.423075>,  <18.242451, 14.059414, 19.420155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.046217, 14.197558, 19.423075>,  <17.719162, 14.427799, 19.427940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.046217, 14.197558, 19.423075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320092, -0.472048, 0.821408,
		-0.478581, -0.667698, -0.570210,
		0.817619, -0.575630, -0.012189,
		18.291510, 14.024878, 19.419426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.490414, 13.706672, 19.476330>,  <17.719162, 14.427799, 19.427940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.490414, 13.706672, 19.476330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.871454, 13.695961, 19.597546>,  <18.100079, 13.689535, 19.670275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.871454, 13.695961, 19.597546>,  <17.490414, 13.706672, 19.476330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.871454, 13.695961, 19.597546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252882, -0.623441, 0.739846,
		0.169118, -0.781412, -0.600662,
		0.952602, -0.026776, 0.303040,
		18.157234, 13.687928, 19.688457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500828, 13.100140, 19.705732>,  <17.490414, 13.706672, 19.476330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.500828, 13.100140, 19.705732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.806515, 13.281797, 19.888916>,  <17.989927, 13.390792, 19.998825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.806515, 13.281797, 19.888916>,  <17.500828, 13.100140, 19.705732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.806515, 13.281797, 19.888916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269547, -0.420177, 0.866485,
		0.585932, -0.785623, -0.198693,
		0.764217, 0.454144, 0.457958,
		18.035780, 13.418040, 20.026304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.752117, 12.609379, 20.264765>,  <17.500828, 13.100140, 19.705732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.752117, 12.609379, 20.264765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.856054, 12.979054, 20.376732>,  <17.918417, 13.200860, 20.443913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.856054, 12.979054, 20.376732>,  <17.752117, 12.609379, 20.264765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.856054, 12.979054, 20.376732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174031, -0.240310, 0.954968,
		0.949839, -0.296858, 0.098394,
		0.259845, 0.924190, 0.279918,
		17.934008, 13.256311, 20.460707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.007372, 11.966410, 20.358801>,  <17.752117, 12.609379, 20.264765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.007372, 11.966410, 20.358801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.647125, 11.880860, 20.207460>,  <17.430977, 11.829531, 20.116655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.647125, 11.880860, 20.207460>,  <18.007372, 11.966410, 20.358801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.647125, 11.880860, 20.207460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346580, 0.171864, -0.922141,
		0.262249, -0.961623, -0.080658,
		-0.900615, -0.213876, -0.378351,
		17.376940, 11.816698, 20.093956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.052212, 11.549503, 19.761171>,  <18.007372, 11.966410, 20.358801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.052212, 11.549503, 19.761171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.677338, 11.674272, 19.698702>,  <17.452414, 11.749133, 19.661221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.677338, 11.674272, 19.698702>,  <18.052212, 11.549503, 19.761171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.677338, 11.674272, 19.698702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149105, -0.046536, -0.987726,
		-0.315361, -0.948967, -0.002897,
		-0.937185, 0.311922, -0.156171,
		17.396183, 11.767848, 19.651850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.687836, 11.057990, 19.373857>,  <18.052212, 11.549503, 19.761171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.687836, 11.057990, 19.373857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.456884, 11.377407, 19.305786>,  <17.318314, 11.569057, 19.264942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.456884, 11.377407, 19.305786>,  <17.687836, 11.057990, 19.373857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.456884, 11.377407, 19.305786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064234, -0.163361, -0.984473,
		-0.813945, -0.579346, 0.043028,
		-0.577380, 0.798543, -0.170180,
		17.283670, 11.616970, 19.254732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.221760, 10.881674, 18.839226>,  <17.687836, 11.057990, 19.373857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.221760, 10.881674, 18.839226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.213560, 11.281140, 18.820276>,  <17.208641, 11.520821, 18.808907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.213560, 11.281140, 18.820276>,  <17.221760, 10.881674, 18.839226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.213560, 11.281140, 18.820276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090003, -0.045349, -0.994909,
		-0.995731, -0.024659, -0.088954,
		-0.020499, 0.998667, -0.047375,
		17.207411, 11.580740, 18.806065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.669577, 11.063824, 18.366871>,  <17.221760, 10.881674, 18.839226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.669577, 11.063824, 18.366871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.928356, 11.368113, 18.387875>,  <17.083624, 11.550686, 18.400476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.928356, 11.368113, 18.387875>,  <16.669577, 11.063824, 18.366871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.928356, 11.368113, 18.387875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175027, -0.081119, -0.981216,
		-0.742174, 0.643988, -0.185627,
		0.646949, 0.760723, 0.052510,
		17.122440, 11.596330, 18.403627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.591572, 11.249856, 17.766796>,  <16.669577, 11.063824, 18.366871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.591572, 11.249856, 17.766796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.893368, 11.494026, 17.863234>,  <17.074446, 11.640529, 17.921097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.893368, 11.494026, 17.863234>,  <16.591572, 11.249856, 17.766796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.893368, 11.494026, 17.863234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216964, 0.114715, -0.969416,
		-0.619414, 0.783722, -0.045889,
		0.754488, 0.610426, 0.241096,
		17.119715, 11.677154, 17.935562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532673, 11.975351, 17.454573>,  <16.591572, 11.249856, 17.766796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.532673, 11.975351, 17.454573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.917364, 11.884912, 17.516487>,  <17.148178, 11.830647, 17.553637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.917364, 11.884912, 17.516487>,  <16.532673, 11.975351, 17.454573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.917364, 11.884912, 17.516487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196226, 0.174032, -0.964991,
		0.191246, 0.958432, 0.211738,
		0.961728, -0.226099, 0.154787,
		17.205883, 11.817081, 17.562923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.893820, 12.543454, 17.000769>,  <16.532673, 11.975351, 17.454573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.893820, 12.543454, 17.000769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.133114, 12.231289, 17.073509>,  <17.276691, 12.043990, 17.117153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.133114, 12.231289, 17.073509>,  <16.893820, 12.543454, 17.000769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.133114, 12.231289, 17.073509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311980, 0.017804, -0.949922,
		0.738093, 0.625012, 0.254124,
		0.598237, -0.780412, 0.181851,
		17.312586, 11.997166, 17.128065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.472107, 12.751657, 16.661797>,  <16.893820, 12.543454, 17.000769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.472107, 12.751657, 16.661797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.498461, 12.354471, 16.701157>,  <17.514273, 12.116160, 16.724773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.498461, 12.354471, 16.701157>,  <17.472107, 12.751657, 16.661797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.498461, 12.354471, 16.701157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104978, -0.091169, -0.990287,
		0.992290, 0.075575, 0.098232,
		0.065885, -0.992963, 0.098400,
		17.518227, 12.056582, 16.730677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.938423, 12.532179, 16.165483>,  <17.472107, 12.751657, 16.661797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.938423, 12.532179, 16.165483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.738050, 12.193626, 16.237825>,  <17.617826, 11.990495, 16.281231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.738050, 12.193626, 16.237825>,  <17.938423, 12.532179, 16.165483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.738050, 12.193626, 16.237825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225985, -0.329622, -0.916668,
		0.835464, -0.418316, 0.356387,
		-0.500930, -0.846381, 0.180854,
		17.587772, 11.939713, 16.292082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.368250, 11.940014, 15.923033>,  <17.938423, 12.532179, 16.165483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.368250, 11.940014, 15.923033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.982878, 11.832829, 15.922413>,  <17.751656, 11.768517, 15.922041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.982878, 11.832829, 15.922413>,  <18.368250, 11.940014, 15.923033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.982878, 11.832829, 15.922413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078876, -0.278053, -0.957322,
		0.256096, -0.922433, 0.289020,
		-0.963428, -0.267963, -0.001550,
		17.693850, 11.752439, 15.921947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.172993, 11.222967, 15.666063>,  <18.368250, 11.940014, 15.923033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.172993, 11.222967, 15.666063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.840868, 11.437548, 15.605657>,  <17.641594, 11.566297, 15.569413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.840868, 11.437548, 15.605657>,  <18.172993, 11.222967, 15.666063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.840868, 11.437548, 15.605657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020173, -0.241869, -0.970099,
		-0.556938, -0.808529, 0.190004,
		-0.830309, 0.536452, -0.151016,
		17.591776, 11.598483, 15.560351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<13.825358, 10.954875, 24.340425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.085625, 10.667073, 24.437542>,  <14.241784, 10.494392, 24.495811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.085625, 10.667073, 24.437542>,  <13.825358, 10.954875, 24.340425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.085625, 10.667073, 24.437542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544815, 0.219598, -0.809292,
		0.528972, 0.658855, 0.534881,
		0.650665, -0.719505, 0.242793,
		14.280825, 10.451221, 24.510380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.470507, 11.217340, 24.370565>,  <13.825358, 10.954875, 24.340425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.470507, 11.217340, 24.370565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.562795, 10.831373, 24.320435>,  <14.618168, 10.599793, 24.290356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.562795, 10.831373, 24.320435>,  <14.470507, 11.217340, 24.370565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.562795, 10.831373, 24.320435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603587, 0.242956, -0.759378,
		0.763185, 0.099557, 0.638465,
		0.230721, -0.964915, -0.125329,
		14.632010, 10.541899, 24.282835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.153959, 11.247605, 24.424843>,  <14.470507, 11.217340, 24.370565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.153959, 11.247605, 24.424843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.048447, 10.927175, 24.209921>,  <14.985139, 10.734917, 24.080967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.048447, 10.927175, 24.209921>,  <15.153959, 11.247605, 24.424843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.048447, 10.927175, 24.209921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750898, 0.179103, -0.635669,
		0.605452, -0.571139, 0.554282,
		-0.263781, -0.801076, -0.537305,
		14.969313, 10.686852, 24.048729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.836371, 10.912819, 24.306976>,  <15.153959, 11.247605, 24.424843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.836371, 10.912819, 24.306976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.554211, 10.772058, 24.060863>,  <15.384914, 10.687602, 23.913195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.554211, 10.772058, 24.060863>,  <15.836371, 10.912819, 24.306976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.554211, 10.772058, 24.060863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637344, 0.064945, -0.767837,
		0.310162, -0.933782, 0.178469,
		-0.705402, -0.351900, -0.615284,
		15.342590, 10.666489, 23.876278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.206785, 10.430121, 24.077272>,  <15.836371, 10.912819, 24.306976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.206785, 10.430121, 24.077272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.922405, 10.499096, 23.804564>,  <15.751777, 10.540481, 23.640938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.922405, 10.499096, 23.804564>,  <16.206785, 10.430121, 24.077272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.922405, 10.499096, 23.804564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680292, -0.077005, -0.728884,
		-0.178187, -0.982006, -0.062561,
		-0.710951, 0.172438, -0.681773,
		15.709120, 10.550827, 23.600031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.472536, 10.053774, 23.481115>,  <16.206785, 10.430121, 24.077272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.472536, 10.053774, 23.481115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.161047, 10.254003, 23.329842>,  <15.974154, 10.374140, 23.239077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.161047, 10.254003, 23.329842>,  <16.472536, 10.053774, 23.481115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.161047, 10.254003, 23.329842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418529, -0.034565, -0.907545,
		-0.467362, -0.865005, -0.182587,
		-0.778720, 0.500571, -0.378185,
		15.927431, 10.404174, 23.216387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.439901, 9.841132, 22.777460>,  <16.472536, 10.053774, 23.481115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.439901, 9.841132, 22.777460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.248755, 10.192505, 22.777367>,  <16.134066, 10.403329, 22.777311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.248755, 10.192505, 22.777367>,  <16.439901, 9.841132, 22.777460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.248755, 10.192505, 22.777367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419180, 0.227801, -0.878860,
		-0.771966, -0.420076, -0.477080,
		-0.477867, 0.878432, -0.000233,
		16.105394, 10.456035, 22.777296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.196173, 9.909893, 22.099155>,  <16.439901, 9.841132, 22.777460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.196173, 9.909893, 22.099155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.188217, 10.273117, 22.266502>,  <16.183445, 10.491052, 22.366911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.188217, 10.273117, 22.266502>,  <16.196173, 9.909893, 22.099155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.188217, 10.273117, 22.266502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227075, 0.411616, -0.882615,
		-0.973674, 0.077447, -0.214384,
		-0.019888, 0.908060, 0.418366,
		16.182251, 10.545535, 22.392012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.913227, 10.203481, 21.615013>,  <16.196173, 9.909893, 22.099155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.913227, 10.203481, 21.615013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.054157, 10.504711, 21.837273>,  <16.138716, 10.685450, 21.970629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.054157, 10.504711, 21.837273>,  <15.913227, 10.203481, 21.615013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.054157, 10.504711, 21.837273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201182, 0.518893, -0.830828,
		-0.913998, 0.404508, 0.031313,
		0.352325, 0.753076, 0.555647,
		16.159855, 10.730634, 22.003967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.682794, 10.896547, 21.267231>,  <15.913227, 10.203481, 21.615013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.682794, 10.896547, 21.267231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.018072, 10.955661, 21.477217>,  <16.219240, 10.991129, 21.603209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.018072, 10.955661, 21.477217>,  <15.682794, 10.896547, 21.267231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.018072, 10.955661, 21.477217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379339, 0.533596, -0.755895,
		-0.391827, 0.832728, 0.391199,
		0.838197, 0.147783, 0.524963,
		16.269531, 10.999995, 21.634706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.812552, 11.606246, 21.266821>,  <15.682794, 10.896547, 21.267231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.812552, 11.606246, 21.266821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.175045, 11.449911, 21.331305>,  <16.392540, 11.356110, 21.369995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.175045, 11.449911, 21.331305>,  <15.812552, 11.606246, 21.266821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.175045, 11.449911, 21.331305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366570, 0.536403, -0.760197,
		0.210640, 0.748009, 0.629375,
		0.906232, -0.390838, 0.161210,
		16.446915, 11.332660, 21.379667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218222, 12.076068, 21.124006>,  <15.812552, 11.606246, 21.266821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.218222, 12.076068, 21.124006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.481445, 11.775292, 21.108257>,  <16.639380, 11.594828, 21.098808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.481445, 11.775292, 21.108257>,  <16.218222, 12.076068, 21.124006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.481445, 11.775292, 21.108257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411707, 0.403103, -0.817316,
		0.630442, 0.521630, 0.574843,
		0.658057, -0.751938, -0.039374,
		16.678862, 11.549711, 21.096445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.791420, 12.374909, 21.083563>,  <16.218222, 12.076068, 21.124006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.791420, 12.374909, 21.083563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.818293, 12.018063, 20.904850>,  <16.834415, 11.803954, 20.797623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.818293, 12.018063, 20.904850>,  <16.791420, 12.374909, 21.083563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.818293, 12.018063, 20.904850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419045, 0.431612, -0.798819,
		0.905477, -0.133557, 0.402833,
		0.067179, -0.892118, -0.446781,
		16.838446, 11.750427, 20.770815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.481268, 12.316298, 20.891460>,  <16.791420, 12.374909, 21.083563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.481268, 12.316298, 20.891460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.265482, 12.054926, 20.679043>,  <17.136011, 11.898102, 20.551592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.265482, 12.054926, 20.679043>,  <17.481268, 12.316298, 20.891460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.265482, 12.054926, 20.679043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355034, 0.395355, -0.847139,
		0.763499, -0.645538, 0.018712,
		-0.539463, -0.653433, -0.531042,
		17.103643, 11.858896, 20.519730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.149391, 12.468643, 20.864195>,  <17.481268, 12.316298, 20.891460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.149391, 12.468643, 20.864195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.089836, 12.862445, 20.901253>,  <18.054102, 13.098726, 20.923487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.089836, 12.862445, 20.901253>,  <18.149391, 12.468643, 20.864195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.089836, 12.862445, 20.901253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220290, -0.124356, 0.967475,
		0.964004, 0.123637, 0.235391,
		-0.148888, 0.984504, 0.092643,
		18.045170, 13.157796, 20.929047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.541327, 12.660192, 21.507986>,  <18.149391, 12.468643, 20.864195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.541327, 12.660192, 21.507986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.269915, 12.943674, 21.430695>,  <18.107067, 13.113763, 21.384319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.269915, 12.943674, 21.430695>,  <18.541327, 12.660192, 21.507986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.269915, 12.943674, 21.430695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209159, 0.065763, 0.975668,
		0.704166, 0.702435, 0.103610,
		-0.678530, 0.708703, -0.193229,
		18.066357, 13.156285, 21.372726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.623213, 13.095326, 22.000679>,  <18.541327, 12.660192, 21.507986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.623213, 13.095326, 22.000679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.264545, 13.226956, 21.882225>,  <18.049345, 13.305934, 21.811152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.264545, 13.226956, 21.882225>,  <18.623213, 13.095326, 22.000679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.264545, 13.226956, 21.882225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233964, 0.215631, 0.948032,
		0.375829, 0.919355, -0.116358,
		-0.896668, 0.329074, -0.296136,
		17.995544, 13.325679, 21.793385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.514618, 13.671795, 22.441261>,  <18.623213, 13.095326, 22.000679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.514618, 13.671795, 22.441261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.164804, 13.553185, 22.287762>,  <17.954916, 13.482018, 22.195662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.164804, 13.553185, 22.287762>,  <18.514618, 13.671795, 22.441261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.164804, 13.553185, 22.287762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442054, 0.161985, 0.882241,
		-0.199445, 0.941187, -0.272742,
		-0.874534, -0.296526, -0.383748,
		17.902445, 13.464227, 22.172638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.994349, 14.265422, 22.550491>,  <18.514618, 13.671795, 22.441261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.994349, 14.265422, 22.550491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.759079, 13.944056, 22.513456>,  <17.617918, 13.751236, 22.491236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.759079, 13.944056, 22.513456>,  <17.994349, 14.265422, 22.550491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.759079, 13.944056, 22.513456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567118, 0.328120, 0.755457,
		-0.576566, 0.496849, -0.648623,
		-0.588175, -0.803416, -0.092589,
		17.582626, 13.703031, 22.485680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.364447, 14.500534, 22.626040>,  <17.994349, 14.265422, 22.550491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.364447, 14.500534, 22.626040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.290749, 14.111182, 22.680571>,  <17.246531, 13.877571, 22.713289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.290749, 14.111182, 22.680571>,  <17.364447, 14.500534, 22.626040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.290749, 14.111182, 22.680571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581407, 0.219767, 0.783370,
		-0.792477, 0.065068, -0.606421,
		-0.184244, -0.973380, 0.136329,
		17.235476, 13.819168, 22.721470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.699318, 14.566892, 22.765547>,  <17.364447, 14.500534, 22.626040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.699318, 14.566892, 22.765547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.810266, 14.217934, 22.926538>,  <16.876835, 14.008558, 23.023134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.810266, 14.217934, 22.926538>,  <16.699318, 14.566892, 22.765547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.810266, 14.217934, 22.926538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665667, 0.127573, 0.735264,
		-0.692787, -0.471858, -0.545340,
		0.277370, -0.872396, 0.402481,
		16.893476, 13.956215, 23.047283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.135281, 14.284255, 23.032003>,  <16.699318, 14.566892, 22.765547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.135281, 14.284255, 23.032003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.403904, 14.056747, 23.221956>,  <16.565079, 13.920242, 23.335928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.403904, 14.056747, 23.221956>,  <16.135281, 14.284255, 23.032003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.403904, 14.056747, 23.221956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605925, -0.052685, 0.793775,
		-0.426456, -0.820807, -0.380013,
		0.671558, -0.568770, 0.474880,
		16.605371, 13.886117, 23.364420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.871588, 13.663443, 23.219421>,  <16.135281, 14.284255, 23.032003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.871588, 13.663443, 23.219421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.178751, 13.713341, 23.470739>,  <16.363049, 13.743279, 23.621531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.178751, 13.713341, 23.470739>,  <15.871588, 13.663443, 23.219421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.178751, 13.713341, 23.470739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541190, -0.398386, 0.740542,
		0.342683, -0.908696, -0.238412,
		0.767907, 0.124745, 0.628297,
		16.409122, 13.750764, 23.659229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.851669, 13.131879, 23.634386>,  <15.871588, 13.663443, 23.219421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.851669, 13.131879, 23.634386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.095114, 13.350397, 23.864571>,  <16.241180, 13.481508, 24.002682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.095114, 13.350397, 23.864571>,  <15.851669, 13.131879, 23.634386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.095114, 13.350397, 23.864571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437310, -0.374217, 0.817754,
		0.662082, -0.749348, 0.011149,
		0.608611, 0.546296, 0.575460,
		16.277697, 13.514286, 24.037209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.041252, 12.665978, 24.112881>,  <15.851669, 13.131879, 23.634386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.041252, 12.665978, 24.112881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.119944, 13.025470, 24.269640>,  <16.167158, 13.241165, 24.363695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.119944, 13.025470, 24.269640>,  <16.041252, 12.665978, 24.112881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.119944, 13.025470, 24.269640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400107, -0.291321, 0.868934,
		0.895104, -0.327745, 0.302277,
		0.196729, 0.898729, 0.391896,
		16.178963, 13.295089, 24.387209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.278370, 12.516335, 24.727329>,  <16.041252, 12.665978, 24.112881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.278370, 12.516335, 24.727329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.162903, 12.898241, 24.755877>,  <16.093622, 13.127385, 24.773005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.162903, 12.898241, 24.755877>,  <16.278370, 12.516335, 24.727329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.162903, 12.898241, 24.755877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369615, -0.179890, 0.911605,
		0.883208, 0.236773, 0.404824,
		-0.288667, 0.954766, 0.071366,
		16.076303, 13.184670, 24.777287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.549278, 12.709319, 25.447741>,  <16.278370, 12.516335, 24.727329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.549278, 12.709319, 25.447741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.254971, 12.962954, 25.352596>,  <16.078386, 13.115134, 25.295509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.254971, 12.962954, 25.352596>,  <16.549278, 12.709319, 25.447741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.254971, 12.962954, 25.352596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390103, -0.109719, 0.914211,
		0.553592, 0.765438, 0.328087,
		-0.735769, 0.634087, -0.237860,
		16.034241, 13.153180, 25.281239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.424849, 13.078849, 26.117855>,  <16.549278, 12.709319, 25.447741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.424849, 13.078849, 26.117855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.108950, 13.141800, 25.880695>,  <15.919410, 13.179570, 25.738400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.108950, 13.141800, 25.880695>,  <16.424849, 13.078849, 26.117855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.108950, 13.141800, 25.880695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612928, -0.163336, 0.773072,
		0.024822, 0.973937, 0.225455,
		-0.789749, 0.157377, -0.592900,
		15.872025, 13.189013, 25.702826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<8.667050, 13.912860, 23.991747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.971833, 13.696660, 24.134453>,  <9.154703, 13.566940, 24.220078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.971833, 13.696660, 24.134453>,  <8.667050, 13.912860, 23.991747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.971833, 13.696660, 24.134453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512013, 0.165427, -0.842898,
		0.396567, 0.824921, 0.402791,
		0.761957, -0.540499, 0.356767,
		9.200420, 13.534511, 24.241484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.215862, 14.302676, 23.895256>,  <8.667050, 13.912860, 23.991747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.215862, 14.302676, 23.895256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.362693, 13.930636, 23.900463>,  <9.450790, 13.707413, 23.903587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.362693, 13.930636, 23.900463>,  <9.215862, 14.302676, 23.895256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.362693, 13.930636, 23.900463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595817, 0.224354, -0.771147,
		0.714324, 0.290825, 0.636524,
		0.367075, -0.930100, 0.013017,
		9.472816, 13.651607, 23.904367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.971831, 14.359421, 23.843508>,  <9.215862, 14.302676, 23.895256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.971831, 14.359421, 23.843508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.923999, 13.977449, 23.734833>,  <9.895299, 13.748267, 23.669628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.923999, 13.977449, 23.734833>,  <9.971831, 14.359421, 23.843508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.923999, 13.977449, 23.734833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736476, 0.098195, -0.669298,
		0.665810, -0.280126, 0.691539,
		-0.119582, -0.954928, -0.271685,
		9.888124, 13.690971, 23.653328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.623274, 14.160728, 23.735813>,  <9.971831, 14.359421, 23.843508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.623274, 14.160728, 23.735813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.386904, 13.903815, 23.540556>,  <10.245082, 13.749668, 23.423401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.386904, 13.903815, 23.540556>,  <10.623274, 14.160728, 23.735813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.386904, 13.903815, 23.540556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564390, 0.103213, -0.819031,
		0.576431, -0.759488, 0.301506,
		-0.590924, -0.642281, -0.488143,
		10.209626, 13.711131, 23.394114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.109088, 13.802150, 23.404718>,  <10.623274, 14.160728, 23.735813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.109088, 13.802150, 23.404718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.759789, 13.730246, 23.223555>,  <10.550211, 13.687103, 23.114857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.759789, 13.730246, 23.223555>,  <11.109088, 13.802150, 23.404718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.759789, 13.730246, 23.223555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466475, -0.039700, -0.883643,
		0.140864, -0.982909, 0.118521,
		-0.873246, -0.179761, -0.452911,
		10.497816, 13.676317, 23.087681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.250085, 13.383593, 22.926987>,  <11.109088, 13.802150, 23.404718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.250085, 13.383593, 22.926987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.886078, 13.483908, 22.794943>,  <10.667674, 13.544097, 22.715715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.886078, 13.483908, 22.794943>,  <11.250085, 13.383593, 22.926987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.886078, 13.483908, 22.794943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343928, 0.012094, -0.938918,
		-0.231477, -0.967966, -0.097259,
		-0.910018, 0.250788, -0.330111,
		10.613072, 13.559144, 22.695910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.183449, 12.919093, 22.296032>,  <11.250085, 13.383593, 22.926987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.183449, 12.919093, 22.296032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.945583, 13.238764, 22.260950>,  <10.802864, 13.430567, 22.239901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.945583, 13.238764, 22.260950>,  <11.183449, 12.919093, 22.296032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.945583, 13.238764, 22.260950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267774, 0.094020, -0.958883,
		-0.758072, -0.593697, -0.269909,
		-0.594663, 0.799177, -0.087703,
		10.767184, 13.478517, 22.234640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.989254, 12.898559, 21.647980>,  <11.183449, 12.919093, 22.296032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.989254, 12.898559, 21.647980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.874548, 13.271977, 21.734007>,  <10.805724, 13.496029, 21.785624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.874548, 13.271977, 21.734007>,  <10.989254, 12.898559, 21.647980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.874548, 13.271977, 21.734007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181469, 0.273364, -0.944638,
		-0.940656, -0.231862, -0.247802,
		-0.286766, 0.933548, 0.215066,
		10.788518, 13.552042, 21.798527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.529092, 13.148607, 21.155483>,  <10.989254, 12.898559, 21.647980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.529092, 13.148607, 21.155483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.660232, 13.488864, 21.319883>,  <10.738915, 13.693018, 21.418524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.660232, 13.488864, 21.319883>,  <10.529092, 13.148607, 21.155483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.660232, 13.488864, 21.319883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065563, 0.413512, -0.908135,
		-0.942453, 0.324677, 0.079799,
		0.327849, 0.850643, 0.411002,
		10.758586, 13.744057, 21.443184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.153578, 13.618319, 20.844723>,  <10.529092, 13.148607, 21.155483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.153578, 13.618319, 20.844723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.438989, 13.840667, 21.015316>,  <10.610235, 13.974075, 21.117672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.438989, 13.840667, 21.015316>,  <10.153578, 13.618319, 20.844723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.438989, 13.840667, 21.015316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065187, 0.553405, -0.830358,
		-0.697589, 0.620283, 0.358634,
		0.713527, 0.555870, 0.426484,
		10.653047, 14.007428, 21.143261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.959690, 14.333992, 20.902340>,  <10.153578, 13.618319, 20.844723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.959690, 14.333992, 20.902340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.356193, 14.308278, 20.856243>,  <10.594094, 14.292850, 20.828585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.356193, 14.308278, 20.856243>,  <9.959690, 14.333992, 20.902340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.356193, 14.308278, 20.856243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061291, 0.549106, -0.833502,
		0.116861, 0.833276, 0.540365,
		0.991255, -0.064284, -0.115241,
		10.653569, 14.288993, 20.821671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.077899, 14.829307, 20.494831>,  <9.959690, 14.333992, 20.902340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.077899, 14.829307, 20.494831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.436511, 14.655463, 20.460537>,  <10.651678, 14.551157, 20.439960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.436511, 14.655463, 20.460537>,  <10.077899, 14.829307, 20.494831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.436511, 14.655463, 20.460537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120860, 0.426178, -0.896529,
		0.426178, 0.793403, 0.434608,
		0.896529, -0.434608, -0.085737,
		10.705470, 14.525081, 20.434816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.593199, 15.316216, 20.176422>,  <10.077899, 14.829307, 20.494831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.593199, 15.316216, 20.176422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.796670, 14.978060, 20.111235>,  <10.918753, 14.775166, 20.072123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.796670, 14.978060, 20.111235>,  <10.593199, 15.316216, 20.176422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.796670, 14.978060, 20.111235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377890, 0.389314, -0.840020,
		0.773593, 0.365714, 0.517500,
		0.508677, -0.845392, -0.162971,
		10.949273, 14.724442, 20.062344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.263474, 15.512967, 19.939117>,  <10.593199, 15.316216, 20.176422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.263474, 15.512967, 19.939117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.201122, 15.140141, 19.808302>,  <11.163711, 14.916446, 19.729813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.201122, 15.140141, 19.808302>,  <11.263474, 15.512967, 19.939117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.201122, 15.140141, 19.808302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428672, 0.234451, -0.872509,
		0.889911, -0.276201, 0.363004,
		-0.155881, -0.932065, -0.327041,
		11.154358, 14.860522, 19.710190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.701174, 15.663632, 20.576006>,  <11.263474, 15.512967, 19.939117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.701174, 15.663632, 20.576006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.069211, 15.796542, 20.658972>,  <12.290033, 15.876288, 20.708752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.069211, 15.796542, 20.658972>,  <11.701174, 15.663632, 20.576006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.069211, 15.796542, 20.658972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128304, -0.244647, 0.961086,
		0.370088, -0.910901, -0.182466,
		0.920094, 0.332275, 0.207413,
		12.345240, 15.896225, 20.721195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.219276, 15.155669, 20.921951>,  <11.701174, 15.663632, 20.576006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.219276, 15.155669, 20.921951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.308045, 15.531224, 21.027206>,  <12.361307, 15.756557, 21.090361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.308045, 15.531224, 21.027206>,  <12.219276, 15.155669, 20.921951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.308045, 15.531224, 21.027206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077128, -0.252121, 0.964617,
		0.972009, -0.234365, 0.016463,
		0.221922, 0.938887, 0.263140,
		12.374622, 15.812890, 21.106148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.583890, 15.054276, 21.573669>,  <12.219276, 15.155669, 20.921951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.583890, 15.054276, 21.573669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.489986, 15.442982, 21.583124>,  <12.433644, 15.676206, 21.588797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.489986, 15.442982, 21.583124>,  <12.583890, 15.054276, 21.573669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.489986, 15.442982, 21.583124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292310, -0.093766, 0.951716,
		0.927062, 0.216513, 0.306069,
		-0.234758, 0.971766, 0.023638,
		12.419559, 15.734511, 21.590216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.759378, 15.278619, 22.225086>,  <12.583890, 15.054276, 21.573669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.759378, 15.278619, 22.225086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.518662, 15.576526, 22.109728>,  <12.374232, 15.755270, 22.040514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.518662, 15.576526, 22.109728>,  <12.759378, 15.278619, 22.225086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.518662, 15.576526, 22.109728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136500, 0.259874, 0.955946,
		0.786903, 0.614645, -0.054729,
		-0.601791, 0.744766, -0.288395,
		12.338125, 15.799955, 22.023209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.059630, 15.905591, 22.467852>,  <12.759378, 15.278619, 22.225086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.059630, 15.905591, 22.467852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.667094, 15.953006, 22.407291>,  <12.431573, 15.981455, 22.370956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.667094, 15.953006, 22.407291>,  <13.059630, 15.905591, 22.467852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.667094, 15.953006, 22.407291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143411, 0.073284, 0.986946,
		0.128085, 0.990242, -0.054917,
		-0.981340, 0.118537, -0.151398,
		12.372692, 15.988567, 22.361872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.833262, 16.454552, 22.981268>,  <13.059630, 15.905591, 22.467852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.833262, 16.454552, 22.981268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.491589, 16.278742, 22.870138>,  <12.286585, 16.173256, 22.803461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.491589, 16.278742, 22.870138>,  <12.833262, 16.454552, 22.981268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.491589, 16.278742, 22.870138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353027, 0.097927, 0.930474,
		-0.381761, 0.892876, -0.238812,
		-0.854184, -0.439526, -0.277824,
		12.235333, 16.146885, 22.786791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.346311, 16.900713, 23.244726>,  <12.833262, 16.454552, 22.981268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.346311, 16.900713, 23.244726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.159717, 16.552858, 23.180075>,  <12.047760, 16.344145, 23.141283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.159717, 16.552858, 23.180075>,  <12.346311, 16.900713, 23.244726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.159717, 16.552858, 23.180075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443229, 0.071683, 0.893537,
		-0.765467, 0.488460, -0.418888,
		-0.466484, -0.869637, -0.161629,
		12.019772, 16.291967, 23.131586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.639483, 17.039078, 23.509138>,  <12.346311, 16.900713, 23.244726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.639483, 17.039078, 23.509138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.680605, 16.641256, 23.502249>,  <11.705277, 16.402563, 23.498116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.680605, 16.641256, 23.502249>,  <11.639483, 17.039078, 23.509138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.680605, 16.641256, 23.502249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412437, -0.058376, 0.909114,
		-0.905167, -0.086357, -0.416192,
		0.102804, -0.994553, -0.017223,
		11.711446, 16.342890, 23.497082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.988395, 16.738340, 23.646427>,  <11.639483, 17.039078, 23.509138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.988395, 16.738340, 23.646427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.267778, 16.471853, 23.750973>,  <11.435409, 16.311960, 23.813700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.267778, 16.471853, 23.750973>,  <10.988395, 16.738340, 23.646427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.267778, 16.471853, 23.750973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458086, -0.135611, 0.878503,
		-0.549830, -0.733324, -0.399904,
		0.698458, -0.666217, 0.261362,
		11.477316, 16.271988, 23.829382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.651040, 16.293427, 23.971693>,  <10.988395, 16.738340, 23.646427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.651040, 16.293427, 23.971693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.015771, 16.192154, 24.100981>,  <11.234610, 16.131390, 24.178553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.015771, 16.192154, 24.100981>,  <10.651040, 16.293427, 23.971693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.015771, 16.192154, 24.100981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404121, -0.414401, 0.815449,
		-0.072516, -0.874168, -0.480179,
		0.911826, -0.253183, 0.323219,
		11.289319, 16.116199, 24.197947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.675623, 15.572419, 24.181751>,  <10.651040, 16.293427, 23.971693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.675623, 15.572419, 24.181751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.979489, 15.733687, 24.385853>,  <11.161809, 15.830448, 24.508314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.979489, 15.733687, 24.385853>,  <10.675623, 15.572419, 24.181751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.979489, 15.733687, 24.385853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298723, -0.480611, 0.824486,
		0.577643, -0.778759, -0.244667,
		0.759666, 0.403171, 0.510255,
		11.207389, 15.854639, 24.538929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.955085, 15.000575, 24.546070>,  <10.675623, 15.572419, 24.181751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.955085, 15.000575, 24.546070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.091339, 15.323997, 24.737989>,  <11.173092, 15.518049, 24.853142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.091339, 15.323997, 24.737989>,  <10.955085, 15.000575, 24.546070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.091339, 15.323997, 24.737989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086543, -0.481188, 0.872335,
		0.936204, -0.338672, -0.093935,
		0.340636, 0.808554, 0.479800,
		11.193530, 15.566563, 24.881929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.458253, 14.740942, 24.973352>,  <10.955085, 15.000575, 24.546070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.458253, 14.740942, 24.973352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.338053, 15.090633, 25.125891>,  <11.265933, 15.300448, 25.217413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.338053, 15.090633, 25.125891>,  <11.458253, 14.740942, 24.973352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.338053, 15.090633, 25.125891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009424, -0.397084, 0.917734,
		0.953735, 0.279373, 0.111085,
		-0.300500, 0.874228, 0.381346,
		11.247903, 15.352901, 25.240295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.831253, 14.762998, 25.572851>,  <11.458253, 14.740942, 24.973352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.831253, 14.762998, 25.572851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.547501, 15.041476, 25.616831>,  <11.377249, 15.208563, 25.643219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.547501, 15.041476, 25.616831>,  <11.831253, 14.762998, 25.572851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.547501, 15.041476, 25.616831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110443, -0.263867, 0.958215,
		0.696118, 0.667597, 0.264073,
		-0.709382, 0.696196, 0.109951,
		11.334686, 15.250335, 25.649817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.446556, 15.187716, 25.690144>,  <11.831253, 14.762998, 25.572851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.446556, 15.187716, 25.690144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.833502, 15.206861, 25.789677>,  <13.065669, 15.218348, 25.849396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.833502, 15.206861, 25.789677>,  <12.446556, 15.187716, 25.690144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.833502, 15.206861, 25.789677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237619, 0.169711, -0.956418,
		-0.088007, 0.984331, 0.152799,
		0.967364, 0.047863, 0.248831,
		13.123711, 15.221219, 25.864326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.670223, 15.665906, 25.336721>,  <12.446556, 15.187716, 25.690144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.670223, 15.665906, 25.336721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.042089, 15.551647, 25.429785>,  <13.265209, 15.483092, 25.485622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.042089, 15.551647, 25.429785>,  <12.670223, 15.665906, 25.336721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.042089, 15.551647, 25.429785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320100, 0.313684, -0.893945,
		0.182371, 0.905543, 0.383057,
		0.929665, -0.285646, 0.232657,
		13.320989, 15.465953, 25.499582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.128063, 16.232891, 25.284294>,  <12.670223, 15.665906, 25.336721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.128063, 16.232891, 25.284294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.312955, 15.884037, 25.220135>,  <13.423890, 15.674725, 25.181639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.312955, 15.884037, 25.220135>,  <13.128063, 16.232891, 25.284294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.312955, 15.884037, 25.220135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300098, 0.324057, -0.897178,
		0.834438, 0.366565, 0.411514,
		0.462228, -0.872133, -0.160400,
		13.451623, 15.622396, 25.172014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.717561, 16.415430, 24.988258>,  <13.128063, 16.232891, 25.284294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.717561, 16.415430, 24.988258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.732629, 16.023743, 24.908550>,  <13.741670, 15.788730, 24.860725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.732629, 16.023743, 24.908550>,  <13.717561, 16.415430, 24.988258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.732629, 16.023743, 24.908550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313273, 0.200930, -0.928163,
		0.948916, -0.027461, 0.314332,
		0.037670, -0.979221, -0.199268,
		13.743930, 15.729977, 24.848770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.317497, 16.350046, 24.585915>,  <13.717561, 16.415430, 24.988258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.317497, 16.350046, 24.585915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.120050, 16.011217, 24.507114>,  <14.001582, 15.807920, 24.459833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.120050, 16.011217, 24.507114>,  <14.317497, 16.350046, 24.585915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.120050, 16.011217, 24.507114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317571, 0.035318, -0.947577,
		0.809624, -0.530302, 0.251573,
		-0.493616, -0.847073, -0.197002,
		13.971966, 15.757095, 24.448013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.823019, 15.944936, 24.388596>,  <14.317497, 16.350046, 24.585915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.823019, 15.944936, 24.388596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.480770, 15.815052, 24.227362>,  <14.275421, 15.737122, 24.130621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.480770, 15.815052, 24.227362>,  <14.823019, 15.944936, 24.388596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.480770, 15.815052, 24.227362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444874, -0.063281, -0.893355,
		0.264574, -0.943694, 0.198600,
		-0.855621, -0.324710, -0.403083,
		14.224084, 15.717639, 24.106438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.023502, 15.355955, 23.972546>,  <14.823019, 15.944936, 24.388596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.023502, 15.355955, 23.972546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.658022, 15.405715, 23.817793>,  <14.438734, 15.435571, 23.724941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.658022, 15.405715, 23.817793>,  <15.023502, 15.355955, 23.972546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.658022, 15.405715, 23.817793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363232, -0.176946, -0.914742,
		-0.182260, -0.976326, 0.116485,
		-0.913698, 0.124410, -0.386883,
		14.383912, 15.443035, 23.701729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.035374, 14.873281, 23.393217>,  <15.023502, 15.355955, 23.972546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.035374, 14.873281, 23.393217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.711157, 15.091637, 23.308340>,  <14.516626, 15.222651, 23.257414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.711157, 15.091637, 23.308340>,  <15.035374, 14.873281, 23.393217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.711157, 15.091637, 23.308340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259376, 0.009734, -0.965727,
		-0.525116, -0.837800, -0.149481,
		-0.810542, 0.545890, -0.212193,
		14.467995, 15.255404, 23.244682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.614081, 14.519758, 22.894567>,  <15.035374, 14.873281, 23.393217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.614081, 14.519758, 22.894567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.585341, 14.918720, 22.892689>,  <14.568097, 15.158097, 22.891562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.585341, 14.918720, 22.892689>,  <14.614081, 14.519758, 22.894567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.585341, 14.918720, 22.892689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349133, 0.020738, -0.936844,
		-0.934315, -0.068952, -0.349717,
		-0.071850, 0.997405, -0.004698,
		14.563787, 15.217941, 22.891279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.517378, 14.744652, 22.122383>,  <14.614081, 14.519758, 22.894567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.517378, 14.744652, 22.122383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.638896, 15.075266, 22.311930>,  <14.711807, 15.273634, 22.425657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.638896, 15.075266, 22.311930>,  <14.517378, 14.744652, 22.122383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.638896, 15.075266, 22.311930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583797, 0.231565, -0.778177,
		-0.752921, 0.513048, -0.412180,
		0.303795, 0.826535, 0.473866,
		14.730035, 15.323226, 22.454090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.398103, 15.338824, 21.698992>,  <14.517378, 14.744652, 22.122383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.398103, 15.338824, 21.698992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.693096, 15.466118, 21.937267>,  <14.870092, 15.542494, 22.080233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.693096, 15.466118, 21.937267>,  <14.398103, 15.338824, 21.698992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.693096, 15.466118, 21.937267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479118, 0.375110, -0.793560,
		-0.475986, 0.870644, 0.124166,
		0.737484, 0.318233, 0.595688,
		14.914341, 15.561588, 22.115974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.466984, 15.960318, 21.539602>,  <14.398103, 15.338824, 21.698992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.466984, 15.960318, 21.539602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.818064, 15.895975, 21.720165>,  <15.028711, 15.857369, 21.828503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.818064, 15.895975, 21.720165>,  <14.466984, 15.960318, 21.539602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.818064, 15.895975, 21.720165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453985, 0.580709, -0.675777,
		-0.153435, 0.798062, 0.582714,
		0.877699, -0.160856, 0.451409,
		15.081373, 15.847718, 21.855587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.829475, 16.603518, 21.677887>,  <14.466984, 15.960318, 21.539602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.829475, 16.603518, 21.677887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.104227, 16.313921, 21.652473>,  <15.269078, 16.140163, 21.637226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.104227, 16.313921, 21.652473>,  <14.829475, 16.603518, 21.677887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.104227, 16.313921, 21.652473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578173, 0.597313, -0.555817,
		0.440355, 0.345046, 0.828873,
		0.686879, -0.723990, -0.063534,
		15.310290, 16.096724, 21.633413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.451764, 16.977221, 21.731979>,  <14.829475, 16.603518, 21.677887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.451764, 16.977221, 21.731979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.534116, 16.611361, 21.592823>,  <15.583527, 16.391844, 21.509329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.534116, 16.611361, 21.592823>,  <15.451764, 16.977221, 21.731979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.534116, 16.611361, 21.592823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404164, 0.403245, -0.821002,
		0.891215, 0.028423, 0.452689,
		0.205880, -0.914651, -0.347890,
		15.595880, 16.336966, 21.488457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<8.566442, 21.781313, 7.907125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.191086, 21.646235, 7.877770>,  <7.965872, 21.565187, 7.860158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.191086, 21.646235, 7.877770>,  <8.566442, 21.781313, 7.907125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.191086, 21.646235, 7.877770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340387, 0.939882, 0.027546,
		0.059672, 0.050829, -0.996923,
		-0.938390, -0.337696, -0.073386,
		7.909569, 21.544926, 7.855755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.314825, 22.180450, 7.371294>,  <8.566442, 21.781313, 7.907125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.314825, 22.180450, 7.371294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.016940, 22.077885, 7.617759>,  <7.838209, 22.016346, 7.765638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.016940, 22.077885, 7.617759>,  <8.314825, 22.180450, 7.371294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.016940, 22.077885, 7.617759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436500, 0.885533, -0.159055,
		-0.504848, -0.387405, -0.771392,
		-0.744712, -0.256413, 0.616162,
		7.793527, 22.000961, 7.802608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.669597, 22.289547, 7.013944>,  <8.314825, 22.180450, 7.371294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.669597, 22.289547, 7.013944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.624002, 22.313816, 7.410595>,  <7.596645, 22.328377, 7.648586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.624002, 22.313816, 7.410595>,  <7.669597, 22.289547, 7.013944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.624002, 22.313816, 7.410595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622879, 0.773229, -0.118908,
		-0.773969, -0.631218, -0.050347,
		-0.113987, 0.060671, 0.991628,
		7.589806, 22.332018, 7.708083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.057488, 22.610115, 7.099272>,  <7.669597, 22.289547, 7.013944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.057488, 22.610115, 7.099272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.197605, 22.602596, 7.473853>,  <7.281674, 22.598085, 7.698602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.197605, 22.602596, 7.473853>,  <7.057488, 22.610115, 7.099272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.197605, 22.602596, 7.473853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709439, 0.647463, 0.278368,
		-0.611550, -0.761865, 0.213466,
		0.350291, -0.018795, 0.936453,
		7.302692, 22.596958, 7.754789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.612237, 22.319763, 7.664362>,  <7.057488, 22.610115, 7.099272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.612237, 22.319763, 7.664362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.847814, 22.611837, 7.802913>,  <6.989160, 22.787081, 7.886044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.847814, 22.611837, 7.802913>,  <6.612237, 22.319763, 7.664362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.847814, 22.611837, 7.802913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803502, 0.483007, 0.347978,
		0.086785, -0.483254, 0.871168,
		0.588942, 0.730185, 0.346378,
		7.024497, 22.830893, 7.906827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.426705, 22.373117, 8.365739>,  <6.612237, 22.319763, 7.664362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.426705, 22.373117, 8.365739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.517381, 22.718664, 8.185806>,  <6.571787, 22.925991, 8.077847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.517381, 22.718664, 8.185806>,  <6.426705, 22.373117, 8.365739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.517381, 22.718664, 8.185806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882786, 0.377357, 0.279805,
		0.411461, 0.333677, 0.848150,
		0.226690, 0.863864, -0.449833,
		6.585388, 22.977823, 8.050857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.102517, 23.068659, 8.674489>,  <6.426705, 22.373117, 8.365739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.102517, 23.068659, 8.674489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.060690, 22.815838, 8.367353>,  <6.035594, 22.664145, 8.183072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.060690, 22.815838, 8.367353>,  <6.102517, 23.068659, 8.674489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.060690, 22.815838, 8.367353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254422, -0.729378, 0.635041,
		-0.961424, 0.261759, -0.084539,
		-0.104566, -0.632052, -0.767839,
		6.029321, 22.626223, 8.137002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.133203, 23.254917, 9.421225>,  <6.102517, 23.068659, 8.674489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.133203, 23.254917, 9.421225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.225302, 22.899063, 9.578975>,  <6.280562, 22.685551, 9.673625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.225302, 22.899063, 9.578975>,  <6.133203, 23.254917, 9.421225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.225302, 22.899063, 9.578975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092338, -0.383463, -0.918929,
		0.968741, 0.247999, -0.006145,
		0.230249, -0.889636, 0.394376,
		6.294377, 22.632172, 9.697288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.927913, 23.517313, 10.158072>,  <6.133203, 23.254917, 9.421225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.927913, 23.517313, 10.158072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.986086, 23.611786, 10.542377>,  <6.020989, 23.668470, 10.772961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.986086, 23.611786, 10.542377>,  <5.927913, 23.517313, 10.158072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.986086, 23.611786, 10.542377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249949, -0.930816, 0.266657,
		0.957275, -0.278923, -0.076336,
		0.145432, 0.236184, 0.960763,
		6.029716, 23.682640, 10.830606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.527975, 23.060106, 10.580205>,  <5.927913, 23.517313, 10.158072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.527975, 23.060106, 10.580205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.232646, 23.220623, 10.797034>,  <6.055448, 23.316933, 10.927132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.232646, 23.220623, 10.797034>,  <6.527975, 23.060106, 10.580205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.232646, 23.220623, 10.797034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210422, -0.900670, 0.380153,
		0.640782, 0.166611, 0.749426,
		-0.738323, 0.401290, 0.542074,
		6.011148, 23.341011, 10.959657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.630545, 22.826221, 11.225130>,  <6.527975, 23.060106, 10.580205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.630545, 22.826221, 11.225130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.239696, 22.888878, 11.167588>,  <6.005186, 22.926472, 11.133063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.239696, 22.888878, 11.167588>,  <6.630545, 22.826221, 11.225130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.239696, 22.888878, 11.167588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207905, -0.846004, 0.490972,
		-0.044796, 0.509648, 0.859216,
		-0.977123, 0.156642, -0.143856,
		5.946559, 22.935871, 11.124432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.412364, 22.677761, 11.800749>,  <6.630545, 22.826221, 11.225130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.412364, 22.677761, 11.800749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.070733, 22.696672, 11.593553>,  <5.865754, 22.708019, 11.469234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.070733, 22.696672, 11.593553>,  <6.412364, 22.677761, 11.800749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.070733, 22.696672, 11.593553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356928, -0.777666, 0.517531,
		-0.378356, 0.626898, 0.681063,
		-0.854078, 0.047279, -0.517992,
		5.814509, 22.710855, 11.438155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.958638, 22.551273, 12.265676>,  <6.412364, 22.677761, 11.800749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.958638, 22.551273, 12.265676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.765703, 22.481554, 11.922287>,  <5.649942, 22.439722, 11.716254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.765703, 22.481554, 11.922287>,  <5.958638, 22.551273, 12.265676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.765703, 22.481554, 11.922287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392004, -0.833455, 0.389468,
		-0.783379, 0.524379, 0.333681,
		-0.482337, -0.174297, -0.858470,
		5.621002, 22.429264, 11.664746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.203338, 22.458487, 12.440402>,  <5.958638, 22.551273, 12.265676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.203338, 22.458487, 12.440402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.287284, 22.284044, 12.090369>,  <5.337652, 22.179379, 11.880349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.287284, 22.284044, 12.090369>,  <5.203338, 22.458487, 12.440402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.287284, 22.284044, 12.090369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330231, -0.874034, 0.356387,
		-0.920274, 0.214186, -0.327446,
		0.209866, -0.436106, -0.875082,
		5.350244, 22.153212, 11.827845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.678116, 21.913591, 12.363841>,  <5.203338, 22.458487, 12.440402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.678116, 21.913591, 12.363841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.940250, 21.776262, 12.094720>,  <5.097531, 21.693865, 11.933248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.940250, 21.776262, 12.094720>,  <4.678116, 21.913591, 12.363841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.940250, 21.776262, 12.094720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174180, -0.935413, 0.307674,
		-0.734981, -0.084441, -0.672809,
		0.655335, -0.343325, -0.672803,
		5.136851, 21.673265, 11.892879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.375400, 21.517790, 11.794596>,  <4.678116, 21.913591, 12.363841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.375400, 21.517790, 11.794596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.743829, 21.363094, 11.812726>,  <4.964887, 21.270277, 11.823605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.743829, 21.363094, 11.812726>,  <4.375400, 21.517790, 11.794596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.743829, 21.363094, 11.812726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381755, -0.919815, -0.090573,
		0.076721, 0.066121, -0.994858,
		0.921074, -0.386741, 0.045327,
		5.020152, 21.247072, 11.826324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.289634, 20.776989, 11.539215>,  <4.375400, 21.517790, 11.794596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.289634, 20.776989, 11.539215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.642843, 20.816435, 11.722756>,  <4.854768, 20.840101, 11.832881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.642843, 20.816435, 11.722756>,  <4.289634, 20.776989, 11.539215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.642843, 20.816435, 11.722756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099573, -0.916058, 0.388489,
		0.458647, -0.388734, -0.799080,
		0.883022, 0.098613, 0.458854,
		4.907750, 20.846018, 11.860413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.610174, 20.161499, 11.480659>,  <4.289634, 20.776989, 11.539215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.610174, 20.161499, 11.480659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.821290, 20.309031, 11.786706>,  <4.947959, 20.397551, 11.970334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.821290, 20.309031, 11.786706>,  <4.610174, 20.161499, 11.480659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.821290, 20.309031, 11.786706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135344, -0.852769, 0.504448,
		0.838522, -0.369796, -0.400164,
		0.527790, 0.368831, 0.765115,
		4.979627, 20.419680, 12.016241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.006326, 19.594740, 11.762875>,  <4.610174, 20.161499, 11.480659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.006326, 19.594740, 11.762875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.033235, 19.850023, 12.069642>,  <5.049380, 20.003193, 12.253702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.033235, 19.850023, 12.069642>,  <5.006326, 19.594740, 11.762875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.033235, 19.850023, 12.069642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110777, -0.768684, 0.629963,
		0.991566, 0.042578, -0.122410,
		0.067272, 0.638210, 0.766918,
		5.053417, 20.041487, 12.299717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.572515, 19.378370, 12.079969>,  <5.006326, 19.594740, 11.762875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.572515, 19.378370, 12.079969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.348710, 19.563457, 12.355021>,  <5.214427, 19.674511, 12.520053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.348710, 19.563457, 12.355021>,  <5.572515, 19.378370, 12.079969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.348710, 19.563457, 12.355021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155452, -0.756338, 0.635443,
		0.814113, 0.462432, 0.351250,
		-0.559513, 0.462720, 0.687630,
		5.180856, 19.702274, 12.561311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.943977, 19.398354, 12.708009>,  <5.572515, 19.378370, 12.079969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.943977, 19.398354, 12.708009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.573213, 19.471128, 12.839302>,  <5.350755, 19.514793, 12.918077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.573213, 19.471128, 12.839302>,  <5.943977, 19.398354, 12.708009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.573213, 19.471128, 12.839302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106909, -0.710369, 0.695662,
		0.359735, 0.679907, 0.638997,
		-0.926910, 0.181939, 0.328233,
		5.295140, 19.525711, 12.937772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.893106, 19.263996, 13.456709>,  <5.943977, 19.398354, 12.708009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.893106, 19.263996, 13.456709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.498129, 19.257288, 13.393872>,  <5.261143, 19.253263, 13.356171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.498129, 19.257288, 13.393872>,  <5.893106, 19.263996, 13.456709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.498129, 19.257288, 13.393872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117667, -0.585453, 0.802122,
		-0.105420, 0.810533, 0.576127,
		-0.987442, -0.016769, -0.157091,
		5.201897, 19.252258, 13.346745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.639681, 19.163460, 14.210984>,  <5.893106, 19.263996, 13.456709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.639681, 19.163460, 14.210984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.322915, 19.108461, 13.973004>,  <5.132855, 19.075462, 13.830216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.322915, 19.108461, 13.973004>,  <5.639681, 19.163460, 14.210984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.322915, 19.108461, 13.973004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475406, -0.472637, 0.742027,
		-0.383222, 0.870465, 0.308921,
		-0.791915, -0.137498, -0.594949,
		5.085340, 19.067211, 13.794519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.044424, 19.444391, 14.640054>,  <5.639681, 19.163460, 14.210984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.044424, 19.444391, 14.640054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.973808, 19.156614, 14.371358>,  <4.931438, 18.983948, 14.210140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.973808, 19.156614, 14.371358>,  <5.044424, 19.444391, 14.640054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.973808, 19.156614, 14.371358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355521, -0.589779, 0.725097,
		-0.917844, 0.366826, -0.151659,
		-0.176539, -0.719444, -0.671740,
		4.920846, 18.940781, 14.169836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.556223, 19.218473, 15.015825>,  <5.044424, 19.444391, 14.640054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.556223, 19.218473, 15.015825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.643360, 18.954897, 14.727842>,  <4.695642, 18.796751, 14.555053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.643360, 18.954897, 14.727842>,  <4.556223, 19.218473, 15.015825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.643360, 18.954897, 14.727842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162735, -0.751871, 0.638911,
		-0.962321, -0.022018, -0.271021,
		0.217841, -0.658942, -0.719958,
		4.708712, 18.757214, 14.511855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.975045, 18.715788, 14.995800>,  <4.556223, 19.218473, 15.015825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.975045, 18.715788, 14.995800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.302774, 18.542074, 14.846077>,  <4.499412, 18.437845, 14.756243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.302774, 18.542074, 14.846077>,  <3.975045, 18.715788, 14.995800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.302774, 18.542074, 14.846077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159976, -0.800105, 0.578134,
		-0.550561, -0.413799, -0.725020,
		0.819323, -0.434283, -0.374309,
		4.548572, 18.411789, 14.733785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.800562, 18.039701, 14.849483>,  <3.975045, 18.715788, 14.995800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.800562, 18.039701, 14.849483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.198849, 18.011532, 14.873438>,  <4.437821, 17.994631, 14.887811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.198849, 18.011532, 14.873438>,  <3.800562, 18.039701, 14.849483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.198849, 18.011532, 14.873438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091643, -0.837008, 0.539461,
		0.012135, -0.542639, -0.839878,
		0.995718, -0.070422, 0.059886,
		4.497565, 17.990406, 14.891404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.970284, 17.288750, 14.683292>,  <3.800562, 18.039701, 14.849483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.970284, 17.288750, 14.683292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.308466, 17.429369, 14.844098>,  <4.511376, 17.513741, 14.940581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.308466, 17.429369, 14.844098>,  <3.970284, 17.288750, 14.683292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.308466, 17.429369, 14.844098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093859, -0.838871, 0.536177,
		0.525731, -0.415582, -0.742225,
		0.845457, 0.351549, 0.402014,
		4.562104, 17.534834, 14.964703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.458560, 16.770905, 14.590785>,  <3.970284, 17.288750, 14.683292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.458560, 16.770905, 14.590785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.621624, 16.979799, 14.890407>,  <4.719461, 17.105137, 15.070180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.621624, 16.979799, 14.890407>,  <4.458560, 16.770905, 14.590785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.621624, 16.979799, 14.890407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344730, -0.847626, 0.403350,
		0.845563, 0.093793, -0.525572,
		0.407657, 0.522238, 0.749054,
		4.743921, 17.136471, 15.115123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.097357, 16.527098, 14.624861>,  <4.458560, 16.770905, 14.590785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.097357, 16.527098, 14.624861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.022292, 16.687149, 14.983676>,  <4.977252, 16.783180, 15.198965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.022292, 16.687149, 14.983676>,  <5.097357, 16.527098, 14.624861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.022292, 16.687149, 14.983676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409648, -0.798164, 0.441727,
		0.892732, 0.450366, -0.014126,
		-0.187663, 0.400131, 0.897039,
		4.965992, 16.807188, 15.252788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.635505, 16.267649, 15.051793>,  <5.097357, 16.527098, 14.624861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.635505, 16.267649, 15.051793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.388621, 16.400566, 15.337067>,  <5.240491, 16.480316, 15.508231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.388621, 16.400566, 15.337067>,  <5.635505, 16.267649, 15.051793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.388621, 16.400566, 15.337067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354557, -0.691720, 0.629137,
		0.702383, 0.641174, 0.309119,
		-0.617210, 0.332295, 0.713184,
		5.203458, 16.500254, 15.551022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.630422, 15.655162, 14.640064>,  <5.635505, 16.267649, 15.051793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.630422, 15.655162, 14.640064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.951123, 15.507907, 14.451737>,  <6.143543, 15.419554, 14.338741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.951123, 15.507907, 14.451737>,  <5.630422, 15.655162, 14.640064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.951123, 15.507907, 14.451737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403403, 0.914588, -0.028172,
		0.440976, -0.167343, 0.881780,
		0.801752, -0.368136, -0.470818,
		6.191648, 15.397466, 14.310492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.216443, 15.694311, 15.043041>,  <5.630422, 15.655162, 14.640064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.216443, 15.694311, 15.043041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.342720, 15.693418, 14.663498>,  <6.418486, 15.692882, 14.435772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.342720, 15.693418, 14.663498>,  <6.216443, 15.694311, 15.043041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.342720, 15.693418, 14.663498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571018, 0.799098, 0.188100,
		0.757811, -0.601197, 0.253545,
		0.315692, -0.002235, -0.948859,
		6.437428, 15.692747, 14.378840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.976957, 15.649121, 15.093895>,  <6.216443, 15.694311, 15.043041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.976957, 15.649121, 15.093895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.901252, 15.784766, 14.725290>,  <6.855829, 15.866153, 14.504128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.901252, 15.784766, 14.725290>,  <6.976957, 15.649121, 15.093895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.901252, 15.784766, 14.725290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519862, 0.830761, 0.198945,
		0.833021, -0.441406, -0.333523,
		-0.189263, 0.339112, -0.921511,
		6.844473, 15.886499, 14.448837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.579398, 15.968180, 14.921262>,  <6.976957, 15.649121, 15.093895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.579398, 15.968180, 14.921262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.329701, 16.097178, 14.636638>,  <7.179883, 16.174576, 14.465863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.329701, 16.097178, 14.636638>,  <7.579398, 15.968180, 14.921262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.329701, 16.097178, 14.636638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392548, 0.916970, 0.071212,
		0.675445, -0.234869, -0.699006,
		-0.624242, 0.322494, -0.711561,
		7.142428, 16.193926, 14.423169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.934562, 16.165276, 14.371832>,  <7.579398, 15.968180, 14.921262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.934562, 16.165276, 14.371832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.593401, 16.369757, 14.329442>,  <7.388705, 16.492445, 14.304008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.593401, 16.369757, 14.329442>,  <7.934562, 16.165276, 14.371832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.593401, 16.369757, 14.329442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517892, 0.854093, -0.048090,
		0.065929, -0.095900, -0.993205,
		-0.852902, 0.511203, -0.105975,
		7.337531, 16.523117, 14.297649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.017225, 16.612991, 13.767981>,  <7.934562, 16.165276, 14.371832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.017225, 16.612991, 13.767981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.741347, 16.796188, 13.992324>,  <7.575820, 16.906107, 14.126930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.741347, 16.796188, 13.992324>,  <8.017225, 16.612991, 13.767981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.741347, 16.796188, 13.992324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495484, 0.863330, -0.095685,
		-0.528029, 0.211903, -0.822364,
		-0.689696, 0.457993, 0.560858,
		7.534438, 16.933586, 14.160582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.935730, 17.271961, 13.433456>,  <8.017225, 16.612991, 13.767981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.935730, 17.271961, 13.433456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.764364, 17.355171, 13.785180>,  <7.661544, 17.405098, 13.996215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.764364, 17.355171, 13.785180>,  <7.935730, 17.271961, 13.433456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.764364, 17.355171, 13.785180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192685, 0.971787, -0.136023,
		-0.882798, 0.111156, -0.456412,
		-0.428415, 0.208024, 0.879310,
		7.635839, 17.417578, 14.048973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.666239, 17.919790, 13.317731>,  <7.935730, 17.271961, 13.433456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.666239, 17.919790, 13.317731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.640726, 17.886160, 13.715497>,  <7.625419, 17.865982, 13.954157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.640726, 17.886160, 13.715497>,  <7.666239, 17.919790, 13.317731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.640726, 17.886160, 13.715497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303879, 0.947490, 0.099599,
		-0.950573, 0.308535, -0.034883,
		-0.063782, -0.084076, 0.994416,
		7.621592, 17.860937, 14.013822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.262683, 18.487837, 13.624426>,  <7.666239, 17.919790, 13.317731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.262683, 18.487837, 13.624426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.535412, 18.369165, 13.891889>,  <7.699049, 18.297962, 14.052366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.535412, 18.369165, 13.891889>,  <7.262683, 18.487837, 13.624426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.535412, 18.369165, 13.891889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376572, 0.925997, 0.026872,
		-0.627146, 0.233476, 0.743086,
		0.681822, -0.296678, 0.668656,
		7.739958, 18.280163, 14.092485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.089652, 18.838148, 14.205626>,  <7.262683, 18.487837, 13.624426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.089652, 18.838148, 14.205626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.471993, 18.753429, 14.287095>,  <7.701399, 18.702599, 14.335977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.471993, 18.753429, 14.287095>,  <7.089652, 18.838148, 14.205626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.471993, 18.753429, 14.287095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179850, 0.969846, 0.164474,
		-0.232369, -0.120583, 0.965124,
		0.955855, -0.211796, 0.203675,
		7.758750, 18.689890, 14.348198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.242358, 19.247561, 14.787205>,  <7.089652, 18.838148, 14.205626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.242358, 19.247561, 14.787205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.596957, 19.151127, 14.629217>,  <7.809717, 19.093267, 14.534425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.596957, 19.151127, 14.629217>,  <7.242358, 19.247561, 14.787205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.596957, 19.151127, 14.629217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312866, 0.941167, 0.127751,
		0.340932, -0.236823, 0.909769,
		0.886499, -0.241082, -0.394968,
		7.862907, 19.078802, 14.510727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.787560, 19.573496, 15.317369>,  <7.242358, 19.247561, 14.787205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.787560, 19.573496, 15.317369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.982015, 19.503435, 14.974910>,  <8.098687, 19.461399, 14.769434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.982015, 19.503435, 14.974910>,  <7.787560, 19.573496, 15.317369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.982015, 19.503435, 14.974910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230527, 0.970709, -0.067691,
		0.842928, -0.164459, 0.512275,
		0.486137, -0.175152, -0.856150,
		8.127855, 19.450890, 14.718065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.321492, 19.884388, 15.466032>,  <7.787560, 19.573496, 15.317369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.321492, 19.884388, 15.466032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.342370, 19.860342, 15.067302>,  <8.354897, 19.845915, 14.828064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.342370, 19.860342, 15.067302>,  <8.321492, 19.884388, 15.466032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.342370, 19.860342, 15.067302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375012, 0.926312, -0.036228,
		0.925549, -0.371931, 0.070891,
		0.052193, -0.060116, -0.996826,
		8.358028, 19.842308, 14.768254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.999488, 19.979849, 15.223413>,  <8.321492, 19.884388, 15.466032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.999488, 19.979849, 15.223413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.783463, 20.073484, 14.900046>,  <8.653849, 20.129665, 14.706026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.783463, 20.073484, 14.900046>,  <8.999488, 19.979849, 15.223413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.783463, 20.073484, 14.900046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506982, 0.857195, -0.090472,
		0.671791, -0.458713, -0.581617,
		-0.540060, 0.234091, -0.808416,
		8.621446, 20.143711, 14.657521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.476256, 20.337400, 14.805070>,  <8.999488, 19.979849, 15.223413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.476256, 20.337400, 14.805070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.138744, 20.448366, 14.621299>,  <8.936237, 20.514946, 14.511036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.138744, 20.448366, 14.621299>,  <9.476256, 20.337400, 14.805070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.138744, 20.448366, 14.621299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368638, 0.921734, -0.120469,
		0.390051, -0.271012, -0.880007,
		-0.843781, 0.277415, -0.459429,
		8.885611, 20.531591, 14.483470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.689764, 20.772684, 14.308843>,  <9.476256, 20.337400, 14.805070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.689764, 20.772684, 14.308843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.298255, 20.852243, 14.328611>,  <9.063350, 20.899979, 14.340473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.298255, 20.852243, 14.328611>,  <9.689764, 20.772684, 14.308843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.298255, 20.852243, 14.328611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195163, 0.978161, -0.071498,
		-0.062564, -0.060335, -0.996216,
		-0.978773, 0.198898, 0.049422,
		9.004623, 20.911913, 14.343438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.470372, 21.170267, 13.767117>,  <9.689764, 20.772684, 14.308843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.470372, 21.170267, 13.767117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.212258, 21.241371, 14.064306>,  <9.057390, 21.284035, 14.242620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.212258, 21.241371, 14.064306>,  <9.470372, 21.170267, 13.767117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.212258, 21.241371, 14.064306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191035, 0.979200, -0.068364,
		-0.739672, 0.097820, -0.665820,
		-0.645283, 0.177761, 0.742974,
		9.018673, 21.294699, 14.287198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.309350, 21.773970, 13.636580>,  <9.470372, 21.170267, 13.767117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.309350, 21.773970, 13.636580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.093052, 21.756187, 13.972585>,  <8.963273, 21.745518, 14.174188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.093052, 21.756187, 13.972585>,  <9.309350, 21.773970, 13.636580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.093052, 21.756187, 13.972585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257334, 0.959470, -0.114879,
		-0.800858, -0.278284, -0.530268,
		-0.540745, -0.044454, 0.840011,
		8.930828, 21.742851, 14.224588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.626212, 22.093105, 13.563138>,  <9.309350, 21.773970, 13.636580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.626212, 22.093105, 13.563138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.748760, 22.126917, 13.942399>,  <8.822289, 22.147203, 14.169955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.748760, 22.126917, 13.942399>,  <8.626212, 22.093105, 13.563138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.748760, 22.126917, 13.942399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417143, 0.907241, 0.053909,
		-0.855646, -0.412031, 0.313211,
		0.306370, 0.084527, 0.948152,
		8.840672, 22.152275, 14.226845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.039296, 22.269064, 13.901025>,  <8.626212, 22.093105, 13.563138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.039296, 22.269064, 13.901025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.349224, 22.396353, 14.119524>,  <8.535181, 22.472727, 14.250624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.349224, 22.396353, 14.119524>,  <8.039296, 22.269064, 13.901025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.349224, 22.396353, 14.119524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390086, 0.920622, 0.016992,
		-0.497482, -0.226250, 0.837450,
		0.774820, 0.318224, 0.546249,
		8.581670, 22.491819, 14.283399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.770054, 22.729712, 14.402761>,  <8.039296, 22.269064, 13.901025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.770054, 22.729712, 14.402761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.159975, 22.817036, 14.421097>,  <8.393928, 22.869431, 14.432098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.159975, 22.817036, 14.421097>,  <7.770054, 22.729712, 14.402761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.159975, 22.817036, 14.421097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222613, 0.938837, 0.262732,
		0.014320, -0.266316, 0.963779,
		0.974802, 0.218312, 0.045841,
		8.452415, 22.882530, 14.434849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.051817, 13.618239, 26.430481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.777227, 13.446184, 26.195965>,  <15.612474, 13.342951, 26.055256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.777227, 13.446184, 26.195965>,  <16.051817, 13.618239, 26.430481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.777227, 13.446184, 26.195965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629990, -0.050840, 0.774937,
		-0.363138, 0.901330, -0.236084,
		-0.686472, -0.430139, -0.586291,
		15.571286, 13.317142, 26.020077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.351853, 13.810086, 26.648649>,  <16.051817, 13.618239, 26.430481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.351853, 13.810086, 26.648649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.283347, 13.467282, 26.454247>,  <15.242244, 13.261600, 26.337605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.283347, 13.467282, 26.454247>,  <15.351853, 13.810086, 26.648649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.283347, 13.467282, 26.454247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443073, -0.373601, 0.814929,
		-0.879974, 0.354906, -0.315732,
		-0.171265, -0.857009, -0.486008,
		15.231968, 13.210179, 26.308445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.652575, 13.694632, 26.824507>,  <15.351853, 13.810086, 26.648649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.652575, 13.694632, 26.824507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.761463, 13.336435, 26.683655>,  <14.826797, 13.121518, 26.599144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.761463, 13.336435, 26.683655>,  <14.652575, 13.694632, 26.824507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.761463, 13.336435, 26.683655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470435, -0.443088, 0.763128,
		-0.839397, -0.042085, -0.541887,
		0.272220, -0.895490, -0.352128,
		14.843129, 13.067788, 26.578016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.065918, 13.221022, 26.764408>,  <14.652575, 13.694632, 26.824507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.065918, 13.221022, 26.764408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.402657, 13.008967, 26.804913>,  <14.604699, 12.881735, 26.829216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.402657, 13.008967, 26.804913>,  <14.065918, 13.221022, 26.764408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.402657, 13.008967, 26.804913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372677, -0.435264, 0.819547,
		-0.390398, -0.727668, -0.563994,
		0.841844, -0.530137, 0.101259,
		14.655210, 12.849927, 26.835291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.763402, 12.604289, 27.028358>,  <14.065918, 13.221022, 26.764408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.763402, 12.604289, 27.028358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.159741, 12.591156, 27.080730>,  <14.397545, 12.583277, 27.112154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.159741, 12.591156, 27.080730>,  <13.763402, 12.604289, 27.028358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.159741, 12.591156, 27.080730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128923, -0.517577, 0.845868,
		0.039996, -0.855007, -0.517073,
		0.990848, -0.032832, 0.130931,
		14.456996, 12.581306, 27.120010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.855599, 12.033323, 27.211143>,  <13.763402, 12.604289, 27.028358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.855599, 12.033323, 27.211143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.170187, 12.230212, 27.360373>,  <14.358939, 12.348346, 27.449911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.170187, 12.230212, 27.360373>,  <13.855599, 12.033323, 27.211143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.170187, 12.230212, 27.360373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121427, -0.469027, 0.874796,
		0.605576, -0.733301, -0.309106,
		0.786469, 0.492222, 0.373074,
		14.406128, 12.377879, 27.472296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.188767, 11.590365, 27.581139>,  <13.855599, 12.033323, 27.211143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.188767, 11.590365, 27.581139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.343939, 11.926182, 27.733288>,  <14.437041, 12.127671, 27.824577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.343939, 11.926182, 27.733288>,  <14.188767, 11.590365, 27.581139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.343939, 11.926182, 27.733288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026424, -0.422651, 0.905907,
		0.921311, -0.341375, -0.186142,
		0.387927, 0.839541, 0.380372,
		14.460317, 12.178044, 27.847399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.628564, 11.325563, 28.085312>,  <14.188767, 11.590365, 27.581139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.628564, 11.325563, 28.085312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.580253, 11.710217, 28.183840>,  <14.551266, 11.941009, 28.242956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.580253, 11.710217, 28.183840>,  <14.628564, 11.325563, 28.085312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.580253, 11.710217, 28.183840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048901, -0.242072, 0.969025,
		0.991474, 0.129083, -0.017787,
		-0.120778, 0.961633, 0.246321,
		14.544019, 11.998707, 28.257736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.122933, 11.420322, 28.584555>,  <14.628564, 11.325563, 28.085312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.122933, 11.420322, 28.584555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.835880, 11.697762, 28.609600>,  <14.663649, 11.864226, 28.624628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.835880, 11.697762, 28.609600>,  <15.122933, 11.420322, 28.584555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.835880, 11.697762, 28.609600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132227, -0.223976, 0.965583,
		0.683753, 0.684655, 0.252445,
		-0.717633, 0.693601, 0.062614,
		14.620590, 11.905843, 28.628384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279786, 11.801162, 29.159342>,  <15.122933, 11.420322, 28.584555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.279786, 11.801162, 29.159342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.888023, 11.844815, 29.091396>,  <14.652966, 11.871007, 29.050629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.888023, 11.844815, 29.091396>,  <15.279786, 11.801162, 29.159342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.888023, 11.844815, 29.091396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201618, -0.573260, 0.794181,
		-0.010706, 0.812073, 0.583457,
		-0.979406, 0.109133, -0.169866,
		14.594202, 11.877555, 29.040436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.925464, 12.110722, 29.686190>,  <15.279786, 11.801162, 29.159342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.925464, 12.110722, 29.686190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.623604, 11.908555, 29.518829>,  <14.442488, 11.787255, 29.418413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.623604, 11.908555, 29.518829>,  <14.925464, 12.110722, 29.686190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.623604, 11.908555, 29.518829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159134, -0.477654, 0.864015,
		-0.636537, 0.718611, 0.280033,
		-0.754650, -0.505415, -0.418400,
		14.397209, 11.756930, 29.393309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.343595, 12.106698, 30.197033>,  <14.925464, 12.110722, 29.686190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.343595, 12.106698, 30.197033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.230960, 11.814282, 29.948423>,  <14.163380, 11.638833, 29.799257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.230960, 11.814282, 29.948423>,  <14.343595, 12.106698, 30.197033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.230960, 11.814282, 29.948423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246855, -0.570740, 0.783147,
		-0.927239, 0.373950, -0.019749,
		-0.281586, -0.731039, -0.621523,
		14.146484, 11.594971, 29.761967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.508208, 11.816211, 30.224134>,  <14.343595, 12.106698, 30.197033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.508208, 11.816211, 30.224134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.806884, 11.564026, 30.139307>,  <13.986090, 11.412715, 30.088411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.806884, 11.564026, 30.139307>,  <13.508208, 11.816211, 30.224134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.806884, 11.564026, 30.139307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242704, -0.555067, 0.795610,
		-0.619313, -0.542604, -0.567479,
		0.746690, -0.630462, -0.212068,
		14.030890, 11.374887, 30.075687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.042228, 12.417253, 30.216591>,  <13.508208, 11.816211, 30.224134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.042228, 12.417253, 30.216591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.844145, 12.316510, 30.549179>,  <12.725295, 12.256065, 30.748732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.844145, 12.316510, 30.549179>,  <13.042228, 12.417253, 30.216591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.844145, 12.316510, 30.549179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668673, 0.721515, -0.179699,
		-0.554659, -0.644969, -0.525708,
		-0.495206, -0.251855, 0.831468,
		12.695583, 12.240953, 30.798620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.904408, 12.932873, 30.759340>,  <13.042228, 12.417253, 30.216591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.904408, 12.932873, 30.759340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.627887, 13.213343, 30.829142>,  <12.461974, 13.381625, 30.871021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.627887, 13.213343, 30.829142>,  <12.904408, 12.932873, 30.759340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.627887, 13.213343, 30.829142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318792, 0.512700, -0.797189,
		-0.648437, -0.495471, -0.577961,
		-0.691304, 0.701176, 0.174502,
		12.420495, 13.423696, 30.881493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.742873, 13.123704, 30.157234>,  <12.904408, 12.932873, 30.759340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.742873, 13.123704, 30.157234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.625229, 13.449119, 30.357895>,  <12.554642, 13.644367, 30.478292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.625229, 13.449119, 30.357895>,  <12.742873, 13.123704, 30.157234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.625229, 13.449119, 30.357895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097411, 0.547649, -0.831018,
		-0.950794, -0.195545, -0.240317,
		-0.294111, 0.813537, 0.501653,
		12.536996, 13.693180, 30.508390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.196988, 13.466615, 29.714769>,  <12.742873, 13.123704, 30.157234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.196988, 13.466615, 29.714769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.310414, 13.739674, 29.984163>,  <12.378470, 13.903509, 30.145800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.310414, 13.739674, 29.984163>,  <12.196988, 13.466615, 29.714769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.310414, 13.739674, 29.984163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182858, 0.650936, -0.736780,
		-0.941357, 0.332078, 0.059755,
		0.283565, 0.682647, 0.673487,
		12.395484, 13.944468, 30.186209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.786357, 14.174418, 29.610386>,  <12.196988, 13.466615, 29.714769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.786357, 14.174418, 29.610386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.146039, 14.203549, 29.782955>,  <12.361848, 14.221027, 29.886497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.146039, 14.203549, 29.782955>,  <11.786357, 14.174418, 29.610386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.146039, 14.203549, 29.782955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339463, 0.505967, -0.792945,
		-0.276033, 0.859473, 0.430246,
		0.899205, 0.072827, 0.431423,
		12.415801, 14.225397, 29.912382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.974884, 14.687241, 29.347271>,  <11.786357, 14.174418, 29.610386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.974884, 14.687241, 29.347271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.329300, 14.589142, 29.504642>,  <12.541949, 14.530282, 29.599066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.329300, 14.589142, 29.504642>,  <11.974884, 14.687241, 29.347271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.329300, 14.589142, 29.504642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463019, 0.510898, -0.724290,
		-0.023372, 0.823915, 0.566231,
		0.886040, -0.245248, 0.393429,
		12.595112, 14.515568, 29.622671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.279672, 15.292068, 29.494434>,  <11.974884, 14.687241, 29.347271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.279672, 15.292068, 29.494434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.584681, 15.034284, 29.471708>,  <12.767686, 14.879613, 29.458073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.584681, 15.034284, 29.471708>,  <12.279672, 15.292068, 29.494434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.584681, 15.034284, 29.471708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498067, 0.640812, -0.584199,
		0.412904, 0.417166, 0.809619,
		0.762522, -0.644463, -0.056817,
		12.813437, 14.840945, 29.454662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.948171, 15.688293, 29.498911>,  <12.279672, 15.292068, 29.494434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.948171, 15.688293, 29.498911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.959485, 15.333190, 29.315132>,  <12.966273, 15.120129, 29.204865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.959485, 15.333190, 29.315132>,  <12.948171, 15.688293, 29.498911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.959485, 15.333190, 29.315132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342333, 0.440438, -0.829953,
		0.939153, -0.133807, 0.316366,
		0.028286, -0.887755, -0.459446,
		12.967971, 15.066863, 29.177298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.458755, 15.813212, 28.989290>,  <12.948171, 15.688293, 29.498911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.458755, 15.813212, 28.989290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.294450, 15.464974, 28.880966>,  <13.195867, 15.256031, 28.815971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.294450, 15.464974, 28.880966>,  <13.458755, 15.813212, 28.989290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.294450, 15.464974, 28.880966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147053, 0.229873, -0.962047,
		0.899805, -0.434996, 0.033601,
		-0.410763, -0.870596, -0.270808,
		13.171221, 15.203795, 28.799725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.794524, 15.631149, 28.341949>,  <13.458755, 15.813212, 28.989290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.794524, 15.631149, 28.341949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.487494, 15.374767, 28.341036>,  <13.303277, 15.220938, 28.340487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.487494, 15.374767, 28.341036>,  <13.794524, 15.631149, 28.341949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.487494, 15.374767, 28.341036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036720, -0.040413, -0.998508,
		0.639907, -0.766513, 0.054555,
		-0.767574, -0.640956, -0.002286,
		13.257222, 15.182481, 28.340349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.967097, 15.186890, 27.836542>,  <13.794524, 15.631149, 28.341949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.967097, 15.186890, 27.836542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.570963, 15.142714, 27.870092>,  <13.333282, 15.116208, 27.890223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.570963, 15.142714, 27.870092>,  <13.967097, 15.186890, 27.836542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.570963, 15.142714, 27.870092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077400, -0.061681, -0.995090,
		0.115074, -0.991967, 0.052537,
		-0.990337, -0.110443, 0.083876,
		13.273862, 15.109581, 27.895256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.840273, 14.579162, 27.604950>,  <13.967097, 15.186890, 27.836542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.840273, 14.579162, 27.604950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.505654, 14.796741, 27.578690>,  <13.304883, 14.927289, 27.562933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.505654, 14.796741, 27.578690>,  <13.840273, 14.579162, 27.604950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.505654, 14.796741, 27.578690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040897, -0.057493, -0.997508,
		-0.546369, -0.837146, 0.025849,
		-0.836546, 0.543950, -0.065649,
		13.254690, 14.959927, 27.558994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.463511, 14.227384, 27.068794>,  <13.840273, 14.579162, 27.604950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.463511, 14.227384, 27.068794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.285976, 14.584655, 27.097752>,  <13.179455, 14.799018, 27.115126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.285976, 14.584655, 27.097752>,  <13.463511, 14.227384, 27.068794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.285976, 14.584655, 27.097752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153729, 0.003696, -0.988106,
		-0.882822, -0.449688, 0.135667,
		-0.443838, 0.893178, 0.072393,
		13.152825, 14.852608, 27.119469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.880233, 14.221416, 26.621872>,  <13.463511, 14.227384, 27.068794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.880233, 14.221416, 26.621872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.992190, 14.598431, 26.694851>,  <13.059365, 14.824639, 26.738638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.992190, 14.598431, 26.694851>,  <12.880233, 14.221416, 26.621872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.992190, 14.598431, 26.694851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074535, 0.168138, -0.982942,
		-0.957133, 0.288719, -0.023191,
		0.279894, 0.942535, 0.182450,
		13.076159, 14.881191, 26.749586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.500264, 14.647382, 26.161428>,  <12.880233, 14.221416, 26.621872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.500264, 14.647382, 26.161428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.805959, 14.890159, 26.248667>,  <12.989375, 15.035825, 26.301010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.805959, 14.890159, 26.248667>,  <12.500264, 14.647382, 26.161428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.805959, 14.890159, 26.248667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097975, 0.224984, -0.969424,
		-0.637452, 0.762237, 0.112476,
		0.764236, 0.606941, 0.218096,
		13.035230, 15.072241, 26.314096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.934419, 15.185802, 26.423634>,  <12.500264, 14.647382, 26.161428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.934419, 15.185802, 26.423634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.563696, 15.254077, 26.289831>,  <11.341262, 15.295041, 26.209549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.563696, 15.254077, 26.289831>,  <11.934419, 15.185802, 26.423634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.563696, 15.254077, 26.289831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372489, -0.304544, 0.876644,
		0.047758, 0.937080, 0.345832,
		-0.926807, 0.170686, -0.334507,
		11.285654, 15.305283, 26.189480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.494801, 15.434419, 27.025436>,  <11.934419, 15.185802, 26.423634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.494801, 15.434419, 27.025436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.244236, 15.280906, 26.754047>,  <11.093898, 15.188798, 26.591215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.244236, 15.280906, 26.754047>,  <11.494801, 15.434419, 27.025436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.244236, 15.280906, 26.754047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618437, -0.285143, 0.732277,
		-0.474496, 0.878297, -0.058728,
		-0.626410, -0.383781, -0.678470,
		11.056313, 15.165771, 26.550507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.862866, 15.630713, 27.219141>,  <11.494801, 15.434419, 27.025436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.862866, 15.630713, 27.219141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.795668, 15.325389, 26.969618>,  <10.755348, 15.142195, 26.819904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.795668, 15.325389, 26.969618>,  <10.862866, 15.630713, 27.219141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.795668, 15.325389, 26.969618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731193, -0.327927, 0.598180,
		-0.661160, 0.556617, -0.503036,
		-0.167998, -0.763309, -0.623807,
		10.745269, 15.096396, 26.782476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.161553, 15.674771, 27.254389>,  <10.862866, 15.630713, 27.219141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.161553, 15.674771, 27.254389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.257904, 15.318712, 27.099669>,  <10.315715, 15.105077, 27.006836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.257904, 15.318712, 27.099669>,  <10.161553, 15.674771, 27.254389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.257904, 15.318712, 27.099669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634820, -0.445962, 0.630969,
		-0.734154, 0.093562, -0.672506,
		0.240878, -0.890149, -0.386799,
		10.330168, 15.051667, 26.983629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.496391, 15.319229, 27.233727>,  <10.161553, 15.674771, 27.254389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.496391, 15.319229, 27.233727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.785200, 15.042572, 27.226629>,  <9.958486, 14.876577, 27.222370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.785200, 15.042572, 27.226629>,  <9.496391, 15.319229, 27.233727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.785200, 15.042572, 27.226629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533752, -0.573148, 0.621780,
		-0.440220, -0.439467, -0.782991,
		0.722022, -0.691643, -0.017745,
		10.001806, 14.835079, 27.221306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.139573, 14.646973, 27.232887>,  <9.496391, 15.319229, 27.233727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.139573, 14.646973, 27.232887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.505245, 14.583390, 27.382021>,  <9.724648, 14.545240, 27.471500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.505245, 14.583390, 27.382021>,  <9.139573, 14.646973, 27.232887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.505245, 14.583390, 27.382021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397828, -0.527800, 0.750440,
		0.077496, -0.834362, -0.545742,
		0.914181, -0.158956, 0.372835,
		9.779500, 14.535704, 27.493872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.150638, 14.005196, 27.531076>,  <9.139573, 14.646973, 27.232887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.150638, 14.005196, 27.531076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.499732, 14.126593, 27.684032>,  <9.709188, 14.199431, 27.775806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.499732, 14.126593, 27.684032>,  <9.150638, 14.005196, 27.531076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.499732, 14.126593, 27.684032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132237, -0.607038, 0.783593,
		0.469942, -0.734436, -0.489651,
		0.872736, 0.303493, 0.382392,
		9.761553, 14.217641, 27.798750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.369295, 13.411869, 27.128071>,  <9.150638, 14.005196, 27.531076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.369295, 13.411869, 27.128071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.159441, 13.108256, 26.973862>,  <9.033528, 12.926088, 26.881336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.159441, 13.108256, 26.973862>,  <9.369295, 13.411869, 27.128071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.159441, 13.108256, 26.973862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342472, 0.226422, -0.911837,
		0.779404, -0.610412, 0.141158,
		-0.524635, -0.759032, -0.385524,
		9.002050, 12.880547, 26.858204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.773715, 13.089650, 26.520693>,  <9.369295, 13.411869, 27.128071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.773715, 13.089650, 26.520693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.402999, 12.951022, 26.462795>,  <9.180570, 12.867846, 26.428057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.402999, 12.951022, 26.462795>,  <9.773715, 13.089650, 26.520693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.402999, 12.951022, 26.462795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079588, 0.195409, -0.977487,
		0.367051, -0.917445, -0.153521,
		-0.926790, -0.346569, -0.144743,
		9.124962, 12.847052, 26.419373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.837606, 12.562151, 26.063862>,  <9.773715, 13.089650, 26.520693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.837606, 12.562151, 26.063862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.457799, 12.687551, 26.068447>,  <9.229915, 12.762792, 26.071198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.457799, 12.687551, 26.068447>,  <9.837606, 12.562151, 26.063862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.457799, 12.687551, 26.068447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059608, 0.216165, -0.974536,
		-0.307996, -0.924656, -0.223940,
		-0.949519, 0.313502, 0.011461,
		9.172943, 12.781602, 26.071886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.524113, 12.206745, 25.452389>,  <9.837606, 12.562151, 26.063862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.524113, 12.206745, 25.452389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.277521, 12.506465, 25.549139>,  <9.129566, 12.686297, 25.607189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.277521, 12.506465, 25.549139>,  <9.524113, 12.206745, 25.452389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.277521, 12.506465, 25.549139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078270, 0.247353, -0.965759,
		-0.783472, -0.614300, -0.093840,
		-0.616478, 0.749301, 0.241876,
		9.092578, 12.731256, 25.621702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.856754, 12.127255, 25.084505>,  <9.524113, 12.206745, 25.452389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.856754, 12.127255, 25.084505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.924191, 12.503887, 25.201130>,  <8.964652, 12.729866, 25.271105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.924191, 12.503887, 25.201130>,  <8.856754, 12.127255, 25.084505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.924191, 12.503887, 25.201130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007884, 0.297073, -0.954822,
		-0.985655, 0.158676, 0.057507,
		0.168591, 0.941578, 0.291560,
		8.974768, 12.786361, 25.288597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.421084, 12.536544, 24.589499>,  <8.856754, 12.127255, 25.084505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.421084, 12.536544, 24.589499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.681607, 12.785740, 24.762789>,  <8.837921, 12.935257, 24.866762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.681607, 12.785740, 24.762789>,  <8.421084, 12.536544, 24.589499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.681607, 12.785740, 24.762789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167663, 0.438662, -0.882873,
		-0.740059, 0.647658, 0.181252,
		0.651308, 0.622989, 0.433224,
		8.877000, 12.972636, 24.892756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.256253, 13.192958, 24.340971>,  <8.421084, 12.536544, 24.589499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.256253, 13.192958, 24.340971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.634036, 13.221321, 24.469330>,  <8.860705, 13.238339, 24.546345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.634036, 13.221321, 24.469330>,  <8.256253, 13.192958, 24.340971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.634036, 13.221321, 24.469330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268658, 0.395791, -0.878164,
		-0.189277, 0.915599, 0.354757,
		0.944456, 0.070908, 0.320897,
		8.917373, 13.242594, 24.565599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<12.399608, 8.862239, 28.791677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.420752, 9.238929, 28.924559>,  <12.433438, 9.464943, 29.004288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.420752, 9.238929, 28.924559>,  <12.399608, 8.862239, 28.791677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.420752, 9.238929, 28.924559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250112, 0.309582, -0.917389,
		-0.966773, 0.131581, -0.219173,
		0.052860, 0.941725, 0.332205,
		12.436609, 9.521446, 29.024220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.046190, 9.419219, 28.260513>,  <12.399608, 8.862239, 28.791677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.046190, 9.419219, 28.260513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.356244, 9.571434, 28.462250>,  <12.542276, 9.662764, 28.583292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.356244, 9.571434, 28.462250>,  <12.046190, 9.419219, 28.260513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.356244, 9.571434, 28.462250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387215, 0.344633, -0.855157,
		-0.499232, 0.858149, 0.119786,
		0.775134, 0.380538, 0.504339,
		12.588784, 9.685596, 28.613552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.215409, 10.226863, 28.066122>,  <12.046190, 9.419219, 28.260513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.215409, 10.226863, 28.066122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.568233, 10.081606, 28.186190>,  <12.779926, 9.994452, 28.258230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.568233, 10.081606, 28.186190>,  <12.215409, 10.226863, 28.066122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.568233, 10.081606, 28.186190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391044, 0.208922, -0.896346,
		0.262790, 0.908008, 0.326286,
		0.882058, -0.363143, 0.300169,
		12.832850, 9.972663, 28.276239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.783148, 10.694154, 27.951630>,  <12.215409, 10.226863, 28.066122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.783148, 10.694154, 27.951630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.962733, 10.337137, 27.934645>,  <13.070484, 10.122928, 27.924454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.962733, 10.337137, 27.934645>,  <12.783148, 10.694154, 27.951630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.962733, 10.337137, 27.934645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491519, 0.286368, -0.822437,
		0.746218, 0.348374, 0.567270,
		0.448964, -0.892541, -0.042460,
		13.097423, 10.069375, 27.921907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.541071, 10.718534, 27.697254>,  <12.783148, 10.694154, 27.951630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.541071, 10.718534, 27.697254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.503872, 10.321759, 27.662819>,  <13.481553, 10.083694, 27.642157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.503872, 10.321759, 27.662819>,  <13.541071, 10.718534, 27.697254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.503872, 10.321759, 27.662819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426146, 0.038492, -0.903835,
		0.899862, -0.120740, 0.419130,
		-0.092996, -0.991938, -0.086090,
		13.475973, 10.024178, 27.636992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.186248, 10.520647, 27.364855>,  <13.541071, 10.718534, 27.697254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.186248, 10.520647, 27.364855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.936714, 10.216496, 27.292568>,  <13.786994, 10.034006, 27.249197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.936714, 10.216496, 27.292568>,  <14.186248, 10.520647, 27.364855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.936714, 10.216496, 27.292568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515648, -0.226674, -0.826272,
		0.587315, -0.608643, 0.533493,
		-0.623834, -0.760377, -0.180717,
		13.749564, 9.988383, 27.238354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.635420, 10.008342, 27.252430>,  <14.186248, 10.520647, 27.364855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.635420, 10.008342, 27.252430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.273311, 9.947425, 27.093792>,  <14.056046, 9.910874, 26.998610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.273311, 9.947425, 27.093792>,  <14.635420, 10.008342, 27.252430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.273311, 9.947425, 27.093792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418327, -0.156838, -0.894653,
		0.074048, -0.975812, 0.205689,
		-0.905273, -0.152293, -0.396594,
		14.001729, 9.901737, 26.974813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.766665, 9.449007, 26.732353>,  <14.635420, 10.008342, 27.252430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.766665, 9.449007, 26.732353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.427681, 9.629371, 26.620285>,  <14.224291, 9.737589, 26.553045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.427681, 9.629371, 26.620285>,  <14.766665, 9.449007, 26.732353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.427681, 9.629371, 26.620285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239740, -0.145805, -0.959826,
		-0.473644, -0.880581, 0.015463,
		-0.847459, 0.450909, -0.280170,
		14.173443, 9.764643, 26.536234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.527753, 9.029772, 26.196138>,  <14.766665, 9.449007, 26.732353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.527753, 9.029772, 26.196138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.349775, 9.385036, 26.150185>,  <14.242989, 9.598194, 26.122612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.349775, 9.385036, 26.150185>,  <14.527753, 9.029772, 26.196138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.349775, 9.385036, 26.150185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202525, -0.025172, -0.978954,
		-0.872359, -0.458846, -0.168675,
		-0.444943, 0.888159, -0.114887,
		14.216292, 9.651484, 26.115719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.036773, 8.932894, 25.680124>,  <14.527753, 9.029772, 26.196138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.036773, 8.932894, 25.680124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.107217, 9.326581, 25.687031>,  <14.149483, 9.562794, 25.691175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.107217, 9.326581, 25.687031>,  <14.036773, 8.932894, 25.680124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.107217, 9.326581, 25.687031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118156, -0.003721, -0.992988,
		-0.977254, 0.176915, -0.116947,
		0.176110, 0.984219, 0.017267,
		14.160049, 9.621847, 25.692211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.659950, 9.133450, 25.215227>,  <14.036773, 8.932894, 25.680124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.659950, 9.133450, 25.215227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.946421, 9.410059, 25.252935>,  <14.118303, 9.576025, 25.275560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.946421, 9.410059, 25.252935>,  <13.659950, 9.133450, 25.215227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.946421, 9.410059, 25.252935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187410, -0.060437, -0.980421,
		-0.672287, 0.719821, -0.172882,
		0.716176, 0.691524, 0.094271,
		14.161274, 9.617517, 25.281218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.548349, 9.540715, 24.626738>,  <13.659950, 9.133450, 25.215227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.548349, 9.540715, 24.626738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.930264, 9.591290, 24.734364>,  <14.159412, 9.621634, 24.798939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.930264, 9.591290, 24.734364>,  <13.548349, 9.540715, 24.626738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.930264, 9.591290, 24.734364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273772, -0.021112, -0.961563,
		-0.115896, 0.991750, -0.054772,
		0.954786, 0.126437, 0.269067,
		14.216700, 9.629221, 24.815084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.858469, 9.538304, 24.204412>,  <13.548349, 9.540715, 24.626738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.858469, 9.538304, 24.204412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.581095, 9.644356, 23.936426>,  <12.414670, 9.707987, 23.775635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.581095, 9.644356, 23.936426>,  <12.858469, 9.538304, 24.204412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.581095, 9.644356, 23.936426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559055, 0.388602, 0.732425,
		0.454536, 0.882437, -0.121250,
		-0.693437, 0.265129, -0.669964,
		12.373064, 9.723894, 23.735437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.597869, 10.212703, 24.379099>,  <12.858469, 9.538304, 24.204412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.597869, 10.212703, 24.379099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.317050, 10.006980, 24.182074>,  <12.148559, 9.883547, 24.063858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.317050, 10.006980, 24.182074>,  <12.597869, 10.212703, 24.379099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.317050, 10.006980, 24.182074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705930, 0.411537, 0.576454,
		-0.093766, 0.752414, -0.651983,
		-0.702047, -0.514306, -0.492563,
		12.106436, 9.852688, 24.034304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.064039, 10.680632, 24.424854>,  <12.597869, 10.212703, 24.379099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.064039, 10.680632, 24.424854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.911672, 10.333241, 24.297953>,  <11.820251, 10.124807, 24.221811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.911672, 10.333241, 24.297953>,  <12.064039, 10.680632, 24.424854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.911672, 10.333241, 24.297953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803854, 0.141524, 0.577746,
		-0.456859, 0.475100, -0.752037,
		-0.380919, -0.868476, -0.317254,
		11.797396, 10.072699, 24.202776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.467120, 10.833445, 24.341612>,  <12.064039, 10.680632, 24.424854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.467120, 10.833445, 24.341612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.461976, 10.436765, 24.392784>,  <11.458890, 10.198757, 24.423487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.461976, 10.436765, 24.392784>,  <11.467120, 10.833445, 24.341612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.461976, 10.436765, 24.392784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810963, 0.085191, 0.578862,
		-0.584956, -0.096303, -0.805328,
		-0.012860, -0.991700, 0.127931,
		11.458117, 10.139255, 24.431164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.678446, 10.626598, 24.396727>,  <11.467120, 10.833445, 24.341612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.678446, 10.626598, 24.396727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.898293, 10.336739, 24.563005>,  <11.030201, 10.162823, 24.662773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.898293, 10.336739, 24.563005>,  <10.678446, 10.626598, 24.396727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.898293, 10.336739, 24.563005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646224, -0.053428, 0.761275,
		-0.529447, -0.687043, -0.497652,
		0.549618, -0.724650, 0.415697,
		11.063178, 10.119344, 24.687714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.090890, 10.081477, 24.489738>,  <10.678446, 10.626598, 24.396727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.090890, 10.081477, 24.489738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.417881, 10.036984, 24.715786>,  <10.614076, 10.010289, 24.851414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.417881, 10.036984, 24.715786>,  <10.090890, 10.081477, 24.489738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.417881, 10.036984, 24.715786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566088, -0.336063, 0.752732,
		0.106188, -0.935248, -0.337691,
		0.817477, -0.111231, 0.565119,
		10.663124, 10.003615, 24.885321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.979725, 9.444283, 24.616158>,  <10.090890, 10.081477, 24.489738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.979725, 9.444283, 24.616158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.224332, 9.604915, 24.888857>,  <10.371097, 9.701293, 25.052477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.224332, 9.604915, 24.888857>,  <9.979725, 9.444283, 24.616158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.224332, 9.604915, 24.888857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613146, -0.304082, 0.729099,
		0.500098, -0.863869, 0.060274,
		0.611518, 0.401578, 0.681749,
		10.407787, 9.725388, 25.093382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.888045, 8.981803, 25.226007>,  <9.979725, 9.444283, 24.616158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.888045, 8.981803, 25.226007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.042652, 9.323664, 25.364672>,  <10.135416, 9.528780, 25.447870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.042652, 9.323664, 25.364672>,  <9.888045, 8.981803, 25.226007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.042652, 9.323664, 25.364672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558544, -0.082191, 0.825393,
		0.733916, -0.512653, 0.445593,
		0.386517, 0.854653, 0.346660,
		10.158607, 9.580060, 25.468670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.869481, 8.765697, 25.838299>,  <9.888045, 8.981803, 25.226007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.869481, 8.765697, 25.838299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.923084, 9.159224, 25.885874>,  <9.955246, 9.395340, 25.914419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.923084, 9.159224, 25.885874>,  <9.869481, 8.765697, 25.838299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.923084, 9.159224, 25.885874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456881, -0.045168, 0.888381,
		0.879376, -0.173392, 0.443434,
		0.134009, 0.983817, 0.118939,
		9.963286, 9.454369, 25.921555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.119439, 8.861621, 26.584538>,  <9.869481, 8.765697, 25.838299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.119439, 8.861621, 26.584538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.025645, 9.241601, 26.501968>,  <9.969369, 9.469589, 26.452427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.025645, 9.241601, 26.501968>,  <10.119439, 8.861621, 26.584538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.025645, 9.241601, 26.501968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099367, 0.187808, 0.977167,
		0.967028, 0.249642, 0.050356,
		-0.234485, 0.949951, -0.206422,
		9.955300, 9.526587, 26.440042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.542843, 9.232032, 26.983379>,  <10.119439, 8.861621, 26.584538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.542843, 9.232032, 26.983379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.212831, 9.437935, 26.890123>,  <10.014825, 9.561477, 26.834169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.212831, 9.437935, 26.890123>,  <10.542843, 9.232032, 26.983379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.212831, 9.437935, 26.890123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120477, 0.242859, 0.962551,
		0.552101, 0.822219, -0.138350,
		-0.825027, 0.514757, -0.233141,
		9.965323, 9.592362, 26.820181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.596957, 9.815628, 27.327421>,  <10.542843, 9.232032, 26.983379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.596957, 9.815628, 27.327421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.206689, 9.774990, 27.249710>,  <9.972528, 9.750607, 27.203083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.206689, 9.774990, 27.249710>,  <10.596957, 9.815628, 27.327421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.206689, 9.774990, 27.249710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202777, 0.081288, 0.975845,
		-0.083348, 0.991499, -0.099911,
		-0.975671, -0.101594, -0.194278,
		9.913987, 9.744512, 27.191427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.228836, 10.389477, 27.716927>,  <10.596957, 9.815628, 27.327421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.228836, 10.389477, 27.716927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.945948, 10.118296, 27.636705>,  <9.776215, 9.955587, 27.588573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.945948, 10.118296, 27.636705>,  <10.228836, 10.389477, 27.716927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.945948, 10.118296, 27.636705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365626, 0.107929, 0.924483,
		-0.605110, 0.727140, -0.324206,
		-0.707220, -0.677952, -0.200552,
		9.733782, 9.914910, 27.576540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.720716, 10.680297, 28.110270>,  <10.228836, 10.389477, 27.716927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.720716, 10.680297, 28.110270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.590303, 10.310864, 28.029572>,  <9.512055, 10.089205, 27.981152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.590303, 10.310864, 28.029572>,  <9.720716, 10.680297, 28.110270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.590303, 10.310864, 28.029572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435658, -0.042608, 0.899103,
		-0.838990, 0.381029, -0.388474,
		-0.326033, -0.923581, -0.201746,
		9.492494, 10.033791, 27.969048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.129387, 10.688524, 28.554525>,  <9.720716, 10.680297, 28.110270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.129387, 10.688524, 28.554525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.826265, 10.868605, 28.743439>,  <8.644392, 10.976653, 28.856787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.826265, 10.868605, 28.743439>,  <9.129387, 10.688524, 28.554525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.826265, 10.868605, 28.743439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195789, 0.533574, -0.822779,
		-0.622414, -0.715974, -0.316201,
		-0.757805, 0.450200, 0.472284,
		8.598924, 11.003665, 28.885124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.671529, 10.703310, 27.992287>,  <9.129387, 10.688524, 28.554525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.671529, 10.703310, 27.992287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.577359, 10.963261, 28.281351>,  <8.520858, 11.119231, 28.454790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.577359, 10.963261, 28.281351>,  <8.671529, 10.703310, 27.992287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.577359, 10.963261, 28.281351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197102, 0.696182, -0.690276,
		-0.951697, -0.304945, -0.035806,
		-0.235423, 0.649876, 0.722660,
		8.506732, 11.158223, 28.498150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.039415, 11.080832, 27.779100>,  <8.671529, 10.703310, 27.992287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.039415, 11.080832, 27.779100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.229939, 11.298298, 28.055523>,  <8.344253, 11.428778, 28.221376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.229939, 11.298298, 28.055523>,  <8.039415, 11.080832, 27.779100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.229939, 11.298298, 28.055523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031659, 0.774822, -0.631386,
		-0.878708, 0.322613, 0.351842,
		0.476308, 0.543665, 0.691056,
		8.372831, 11.461397, 28.262840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.765176, 11.715595, 27.824474>,  <8.039415, 11.080832, 27.779100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.765176, 11.715595, 27.824474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.135662, 11.785585, 27.958046>,  <8.357954, 11.827579, 28.038189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.135662, 11.785585, 27.958046>,  <7.765176, 11.715595, 27.824474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.135662, 11.785585, 27.958046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097732, 0.744045, -0.660943,
		-0.364107, 0.644811, 0.672045,
		0.926215, 0.174974, 0.333931,
		8.413527, 11.838078, 28.058226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.764378, 12.389544, 27.849371>,  <7.765176, 11.715595, 27.824474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.764378, 12.389544, 27.849371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.147385, 12.274207, 27.847689>,  <8.377189, 12.205005, 27.846680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.147385, 12.274207, 27.847689>,  <7.764378, 12.389544, 27.849371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.147385, 12.274207, 27.847689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216760, 0.729270, -0.648983,
		0.190197, 0.620502, 0.760791,
		0.957518, -0.288344, -0.004205,
		8.434640, 12.187704, 27.846428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.123591, 12.944319, 27.957888>,  <7.764378, 12.389544, 27.849371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.123591, 12.944319, 27.957888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.360021, 12.684497, 27.766592>,  <8.501878, 12.528604, 27.651815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.360021, 12.684497, 27.766592>,  <8.123591, 12.944319, 27.957888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.360021, 12.684497, 27.766592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228777, 0.703546, -0.672818,
		0.773495, 0.288274, 0.564450,
		0.591073, -0.649554, -0.478239,
		8.537342, 12.489631, 27.623119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.683890, 13.384450, 27.629511>,  <8.123591, 12.944319, 27.957888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.683890, 13.384450, 27.629511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.712233, 13.033931, 27.438898>,  <8.729238, 12.823620, 27.324530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.712233, 13.033931, 27.438898>,  <8.683890, 13.384450, 27.629511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.712233, 13.033931, 27.438898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351492, 0.469024, -0.810228,
		0.933506, -0.110089, 0.341244,
		0.070855, -0.876297, -0.476532,
		8.733489, 12.771042, 27.295938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.341730, 13.404149, 27.878117>,  <8.683890, 13.384450, 27.629511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.341730, 13.404149, 27.878117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.570987, 13.687268, 28.043299>,  <9.708541, 13.857140, 28.142408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.570987, 13.687268, 28.043299>,  <9.341730, 13.404149, 27.878117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.570987, 13.687268, 28.043299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078834, -0.453974, 0.887520,
		0.815657, -0.541228, -0.204393,
		0.573140, 0.707799, 0.412954,
		9.742929, 13.899608, 28.167185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.979266, 13.059540, 28.247103>,  <9.341730, 13.404149, 27.878117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.979266, 13.059540, 28.247103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.900939, 13.415742, 28.411373>,  <9.853943, 13.629463, 28.509935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.900939, 13.415742, 28.411373>,  <9.979266, 13.059540, 28.247103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.900939, 13.415742, 28.411373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028423, -0.413453, 0.910082,
		0.980228, 0.189882, 0.055651,
		-0.195817, 0.890506, 0.410675,
		9.842194, 13.682894, 28.534576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.483949, 13.044110, 28.880394>,  <9.979266, 13.059540, 28.247103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.483949, 13.044110, 28.880394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.207122, 13.317945, 28.971945>,  <10.041026, 13.482246, 29.026875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.207122, 13.317945, 28.971945>,  <10.483949, 13.044110, 28.880394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.207122, 13.317945, 28.971945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035988, -0.283958, 0.958161,
		0.720936, 0.671348, 0.171881,
		-0.692066, 0.684588, 0.228876,
		9.999502, 13.523322, 29.040607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.706351, 13.133118, 29.468744>,  <10.483949, 13.044110, 28.880394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.706351, 13.133118, 29.468744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.344083, 13.302557, 29.475916>,  <10.126721, 13.404221, 29.480219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.344083, 13.302557, 29.475916>,  <10.706351, 13.133118, 29.468744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.344083, 13.302557, 29.475916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039606, -0.126628, 0.991159,
		0.422125, 0.896955, 0.131461,
		-0.905672, 0.423599, 0.017928,
		10.072381, 13.429637, 29.481295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.776324, 13.710577, 29.923319>,  <10.706351, 13.133118, 29.468744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.776324, 13.710577, 29.923319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.386178, 13.623542, 29.908813>,  <10.152090, 13.571321, 29.900110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.386178, 13.623542, 29.908813>,  <10.776324, 13.710577, 29.923319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.386178, 13.623542, 29.908813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008382, -0.127720, 0.991775,
		-0.220430, 0.967648, 0.122750,
		-0.975367, -0.217588, -0.036264,
		10.093568, 13.558266, 29.897934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.507936, 14.108328, 30.536695>,  <10.776324, 13.710577, 29.923319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.507936, 14.108328, 30.536695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.245865, 13.818348, 30.451666>,  <10.088622, 13.644360, 30.400648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.245865, 13.818348, 30.451666>,  <10.507936, 14.108328, 30.536695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.245865, 13.818348, 30.451666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049727, -0.239387, 0.969650,
		-0.753836, 0.645865, 0.120792,
		-0.655179, -0.724950, -0.212576,
		10.049312, 13.600863, 30.387894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.996792, 14.102214, 31.114584>,  <10.507936, 14.108328, 30.536695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.996792, 14.102214, 31.114584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.907188, 13.760323, 30.927282>,  <9.853426, 13.555188, 30.814901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.907188, 13.760323, 30.927282>,  <9.996792, 14.102214, 31.114584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.907188, 13.760323, 30.927282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135608, -0.448452, 0.883460,
		-0.965107, 0.261402, -0.015450,
		-0.224009, -0.854728, -0.468252,
		9.839986, 13.503904, 30.786806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.344349, 13.824074, 31.464809>,  <9.996792, 14.102214, 31.114584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.344349, 13.824074, 31.464809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.560645, 13.531413, 31.298780>,  <9.690423, 13.355817, 31.199163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.560645, 13.531413, 31.298780>,  <9.344349, 13.824074, 31.464809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.560645, 13.531413, 31.298780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010336, -0.487620, 0.872995,
		-0.841127, -0.476353, -0.256113,
		0.540739, -0.731652, -0.415074,
		9.722867, 13.311917, 31.174259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.161593, 13.164786, 31.831697>,  <9.344349, 13.824074, 31.464809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.161593, 13.164786, 31.831697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.521971, 13.111526, 31.666496>,  <9.738197, 13.079569, 31.567375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.521971, 13.111526, 31.666496>,  <9.161593, 13.164786, 31.831697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.521971, 13.111526, 31.666496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341350, -0.370165, 0.863978,
		-0.267918, -0.919374, -0.288047,
		0.900944, -0.133150, -0.413002,
		9.792253, 13.071580, 31.542595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.784686, 16.768833, 16.065636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.069268, 16.632448, 16.311424>,  <15.240018, 16.550617, 16.458897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.069268, 16.632448, 16.311424>,  <14.784686, 16.768833, 16.065636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.069268, 16.632448, 16.311424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698016, -0.241758, 0.674038,
		-0.081265, -0.908460, -0.409996,
		0.711456, -0.340959, 0.614473,
		15.282705, 16.530159, 16.495766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.574304, 16.121319, 16.226446>,  <14.784686, 16.768833, 16.065636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.574304, 16.121319, 16.226446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.804907, 16.250851, 16.526518>,  <14.943269, 16.328569, 16.706562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.804907, 16.250851, 16.526518>,  <14.574304, 16.121319, 16.226446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.804907, 16.250851, 16.526518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728383, -0.212364, 0.651429,
		0.370265, -0.921973, 0.113443,
		0.576509, 0.323831, 0.750181,
		14.977859, 16.348000, 16.751572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.447930, 15.625420, 16.845201>,  <14.574304, 16.121319, 16.226446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.447930, 15.625420, 16.845201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.600987, 15.952451, 17.017319>,  <14.692822, 16.148670, 17.120588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.600987, 15.952451, 17.017319>,  <14.447930, 15.625420, 16.845201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.600987, 15.952451, 17.017319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608473, -0.127459, 0.783272,
		0.695230, -0.561534, 0.448703,
		0.382643, 0.817578, 0.430292,
		14.715780, 16.197723, 17.146406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.605643, 15.374485, 17.462009>,  <14.447930, 15.625420, 16.845201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.605643, 15.374485, 17.462009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.614657, 15.769808, 17.522333>,  <14.620066, 16.007002, 17.558527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.614657, 15.769808, 17.522333>,  <14.605643, 15.374485, 17.462009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.614657, 15.769808, 17.522333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516672, -0.117629, 0.848065,
		0.855887, -0.097030, 0.507979,
		0.022535, 0.988306, 0.150810,
		14.621418, 16.066299, 17.567575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.865226, 15.513349, 18.126328>,  <14.605643, 15.374485, 17.462009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.865226, 15.513349, 18.126328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.645537, 15.833681, 18.030807>,  <14.513724, 16.025881, 17.973495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.645537, 15.833681, 18.030807>,  <14.865226, 15.513349, 18.126328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.645537, 15.833681, 18.030807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575522, -0.155280, 0.802909,
		0.605913, 0.578410, 0.546179,
		-0.549221, 0.800831, -0.238802,
		14.480771, 16.073931, 17.959167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.915053, 15.992136, 18.760605>,  <14.865226, 15.513349, 18.126328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.915053, 15.992136, 18.760605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.601833, 16.158815, 18.575912>,  <14.413901, 16.258823, 18.465097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.601833, 16.158815, 18.575912>,  <14.915053, 15.992136, 18.760605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.601833, 16.158815, 18.575912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521611, -0.035642, 0.852439,
		0.338753, 0.908346, 0.245264,
		-0.783051, 0.416698, -0.461730,
		14.366919, 16.283825, 18.437393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.701530, 16.487263, 19.237106>,  <14.915053, 15.992136, 18.760605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.701530, 16.487263, 19.237106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.390429, 16.408033, 18.998486>,  <14.203770, 16.360495, 18.855314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.390429, 16.408033, 18.998486>,  <14.701530, 16.487263, 19.237106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.390429, 16.408033, 18.998486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595009, -0.073991, 0.800306,
		-0.202660, 0.977390, -0.060310,
		-0.777749, -0.198075, -0.596550,
		14.157104, 16.348610, 18.819521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.265942, 16.825138, 19.683619>,  <14.701530, 16.487263, 19.237106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.265942, 16.825138, 19.683619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.034669, 16.599009, 19.448292>,  <13.895905, 16.463331, 19.307096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.034669, 16.599009, 19.448292>,  <14.265942, 16.825138, 19.683619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.034669, 16.599009, 19.448292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717409, 0.008795, 0.696597,
		-0.388628, 0.824823, -0.410653,
		-0.578181, -0.565323, -0.588317,
		13.861215, 16.429411, 19.271797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.590291, 17.112701, 19.815701>,  <14.265942, 16.825138, 19.683619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.590291, 17.112701, 19.815701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.485055, 16.767288, 19.643612>,  <13.421913, 16.560040, 19.540358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.485055, 16.767288, 19.643612>,  <13.590291, 17.112701, 19.815701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.485055, 16.767288, 19.643612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797472, -0.056323, 0.600721,
		-0.542975, 0.501135, -0.673827,
		-0.263090, -0.863534, -0.430223,
		13.406128, 16.508228, 19.514545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.912993, 17.089680, 19.517330>,  <13.590291, 17.112701, 19.815701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.912993, 17.089680, 19.517330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.036549, 16.732670, 19.648777>,  <13.110682, 16.518463, 19.727644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.036549, 16.732670, 19.648777>,  <12.912993, 17.089680, 19.517330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.036549, 16.732670, 19.648777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840205, -0.094157, 0.534032,
		-0.445695, -0.441059, -0.778988,
		0.308887, -0.892525, 0.328615,
		13.129215, 16.464912, 19.747362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.263016, 16.620378, 19.504820>,  <12.912993, 17.089680, 19.517330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.263016, 16.620378, 19.504820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.521951, 16.447720, 19.756100>,  <12.677312, 16.344124, 19.906868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.521951, 16.447720, 19.756100>,  <12.263016, 16.620378, 19.504820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.521951, 16.447720, 19.756100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737615, -0.147112, 0.659001,
		-0.192042, -0.889964, -0.413622,
		0.647336, -0.431650, 0.628199,
		12.716152, 16.318226, 19.944559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.928556, 16.085756, 19.857477>,  <12.263016, 16.620378, 19.504820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.928556, 16.085756, 19.857477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.235282, 16.108957, 20.113174>,  <12.419317, 16.122877, 20.266592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.235282, 16.108957, 20.113174>,  <11.928556, 16.085756, 19.857477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.235282, 16.108957, 20.113174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631153, -0.113082, 0.767371,
		0.116797, -0.991891, -0.050105,
		0.766815, 0.058003, 0.639243,
		12.465326, 16.126358, 20.304947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.905265, 15.376681, 19.543877>,  <11.928556, 16.085756, 19.857477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.905265, 15.376681, 19.543877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.654536, 15.094230, 19.412132>,  <11.504099, 14.924759, 19.333086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.654536, 15.094230, 19.412132>,  <11.905265, 15.376681, 19.543877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.654536, 15.094230, 19.412132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346550, 0.125937, -0.929539,
		0.697853, -0.696794, 0.165769,
		-0.626821, -0.706129, -0.329359,
		11.466490, 14.882391, 19.313324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.317713, 14.805198, 19.161039>,  <11.905265, 15.376681, 19.543877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.317713, 14.805198, 19.161039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.936735, 14.818262, 19.039858>,  <11.708148, 14.826100, 18.967148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.936735, 14.818262, 19.039858>,  <12.317713, 14.805198, 19.161039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.936735, 14.818262, 19.039858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302272, -0.024251, -0.952913,
		-0.038480, -0.999172, 0.013222,
		-0.952444, 0.032671, -0.302955,
		11.651002, 14.828060, 18.948971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.388053, 14.200589, 18.632694>,  <12.317713, 14.805198, 19.161039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.388053, 14.200589, 18.632694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.060775, 14.414714, 18.548792>,  <11.864408, 14.543189, 18.498451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.060775, 14.414714, 18.548792>,  <12.388053, 14.200589, 18.632694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.060775, 14.414714, 18.548792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147636, -0.156975, -0.976505,
		-0.555662, -0.829939, 0.049405,
		-0.818195, 0.535313, -0.209754,
		11.815316, 14.575308, 18.485867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.016075, 13.805912, 18.061508>,  <12.388053, 14.200589, 18.632694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.016075, 13.805912, 18.061508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.856537, 14.172717, 18.062897>,  <11.760814, 14.392800, 18.063730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.856537, 14.172717, 18.062897>,  <12.016075, 13.805912, 18.061508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.856537, 14.172717, 18.062897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158447, -0.065185, -0.985214,
		-0.903226, -0.393497, 0.171297,
		-0.398844, 0.917012, 0.003471,
		11.736883, 14.447821, 18.063938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.384151, 13.704522, 17.691330>,  <12.016075, 13.805912, 18.061508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.384151, 13.704522, 17.691330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.481318, 14.092452, 17.683031>,  <11.539618, 14.325210, 17.678051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.481318, 14.092452, 17.683031>,  <11.384151, 13.704522, 17.691330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.481318, 14.092452, 17.683031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228711, 0.036474, -0.972811,
		-0.942699, 0.241059, 0.230669,
		0.242918, 0.969825, -0.020749,
		11.554193, 14.383400, 17.676805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.778464, 13.984310, 17.543478>,  <11.384151, 13.704522, 17.691330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.778464, 13.984310, 17.543478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.083420, 14.219764, 17.435944>,  <11.266394, 14.361035, 17.371422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.083420, 14.219764, 17.435944>,  <10.778464, 13.984310, 17.543478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.083420, 14.219764, 17.435944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201924, -0.178302, -0.963034,
		-0.614808, 0.788492, -0.017076,
		0.762390, 0.588633, -0.268837,
		11.312137, 14.396354, 17.355293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.545347, 14.382205, 16.997721>,  <10.778464, 13.984310, 17.543478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.545347, 14.382205, 16.997721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.941629, 14.430815, 16.973278>,  <11.179399, 14.459981, 16.958612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.941629, 14.430815, 16.973278>,  <10.545347, 14.382205, 16.997721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.941629, 14.430815, 16.973278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040846, -0.162722, -0.985826,
		-0.129746, 0.979159, -0.156246,
		0.990706, 0.121525, -0.061107,
		11.238841, 14.467273, 16.954947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.673053, 14.987549, 16.484461>,  <10.545347, 14.382205, 16.997721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.673053, 14.987549, 16.484461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.000905, 14.758394, 16.485390>,  <11.197617, 14.620901, 16.485947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.000905, 14.758394, 16.485390>,  <10.673053, 14.987549, 16.484461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.000905, 14.758394, 16.485390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010578, -0.019183, -0.999760,
		0.572794, 0.819410, -0.021783,
		0.819631, -0.572887, 0.002320,
		11.246795, 14.586528, 16.486086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.123615, 15.324245, 16.029718>,  <10.673053, 14.987549, 16.484461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.123615, 15.324245, 16.029718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.236950, 14.941022, 16.046898>,  <11.304951, 14.711088, 16.057205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.236950, 14.941022, 16.046898>,  <11.123615, 15.324245, 16.029718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.236950, 14.941022, 16.046898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087582, -0.070444, -0.993663,
		0.955013, 0.277779, -0.103868,
		0.283336, -0.958059, 0.042946,
		11.321951, 14.653605, 16.059782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.659630, 15.336768, 15.536706>,  <11.123615, 15.324245, 16.029718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.659630, 15.336768, 15.536706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.542485, 14.961879, 15.612437>,  <11.472198, 14.736945, 15.657876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.542485, 14.961879, 15.612437>,  <11.659630, 15.336768, 15.536706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.542485, 14.961879, 15.612437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118712, -0.160837, -0.979816,
		0.948757, -0.309425, -0.064156,
		-0.292861, -0.937223, 0.189328,
		11.454627, 14.680712, 15.669235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.007864, 14.964271, 15.120899>,  <11.659630, 15.336768, 15.536706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.007864, 14.964271, 15.120899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.687527, 14.736005, 15.193553>,  <11.495324, 14.599046, 15.237145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.687527, 14.736005, 15.193553>,  <12.007864, 14.964271, 15.120899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.687527, 14.736005, 15.193553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135521, -0.122735, -0.983143,
		0.583337, -0.811960, 0.020955,
		-0.800844, -0.570664, 0.181634,
		11.447273, 14.564806, 15.248043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.993765, 14.419317, 14.649748>,  <12.007864, 14.964271, 15.120899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.993765, 14.419317, 14.649748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.610407, 14.397177, 14.761761>,  <11.380392, 14.383892, 14.828968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.610407, 14.397177, 14.761761>,  <11.993765, 14.419317, 14.649748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.610407, 14.397177, 14.761761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250682, -0.306007, -0.918433,
		0.136528, -0.950419, 0.279399,
		-0.958394, -0.055352, 0.280031,
		11.322888, 14.380571, 14.845770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.603029, 13.804343, 14.424631>,  <11.993765, 14.419317, 14.649748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.603029, 13.804343, 14.424631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.321599, 14.076780, 14.505720>,  <11.152741, 14.240242, 14.554374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.321599, 14.076780, 14.505720>,  <11.603029, 13.804343, 14.424631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.321599, 14.076780, 14.505720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450621, -0.207028, -0.868378,
		-0.549476, -0.702320, 0.452574,
		-0.703575, 0.681092, 0.202723,
		11.110527, 14.281108, 14.566537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.367975, 13.422517, 14.469111>,  <11.603029, 13.804343, 14.424631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.367975, 13.422517, 14.469111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.460627, 13.180385, 14.773723>,  <12.516217, 13.035106, 14.956490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.460627, 13.180385, 14.773723>,  <12.367975, 13.422517, 14.469111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.460627, 13.180385, 14.773723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537913, -0.572556, -0.618732,
		0.810554, 0.552952, 0.192994,
		0.231629, -0.605330, 0.761527,
		12.530115, 12.998786, 15.002181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.164566, 13.346408, 14.617611>,  <12.367975, 13.422517, 14.469111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.164566, 13.346408, 14.617611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.956492, 13.017209, 14.708899>,  <12.831649, 12.819690, 14.763671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.956492, 13.017209, 14.708899>,  <13.164566, 13.346408, 14.617611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.956492, 13.017209, 14.708899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441009, -0.487677, -0.753447,
		0.731383, -0.291283, 0.616630,
		-0.520183, -0.822998, 0.228220,
		12.800438, 12.770309, 14.777365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.833391, 13.780737, 14.308436>,  <13.164566, 13.346408, 14.617611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.833391, 13.780737, 14.308436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186707, 13.602823, 14.249151>,  <14.398697, 13.496076, 14.213580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186707, 13.602823, 14.249151>,  <13.833391, 13.780737, 14.308436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.186707, 13.602823, 14.249151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432578, 0.895087, -0.108142,
		0.180764, 0.031407, 0.983025,
		0.883290, -0.444783, -0.148214,
		14.451694, 13.469388, 14.204687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.404647, 14.134718, 14.753245>,  <13.833391, 13.780737, 14.308436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.404647, 14.134718, 14.753245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.561659, 13.977037, 14.420855>,  <14.655867, 13.882429, 14.221420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.561659, 13.977037, 14.420855>,  <14.404647, 14.134718, 14.753245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.561659, 13.977037, 14.420855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513204, 0.843638, -0.157785,
		0.763244, -0.364525, 0.533460,
		0.392531, -0.394202, -0.830978,
		14.679418, 13.858777, 14.171561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.067142, 14.252510, 14.875833>,  <14.404647, 14.134718, 14.753245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.067142, 14.252510, 14.875833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.005763, 14.213257, 14.482524>,  <14.968936, 14.189705, 14.246538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.005763, 14.213257, 14.482524>,  <15.067142, 14.252510, 14.875833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.005763, 14.213257, 14.482524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401989, 0.902799, -0.152835,
		0.902721, -0.418700, -0.098917,
		-0.153294, -0.098204, -0.983289,
		14.959729, 14.183817, 14.187542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.179698, 13.777862, 15.410933>,  <15.067142, 14.252510, 14.875833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.179698, 13.777862, 15.410933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.486893, 13.593769, 15.589093>,  <15.671209, 13.483314, 15.695990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.486893, 13.593769, 15.589093>,  <15.179698, 13.777862, 15.410933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.486893, 13.593769, 15.589093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623507, -0.378286, 0.684207,
		-0.146405, -0.803173, -0.577476,
		0.767988, -0.460231, 0.445401,
		15.717289, 13.455700, 15.722713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.008049, 13.152802, 15.488283>,  <15.179698, 13.777862, 15.410933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.008049, 13.152802, 15.488283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.271428, 13.222848, 15.781072>,  <15.429456, 13.264875, 15.956744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.271428, 13.222848, 15.781072>,  <15.008049, 13.152802, 15.488283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.271428, 13.222848, 15.781072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616977, -0.431392, 0.658210,
		0.431028, -0.885006, -0.176009,
		0.658448, 0.175113, 0.731970,
		15.468963, 13.275382, 16.000662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.125467, 12.561075, 15.813561>,  <15.008049, 13.152802, 15.488283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.125467, 12.561075, 15.813561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.219113, 12.802493, 16.118435>,  <15.275301, 12.947344, 16.301359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.219113, 12.802493, 16.118435>,  <15.125467, 12.561075, 15.813561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.219113, 12.802493, 16.118435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606915, -0.521719, 0.599553,
		0.759502, -0.602945, 0.244159,
		0.234115, 0.603545, 0.762183,
		15.289348, 12.983557, 16.347090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.132232, 12.112857, 16.378084>,  <15.125467, 12.561075, 15.813561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.132232, 12.112857, 16.378084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.139107, 12.473454, 16.551064>,  <15.143231, 12.689814, 16.654852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.139107, 12.473454, 16.551064>,  <15.132232, 12.112857, 16.378084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.139107, 12.473454, 16.551064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673137, -0.309379, 0.671693,
		0.739318, -0.302641, 0.601512,
		0.017187, 0.901495, 0.432448,
		15.144263, 12.743903, 16.680798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.340499, 12.091179, 17.150427>,  <15.132232, 12.112857, 16.378084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.340499, 12.091179, 17.150427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.118795, 12.422221, 17.114946>,  <14.985773, 12.620847, 17.093658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.118795, 12.422221, 17.114946>,  <15.340499, 12.091179, 17.150427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.118795, 12.422221, 17.114946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519904, -0.261013, 0.813371,
		0.649998, 0.496933, 0.574944,
		-0.554258, 0.827605, -0.088699,
		14.952518, 12.670503, 17.088337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.385991, 12.500924, 17.855120>,  <15.340499, 12.091179, 17.150427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.385991, 12.500924, 17.855120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.061534, 12.609067, 17.647676>,  <14.866859, 12.673953, 17.523211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.061534, 12.609067, 17.647676>,  <15.385991, 12.500924, 17.855120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.061534, 12.609067, 17.647676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565696, -0.137615, 0.813050,
		0.148446, 0.952874, 0.264566,
		-0.811142, 0.270358, -0.518609,
		14.818192, 12.690174, 17.492094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.951445, 12.852174, 18.370289>,  <15.385991, 12.500924, 17.855120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.951445, 12.852174, 18.370289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.683478, 12.763919, 18.086731>,  <14.522698, 12.710966, 17.916595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.683478, 12.763919, 18.086731>,  <14.951445, 12.852174, 18.370289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.683478, 12.763919, 18.086731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702389, -0.121008, 0.701432,
		-0.240543, 0.967820, -0.073907,
		-0.669917, -0.220636, -0.708894,
		14.482503, 12.697728, 17.874063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.342914, 13.173059, 18.590437>,  <14.951445, 12.852174, 18.370289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.342914, 13.173059, 18.590437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.217423, 12.902381, 18.324007>,  <14.142129, 12.739974, 18.164148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.217423, 12.902381, 18.324007>,  <14.342914, 13.173059, 18.590437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.217423, 12.902381, 18.324007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495711, -0.481579, 0.722739,
		-0.809844, 0.556924, -0.184362,
		-0.313726, -0.676696, -0.666077,
		14.123305, 12.699372, 18.124184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.605190, 13.156404, 18.657293>,  <14.342914, 13.173059, 18.590437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.605190, 13.156404, 18.657293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.720328, 12.824968, 18.465216>,  <13.789412, 12.626107, 18.349970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.720328, 12.824968, 18.465216>,  <13.605190, 13.156404, 18.657293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.720328, 12.824968, 18.465216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517291, -0.556497, 0.650171,
		-0.805950, 0.061252, -0.588806,
		0.287845, -0.828589, -0.480194,
		13.806682, 12.576391, 18.321157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.965649, 12.684089, 18.432835>,  <13.605190, 13.156404, 18.657293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.965649, 12.684089, 18.432835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.299103, 12.464934, 18.460758>,  <13.499175, 12.333442, 18.477512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.299103, 12.464934, 18.460758>,  <12.965649, 12.684089, 18.432835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.299103, 12.464934, 18.460758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478906, -0.654075, 0.585522,
		-0.275138, -0.521544, -0.807645,
		0.833636, -0.547885, 0.069810,
		13.549193, 12.300569, 18.481701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.616781, 12.005313, 18.522734>,  <12.965649, 12.684089, 18.432835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.616781, 12.005313, 18.522734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.004747, 11.920833, 18.571159>,  <13.237527, 11.870145, 18.600216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.004747, 11.920833, 18.571159>,  <12.616781, 12.005313, 18.522734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.004747, 11.920833, 18.571159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232131, -0.652571, 0.721294,
		-0.073333, -0.727698, -0.681966,
		0.969916, -0.211200, 0.121066,
		13.295722, 11.857472, 18.607479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.562904, 11.287927, 18.566246>,  <12.616781, 12.005313, 18.522734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.562904, 11.287927, 18.566246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.903527, 11.417510, 18.731123>,  <13.107901, 11.495260, 18.830050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.903527, 11.417510, 18.731123>,  <12.562904, 11.287927, 18.566246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.903527, 11.417510, 18.731123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164292, -0.581730, 0.796617,
		0.497855, -0.746084, -0.442152,
		0.851556, 0.323958, 0.412193,
		13.158995, 11.514697, 18.854780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.916575, 10.694939, 18.810162>,  <12.562904, 11.287927, 18.566246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.916575, 10.694939, 18.810162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.065206, 11.005432, 19.013884>,  <13.154384, 11.191729, 19.136116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.065206, 11.005432, 19.013884>,  <12.916575, 10.694939, 18.810162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.065206, 11.005432, 19.013884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033181, -0.559335, 0.828277,
		0.927810, -0.290868, -0.233592,
		0.371576, 0.776234, 0.509305,
		13.176679, 11.238302, 19.166676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.518138, 10.458213, 19.275225>,  <12.916575, 10.694939, 18.810162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.518138, 10.458213, 19.275225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414232, 10.805824, 19.443659>,  <13.351889, 11.014391, 19.544720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414232, 10.805824, 19.443659>,  <13.518138, 10.458213, 19.275225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.414232, 10.805824, 19.443659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060704, -0.449887, 0.891020,
		0.963762, 0.205893, 0.169618,
		-0.259763, 0.869028, 0.421086,
		13.336303, 11.066533, 19.569984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.951218, 10.497792, 19.837824>,  <13.518138, 10.458213, 19.275225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.951218, 10.497792, 19.837824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.642818, 10.738534, 19.921091>,  <13.457779, 10.882979, 19.971050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.642818, 10.738534, 19.921091>,  <13.951218, 10.497792, 19.837824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.642818, 10.738534, 19.921091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080157, -0.415990, 0.905830,
		0.631773, 0.681707, 0.368970,
		-0.770998, 0.601854, 0.208167,
		13.411519, 10.919090, 19.983541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.874476, 10.484229, 20.566938>,  <13.951218, 10.497792, 19.837824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.874476, 10.484229, 20.566938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.528197, 10.659948, 20.470951>,  <13.320430, 10.765380, 20.413359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.528197, 10.659948, 20.470951>,  <13.874476, 10.484229, 20.566938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.528197, 10.659948, 20.470951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424816, -0.391202, 0.816390,
		0.264762, 0.808689, 0.525283,
		-0.865697, 0.439298, -0.239969,
		13.268488, 10.791738, 20.398960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.696879, 10.822032, 21.173956>,  <13.874476, 10.484229, 20.566938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.696879, 10.822032, 21.173956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.360458, 10.771662, 20.963518>,  <13.158606, 10.741440, 20.837255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.360458, 10.771662, 20.963518>,  <13.696879, 10.822032, 21.173956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.360458, 10.771662, 20.963518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516092, -0.104667, 0.850114,
		-0.162115, 0.986503, 0.023041,
		-0.841052, -0.125925, -0.526094,
		13.108143, 10.733884, 20.805691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.275191, 11.245528, 21.516962>,  <13.696879, 10.822032, 21.173956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.275191, 11.245528, 21.516962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.077159, 10.973651, 21.300476>,  <12.958340, 10.810525, 21.170584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.077159, 10.973651, 21.300476>,  <13.275191, 11.245528, 21.516962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.077159, 10.973651, 21.300476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477889, -0.307198, 0.822953,
		-0.725615, 0.666068, -0.172731,
		-0.495080, -0.679693, -0.541214,
		12.928635, 10.769743, 21.138111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.633549, 11.279818, 21.954727>,  <13.275191, 11.245528, 21.516962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.633549, 11.279818, 21.954727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.676912, 10.971298, 21.703857>,  <12.702930, 10.786187, 21.553335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.676912, 10.971298, 21.703857>,  <12.633549, 11.279818, 21.954727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.676912, 10.971298, 21.703857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331269, -0.622862, 0.708734,
		-0.937288, 0.130931, -0.323030,
		0.108408, -0.771298, -0.627174,
		12.709435, 10.739909, 21.515705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.908518, 10.954773, 21.777849>,  <12.633549, 11.279818, 21.954727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.908518, 10.954773, 21.777849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.199302, 10.685302, 21.724649>,  <12.373772, 10.523619, 21.692730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.199302, 10.685302, 21.724649>,  <11.908518, 10.954773, 21.777849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.199302, 10.685302, 21.724649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394284, -0.568075, 0.722378,
		-0.562210, -0.472695, -0.678587,
		0.726953, -0.673684, -0.133002,
		12.417389, 10.483198, 21.684750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.514561, 10.300694, 21.749105>,  <11.908518, 10.954773, 21.777849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.514561, 10.300694, 21.749105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.896544, 10.224633, 21.840231>,  <12.125733, 10.178997, 21.894907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.896544, 10.224633, 21.840231>,  <11.514561, 10.300694, 21.749105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.896544, 10.224633, 21.840231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294163, -0.707605, 0.642466,
		0.039038, -0.680542, -0.731668,
		0.954958, -0.190150, 0.227814,
		12.183031, 10.167588, 21.908575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.592950, 9.548912, 21.810461>,  <11.514561, 10.300694, 21.749105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.592950, 9.548912, 21.810461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.920647, 9.681170, 21.997871>,  <12.117265, 9.760526, 22.110317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.920647, 9.681170, 21.997871>,  <11.592950, 9.548912, 21.810461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.920647, 9.681170, 21.997871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098535, -0.723712, 0.683031,
		0.564919, -0.605734, -0.560315,
		0.819242, 0.330647, 0.468525,
		12.166419, 9.780365, 22.138430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.025130, 8.870559, 22.061811>,  <11.592950, 9.548912, 21.810461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.025130, 8.870559, 22.061811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.121671, 9.193343, 22.277428>,  <12.179595, 9.387013, 22.406797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.121671, 9.193343, 22.277428>,  <12.025130, 8.870559, 22.061811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.121671, 9.193343, 22.277428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218248, -0.496095, 0.840391,
		0.945578, -0.320473, 0.056385,
		0.241351, 0.806961, 0.539039,
		12.194076, 9.435431, 22.439140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.519776, 8.611521, 22.485460>,  <12.025130, 8.870559, 22.061811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.519776, 8.611521, 22.485460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.327770, 8.930906, 22.630812>,  <12.212566, 9.122538, 22.718021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.327770, 8.930906, 22.630812>,  <12.519776, 8.611521, 22.485460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.327770, 8.930906, 22.630812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249504, -0.521371, 0.816039,
		0.841031, 0.301047, 0.449486,
		-0.480015, 0.798463, 0.363377,
		12.183765, 9.170445, 22.739824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
