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
	<4.229839, 15.407208, 14.918339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.398250, 15.190352, 15.209219>,  <4.499296, 15.060239, 15.383747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.398250, 15.190352, 15.209219>,  <4.229839, 15.407208, 14.918339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.398250, 15.190352, 15.209219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821144, -0.112748, -0.559473,
		0.385304, 0.832689, 0.397706,
		0.421026, -0.542141, 0.727200,
		4.524558, 15.027710, 15.427379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.813742, 15.703688, 15.135183>,  <4.229839, 15.407208, 14.918339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.813742, 15.703688, 15.135183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.816983, 15.305792, 15.176028>,  <4.818927, 15.067054, 15.200535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.816983, 15.305792, 15.176028>,  <4.813742, 15.703688, 15.135183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.816983, 15.305792, 15.176028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767480, -0.059274, -0.638327,
		0.641022, 0.083541, 0.762963,
		0.008103, -0.994740, 0.102112,
		4.819414, 15.007370, 15.206662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.509050, 15.669455, 15.345992>,  <4.813742, 15.703688, 15.135183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.509050, 15.669455, 15.345992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.700232, 15.697656, 14.995771>,  <5.814941, 15.714577, 14.785639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.700232, 15.697656, 14.995771>,  <5.509050, 15.669455, 15.345992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.700232, 15.697656, 14.995771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268753, -0.960709, 0.069350,
		-0.836261, -0.268453, -0.478123,
		0.477954, 0.070503, -0.875551,
		5.843618, 15.718806, 14.733106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.211048, 15.739470, 15.728814>,  <5.509050, 15.669455, 15.345992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.211048, 15.739470, 15.728814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.454296, 16.041965, 15.825388>,  <6.600245, 16.223463, 15.883332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.454296, 16.041965, 15.825388>,  <6.211048, 15.739470, 15.728814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.454296, 16.041965, 15.825388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170175, 0.421249, -0.890836,
		-0.775390, 0.500650, 0.384863,
		0.608120, 0.756240, 0.241435,
		6.636732, 16.268837, 15.897819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.887928, 16.370371, 15.455311>,  <6.211048, 15.739470, 15.728814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.887928, 16.370371, 15.455311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.287720, 16.380594, 15.463214>,  <6.527595, 16.386728, 15.467956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.287720, 16.380594, 15.463214>,  <5.887928, 16.370371, 15.455311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.287720, 16.380594, 15.463214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015679, 0.150957, -0.988416,
		-0.028244, 0.988210, 0.150477,
		0.999478, 0.025557, 0.019758,
		6.587563, 16.388262, 15.469141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.110110, 16.959314, 15.151705>,  <5.887928, 16.370371, 15.455311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.110110, 16.959314, 15.151705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.448877, 16.749697, 15.115688>,  <6.652137, 16.623926, 15.094078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.448877, 16.749697, 15.115688>,  <6.110110, 16.959314, 15.151705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.448877, 16.749697, 15.115688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024277, 0.207272, -0.977982,
		0.531170, 0.826084, 0.188265,
		0.846917, -0.524046, -0.090042,
		6.702952, 16.592484, 15.088675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.519114, 17.305351, 14.606736>,  <6.110110, 16.959314, 15.151705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.519114, 17.305351, 14.606736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.689289, 16.944822, 14.639289>,  <6.791393, 16.728506, 14.658821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.689289, 16.944822, 14.639289>,  <6.519114, 17.305351, 14.606736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.689289, 16.944822, 14.639289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206623, 0.009189, -0.978377,
		0.881085, 0.433053, 0.190143,
		0.425437, -0.901321, 0.081383,
		6.816920, 16.674425, 14.663704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.087456, 17.420481, 14.221205>,  <6.519114, 17.305351, 14.606736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.087456, 17.420481, 14.221205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.006951, 17.028669, 14.222852>,  <6.958649, 16.793583, 14.223840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.006951, 17.028669, 14.222852>,  <7.087456, 17.420481, 14.221205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.006951, 17.028669, 14.222852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179992, -0.041113, -0.982809,
		0.962859, -0.197060, 0.184582,
		-0.201261, -0.979529, 0.004117,
		6.946573, 16.734810, 14.224087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.653453, 17.154581, 13.789870>,  <7.087456, 17.420481, 14.221205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.653453, 17.154581, 13.789870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.365594, 16.876993, 13.798924>,  <7.192879, 16.710440, 13.804357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.365594, 16.876993, 13.798924>,  <7.653453, 17.154581, 13.789870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.365594, 16.876993, 13.798924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159951, -0.197415, -0.967183,
		0.675667, -0.692409, 0.253070,
		-0.719646, -0.693972, 0.022635,
		7.149701, 16.668802, 13.805715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.900078, 16.552652, 13.315619>,  <7.653453, 17.154581, 13.789870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.900078, 16.552652, 13.315619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.507762, 16.506601, 13.378605>,  <7.272372, 16.478971, 13.416397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.507762, 16.506601, 13.378605>,  <7.900078, 16.552652, 13.315619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.507762, 16.506601, 13.378605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142031, -0.131844, -0.981043,
		0.133705, -0.984562, 0.112960,
		-0.980791, -0.115127, 0.157467,
		7.213525, 16.472063, 13.425845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.727273, 16.083549, 12.846405>,  <7.900078, 16.552652, 13.315619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.727273, 16.083549, 12.846405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.375551, 16.251173, 12.936925>,  <7.164518, 16.351748, 12.991237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.375551, 16.251173, 12.936925>,  <7.727273, 16.083549, 12.846405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.375551, 16.251173, 12.936925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256333, -0.015956, -0.966457,
		-0.401392, -0.907819, 0.121449,
		-0.879306, 0.419059, 0.226300,
		7.111760, 16.376890, 13.004815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.249636, 15.732326, 12.522159>,  <7.727273, 16.083549, 12.846405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.249636, 15.732326, 12.522159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.053437, 16.075480, 12.583407>,  <6.935718, 16.281372, 12.620156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.053437, 16.075480, 12.583407>,  <7.249636, 15.732326, 12.522159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.053437, 16.075480, 12.583407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251422, 0.028926, -0.967445,
		-0.834386, -0.513027, 0.201503,
		-0.490497, 0.857885, 0.153122,
		6.906288, 16.332846, 12.629344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.638304, 15.534354, 12.253345>,  <7.249636, 15.732326, 12.522159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.638304, 15.534354, 12.253345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.696004, 15.930171, 12.253283>,  <6.730624, 16.167662, 12.253245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.696004, 15.930171, 12.253283>,  <6.638304, 15.534354, 12.253345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.696004, 15.930171, 12.253283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435028, 0.063276, -0.898191,
		-0.888787, 0.129632, 0.439606,
		0.144251, 0.989541, -0.000155,
		6.739279, 16.227034, 12.253236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.932238, 15.675850, 12.136941>,  <6.638304, 15.534354, 12.253345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.932238, 15.675850, 12.136941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.165681, 15.984553, 12.035914>,  <6.305747, 16.169775, 11.975299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.165681, 15.984553, 12.035914>,  <5.932238, 15.675850, 12.136941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.165681, 15.984553, 12.035914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435071, 0.034555, -0.899733,
		-0.685650, 0.634975, 0.355937,
		0.583608, 0.771759, -0.252566,
		6.340764, 16.216082, 11.960145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.496379, 16.100039, 11.720845>,  <5.932238, 15.675850, 12.136941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.496379, 16.100039, 11.720845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.870291, 16.220999, 11.646288>,  <6.094638, 16.293575, 11.601554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.870291, 16.220999, 11.646288>,  <5.496379, 16.100039, 11.720845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.870291, 16.220999, 11.646288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234463, 0.131044, -0.963252,
		-0.266861, 0.944130, 0.193399,
		0.934779, 0.302400, -0.186393,
		6.150725, 16.311718, 11.590370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.402577, 16.718395, 11.191729>,  <5.496379, 16.100039, 11.720845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.402577, 16.718395, 11.191729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.787271, 16.619043, 11.145475>,  <6.018088, 16.559433, 11.117723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.787271, 16.619043, 11.145475>,  <5.402577, 16.718395, 11.191729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.787271, 16.619043, 11.145475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021756, 0.351489, -0.935939,
		0.273112, 0.902643, 0.332636,
		0.961736, -0.248379, -0.115634,
		6.075792, 16.544529, 11.110785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.689788, 17.275934, 10.926991>,  <5.402577, 16.718395, 11.191729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.689788, 17.275934, 10.926991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.932242, 16.976309, 10.820030>,  <6.077714, 16.796534, 10.755854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.932242, 16.976309, 10.820030>,  <5.689788, 17.275934, 10.926991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.932242, 16.976309, 10.820030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009029, 0.329701, -0.944042,
		0.795311, 0.574630, 0.193079,
		0.606134, -0.749064, -0.267403,
		6.114082, 16.751589, 10.739809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.202678, 17.577597, 10.496239>,  <5.689788, 17.275934, 10.926991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.202678, 17.577597, 10.496239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.192404, 17.187284, 10.409345>,  <6.186240, 16.953096, 10.357208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.192404, 17.187284, 10.409345>,  <6.202678, 17.577597, 10.496239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.192404, 17.187284, 10.409345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102442, 0.218733, -0.970392,
		0.994407, -0.002670, -0.105579,
		-0.025684, -0.975781, -0.217236,
		6.184699, 16.894550, 10.344173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.656610, 17.465197, 9.953617>,  <6.202678, 17.577597, 10.496239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.656610, 17.465197, 9.953617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.465141, 17.115580, 9.920332>,  <6.350259, 16.905809, 9.900361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.465141, 17.115580, 9.920332>,  <6.656610, 17.465197, 9.953617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.465141, 17.115580, 9.920332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068836, 0.131845, -0.988877,
		0.875291, -0.467620, -0.123276,
		-0.478673, -0.874041, -0.083214,
		6.321539, 16.853367, 9.895368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.040875, 17.062603, 9.532235>,  <6.656610, 17.465197, 9.953617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.040875, 17.062603, 9.532235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.667408, 16.919897, 9.519708>,  <6.443327, 16.834274, 9.512191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.667408, 16.919897, 9.519708>,  <7.040875, 17.062603, 9.532235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.667408, 16.919897, 9.519708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054338, 0.227556, -0.972248,
		0.353992, -0.906055, -0.231848,
		-0.933669, -0.356766, -0.031319,
		6.387307, 16.812868, 9.510312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.960602, 16.653193, 8.963387>,  <7.040875, 17.062603, 9.532235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.960602, 16.653193, 8.963387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.577951, 16.736444, 9.044923>,  <6.348361, 16.786396, 9.093844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.577951, 16.736444, 9.044923>,  <6.960602, 16.653193, 8.963387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.577951, 16.736444, 9.044923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207007, 0.006682, -0.978317,
		-0.204979, -0.978078, 0.036692,
		-0.956625, 0.208130, 0.203839,
		6.290964, 16.798883, 9.106074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.641003, 16.281940, 8.438860>,  <6.960602, 16.653193, 8.963387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.641003, 16.281940, 8.438860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.356681, 16.532295, 8.567248>,  <6.186089, 16.682508, 8.644281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.356681, 16.532295, 8.567248>,  <6.641003, 16.281940, 8.438860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.356681, 16.532295, 8.567248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308015, 0.133278, -0.942000,
		-0.632365, -0.768440, 0.098049,
		-0.710803, 0.625889, 0.320972,
		6.143440, 16.720062, 8.663540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.905088, 15.985716, 8.292978>,  <6.641003, 16.281940, 8.438860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.905088, 15.985716, 8.292978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.868577, 16.378944, 8.356528>,  <5.846671, 16.614882, 8.394658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.868577, 16.378944, 8.356528>,  <5.905088, 15.985716, 8.292978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.868577, 16.378944, 8.356528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378006, 0.113396, -0.918832,
		-0.921293, -0.143924, 0.361256,
		-0.091277, 0.983070, 0.158875,
		5.841194, 16.673866, 8.404191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.109162, 16.177521, 8.168792>,  <5.905088, 15.985716, 8.292978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.109162, 16.177521, 8.168792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.328735, 16.506628, 8.109834>,  <5.460479, 16.704092, 8.074459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.328735, 16.506628, 8.109834>,  <5.109162, 16.177521, 8.168792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.328735, 16.506628, 8.109834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351932, 0.067554, -0.933585,
		-0.758167, 0.564348, 0.326641,
		0.548933, 0.822768, -0.147395,
		5.493415, 16.753458, 8.065616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.691017, 16.700542, 7.928858>,  <5.109162, 16.177521, 8.168792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.691017, 16.700542, 7.928858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.058506, 16.807390, 7.812517>,  <5.278999, 16.871500, 7.742713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.058506, 16.807390, 7.812517>,  <4.691017, 16.700542, 7.928858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.058506, 16.807390, 7.812517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331962, 0.123477, -0.935176,
		-0.213892, 0.955720, 0.202115,
		0.918723, 0.267121, -0.290851,
		5.334123, 16.887527, 7.725262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.518925, 17.124495, 7.306609>,  <4.691017, 16.700542, 7.928858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.518925, 17.124495, 7.306609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.918804, 17.124775, 7.316455>,  <5.158731, 17.124943, 7.322363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.918804, 17.124775, 7.316455>,  <4.518925, 17.124495, 7.306609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.918804, 17.124775, 7.316455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023403, 0.284113, -0.958505,
		-0.007667, 0.958790, 0.284010,
		0.999697, 0.000702, 0.024617,
		5.218713, 17.124985, 7.323841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.762381, 17.777021, 7.011389>,  <4.518925, 17.124495, 7.306609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.762381, 17.777021, 7.011389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.082542, 17.537912, 6.993379>,  <5.274638, 17.394447, 6.982573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.082542, 17.537912, 6.993379>,  <4.762381, 17.777021, 7.011389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.082542, 17.537912, 6.993379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179391, 0.310513, -0.933488,
		0.571993, 0.739089, 0.355770,
		0.800402, -0.597771, -0.045025,
		5.322662, 17.358582, 6.979872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.181212, 18.106947, 6.566573>,  <4.762381, 17.777021, 7.011389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.181212, 18.106947, 6.566573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.368166, 17.753773, 6.548777>,  <5.480339, 17.541868, 6.538099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.368166, 17.753773, 6.548777>,  <5.181212, 18.106947, 6.566573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.368166, 17.753773, 6.548777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139496, 0.123351, -0.982510,
		0.872979, 0.453005, 0.180818,
		0.467386, -0.882933, -0.044490,
		5.508382, 17.488894, 6.535429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.682088, 18.329344, 6.151757>,  <5.181212, 18.106947, 6.566573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.682088, 18.329344, 6.151757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.659168, 17.930298, 6.136371>,  <5.645416, 17.690870, 6.127140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.659168, 17.930298, 6.136371>,  <5.682088, 18.329344, 6.151757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.659168, 17.930298, 6.136371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193644, 0.026690, -0.980709,
		0.979397, -0.063643, 0.191653,
		-0.057300, -0.997616, -0.038464,
		5.641978, 17.631014, 6.124832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.038493, 17.813334, 6.642513>,  <5.682088, 18.329344, 6.151757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.038493, 17.813334, 6.642513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.293350, 18.090836, 6.508199>,  <6.446264, 18.257338, 6.427610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.293350, 18.090836, 6.508199>,  <6.038493, 17.813334, 6.642513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.293350, 18.090836, 6.508199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763550, -0.508747, 0.397703,
		0.105079, -0.509783, -0.853862,
		0.637142, 0.693756, -0.335786,
		6.484492, 18.298962, 6.407463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.562735, 17.307041, 6.506783>,  <6.038493, 17.813334, 6.642513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.562735, 17.307041, 6.506783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.668516, 17.689287, 6.558734>,  <6.731985, 17.918634, 6.589905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.668516, 17.689287, 6.558734>,  <6.562735, 17.307041, 6.506783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.668516, 17.689287, 6.558734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649329, -0.276007, 0.708655,
		0.713047, -0.103072, -0.693498,
		0.264453, 0.955613, 0.129879,
		6.747852, 17.975971, 6.597698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.370419, 17.413595, 6.596415>,  <6.562735, 17.307041, 6.506783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.370419, 17.413595, 6.596415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.173222, 17.722378, 6.756936>,  <7.054904, 17.907646, 6.853249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.173222, 17.722378, 6.756936>,  <7.370419, 17.413595, 6.596415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.173222, 17.722378, 6.756936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555712, -0.075513, 0.827938,
		0.669435, 0.631176, -0.391757,
		-0.492992, 0.771955, 0.401304,
		7.025324, 17.953964, 6.877327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.805670, 17.993214, 6.780798>,  <7.370419, 17.413595, 6.596415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.805670, 17.993214, 6.780798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.501950, 17.977278, 7.040606>,  <7.319717, 17.967716, 7.196490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.501950, 17.977278, 7.040606>,  <7.805670, 17.993214, 6.780798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.501950, 17.977278, 7.040606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648370, 0.038796, 0.760337,
		-0.055492, 0.998453, -0.003625,
		-0.759301, -0.039842, 0.649519,
		7.274159, 17.965324, 7.235461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.018919, 18.502951, 7.171095>,  <7.805670, 17.993214, 6.780798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.018919, 18.502951, 7.171095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.762893, 18.277124, 7.379550>,  <7.609278, 18.141628, 7.504622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.762893, 18.277124, 7.379550>,  <8.018919, 18.502951, 7.171095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.762893, 18.277124, 7.379550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629252, 0.004005, 0.777191,
		-0.440861, 0.825380, 0.352690,
		-0.640065, -0.564564, 0.521137,
		7.570874, 18.107756, 7.535891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.356796, 18.541225, 7.819862>,  <8.018919, 18.502951, 7.171095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.356796, 18.541225, 7.819862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.007919, 18.398193, 7.953377>,  <7.798593, 18.312374, 8.033485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.007919, 18.398193, 7.953377>,  <8.356796, 18.541225, 7.819862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.007919, 18.398193, 7.953377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298776, 0.150861, 0.942324,
		-0.387314, 0.921616, -0.024743,
		-0.872193, -0.357583, 0.333788,
		7.746262, 18.290918, 8.053514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.360084, 18.878372, 8.413566>,  <8.356796, 18.541225, 7.819862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.360084, 18.878372, 8.413566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.096002, 18.588026, 8.490768>,  <7.937552, 18.413818, 8.537090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.096002, 18.588026, 8.490768>,  <8.360084, 18.878372, 8.413566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.096002, 18.588026, 8.490768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209138, 0.069148, 0.975438,
		-0.721382, 0.684353, 0.106154,
		-0.660204, -0.725864, 0.193007,
		7.897941, 18.370266, 8.548671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.080632, 19.188700, 8.903164>,  <8.360084, 18.878372, 8.413566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.080632, 19.188700, 8.903164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.992179, 18.800873, 8.945186>,  <7.939107, 18.568176, 8.970399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.992179, 18.800873, 8.945186>,  <8.080632, 19.188700, 8.903164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.992179, 18.800873, 8.945186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279231, 0.040266, 0.959379,
		-0.934414, 0.241485, 0.261829,
		-0.221133, -0.969569, 0.105055,
		7.925839, 18.510002, 8.976702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.635167, 19.149071, 9.497518>,  <8.080632, 19.188700, 8.903164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.635167, 19.149071, 9.497518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.796864, 18.784100, 9.472015>,  <7.893881, 18.565117, 9.456714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.796864, 18.784100, 9.472015>,  <7.635167, 19.149071, 9.497518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.796864, 18.784100, 9.472015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230623, 0.034226, 0.972441,
		-0.885100, -0.407804, 0.224263,
		0.404241, -0.912428, -0.063756,
		7.918136, 18.510372, 9.452888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.445283, 18.741762, 10.159309>,  <7.635167, 19.149071, 9.497518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.445283, 18.741762, 10.159309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.747168, 18.533201, 10.000036>,  <7.928298, 18.408064, 9.904472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.747168, 18.533201, 10.000036>,  <7.445283, 18.741762, 10.159309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.747168, 18.533201, 10.000036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320516, -0.236535, 0.917235,
		-0.572435, -0.819871, -0.011397,
		0.754710, -0.521405, -0.398183,
		7.973581, 18.376780, 9.880582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.491713, 18.159403, 10.543546>,  <7.445283, 18.741762, 10.159309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.491713, 18.159403, 10.543546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.850834, 18.145550, 10.367933>,  <8.066307, 18.137238, 10.262566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.850834, 18.145550, 10.367933>,  <7.491713, 18.159403, 10.543546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.850834, 18.145550, 10.367933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415679, -0.262626, 0.870769,
		-0.145456, -0.964276, -0.221392,
		0.897805, -0.034630, -0.439030,
		8.120175, 18.135160, 10.236224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.842492, 17.588425, 10.777806>,  <7.491713, 18.159403, 10.543546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.842492, 17.588425, 10.777806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.151467, 17.807302, 10.648862>,  <8.336852, 17.938629, 10.571495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.151467, 17.807302, 10.648862>,  <7.842492, 17.588425, 10.777806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.151467, 17.807302, 10.648862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480704, -0.172030, 0.859843,
		0.415047, -0.819135, -0.395922,
		0.772438, 0.547196, -0.322361,
		8.383199, 17.971460, 10.552154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.387108, 17.176628, 10.964357>,  <7.842492, 17.588425, 10.777806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.387108, 17.176628, 10.964357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.547484, 17.541697, 10.932660>,  <8.643710, 17.760736, 10.913642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.547484, 17.541697, 10.932660>,  <8.387108, 17.176628, 10.964357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.547484, 17.541697, 10.932660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585834, -0.188933, 0.788101,
		0.704304, -0.362407, -0.610424,
		0.400942, 0.912669, -0.079244,
		8.667768, 17.815498, 10.908887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.082185, 17.105276, 11.018978>,  <8.387108, 17.176628, 10.964357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.082185, 17.105276, 11.018978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.020378, 17.490578, 11.106853>,  <8.983294, 17.721760, 11.159578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.020378, 17.490578, 11.106853>,  <9.082185, 17.105276, 11.018978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.020378, 17.490578, 11.106853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564660, -0.096366, 0.819678,
		0.810730, 0.250703, -0.529022,
		-0.154517, 0.963256, 0.219689,
		8.974023, 17.779554, 11.172760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.679802, 17.326006, 11.171890>,  <9.082185, 17.105276, 11.018978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.679802, 17.326006, 11.171890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.419653, 17.575113, 11.345868>,  <9.263563, 17.724577, 11.450255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.419653, 17.575113, 11.345868>,  <9.679802, 17.326006, 11.171890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.419653, 17.575113, 11.345868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521521, -0.050236, 0.851758,
		0.552297, 0.780793, -0.292114,
		-0.650372, 0.622767, 0.434945,
		9.224542, 17.761944, 11.476352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.161567, 17.547520, 11.659548>,  <9.679802, 17.326006, 11.171890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.161567, 17.547520, 11.659548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.799457, 17.666563, 11.780810>,  <9.582191, 17.737989, 11.853568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.799457, 17.666563, 11.780810>,  <10.161567, 17.547520, 11.659548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.799457, 17.666563, 11.780810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219503, -0.283291, 0.933576,
		0.363722, 0.911688, 0.191130,
		-0.905276, 0.297609, 0.303157,
		9.527874, 17.755846, 11.871758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.399065, 18.078291, 12.180305>,  <10.161567, 17.547520, 11.659548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.399065, 18.078291, 12.180305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.009391, 18.015631, 12.245328>,  <9.775586, 17.978035, 12.284342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.009391, 18.015631, 12.245328>,  <10.399065, 18.078291, 12.180305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.009391, 18.015631, 12.245328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181222, -0.113255, 0.976899,
		-0.134622, 0.981139, 0.138720,
		-0.974185, -0.156652, 0.162557,
		9.717135, 17.968636, 12.294095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.216413, 18.521542, 12.757165>,  <10.399065, 18.078291, 12.180305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.216413, 18.521542, 12.757165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.916186, 18.257259, 12.752766>,  <9.736051, 18.098690, 12.750126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.916186, 18.257259, 12.752766>,  <10.216413, 18.521542, 12.757165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.916186, 18.257259, 12.752766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153743, -0.190792, 0.969516,
		-0.642663, 0.725994, 0.244780,
		-0.750565, -0.660705, -0.010999,
		9.691017, 18.059048, 12.749466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.898582, 18.554153, 13.440479>,  <10.216413, 18.521542, 12.757165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.898582, 18.554153, 13.440479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.763963, 18.200136, 13.311834>,  <9.683191, 17.987726, 13.234647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.763963, 18.200136, 13.311834>,  <9.898582, 18.554153, 13.440479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.763963, 18.200136, 13.311834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005289, -0.343307, 0.939208,
		-0.941651, 0.314388, 0.120220,
		-0.336548, -0.885043, -0.321613,
		9.662998, 17.934624, 13.215350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.293983, 18.472195, 13.835493>,  <9.898582, 18.554153, 13.440479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.293983, 18.472195, 13.835493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.420334, 18.118759, 13.697223>,  <9.496144, 17.906698, 13.614261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.420334, 18.118759, 13.697223>,  <9.293983, 18.472195, 13.835493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.420334, 18.118759, 13.697223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103690, -0.394296, 0.913115,
		-0.943118, -0.252587, -0.216168,
		0.315876, -0.883590, -0.345676,
		9.515097, 17.853682, 13.593520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.853580, 17.949636, 14.119325>,  <9.293983, 18.472195, 13.835493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.853580, 17.949636, 14.119325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.199710, 17.773504, 14.023557>,  <9.407388, 17.667824, 13.966096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.199710, 17.773504, 14.023557>,  <8.853580, 17.949636, 14.119325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.199710, 17.773504, 14.023557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057673, -0.561985, 0.825135,
		-0.497882, -0.700201, -0.511694,
		0.865325, -0.440331, -0.239420,
		9.459307, 17.641405, 13.951731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.752532, 17.257811, 14.239951>,  <8.853580, 17.949636, 14.119325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.752532, 17.257811, 14.239951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.150434, 17.298315, 14.245691>,  <9.389176, 17.322617, 14.249136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.150434, 17.298315, 14.245691>,  <8.752532, 17.257811, 14.239951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.150434, 17.298315, 14.245691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050776, -0.610805, 0.790151,
		0.088776, -0.785280, -0.612744,
		0.994757, 0.101259, 0.014351,
		9.448861, 17.328693, 14.249996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.957927, 16.557053, 14.288498>,  <8.752532, 17.257811, 14.239951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.957927, 16.557053, 14.288498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.267338, 16.772526, 14.422049>,  <9.452985, 16.901810, 14.502179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.267338, 16.772526, 14.422049>,  <8.957927, 16.557053, 14.288498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.267338, 16.772526, 14.422049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021179, -0.548494, 0.835886,
		0.633409, -0.639510, -0.435684,
		0.773528, 0.538685, 0.333877,
		9.499396, 16.934132, 14.522212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.402256, 16.150890, 14.529986>,  <8.957927, 16.557053, 14.288498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.402256, 16.150890, 14.529986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.513210, 16.490391, 14.710065>,  <9.579783, 16.694092, 14.818112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.513210, 16.490391, 14.710065>,  <9.402256, 16.150890, 14.529986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.513210, 16.490391, 14.710065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015581, -0.472497, 0.881195,
		0.960632, -0.237417, -0.144289,
		0.277387, 0.848752, 0.450196,
		9.596426, 16.745016, 14.845124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.809192, 15.909738, 15.012940>,  <9.402256, 16.150890, 14.529986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.809192, 15.909738, 15.012940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.729119, 16.273766, 15.158102>,  <9.681076, 16.492182, 15.245199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.729119, 16.273766, 15.158102>,  <9.809192, 15.909738, 15.012940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.729119, 16.273766, 15.158102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099150, -0.387318, 0.916599,
		0.974729, 0.147503, 0.167766,
		-0.200180, 0.910070, 0.362905,
		9.669065, 16.546787, 15.266973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.305005, 16.061291, 15.531230>,  <9.809192, 15.909738, 15.012940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.305005, 16.061291, 15.531230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.980159, 16.283094, 15.603881>,  <9.785251, 16.416176, 15.647471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.980159, 16.283094, 15.603881>,  <10.305005, 16.061291, 15.531230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.980159, 16.283094, 15.603881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081602, -0.416146, 0.905629,
		0.577763, 0.720654, 0.383208,
		-0.812115, 0.554509, 0.181627,
		9.736525, 16.449448, 15.658369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.388131, 16.497082, 16.130383>,  <10.305005, 16.061291, 15.531230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.388131, 16.497082, 16.130383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.996818, 16.418644, 16.103535>,  <9.762030, 16.371580, 16.087425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.996818, 16.418644, 16.103535>,  <10.388131, 16.497082, 16.130383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.996818, 16.418644, 16.103535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007594, -0.289713, 0.957083,
		-0.207126, 0.936810, 0.281933,
		-0.978285, -0.196095, -0.067121,
		9.703332, 16.359816, 16.083399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.061453, 16.643995, 16.678965>,  <10.388131, 16.497082, 16.130383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.061453, 16.643995, 16.678965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.766273, 16.406134, 16.551329>,  <9.589166, 16.263416, 16.474747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.766273, 16.406134, 16.551329>,  <10.061453, 16.643995, 16.678965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.766273, 16.406134, 16.551329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158368, -0.307026, 0.938432,
		-0.656011, 0.743048, 0.132395,
		-0.737949, -0.594655, -0.319088,
		9.544888, 16.227737, 16.455603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.948171, 16.559971, 17.436728>,  <10.061453, 16.643995, 16.678965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.948171, 16.559971, 17.436728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.827946, 16.231472, 17.630724>,  <9.755811, 16.034372, 17.747122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.827946, 16.231472, 17.630724>,  <9.948171, 16.559971, 17.436728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.827946, 16.231472, 17.630724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952924, -0.237256, 0.188802,
		-0.039986, 0.518907, 0.853895,
		-0.300562, -0.821246, 0.484992,
		9.737777, 15.985098, 17.776222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.364311, 16.419807, 18.100979>,  <9.948171, 16.559971, 17.436728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.364311, 16.419807, 18.100979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.201362, 16.072445, 17.987898>,  <10.103592, 15.864028, 17.920050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.201362, 16.072445, 17.987898>,  <10.364311, 16.419807, 18.100979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.201362, 16.072445, 17.987898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846437, -0.475253, 0.240164,
		-0.342913, -0.141452, 0.928656,
		-0.407375, -0.868404, -0.282701,
		10.079149, 15.811924, 17.903088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.204034, 15.915367, 18.755800>,  <10.364311, 16.419807, 18.100979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.204034, 15.915367, 18.755800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.298224, 15.784515, 18.389732>,  <10.354739, 15.706004, 18.170092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.298224, 15.784515, 18.389732>,  <10.204034, 15.915367, 18.755800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.298224, 15.784515, 18.389732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834672, -0.414312, 0.362861,
		-0.497869, -0.849312, 0.175485,
		0.235477, -0.327130, -0.915170,
		10.368868, 15.686377, 18.115181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.369242, 15.185078, 18.829794>,  <10.204034, 15.915367, 18.755800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.369242, 15.185078, 18.829794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.541470, 15.327598, 18.498093>,  <10.644807, 15.413110, 18.299072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.541470, 15.327598, 18.498093>,  <10.369242, 15.185078, 18.829794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.541470, 15.327598, 18.498093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802017, -0.572461, 0.170463,
		-0.413978, -0.738470, -0.532244,
		0.430571, 0.356301, -0.829252,
		10.670641, 15.434488, 18.249317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.426115, 14.527230, 19.252182>,  <10.369242, 15.185078, 18.829794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.426115, 14.527230, 19.252182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.268511, 14.483683, 19.617237>,  <10.173948, 14.457554, 19.836269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.268511, 14.483683, 19.617237>,  <10.426115, 14.527230, 19.252182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.268511, 14.483683, 19.617237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666485, 0.717592, -0.202138,
		-0.632893, -0.687902, -0.355298,
		-0.394011, -0.108869, 0.912635,
		10.150308, 14.451022, 19.891027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.228535, 14.664198, 19.218523>,  <10.426115, 14.527230, 19.252182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.228535, 14.664198, 19.218523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.184648, 14.674196, 19.615982>,  <11.158315, 14.680195, 19.854458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.184648, 14.674196, 19.615982>,  <11.228535, 14.664198, 19.218523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.184648, 14.674196, 19.615982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641793, 0.765139, 0.051620,
		-0.758989, 0.643380, -0.099992,
		-0.109719, 0.024995, 0.993648,
		11.151731, 14.681695, 19.914076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.969602, 15.352427, 19.440102>,  <11.228535, 14.664198, 19.218523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.969602, 15.352427, 19.440102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.203754, 15.137961, 19.683365>,  <11.344246, 15.009282, 19.829323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.203754, 15.137961, 19.683365>,  <10.969602, 15.352427, 19.440102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.203754, 15.137961, 19.683365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603408, 0.789113, 0.114886,
		-0.541504, 0.299716, 0.785458,
		0.585382, -0.536163, 0.608159,
		11.379369, 14.977113, 19.865812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.193574, 15.770361, 19.952314>,  <10.969602, 15.352427, 19.440102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.193574, 15.770361, 19.952314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.461823, 15.474593, 19.976072>,  <11.622771, 15.297132, 19.990328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.461823, 15.474593, 19.976072>,  <11.193574, 15.770361, 19.952314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.461823, 15.474593, 19.976072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732482, 0.672721, 0.104482,
		-0.117213, -0.026560, 0.992752,
		0.670620, -0.739419, 0.059397,
		11.663009, 15.252768, 19.993891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.435480, 15.830700, 20.548780>,  <11.193574, 15.770361, 19.952314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.435480, 15.830700, 20.548780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.712404, 15.658057, 20.317465>,  <11.878559, 15.554472, 20.178675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.712404, 15.658057, 20.317465>,  <11.435480, 15.830700, 20.548780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.712404, 15.658057, 20.317465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652480, 0.716687, 0.246230,
		0.308179, -0.547791, 0.777786,
		0.692311, -0.431607, -0.578291,
		11.920097, 15.528575, 20.143978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.102797, 15.883881, 20.899380>,  <11.435480, 15.830700, 20.548780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.102797, 15.883881, 20.899380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.227356, 15.811997, 20.526127>,  <12.302092, 15.768867, 20.302176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.227356, 15.811997, 20.526127>,  <12.102797, 15.883881, 20.899380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.227356, 15.811997, 20.526127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839047, 0.512996, 0.181206,
		0.446129, -0.839369, 0.310529,
		0.311398, -0.179707, -0.933133,
		12.320775, 15.758085, 20.246187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.785444, 15.815553, 21.055368>,  <12.102797, 15.883881, 20.899380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.785444, 15.815553, 21.055368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.786365, 15.789909, 20.656193>,  <12.786917, 15.774523, 20.416687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.786365, 15.789909, 20.656193>,  <12.785444, 15.815553, 21.055368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.786365, 15.789909, 20.656193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930489, 0.365697, -0.021349,
		0.366313, -0.928523, 0.060494,
		0.002300, -0.064109, -0.997940,
		12.787054, 15.770677, 20.356812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.436852, 15.457065, 20.756369>,  <12.785444, 15.815553, 21.055368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.436852, 15.457065, 20.756369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.271937, 15.746028, 20.534327>,  <13.172988, 15.919406, 20.401100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.271937, 15.746028, 20.534327>,  <13.436852, 15.457065, 20.756369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.271937, 15.746028, 20.534327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839430, 0.538026, 0.076719,
		0.354084, -0.434342, -0.828233,
		-0.412289, 0.722409, -0.555106,
		13.148251, 15.962750, 20.367794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.996586, 15.785111, 20.378811>,  <13.436852, 15.457065, 20.756369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.996586, 15.785111, 20.378811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.721577, 16.075506, 20.385189>,  <13.556571, 16.249743, 20.389017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.721577, 16.075506, 20.385189>,  <13.996586, 15.785111, 20.378811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.721577, 16.075506, 20.385189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716221, 0.674327, 0.179755,
		0.119746, 0.135007, -0.983582,
		-0.687524, 0.725987, 0.015947,
		13.515320, 16.293303, 20.389973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.369404, 16.306368, 20.086010>,  <13.996586, 15.785111, 20.378811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.369404, 16.306368, 20.086010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.070548, 16.488737, 20.279470>,  <13.891234, 16.598160, 20.395546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.070548, 16.488737, 20.279470>,  <14.369404, 16.306368, 20.086010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.070548, 16.488737, 20.279470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650619, 0.650480, 0.391880,
		-0.135936, 0.607460, -0.782633,
		-0.747138, 0.455925, 0.483649,
		13.846407, 16.625515, 20.424564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.341612, 17.065042, 19.900959>,  <14.369404, 16.306368, 20.086010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.341612, 17.065042, 19.900959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.151670, 17.036577, 20.251833>,  <14.037705, 17.019499, 20.462357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.151670, 17.036577, 20.251833>,  <14.341612, 17.065042, 19.900959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.151670, 17.036577, 20.251833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631121, 0.667121, 0.395772,
		-0.613352, 0.741542, -0.271872,
		-0.474853, -0.071163, 0.877183,
		14.009214, 17.015228, 20.514988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.420620, 17.692974, 20.128832>,  <14.341612, 17.065042, 19.900959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.420620, 17.692974, 20.128832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.333974, 17.486961, 20.460571>,  <14.281986, 17.363354, 20.659615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.333974, 17.486961, 20.460571>,  <14.420620, 17.692974, 20.128832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.333974, 17.486961, 20.460571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609173, 0.592536, 0.527076,
		-0.762880, 0.619390, 0.185390,
		-0.216616, -0.515031, 0.829350,
		14.268990, 17.332453, 20.709375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.084116, 18.192947, 20.660295>,  <14.420620, 17.692974, 20.128832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.084116, 18.192947, 20.660295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.233511, 17.877508, 20.855690>,  <14.323148, 17.688244, 20.972927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.233511, 17.877508, 20.855690>,  <14.084116, 18.192947, 20.660295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.233511, 17.877508, 20.855690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476884, 0.614907, 0.628070,
		-0.795669, -0.001623, 0.605729,
		0.373487, -0.788598, 0.488488,
		14.345557, 17.640928, 21.002237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.005603, 18.352041, 21.399527>,  <14.084116, 18.192947, 20.660295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.005603, 18.352041, 21.399527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.269051, 18.051115, 21.393316>,  <14.427119, 17.870560, 21.389589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.269051, 18.051115, 21.393316>,  <14.005603, 18.352041, 21.399527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.269051, 18.051115, 21.393316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607037, 0.519014, 0.601773,
		-0.444665, -0.405764, 0.798516,
		0.658619, -0.752316, -0.015526,
		14.466637, 17.825420, 21.388659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.134789, 18.202528, 22.105997>,  <14.005603, 18.352041, 21.399527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.134789, 18.202528, 22.105997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.445886, 18.033609, 21.919758>,  <14.632544, 17.932259, 21.808014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.445886, 18.033609, 21.919758>,  <14.134789, 18.202528, 22.105997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.445886, 18.033609, 21.919758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626984, 0.468344, 0.622531,
		-0.044833, -0.776092, 0.629024,
		0.777741, -0.422298, -0.465600,
		14.679208, 17.906919, 21.780077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.444903, 17.841549, 22.601288>,  <14.134789, 18.202528, 22.105997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.444903, 17.841549, 22.601288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.728731, 17.909796, 22.327822>,  <14.899028, 17.950743, 22.163742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.728731, 17.909796, 22.327822>,  <14.444903, 17.841549, 22.601288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.728731, 17.909796, 22.327822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607578, 0.343251, 0.716259,
		0.356871, -0.923618, 0.139902,
		0.709572, 0.170611, -0.683667,
		14.941603, 17.960979, 22.122721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.017909, 17.664427, 22.823820>,  <14.444903, 17.841549, 22.601288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.017909, 17.664427, 22.823820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.141970, 17.928646, 22.550329>,  <15.216406, 18.087177, 22.386234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.141970, 17.928646, 22.550329>,  <15.017909, 17.664427, 22.823820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.141970, 17.928646, 22.550329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590179, 0.430050, 0.683188,
		0.745315, -0.615413, -0.256461,
		0.310152, 0.660548, -0.683727,
		15.235015, 18.126810, 22.345211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.647645, 17.726885, 23.056503>,  <15.017909, 17.664427, 22.823820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.647645, 17.726885, 23.056503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.609669, 18.026527, 22.794258>,  <15.586883, 18.206312, 22.636911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.609669, 18.026527, 22.794258>,  <15.647645, 17.726885, 23.056503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.609669, 18.026527, 22.794258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697416, 0.520002, 0.493162,
		0.710350, -0.410413, -0.571808,
		-0.094941, 0.749106, -0.655612,
		15.581186, 18.251259, 22.597574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.328959, 17.946074, 22.800713>,  <15.647645, 17.726885, 23.056503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.328959, 17.946074, 22.800713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.080736, 18.256618, 22.756573>,  <15.931804, 18.442945, 22.730089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.080736, 18.256618, 22.756573>,  <16.328959, 17.946074, 22.800713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.080736, 18.256618, 22.756573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737621, 0.625673, 0.253868,
		0.266137, 0.076141, -0.960923,
		-0.620554, 0.776361, -0.110351,
		15.894570, 18.489527, 22.723467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.747437, 18.485832, 22.662340>,  <16.328959, 17.946074, 22.800713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.747437, 18.485832, 22.662340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.408421, 18.671343, 22.765560>,  <16.205011, 18.782650, 22.827492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.408421, 18.671343, 22.765560>,  <16.747437, 18.485832, 22.662340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.408421, 18.671343, 22.765560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530318, 0.759260, 0.377209,
		-0.020987, 0.456549, -0.889451,
		-0.847539, 0.463776, 0.258051,
		16.154160, 18.810476, 22.842976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.865110, 19.193377, 22.479820>,  <16.747437, 18.485832, 22.662340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.865110, 19.193377, 22.479820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.567652, 19.173466, 22.746508>,  <16.389177, 19.161520, 22.906521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.567652, 19.173466, 22.746508>,  <16.865110, 19.193377, 22.479820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.567652, 19.173466, 22.746508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405279, 0.759555, 0.508748,
		-0.531735, 0.648535, -0.544665,
		-0.743645, -0.049778, 0.666720,
		16.344559, 19.158533, 22.946524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.796921, 19.892324, 22.690914>,  <16.865110, 19.193377, 22.479820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.796921, 19.892324, 22.690914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.611921, 19.698206, 22.987719>,  <16.500921, 19.581734, 23.165802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.611921, 19.698206, 22.987719>,  <16.796921, 19.892324, 22.690914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.611921, 19.698206, 22.987719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186554, 0.764898, 0.616546,
		-0.866771, 0.423577, -0.263230,
		-0.462499, -0.485298, 0.742011,
		16.473171, 19.552616, 23.210321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.260880, 20.324656, 22.924526>,  <16.796921, 19.892324, 22.690914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.260880, 20.324656, 22.924526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.323133, 20.073954, 23.229933>,  <16.360487, 19.923532, 23.413177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.323133, 20.073954, 23.229933>,  <16.260880, 20.324656, 22.924526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.323133, 20.073954, 23.229933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202793, 0.736199, 0.645667,
		-0.966774, -0.255326, -0.012521,
		0.155637, -0.626754, 0.763516,
		16.369825, 19.885927, 23.458988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.133337, 20.720591, 23.501329>,  <16.260880, 20.324656, 22.924526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.133337, 20.720591, 23.501329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.261145, 20.397449, 23.699434>,  <16.337830, 20.203566, 23.818298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.261145, 20.397449, 23.699434>,  <16.133337, 20.720591, 23.501329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.261145, 20.397449, 23.699434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066929, 0.540596, 0.838616,
		-0.945213, -0.234806, 0.226798,
		0.319518, -0.807850, 0.495263,
		16.357000, 20.155094, 23.848013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.751777, 20.697401, 24.117218>,  <16.133337, 20.720591, 23.501329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.751777, 20.697401, 24.117218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.090561, 20.503155, 24.203781>,  <16.293831, 20.386606, 24.255718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.090561, 20.503155, 24.203781>,  <15.751777, 20.697401, 24.117218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.090561, 20.503155, 24.203781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220755, 0.691523, 0.687796,
		-0.483657, -0.534763, 0.692896,
		0.846961, -0.485617, 0.216408,
		16.344650, 20.357470, 24.268703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.704881, 20.546225, 24.810272>,  <15.751777, 20.697401, 24.117218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.704881, 20.546225, 24.810272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.074682, 20.573637, 24.660288>,  <16.296564, 20.590084, 24.570297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.074682, 20.573637, 24.660288>,  <15.704881, 20.546225, 24.810272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.074682, 20.573637, 24.660288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264392, 0.593300, 0.760324,
		0.274570, -0.802059, 0.530389,
		0.924504, 0.068531, -0.374961,
		16.352034, 20.594196, 24.547800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.109600, 20.720421, 25.379999>,  <15.704881, 20.546225, 24.810272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.109600, 20.720421, 25.379999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.382408, 20.777046, 25.093000>,  <16.546093, 20.811022, 24.920801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.382408, 20.777046, 25.093000>,  <16.109600, 20.720421, 25.379999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.382408, 20.777046, 25.093000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533263, 0.575126, 0.620371,
		0.500474, -0.805723, 0.316759,
		0.682024, 0.141564, -0.717498,
		16.587015, 20.819515, 24.877750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.722292, 20.693007, 25.661543>,  <16.109600, 20.720421, 25.379999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.722292, 20.693007, 25.661543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.803661, 20.888975, 25.322462>,  <16.852482, 21.006556, 25.119015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.803661, 20.888975, 25.322462>,  <16.722292, 20.693007, 25.661543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.803661, 20.888975, 25.322462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624814, 0.601630, 0.497643,
		0.753808, -0.630887, -0.183726,
		0.203421, 0.489922, -0.847701,
		16.864687, 21.035952, 25.068151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.421459, 20.790760, 25.749863>,  <16.722292, 20.693007, 25.661543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.421459, 20.790760, 25.749863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.278875, 21.045776, 25.476667>,  <17.193325, 21.198786, 25.312750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.278875, 21.045776, 25.476667>,  <17.421459, 20.790760, 25.749863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.278875, 21.045776, 25.476667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403214, 0.764403, 0.503097,
		0.842825, -0.096056, -0.529546,
		-0.356461, 0.637543, -0.682989,
		17.171936, 21.237040, 25.271770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.977133, 21.154585, 25.595352>,  <17.421459, 20.790760, 25.749863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.977133, 21.154585, 25.595352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.653717, 21.366756, 25.493443>,  <17.459667, 21.494059, 25.432297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.653717, 21.366756, 25.493443>,  <17.977133, 21.154585, 25.595352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.653717, 21.366756, 25.493443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324979, 0.763456, 0.558143,
		0.490564, 0.368485, -0.789662,
		-0.808539, 0.530429, -0.254774,
		17.411156, 21.525885, 25.417011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.255293, 21.845592, 25.337101>,  <17.977133, 21.154585, 25.595352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.255293, 21.845592, 25.337101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.869226, 21.901249, 25.425728>,  <17.637587, 21.934643, 25.478903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.869226, 21.901249, 25.425728>,  <18.255293, 21.845592, 25.337101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.869226, 21.901249, 25.425728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215480, 0.903058, 0.371557,
		-0.148388, 0.406358, -0.901584,
		-0.965168, 0.139139, 0.221565,
		17.579676, 21.942991, 25.492197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.044115, 22.434502, 24.948425>,  <18.255293, 21.845592, 25.337101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.044115, 22.434502, 24.948425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.786539, 22.407623, 25.253273>,  <17.631994, 22.391497, 25.436182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.786539, 22.407623, 25.253273>,  <18.044115, 22.434502, 24.948425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.786539, 22.407623, 25.253273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274643, 0.909438, 0.312239,
		-0.714084, 0.410373, -0.567167,
		-0.643938, -0.067196, 0.762121,
		17.593357, 22.387465, 25.481909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.714739, 23.008545, 24.970333>,  <18.044115, 22.434502, 24.948425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.714739, 23.008545, 24.970333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.644325, 22.880947, 25.342840>,  <17.602077, 22.804388, 25.566343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.644325, 22.880947, 25.342840>,  <17.714739, 23.008545, 24.970333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.644325, 22.880947, 25.342840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195991, 0.915741, 0.350722,
		-0.964676, 0.244259, -0.098682,
		-0.176034, -0.318993, 0.931266,
		17.591515, 22.785250, 25.622219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.312180, 23.551954, 25.269588>,  <17.714739, 23.008545, 24.970333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.312180, 23.551954, 25.269588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.444218, 23.352991, 25.590492>,  <17.523441, 23.233614, 25.783035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.444218, 23.352991, 25.590492>,  <17.312180, 23.551954, 25.269588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.444218, 23.352991, 25.590492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171901, 0.867364, 0.467044,
		-0.928163, -0.016261, 0.371819,
		0.330097, -0.497409, 0.802260,
		17.543247, 23.203768, 25.831171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.047794, 23.886635, 25.825560>,  <17.312180, 23.551954, 25.269588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.047794, 23.886635, 25.825560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.356148, 23.691843, 25.989799>,  <17.541159, 23.574968, 26.088343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.356148, 23.691843, 25.989799>,  <17.047794, 23.886635, 25.825560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.356148, 23.691843, 25.989799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126575, 0.748862, 0.650526,
		-0.624275, -0.449507, 0.638924,
		0.770882, -0.486980, 0.410599,
		17.587412, 23.545750, 26.112980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.170858, 24.059198, 26.532370>,  <17.047794, 23.886635, 25.825560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.170858, 24.059198, 26.532370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.519190, 23.863176, 26.516844>,  <17.728188, 23.745564, 26.507528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.519190, 23.863176, 26.516844>,  <17.170858, 24.059198, 26.532370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.519190, 23.863176, 26.516844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356932, 0.576017, 0.735394,
		-0.338026, -0.654255, 0.676528,
		0.870826, -0.490056, -0.038816,
		17.780437, 23.716160, 26.505199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.391558, 24.011793, 27.203007>,  <17.170858, 24.059198, 26.532370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.391558, 24.011793, 27.203007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.733347, 23.962690, 27.001095>,  <17.938421, 23.933229, 26.879948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.733347, 23.962690, 27.001095>,  <17.391558, 24.011793, 27.203007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.733347, 23.962690, 27.001095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481011, 0.553966, 0.679522,
		0.196217, -0.823440, 0.532397,
		0.854475, -0.122755, -0.504781,
		17.989689, 23.925863, 26.849661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.873131, 23.759735, 27.643360>,  <17.391558, 24.011793, 27.203007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.873131, 23.759735, 27.643360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.085804, 23.912725, 27.341095>,  <18.213408, 24.004520, 27.159737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.085804, 23.912725, 27.341095>,  <17.873131, 23.759735, 27.643360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.085804, 23.912725, 27.341095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554545, 0.517163, 0.651937,
		0.640152, -0.765672, 0.062865,
		0.531682, 0.382477, -0.755663,
		18.245308, 24.027468, 27.114397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.675434, 23.561954, 27.712458>,  <17.873131, 23.759735, 27.643360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.675434, 23.561954, 27.712458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.661203, 23.893425, 27.489019>,  <18.652664, 24.092308, 27.354956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.661203, 23.893425, 27.489019>,  <18.675434, 23.561954, 27.712458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.661203, 23.893425, 27.489019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677586, 0.430858, 0.596019,
		0.734582, -0.357293, -0.576828,
		-0.035577, 0.828676, -0.558597,
		18.650530, 24.142027, 27.321440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.365646, 23.729918, 27.627220>,  <18.675434, 23.561954, 27.712458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.365646, 23.729918, 27.627220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.160849, 24.062080, 27.539322>,  <19.037970, 24.261377, 27.486584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.160849, 24.062080, 27.539322>,  <19.365646, 23.729918, 27.627220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.160849, 24.062080, 27.539322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668618, 0.545867, 0.504954,
		0.539268, 0.111608, -0.834705,
		-0.511995, 0.830405, -0.219746,
		19.007250, 24.311201, 27.473398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.847689, 24.121309, 27.505737>,  <19.365646, 23.729918, 27.627220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.847689, 24.121309, 27.505737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.547375, 24.377438, 27.570618>,  <19.367186, 24.531115, 27.609547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.547375, 24.377438, 27.570618>,  <19.847689, 24.121309, 27.505737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.547375, 24.377438, 27.570618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549392, 0.469000, 0.691525,
		0.366724, 0.608301, -0.703906,
		-0.750787, 0.640319, 0.162203,
		19.322138, 24.569534, 27.619278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.222105, 24.783680, 27.470282>,  <19.847689, 24.121309, 27.505737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.222105, 24.783680, 27.470282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.870699, 24.867184, 27.642155>,  <19.659855, 24.917286, 27.745279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.870699, 24.867184, 27.642155>,  <20.222105, 24.783680, 27.470282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.870699, 24.867184, 27.642155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477045, 0.430892, 0.766002,
		-0.025238, 0.877925, -0.478133,
		-0.878516, 0.208759, 0.429685,
		19.607143, 24.929811, 27.771061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.092869, 25.551212, 27.638231>,  <20.222105, 24.783680, 27.470282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.092869, 25.551212, 27.638231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.837547, 25.366377, 27.884497>,  <19.684353, 25.255476, 28.032255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.837547, 25.366377, 27.884497>,  <20.092869, 25.551212, 27.638231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.837547, 25.366377, 27.884497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376800, 0.509867, 0.773342,
		-0.671258, 0.725610, -0.151336,
		-0.638306, -0.462088, 0.615662,
		19.646055, 25.227751, 28.069195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.859158, 26.104319, 28.146584>,  <20.092869, 25.551212, 27.638231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.859158, 26.104319, 28.146584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.818396, 25.733250, 28.290272>,  <19.793938, 25.510609, 28.376486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.818396, 25.733250, 28.290272>,  <19.859158, 26.104319, 28.146584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.818396, 25.733250, 28.290272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367744, 0.300394, 0.880073,
		-0.924327, 0.221786, 0.310533,
		-0.101906, -0.927672, 0.359222,
		19.787825, 25.454948, 28.398039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.662268, 26.240191, 28.886452>,  <19.859158, 26.104319, 28.146584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.662268, 26.240191, 28.886452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.860634, 25.907253, 28.787443>,  <19.979654, 25.707491, 28.728037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.860634, 25.907253, 28.787443>,  <19.662268, 26.240191, 28.886452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.860634, 25.907253, 28.787443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724534, 0.239487, 0.646294,
		-0.478661, -0.499848, 0.721828,
		0.495917, -0.832345, -0.247524,
		20.009409, 25.657549, 28.713186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.942081, 25.808807, 29.470083>,  <19.662268, 26.240191, 28.886452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.942081, 25.808807, 29.470083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.165556, 25.787840, 29.138996>,  <20.299641, 25.775259, 28.940344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.165556, 25.787840, 29.138996>,  <19.942081, 25.808807, 29.470083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.165556, 25.787840, 29.138996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790078, 0.337208, 0.511926,
		0.252280, -0.939970, 0.229807,
		0.558688, -0.052417, -0.827720,
		20.333162, 25.772116, 28.890680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.541409, 25.411095, 29.663206>,  <19.942081, 25.808807, 29.470083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.541409, 25.411095, 29.663206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.569719, 25.688482, 29.376406>,  <20.586706, 25.854916, 29.204325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.569719, 25.688482, 29.376406>,  <20.541409, 25.411095, 29.663206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.569719, 25.688482, 29.376406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695760, 0.480757, 0.533657,
		0.714778, -0.536632, -0.448462,
		0.070776, 0.693469, -0.717002,
		20.590952, 25.896523, 29.161304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.401043, 24.677206, 29.501751>,  <20.541409, 25.411095, 29.663206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.401043, 24.677206, 29.501751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.732643, 24.465551, 29.429338>,  <20.931602, 24.338558, 29.385891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.732643, 24.465551, 29.429338>,  <20.401043, 24.677206, 29.501751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.732643, 24.465551, 29.429338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507352, 0.847761, -0.154584,
		0.235268, 0.036304, 0.971252,
		0.829001, -0.529135, -0.181033,
		20.981344, 24.306810, 29.375029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.126949, 24.896387, 29.866819>,  <20.401043, 24.677206, 29.501751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.126949, 24.896387, 29.866819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.170668, 24.721395, 29.509794>,  <21.196899, 24.616400, 29.295580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.170668, 24.721395, 29.509794>,  <21.126949, 24.896387, 29.866819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.170668, 24.721395, 29.509794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719337, 0.654519, -0.232722,
		0.686010, -0.616617, 0.386231,
		0.109296, -0.437480, -0.892561,
		21.203457, 24.590151, 29.242025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.427803, 25.498865, 29.497292>,  <21.126949, 24.896387, 29.866819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.427803, 25.498865, 29.497292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.620293, 25.610207, 29.164799>,  <21.735786, 25.677011, 28.965303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.620293, 25.610207, 29.164799>,  <21.427803, 25.498865, 29.497292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.620293, 25.610207, 29.164799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039031, -0.954109, -0.296904,
		-0.875729, 0.110432, -0.470003,
		0.481222, 0.278352, -0.831231,
		21.764660, 25.693712, 28.915430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.016891, 25.327854, 28.776783>,  <21.427803, 25.498865, 29.497292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.016891, 25.327854, 28.776783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.408062, 25.304703, 28.857088>,  <21.642765, 25.290812, 28.905272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.408062, 25.304703, 28.857088>,  <21.016891, 25.327854, 28.776783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.408062, 25.304703, 28.857088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075602, -0.993781, 0.081757,
		0.194785, -0.095130, -0.976222,
		0.977928, -0.057879, 0.200765,
		21.701441, 25.287338, 28.917318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.371147, 24.645180, 28.396139>,  <21.016891, 25.327854, 28.776783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.371147, 24.645180, 28.396139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.537766, 24.736938, 28.748018>,  <21.637737, 24.791994, 28.959145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.537766, 24.736938, 28.748018>,  <21.371147, 24.645180, 28.396139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.537766, 24.736938, 28.748018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063891, -0.957862, 0.280032,
		0.906866, -0.172851, -0.384339,
		0.416547, 0.229396, 0.879697,
		21.662729, 24.805758, 29.011927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.794231, 24.113226, 28.566586>,  <21.371147, 24.645180, 28.396139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.794231, 24.113226, 28.566586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.704168, 24.280443, 28.918619>,  <21.650131, 24.380774, 29.129839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.704168, 24.280443, 28.918619>,  <21.794231, 24.113226, 28.566586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.704168, 24.280443, 28.918619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188513, -0.904898, 0.381604,
		0.955912, -0.079987, 0.282550,
		-0.225156, 0.418044, 0.880082,
		21.636621, 24.405857, 29.182644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.029884, 23.851929, 29.170315>,  <21.794231, 24.113226, 28.566586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.029884, 23.851929, 29.170315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.697626, 24.001541, 29.335299>,  <21.498270, 24.091309, 29.434290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.697626, 24.001541, 29.335299>,  <22.029884, 23.851929, 29.170315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.697626, 24.001541, 29.335299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306813, -0.925635, 0.221507,
		0.464639, 0.057445, 0.883635,
		-0.830648, 0.374031, 0.412462,
		21.448431, 24.113750, 29.459038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.022696, 23.556597, 29.743927>,  <22.029884, 23.851929, 29.170315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.022696, 23.556597, 29.743927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.650732, 23.658125, 29.637461>,  <21.427553, 23.719042, 29.573582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.650732, 23.658125, 29.637461>,  <22.022696, 23.556597, 29.743927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.650732, 23.658125, 29.637461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304707, -0.936959, 0.171057,
		-0.205967, 0.240170, 0.948628,
		-0.929909, 0.253822, -0.266164,
		21.371759, 23.734272, 29.557611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.507399, 23.269268, 30.235039>,  <22.022696, 23.556597, 29.743927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.507399, 23.269268, 30.235039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.333408, 23.311115, 29.877302>,  <21.229013, 23.336224, 29.662661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.333408, 23.311115, 29.877302>,  <21.507399, 23.269268, 30.235039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.333408, 23.311115, 29.877302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444757, -0.888574, 0.112373,
		-0.782934, 0.446645, 0.433038,
		-0.434977, 0.104616, -0.894344,
		21.202915, 23.342501, 29.608999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.879396, 22.912409, 30.316505>,  <21.507399, 23.269268, 30.235039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.879396, 22.912409, 30.316505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.933304, 22.952921, 29.922230>,  <20.965649, 22.977228, 29.685665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.933304, 22.952921, 29.922230>,  <20.879396, 22.912409, 30.316505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.933304, 22.952921, 29.922230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489919, -0.857854, -0.155129,
		-0.861288, 0.503814, -0.065995,
		0.134770, 0.101278, -0.985687,
		20.973734, 22.983305, 29.626524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.289379, 22.688553, 30.039614>,  <20.879396, 22.912409, 30.316505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.289379, 22.688553, 30.039614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.546015, 22.639961, 29.736666>,  <20.699997, 22.610806, 29.554897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.546015, 22.639961, 29.736666>,  <20.289379, 22.688553, 30.039614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.546015, 22.639961, 29.736666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242270, -0.968929, -0.049819,
		-0.727784, 0.215451, -0.651085,
		0.641589, -0.121481, -0.757368,
		20.738491, 22.603518, 29.509455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.005083, 22.214905, 29.592430>,  <20.289379, 22.688553, 30.039614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.005083, 22.214905, 29.592430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.363966, 22.214445, 29.415787>,  <20.579296, 22.214169, 29.309801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.363966, 22.214445, 29.415787>,  <20.005083, 22.214905, 29.592430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.363966, 22.214445, 29.415787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180510, -0.913597, -0.364359,
		-0.403035, 0.406620, -0.819892,
		0.897206, -0.001149, -0.441610,
		20.633127, 22.214100, 29.283304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.840666, 22.038059, 29.000122>,  <20.005083, 22.214905, 29.592430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.840666, 22.038059, 29.000122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.231207, 21.958410, 29.033789>,  <20.465532, 21.910620, 29.053988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.231207, 21.958410, 29.033789>,  <19.840666, 22.038059, 29.000122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.231207, 21.958410, 29.033789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157218, -0.921256, -0.355767,
		0.148379, 0.334122, -0.930777,
		0.976353, -0.199124, 0.084165,
		20.524113, 21.898674, 29.059038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.133551, 21.947693, 28.301971>,  <19.840666, 22.038059, 29.000122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.133551, 21.947693, 28.301971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.372738, 21.744246, 28.549761>,  <20.516251, 21.622177, 28.698435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.372738, 21.744246, 28.549761>,  <20.133551, 21.947693, 28.301971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.372738, 21.744246, 28.549761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127595, -0.823419, -0.552901,
		0.791300, 0.251575, -0.557274,
		0.597967, -0.508616, 0.619472,
		20.552128, 21.591661, 28.735603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.672297, 21.677734, 27.883745>,  <20.133551, 21.947693, 28.301971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.672297, 21.677734, 27.883745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.677422, 21.475410, 28.228765>,  <20.680496, 21.354017, 28.435778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.677422, 21.475410, 28.228765>,  <20.672297, 21.677734, 27.883745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.677422, 21.475410, 28.228765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008241, -0.862646, -0.505741,
		0.999884, -0.000628, -0.015222,
		0.012814, -0.505808, 0.862551,
		20.681265, 21.323668, 28.487532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.023037, 21.001345, 27.644459>,  <20.672297, 21.677734, 27.883745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.023037, 21.001345, 27.644459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.840422, 20.938093, 27.994675>,  <20.730852, 20.900143, 28.204803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.840422, 20.938093, 27.994675>,  <21.023037, 21.001345, 27.644459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.840422, 20.938093, 27.994675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392014, -0.847653, -0.357504,
		0.798685, -0.506438, 0.324997,
		-0.456538, -0.158130, 0.875539,
		20.703461, 20.890654, 28.257336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.320704, 20.355595, 27.901875>,  <21.023037, 21.001345, 27.644459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.320704, 20.355595, 27.901875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.969530, 20.429636, 28.078495>,  <20.758825, 20.474060, 28.184467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.969530, 20.429636, 28.078495>,  <21.320704, 20.355595, 27.901875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.969530, 20.429636, 28.078495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388132, -0.815138, -0.430004,
		0.280330, -0.548896, 0.787482,
		-0.877934, 0.185104, 0.441552,
		20.706150, 20.485167, 28.210960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.099073, 19.728468, 27.946114>,  <21.320704, 20.355595, 27.901875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.099073, 19.728468, 27.946114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.761917, 19.930182, 28.021196>,  <20.559624, 20.051208, 28.066246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.761917, 19.930182, 28.021196>,  <21.099073, 19.728468, 27.946114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.761917, 19.930182, 28.021196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536097, -0.816979, -0.212474,
		0.046205, -0.279721, 0.958969,
		-0.842891, 0.504283, 0.187706,
		20.509050, 20.081467, 28.077509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.708832, 19.407236, 28.527536>,  <21.099073, 19.728468, 27.946114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.708832, 19.407236, 28.527536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.486156, 19.606030, 28.261271>,  <20.352552, 19.725306, 28.101511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.486156, 19.606030, 28.261271>,  <20.708832, 19.407236, 28.527536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.486156, 19.606030, 28.261271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516652, -0.834609, -0.191046,
		-0.650515, 0.237563, 0.721384,
		-0.556688, 0.496983, -0.665663,
		20.319151, 19.755125, 28.061571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.106232, 19.023449, 28.541618>,  <20.708832, 19.407236, 28.527536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.106232, 19.023449, 28.541618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.020226, 19.232325, 28.211506>,  <19.968622, 19.357651, 28.013439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.020226, 19.232325, 28.211506>,  <20.106232, 19.023449, 28.541618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.020226, 19.232325, 28.211506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521881, -0.775706, -0.354852,
		-0.825475, 0.354399, 0.439310,
		-0.215016, 0.522189, -0.825280,
		19.955721, 19.388981, 27.963923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.398201, 18.841066, 28.300999>,  <20.106232, 19.023449, 28.541618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.398201, 18.841066, 28.300999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.527449, 19.036882, 27.977037>,  <19.604998, 19.154373, 27.782660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.527449, 19.036882, 27.977037>,  <19.398201, 18.841066, 28.300999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.527449, 19.036882, 27.977037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480678, -0.652300, -0.586049,
		-0.815196, 0.578666, 0.024543,
		0.323117, 0.489542, -0.809904,
		19.624384, 19.183744, 27.734066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.915606, 19.101099, 27.953220>,  <19.398201, 18.841066, 28.300999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.915606, 19.101099, 27.953220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.180681, 19.042088, 27.659534>,  <19.339727, 19.006680, 27.483322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.180681, 19.042088, 27.659534>,  <18.915606, 19.101099, 27.953220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.180681, 19.042088, 27.659534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639406, -0.621859, -0.452163,
		-0.389872, 0.769108, -0.506432,
		0.662692, -0.147530, -0.734217,
		19.379488, 18.997829, 27.439270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.548834, 19.140835, 27.328270>,  <18.915606, 19.101099, 27.953220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.548834, 19.140835, 27.328270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.867378, 18.911472, 27.251312>,  <19.058504, 18.773855, 27.205137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.867378, 18.911472, 27.251312>,  <18.548834, 19.140835, 27.328270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.867378, 18.911472, 27.251312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547472, -0.548206, -0.632253,
		0.257066, 0.608832, -0.750494,
		0.796361, -0.573405, -0.192394,
		19.106287, 18.739450, 27.193594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.566885, 19.134081, 26.568642>,  <18.548834, 19.140835, 27.328270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.566885, 19.134081, 26.568642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800064, 18.835146, 26.696178>,  <18.939972, 18.655785, 26.772701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800064, 18.835146, 26.696178>,  <18.566885, 19.134081, 26.568642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.800064, 18.835146, 26.696178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414079, -0.610892, -0.674796,
		0.699078, 0.261345, -0.665574,
		0.582948, -0.747335, 0.318844,
		18.974949, 18.610945, 26.791832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.803194, 18.781885, 25.956621>,  <18.566885, 19.134081, 26.568642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.803194, 18.781885, 25.956621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.868326, 18.537542, 26.266548>,  <18.907406, 18.390936, 26.452503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.868326, 18.537542, 26.266548>,  <18.803194, 18.781885, 25.956621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.868326, 18.537542, 26.266548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279205, -0.781726, -0.557628,
		0.946325, -0.125533, -0.297844,
		0.162831, -0.610857, 0.774816,
		18.917175, 18.354286, 26.498993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.175743, 18.142471, 25.643560>,  <18.803194, 18.781885, 25.956621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.175743, 18.142471, 25.643560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.982540, 18.043945, 25.979664>,  <18.866619, 17.984831, 26.181326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.982540, 18.043945, 25.979664>,  <19.175743, 18.142471, 25.643560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.982540, 18.043945, 25.979664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321096, -0.842943, -0.431676,
		0.814618, -0.478306, 0.328056,
		-0.483006, -0.246313, 0.840259,
		18.837639, 17.970051, 26.231741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.315926, 17.397686, 25.855556>,  <19.175743, 18.142471, 25.643560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.315926, 17.397686, 25.855556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.965601, 17.472389, 26.033577>,  <18.755405, 17.517212, 26.140390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.965601, 17.472389, 26.033577>,  <19.315926, 17.397686, 25.855556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.965601, 17.472389, 26.033577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365008, -0.859595, -0.357582,
		0.315783, -0.475623, 0.821014,
		-0.875814, 0.186758, 0.445052,
		18.702856, 17.528416, 26.167093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.006613, 16.792894, 26.080193>,  <19.315926, 17.397686, 25.855556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.006613, 16.792894, 26.080193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.699341, 17.041105, 26.143242>,  <18.514977, 17.190031, 26.181072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.699341, 17.041105, 26.143242>,  <19.006613, 16.792894, 26.080193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.699341, 17.041105, 26.143242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634645, -0.705586, -0.315237,
		-0.084396, -0.342194, 0.935831,
		-0.768182, 0.620525, 0.157624,
		18.468885, 17.227262, 26.190529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.460901, 16.441360, 26.384199>,  <19.006613, 16.792894, 26.080193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.460901, 16.441360, 26.384199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.282717, 16.758648, 26.218130>,  <18.175806, 16.949020, 26.118488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.282717, 16.758648, 26.218130>,  <18.460901, 16.441360, 26.384199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.282717, 16.758648, 26.218130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681048, -0.601228, -0.417969,
		-0.581152, 0.096560, 0.808046,
		-0.445461, 0.793221, -0.415167,
		18.149078, 16.996614, 26.093578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.713326, 16.336700, 26.517391>,  <18.460901, 16.441360, 26.384199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.713326, 16.336700, 26.517391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.728317, 16.589399, 26.207684>,  <17.737312, 16.741018, 26.021860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.728317, 16.589399, 26.207684>,  <17.713326, 16.336700, 26.517391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.728317, 16.589399, 26.207684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863429, -0.369591, -0.343355,
		-0.503076, 0.681394, 0.531618,
		0.037479, 0.631748, -0.774267,
		17.739561, 16.778923, 25.975403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.939142, 16.584612, 26.440235>,  <17.713326, 16.336700, 26.517391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.939142, 16.584612, 26.440235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.148323, 16.677738, 26.112255>,  <17.273832, 16.733614, 25.915466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.148323, 16.677738, 26.112255>,  <16.939142, 16.584612, 26.440235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.148323, 16.677738, 26.112255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722211, -0.389881, -0.571318,
		-0.452695, 0.890949, -0.035746,
		0.522952, 0.232817, -0.819950,
		17.305208, 16.747583, 25.866270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.530184, 17.007288, 25.984665>,  <16.939142, 16.584612, 26.440235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.530184, 17.007288, 25.984665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.783611, 16.824978, 25.734589>,  <16.935667, 16.715591, 25.584543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.783611, 16.824978, 25.734589>,  <16.530184, 17.007288, 25.984665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.783611, 16.824978, 25.734589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773167, -0.402597, -0.490029,
		-0.028357, 0.793843, -0.607461,
		0.633568, -0.455773, -0.625190,
		16.973682, 16.688246, 25.547031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.166519, 17.047455, 25.295725>,  <16.530184, 17.007288, 25.984665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.166519, 17.047455, 25.295725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.449409, 16.767960, 25.252640>,  <16.619143, 16.600264, 25.226789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.449409, 16.767960, 25.252640>,  <16.166519, 17.047455, 25.295725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.449409, 16.767960, 25.252640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549410, -0.447294, -0.705745,
		0.444951, 0.558298, -0.700230,
		0.707225, -0.698736, -0.107710,
		16.661577, 16.558338, 25.220327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.167131, 16.947128, 24.667707>,  <16.166519, 17.047455, 25.295725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.167131, 16.947128, 24.667707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.343594, 16.603563, 24.771751>,  <16.449471, 16.397425, 24.834177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.343594, 16.603563, 24.771751>,  <16.167131, 16.947128, 24.667707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.343594, 16.603563, 24.771751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608001, -0.499233, -0.617334,
		0.660090, 0.114193, -0.742456,
		0.441154, -0.858910, 0.260109,
		16.475939, 16.345890, 24.849785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.269485, 16.579897, 24.074795>,  <16.167131, 16.947128, 24.667707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.269485, 16.579897, 24.074795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.261406, 16.306509, 24.366674>,  <16.256559, 16.142475, 24.541801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.261406, 16.306509, 24.366674>,  <16.269485, 16.579897, 24.074795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.261406, 16.306509, 24.366674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640980, -0.551268, -0.534086,
		0.767292, -0.478508, -0.426957,
		-0.020197, -0.683471, 0.729698,
		16.255346, 16.101467, 24.585585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.362675, 15.933576, 23.763369>,  <16.269485, 16.579897, 24.074795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.362675, 15.933576, 23.763369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.158567, 15.855880, 24.098486>,  <16.036102, 15.809262, 24.299557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.158567, 15.855880, 24.098486>,  <16.362675, 15.933576, 23.763369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.158567, 15.855880, 24.098486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590702, -0.628861, -0.505574,
		0.625059, -0.752864, 0.206149,
		-0.510268, -0.194241, 0.837794,
		16.005487, 15.797607, 24.349823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.100811, 15.350365, 23.636551>,  <16.362675, 15.933576, 23.763369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.100811, 15.350365, 23.636551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.875926, 15.443343, 23.954012>,  <15.740995, 15.499130, 24.144489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.875926, 15.443343, 23.954012>,  <16.100811, 15.350365, 23.636551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.875926, 15.443343, 23.954012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751492, -0.544208, -0.372957,
		0.345220, -0.806106, 0.480642,
		-0.562212, 0.232447, 0.793653,
		15.707262, 15.513077, 24.192108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.811178, 14.766101, 23.895086>,  <16.100811, 15.350365, 23.636551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.811178, 14.766101, 23.895086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.568284, 15.054267, 24.029112>,  <15.422547, 15.227166, 24.109528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.568284, 15.054267, 24.029112>,  <15.811178, 14.766101, 23.895086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.568284, 15.054267, 24.029112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765134, -0.416596, -0.490936,
		-0.214090, -0.554483, 0.804185,
		-0.607236, 0.720414, 0.335065,
		15.386113, 15.270391, 24.129631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.248051, 14.382344, 24.108372>,  <15.811178, 14.766101, 23.895086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.248051, 14.382344, 24.108372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.142151, 14.759677, 24.028339>,  <15.078611, 14.986076, 23.980320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.142151, 14.759677, 24.028339>,  <15.248051, 14.382344, 24.108372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.142151, 14.759677, 24.028339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764711, -0.331781, -0.552393,
		-0.587474, 0.006759, 0.809215,
		-0.264748, 0.943332, -0.200081,
		15.062726, 15.042677, 23.968315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.608206, 14.316294, 24.266943>,  <15.248051, 14.382344, 24.108372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.608206, 14.316294, 24.266943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.645520, 14.631385, 24.023375>,  <14.667909, 14.820439, 23.877234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.645520, 14.631385, 24.023375>,  <14.608206, 14.316294, 24.266943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.645520, 14.631385, 24.023375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755057, -0.342681, -0.558980,
		-0.648989, 0.511915, 0.562811,
		0.093285, 0.787727, -0.608921,
		14.673506, 14.867702, 23.840698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.945060, 14.503278, 24.156424>,  <14.608206, 14.316294, 24.266943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.945060, 14.503278, 24.156424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.119850, 14.698493, 23.854200>,  <14.224725, 14.815622, 23.672867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.119850, 14.698493, 23.854200>,  <13.945060, 14.503278, 24.156424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.119850, 14.698493, 23.854200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603340, -0.463963, -0.648628,
		-0.667107, 0.739295, 0.091712,
		0.436977, 0.488037, -0.755560,
		14.250943, 14.844904, 23.627533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.403706, 14.676612, 23.831295>,  <13.945060, 14.503278, 24.156424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.403706, 14.676612, 23.831295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.705362, 14.679166, 23.568623>,  <13.886356, 14.680698, 23.411020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.705362, 14.679166, 23.568623>,  <13.403706, 14.676612, 23.831295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.705362, 14.679166, 23.568623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579047, -0.465254, -0.669510,
		-0.309797, 0.885154, -0.347170,
		0.754142, 0.006385, -0.656680,
		13.931605, 14.681081, 23.371618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.098495, 14.835073, 23.092165>,  <13.403706, 14.676612, 23.831295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.098495, 14.835073, 23.092165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.461611, 14.704527, 22.986790>,  <13.679481, 14.626199, 22.923565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.461611, 14.704527, 22.986790>,  <13.098495, 14.835073, 23.092165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.461611, 14.704527, 22.986790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391560, -0.434354, -0.811183,
		0.150317, 0.839537, -0.522095,
		0.907792, -0.326366, -0.263438,
		13.733949, 14.606617, 22.907759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.134245, 14.973888, 22.339758>,  <13.098495, 14.835073, 23.092165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.134245, 14.973888, 22.339758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.417565, 14.699646, 22.406996>,  <13.587558, 14.535101, 22.447338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.417565, 14.699646, 22.406996>,  <13.134245, 14.973888, 22.339758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.417565, 14.699646, 22.406996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196270, -0.420007, -0.886043,
		0.678077, 0.594592, -0.432055,
		0.708300, -0.685605, 0.168097,
		13.630055, 14.493964, 22.457424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.431719, 14.897512, 21.737654>,  <13.134245, 14.973888, 22.339758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.431719, 14.897512, 21.737654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.548136, 14.559414, 21.916920>,  <13.617986, 14.356555, 22.024479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.548136, 14.559414, 21.916920>,  <13.431719, 14.897512, 21.737654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.548136, 14.559414, 21.916920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064955, -0.484823, -0.872197,
		0.954503, 0.224735, -0.196007,
		0.291042, -0.845246, 0.448167,
		13.635448, 14.305840, 22.051371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.014315, 14.659538, 21.325541>,  <13.431719, 14.897512, 21.737654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.014315, 14.659538, 21.325541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.895694, 14.324059, 21.508251>,  <13.824521, 14.122772, 21.617878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.895694, 14.324059, 21.508251>,  <14.014315, 14.659538, 21.325541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.895694, 14.324059, 21.508251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091264, -0.500989, -0.860628,
		0.950646, -0.213535, 0.225113,
		-0.296553, -0.838697, 0.456775,
		13.806727, 14.072451, 21.645283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.533277, 14.139790, 21.164040>,  <14.014315, 14.659538, 21.325541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.533277, 14.139790, 21.164040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.222219, 13.914249, 21.275280>,  <14.035583, 13.778925, 21.342024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.222219, 13.914249, 21.275280>,  <14.533277, 14.139790, 21.164040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.222219, 13.914249, 21.275280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158559, -0.603935, -0.781102,
		0.608381, -0.563325, 0.559051,
		-0.777645, -0.563850, 0.278102,
		13.988925, 13.745094, 21.358711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.035065, 14.191271, 21.780924>,  <14.533277, 14.139790, 21.164040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.035065, 14.191271, 21.780924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.143447, 14.082122, 21.411682>,  <15.208476, 14.016633, 21.190136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.143447, 14.082122, 21.411682>,  <15.035065, 14.191271, 21.780924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.143447, 14.082122, 21.411682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947868, -0.091455, 0.305258,
		-0.167719, -0.957694, 0.233866,
		0.270955, -0.272871, -0.923106,
		15.224733, 14.000260, 21.134750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.440085, 13.566860, 21.823721>,  <15.035065, 14.191271, 21.780924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.440085, 13.566860, 21.823721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.533834, 13.717425, 21.465195>,  <15.590082, 13.807764, 21.250078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.533834, 13.717425, 21.465195>,  <15.440085, 13.566860, 21.823721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.533834, 13.717425, 21.465195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968915, -0.165568, 0.183823,
		-0.079208, -0.911538, -0.403516,
		0.234371, 0.376412, -0.896317,
		15.604145, 13.830349, 21.196301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.013140, 13.197215, 21.762600>,  <15.440085, 13.566860, 21.823721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.013140, 13.197215, 21.762600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.022179, 13.510378, 21.513908>,  <16.027601, 13.698276, 21.364693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.022179, 13.510378, 21.513908>,  <16.013140, 13.197215, 21.762600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.022179, 13.510378, 21.513908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981345, 0.101393, 0.163345,
		0.190923, -0.613822, -0.766010,
		0.022596, 0.782907, -0.621729,
		16.028957, 13.745250, 21.327389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.651888, 13.103173, 21.283051>,  <16.013140, 13.197215, 21.762600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.651888, 13.103173, 21.283051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.535618, 13.485857, 21.288912>,  <16.465855, 13.715467, 21.292429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.535618, 13.485857, 21.288912>,  <16.651888, 13.103173, 21.283051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.535618, 13.485857, 21.288912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909090, 0.271368, 0.316092,
		0.298432, 0.105202, -0.948615,
		-0.290677, 0.956709, 0.014653,
		16.448414, 13.772870, 21.293308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.266634, 13.375381, 21.038527>,  <16.651888, 13.103173, 21.283051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.266634, 13.375381, 21.038527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.066782, 13.706038, 21.142084>,  <16.946871, 13.904433, 21.204220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.066782, 13.706038, 21.142084>,  <17.266634, 13.375381, 21.038527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.066782, 13.706038, 21.142084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848265, 0.406337, 0.339611,
		0.175539, 0.389293, -0.904233,
		-0.499632, 0.826644, 0.258896,
		16.916893, 13.954032, 21.219753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.681242, 13.923242, 20.765156>,  <17.266634, 13.375381, 21.038527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.681242, 13.923242, 20.765156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.453552, 14.095263, 21.045452>,  <17.316938, 14.198477, 21.213631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.453552, 14.095263, 21.045452>,  <17.681242, 13.923242, 20.765156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.453552, 14.095263, 21.045452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762479, 0.594972, 0.254230,
		-0.307589, 0.679015, -0.666579,
		-0.569222, 0.430055, 0.700742,
		17.282785, 14.224279, 21.255674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.945709, 14.553961, 20.845142>,  <17.681242, 13.923242, 20.765156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.945709, 14.553961, 20.845142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.718386, 14.506983, 21.170898>,  <17.581991, 14.478796, 21.366352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.718386, 14.506983, 21.170898>,  <17.945709, 14.553961, 20.845142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.718386, 14.506983, 21.170898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539160, 0.694514, 0.476399,
		-0.621557, 0.709829, -0.331376,
		-0.568307, -0.117444, 0.814392,
		17.547894, 14.471749, 21.415216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.814919, 15.190913, 21.017954>,  <17.945709, 14.553961, 20.845142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.814919, 15.190913, 21.017954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.771976, 14.965545, 21.345619>,  <17.746212, 14.830323, 21.542219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.771976, 14.965545, 21.345619>,  <17.814919, 15.190913, 21.017954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.771976, 14.965545, 21.345619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565276, 0.643206, 0.516477,
		-0.817886, 0.518500, 0.249438,
		-0.107354, -0.563421, 0.819165,
		17.739771, 14.796518, 21.591370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.457605, 15.565208, 21.571033>,  <17.814919, 15.190913, 21.017954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.457605, 15.565208, 21.571033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.686769, 15.278350, 21.729765>,  <17.824268, 15.106235, 21.825005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.686769, 15.278350, 21.729765>,  <17.457605, 15.565208, 21.571033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.686769, 15.278350, 21.729765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496257, 0.688843, 0.528417,
		-0.652305, -0.105807, 0.750535,
		0.572912, -0.717147, 0.396828,
		17.858643, 15.063206, 21.848814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.479490, 15.832383, 22.273838>,  <17.457605, 15.565208, 21.571033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.479490, 15.832383, 22.273838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.783148, 15.578567, 22.215796>,  <17.965343, 15.426277, 22.180969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.783148, 15.578567, 22.215796>,  <17.479490, 15.832383, 22.273838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.783148, 15.578567, 22.215796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600284, 0.596269, 0.533032,
		-0.251708, -0.491753, 0.833560,
		0.759146, -0.634541, -0.145106,
		18.010891, 15.388205, 22.172264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.672693, 15.717103, 22.950470>,  <17.479490, 15.832383, 22.273838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.672693, 15.717103, 22.950470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.961489, 15.600721, 22.699368>,  <18.134766, 15.530892, 22.548706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.961489, 15.600721, 22.699368>,  <17.672693, 15.717103, 22.950470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.961489, 15.600721, 22.699368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687759, 0.400970, 0.605154,
		0.075639, -0.868659, 0.489602,
		0.721988, -0.290955, -0.627757,
		18.178085, 15.513435, 22.511040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.192274, 15.384746, 23.352539>,  <17.672693, 15.717103, 22.950470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.192274, 15.384746, 23.352539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.372072, 15.522713, 23.022936>,  <18.479950, 15.605493, 22.825174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.372072, 15.522713, 23.022936>,  <18.192274, 15.384746, 23.352539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.372072, 15.522713, 23.022936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702939, 0.432627, 0.564544,
		0.551209, -0.832986, -0.047994,
		0.449494, 0.344919, -0.824007,
		18.506920, 15.626188, 22.775734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.721954, 15.607282, 23.686684>,  <18.192274, 15.384746, 23.352539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.721954, 15.607282, 23.686684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.803865, 15.737841, 23.317570>,  <18.853012, 15.816176, 23.096102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.803865, 15.737841, 23.317570>,  <18.721954, 15.607282, 23.686684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.803865, 15.737841, 23.317570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747105, 0.556967, 0.362795,
		0.632377, -0.763709, -0.129801,
		0.204775, 0.326398, -0.922784,
		18.865297, 15.835760, 23.040735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.507675, 15.543323, 23.636438>,  <18.721954, 15.607282, 23.686684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.507675, 15.543323, 23.636438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.384533, 15.813883, 23.368795>,  <19.310648, 15.976219, 23.208210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.384533, 15.813883, 23.368795>,  <19.507675, 15.543323, 23.636438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.384533, 15.813883, 23.368795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680240, 0.648176, 0.342259,
		0.665205, -0.349788, -0.659660,
		-0.307858, 0.676400, -0.669109,
		19.292175, 16.016802, 23.168062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.134521, 15.806199, 23.323357>,  <19.507675, 15.543323, 23.636438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.134521, 15.806199, 23.323357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.848473, 16.077475, 23.255640>,  <19.676844, 16.240240, 23.215010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.848473, 16.077475, 23.255640>,  <20.134521, 15.806199, 23.323357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.848473, 16.077475, 23.255640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637340, 0.732085, 0.240519,
		0.287052, 0.064105, -0.955768,
		-0.715122, 0.678190, -0.169290,
		19.633936, 16.280931, 23.204853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.495558, 16.467426, 23.122833>,  <20.134521, 15.806199, 23.323357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.495558, 16.467426, 23.122833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.126537, 16.602411, 23.197683>,  <19.905125, 16.683403, 23.242594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.126537, 16.602411, 23.197683>,  <20.495558, 16.467426, 23.122833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.126537, 16.602411, 23.197683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385868, 0.805046, 0.450563,
		0.001405, 0.487873, -0.872913,
		-0.922553, 0.337463, 0.187124,
		19.849771, 16.703650, 23.253820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.497969, 17.122713, 23.081442>,  <20.495558, 16.467426, 23.122833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.497969, 17.122713, 23.081442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.178444, 17.104176, 23.321360>,  <19.986729, 17.093052, 23.465311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.178444, 17.104176, 23.321360>,  <20.497969, 17.122713, 23.081442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.178444, 17.104176, 23.321360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274735, 0.858878, 0.432260,
		-0.535183, 0.510078, -0.673349,
		-0.798811, -0.046346, 0.599794,
		19.938801, 17.090271, 23.501297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.248159, 17.797747, 23.166847>,  <20.497969, 17.122713, 23.081442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.248159, 17.797747, 23.166847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.073818, 17.632311, 23.486591>,  <19.969213, 17.533049, 23.678438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.073818, 17.632311, 23.486591>,  <20.248159, 17.797747, 23.166847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.073818, 17.632311, 23.486591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155190, 0.840319, 0.519403,
		-0.886537, 0.350436, -0.302072,
		-0.435854, -0.413592, 0.799358,
		19.943062, 17.508234, 23.726398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.781614, 18.269409, 23.476034>,  <20.248159, 17.797747, 23.166847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.781614, 18.269409, 23.476034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.879475, 18.018856, 23.772085>,  <19.938190, 17.868525, 23.949717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.879475, 18.018856, 23.772085>,  <19.781614, 18.269409, 23.476034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.879475, 18.018856, 23.772085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093038, 0.774968, 0.625115,
		-0.965138, -0.084074, 0.247873,
		0.244649, -0.626384, 0.740129,
		19.952869, 17.830940, 23.994123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.376177, 18.598785, 24.061386>,  <19.781614, 18.269409, 23.476034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.376177, 18.598785, 24.061386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.649170, 18.338749, 24.195011>,  <19.812965, 18.182726, 24.275187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.649170, 18.338749, 24.195011>,  <19.376177, 18.598785, 24.061386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.649170, 18.338749, 24.195011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192183, 0.600581, 0.776124,
		-0.705183, -0.465490, 0.534823,
		0.682483, -0.650093, 0.334061,
		19.853914, 18.143721, 24.295229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.375885, 18.666763, 24.813452>,  <19.376177, 18.598785, 24.061386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.375885, 18.666763, 24.813452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.724277, 18.495699, 24.716711>,  <19.933313, 18.393061, 24.658667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.724277, 18.495699, 24.716711>,  <19.375885, 18.666763, 24.813452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.724277, 18.495699, 24.716711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474180, 0.602852, 0.641656,
		-0.128612, -0.673553, 0.727863,
		0.870984, -0.427663, -0.241851,
		19.985573, 18.367399, 24.644156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.697037, 18.723783, 25.399031>,  <19.375885, 18.666763, 24.813452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.697037, 18.723783, 25.399031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.015867, 18.661051, 25.165768>,  <20.207167, 18.623411, 25.025810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.015867, 18.661051, 25.165768>,  <19.697037, 18.723783, 25.399031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.015867, 18.661051, 25.165768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523381, 0.661121, 0.537579,
		0.301227, -0.733705, 0.609047,
		0.797079, -0.156830, -0.583155,
		20.254992, 18.614002, 24.990822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.235580, 18.663313, 25.871178>,  <19.697037, 18.723783, 25.399031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.235580, 18.663313, 25.871178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.383818, 18.753923, 25.510878>,  <20.472759, 18.808289, 25.294699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.383818, 18.753923, 25.510878>,  <20.235580, 18.663313, 25.871178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.383818, 18.753923, 25.510878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593808, 0.687927, 0.417312,
		0.714180, -0.689524, 0.120429,
		0.370593, 0.226524, -0.900748,
		20.494995, 18.821880, 25.240654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.871187, 18.672041, 25.977736>,  <20.235580, 18.663313, 25.871178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.871187, 18.672041, 25.977736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.821102, 18.879921, 25.639687>,  <20.791052, 19.004648, 25.436857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.821102, 18.879921, 25.639687>,  <20.871187, 18.672041, 25.977736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.821102, 18.879921, 25.639687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477061, 0.778425, 0.408005,
		0.869905, -0.352088, -0.345397,
		-0.125212, 0.519701, -0.845123,
		20.783539, 19.035831, 25.386150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.557510, 19.003216, 25.741188>,  <20.871187, 18.672041, 25.977736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.557510, 19.003216, 25.741188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.276821, 19.220419, 25.556700>,  <21.108408, 19.350740, 25.446007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.276821, 19.220419, 25.556700>,  <21.557510, 19.003216, 25.741188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.276821, 19.220419, 25.556700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317404, 0.817855, 0.479966,
		0.637838, 0.190411, -0.746262,
		-0.701725, 0.543007, -0.461222,
		21.066303, 19.383322, 25.418333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.881790, 19.544796, 25.424152>,  <21.557510, 19.003216, 25.741188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.881790, 19.544796, 25.424152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.500746, 19.665087, 25.442469>,  <21.272120, 19.737261, 25.453459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.500746, 19.665087, 25.442469>,  <21.881790, 19.544796, 25.424152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.500746, 19.665087, 25.442469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303591, 0.930456, 0.205144,
		0.019087, 0.209323, -0.977660,
		-0.952611, 0.300725, 0.045789,
		21.214962, 19.755304, 25.456205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.881372, 20.099985, 25.012890>,  <21.881790, 19.544796, 25.424152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.881372, 20.099985, 25.012890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.564575, 20.142408, 25.253389>,  <21.374496, 20.167862, 25.397690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.564575, 20.142408, 25.253389>,  <21.881372, 20.099985, 25.012890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.564575, 20.142408, 25.253389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208706, 0.972500, 0.103375,
		-0.573750, 0.207356, -0.792347,
		-0.791992, 0.106056, 0.601248,
		21.326977, 20.174225, 25.433764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.681217, 20.727234, 24.837049>,  <21.881372, 20.099985, 25.012890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.681217, 20.727234, 24.837049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.513988, 20.651514, 25.192438>,  <21.413652, 20.606081, 25.405672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.513988, 20.651514, 25.192438>,  <21.681217, 20.727234, 24.837049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.513988, 20.651514, 25.192438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031952, 0.980506, 0.193875,
		-0.907853, 0.052665, -0.415969,
		-0.418070, -0.189301, 0.888472,
		21.388567, 20.594723, 25.458981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.062424, 21.104204, 24.859709>,  <21.681217, 20.727234, 24.837049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.062424, 21.104204, 24.859709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.182919, 21.020144, 25.231750>,  <21.255217, 20.969707, 25.454975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.182919, 21.020144, 25.231750>,  <21.062424, 21.104204, 24.859709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.182919, 21.020144, 25.231750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007434, 0.974865, 0.222674,
		-0.953520, -0.073993, 0.292105,
		0.301239, -0.210152, 0.930103,
		21.273291, 20.957098, 25.510782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.679684, 21.541067, 25.158119>,  <21.062424, 21.104204, 24.859709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.679684, 21.541067, 25.158119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.977558, 21.444002, 25.406815>,  <21.156282, 21.385763, 25.556032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.977558, 21.444002, 25.406815>,  <20.679684, 21.541067, 25.158119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.977558, 21.444002, 25.406815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003927, 0.929951, 0.367662,
		-0.667405, -0.276234, 0.691568,
		0.744685, -0.242663, 0.621739,
		21.200964, 21.371202, 25.593336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.526222, 21.986828, 25.727655>,  <20.679684, 21.541067, 25.158119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.526222, 21.986828, 25.727655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.909645, 21.899788, 25.801216>,  <21.139698, 21.847563, 25.845352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.909645, 21.899788, 25.801216>,  <20.526222, 21.986828, 25.727655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.909645, 21.899788, 25.801216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150652, 0.934993, 0.321078,
		-0.241814, -0.280066, 0.929026,
		0.958556, -0.217601, 0.183902,
		21.197212, 21.834507, 25.856386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.832428, 22.066849, 26.439953>,  <20.526222, 21.986828, 25.727655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.832428, 22.066849, 26.439953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.115757, 22.131109, 26.165007>,  <21.285753, 22.169664, 26.000038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.115757, 22.131109, 26.165007>,  <20.832428, 22.066849, 26.439953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.115757, 22.131109, 26.165007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156684, 0.913686, 0.375004,
		0.688280, -0.373323, 0.622013,
		0.708322, 0.160649, -0.687366,
		21.328253, 22.179304, 25.958797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.415937, 22.425251, 26.582363>,  <20.832428, 22.066849, 26.439953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.415937, 22.425251, 26.582363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.405731, 22.520599, 26.194027>,  <21.399607, 22.577808, 25.961025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.405731, 22.520599, 26.194027>,  <21.415937, 22.425251, 26.582363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.405731, 22.520599, 26.194027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269752, 0.936772, 0.222916,
		0.962592, -0.256198, -0.088202,
		-0.025515, 0.238370, -0.970839,
		21.398077, 22.592110, 25.902775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.449472, 23.111391, 26.585852>,  <21.415937, 22.425251, 26.582363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.449472, 23.111391, 26.585852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.528257, 23.025360, 26.203239>,  <21.575529, 22.973742, 25.973673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.528257, 23.025360, 26.203239>,  <21.449472, 23.111391, 26.585852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.528257, 23.025360, 26.203239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211935, 0.961913, -0.172646,
		0.957230, -0.168717, 0.235045,
		0.196964, -0.215076, -0.956529,
		21.587347, 22.960836, 25.916281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.727383, 23.716885, 26.225307>,  <21.449472, 23.111391, 26.585852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.727383, 23.716885, 26.225307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.979687, 23.871220, 26.494610>,  <22.131069, 23.963821, 26.656191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.979687, 23.871220, 26.494610>,  <21.727383, 23.716885, 26.225307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.979687, 23.871220, 26.494610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377659, 0.605291, -0.700712,
		-0.677877, 0.696240, 0.236077,
		0.630759, 0.385839, 0.673254,
		22.168915, 23.986971, 26.696587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.599733, 24.420889, 26.349398>,  <21.727383, 23.716885, 26.225307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.599733, 24.420889, 26.349398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.982235, 24.307823, 26.379532>,  <22.211737, 24.239983, 26.397614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.982235, 24.307823, 26.379532>,  <21.599733, 24.420889, 26.349398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.982235, 24.307823, 26.379532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213737, 0.499279, -0.839665,
		0.199731, 0.819036, 0.537855,
		0.956255, -0.282667, 0.075337,
		22.269112, 24.223022, 26.402132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.015783, 24.985222, 26.163055>,  <21.599733, 24.420889, 26.349398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.015783, 24.985222, 26.163055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.261023, 24.670401, 26.135765>,  <22.408167, 24.481508, 26.119390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.261023, 24.670401, 26.135765>,  <22.015783, 24.985222, 26.163055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.261023, 24.670401, 26.135765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486594, 0.444255, -0.752239,
		0.622362, 0.428000, 0.655348,
		0.613101, -0.787053, -0.068225,
		22.444952, 24.434284, 26.115297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.736212, 25.123383, 26.163374>,  <22.015783, 24.985222, 26.163055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.736212, 25.123383, 26.163374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.663651, 24.790861, 25.953220>,  <22.620113, 24.591349, 25.827127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.663651, 24.790861, 25.953220>,  <22.736212, 25.123383, 26.163374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.663651, 24.790861, 25.953220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432538, 0.412349, -0.801797,
		0.883178, -0.372698, 0.284768,
		-0.181404, -0.831303, -0.525384,
		22.609230, 24.541470, 25.795605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.586514, 24.969589, 25.512268>,  <22.736212, 25.123383, 26.163374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.586514, 24.969589, 25.512268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.821724, 25.103075, 25.217552>,  <22.962851, 25.183167, 25.040722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.821724, 25.103075, 25.217552>,  <22.586514, 24.969589, 25.512268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.821724, 25.103075, 25.217552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284171, -0.767615, -0.574469,
		-0.757279, 0.547177, -0.356546,
		0.588026, 0.333713, -0.736791,
		22.998133, 25.203190, 24.996515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.195415, 24.750273, 24.991198>,  <22.586514, 24.969589, 25.512268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.195415, 24.750273, 24.991198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.553604, 24.839209, 24.836954>,  <22.768518, 24.892570, 24.744408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.553604, 24.839209, 24.836954>,  <22.195415, 24.750273, 24.991198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.553604, 24.839209, 24.836954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077607, -0.775049, -0.627117,
		-0.438298, 0.591492, -0.676780,
		0.895473, 0.222342, -0.385606,
		22.822247, 24.905910, 24.721272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.156624, 24.900030, 24.282293>,  <22.195415, 24.750273, 24.991198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.156624, 24.900030, 24.282293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.530722, 24.770155, 24.338718>,  <22.755180, 24.692230, 24.372574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.530722, 24.770155, 24.338718>,  <22.156624, 24.900030, 24.282293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.530722, 24.770155, 24.338718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152712, -0.729525, -0.666687,
		0.319373, 0.601973, -0.731867,
		0.935243, -0.324687, 0.141062,
		22.811295, 24.672749, 24.381037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.413656, 24.626385, 23.655998>,  <22.156624, 24.900030, 24.282293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.413656, 24.626385, 23.655998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.666426, 24.463810, 23.919962>,  <22.818087, 24.366264, 24.078341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.666426, 24.463810, 23.919962>,  <22.413656, 24.626385, 23.655998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.666426, 24.463810, 23.919962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057708, -0.873773, -0.482898,
		0.772879, 0.267072, -0.575613,
		0.631924, -0.406439, 0.659909,
		22.856003, 24.341879, 24.117935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.930183, 24.276291, 23.256453>,  <22.413656, 24.626385, 23.655998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.930183, 24.276291, 23.256453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.934259, 24.113583, 23.621841>,  <22.936705, 24.015959, 23.841076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.934259, 24.113583, 23.621841>,  <22.930183, 24.276291, 23.256453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.934259, 24.113583, 23.621841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054966, -0.912368, -0.405664,
		0.998436, -0.046076, -0.031656,
		0.010191, -0.406769, 0.913474,
		22.937317, 23.991552, 23.895884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.312691, 23.754049, 23.197269>,  <22.930183, 24.276291, 23.256453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.312691, 23.754049, 23.197269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.116045, 23.667257, 23.534609>,  <22.998058, 23.615183, 23.737013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.116045, 23.667257, 23.534609>,  <23.312691, 23.754049, 23.197269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.116045, 23.667257, 23.534609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151371, -0.932423, -0.328136,
		0.857556, -0.288975, 0.425548,
		-0.491614, -0.216980, 0.843348,
		22.968561, 23.602163, 23.787613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.510187, 23.106552, 23.314932>,  <23.312691, 23.754049, 23.197269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.510187, 23.106552, 23.314932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.208118, 23.135128, 23.575581>,  <23.026876, 23.152273, 23.731970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.208118, 23.135128, 23.575581>,  <23.510187, 23.106552, 23.314932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.208118, 23.135128, 23.575581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251444, -0.949577, -0.187295,
		0.605384, -0.305286, 0.735058,
		-0.755173, 0.071441, 0.651621,
		22.981567, 23.156561, 23.771067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.479887, 22.346346, 23.610273>,  <23.510187, 23.106552, 23.314932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.479887, 22.346346, 23.610273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.143705, 22.514936, 23.746506>,  <22.941996, 22.616091, 23.828245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.143705, 22.514936, 23.746506>,  <23.479887, 22.346346, 23.610273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.143705, 22.514936, 23.746506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486246, -0.863991, -0.130709,
		0.239169, -0.275461, 0.931085,
		-0.840454, 0.421475, 0.340582,
		22.891569, 22.641378, 23.848680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.236729, 21.986116, 24.177153>,  <23.479887, 22.346346, 23.610273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.236729, 21.986116, 24.177153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.915688, 22.148558, 24.002380>,  <22.723063, 22.246023, 23.897518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.915688, 22.148558, 24.002380>,  <23.236729, 21.986116, 24.177153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.915688, 22.148558, 24.002380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473997, -0.878880, 0.053823,
		-0.362150, 0.250301, 0.897884,
		-0.802604, 0.406102, -0.436929,
		22.674906, 22.270388, 23.871302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.602505, 21.581486, 24.453901>,  <23.236729, 21.986116, 24.177153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.602505, 21.581486, 24.453901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.454262, 21.755732, 24.125782>,  <22.365314, 21.860279, 23.928911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.454262, 21.755732, 24.125782>,  <22.602505, 21.581486, 24.453901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.454262, 21.755732, 24.125782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541174, -0.819059, -0.190453,
		-0.754837, 0.373340, 0.539294,
		-0.370610, 0.435613, -0.820298,
		22.343079, 21.886415, 23.879692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.866259, 21.435974, 24.439606>,  <22.602505, 21.581486, 24.453901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.866259, 21.435974, 24.439606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.987005, 21.482313, 24.061092>,  <22.059452, 21.510117, 23.833984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.987005, 21.482313, 24.061092>,  <21.866259, 21.435974, 24.439606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.987005, 21.482313, 24.061092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443569, -0.861539, -0.246974,
		-0.843874, 0.494296, -0.208682,
		0.301866, 0.115850, -0.946285,
		22.077564, 21.517069, 23.777206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.355631, 21.209227, 24.035940>,  <21.866259, 21.435974, 24.439606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.355631, 21.209227, 24.035940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.636913, 21.216198, 23.751631>,  <21.805683, 21.220381, 23.581045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.636913, 21.216198, 23.751631>,  <21.355631, 21.209227, 24.035940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.636913, 21.216198, 23.751631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444792, -0.769127, -0.458916,
		-0.554675, 0.638858, -0.533100,
		0.703204, 0.017431, -0.710774,
		21.847874, 21.221428, 23.538399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.000065, 21.313496, 23.458231>,  <21.355631, 21.209227, 24.035940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.000065, 21.313496, 23.458231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.356089, 21.164455, 23.353186>,  <21.569702, 21.075031, 23.290159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.356089, 21.164455, 23.353186>,  <21.000065, 21.313496, 23.458231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.356089, 21.164455, 23.353186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450680, -0.632779, -0.629665,
		0.068438, 0.678793, -0.731134,
		0.890058, -0.372600, -0.262612,
		21.623106, 21.052675, 23.274403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.922220, 21.223494, 22.797098>,  <21.000065, 21.313496, 23.458231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.922220, 21.223494, 22.797098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.234440, 20.988276, 22.881901>,  <21.421772, 20.847145, 22.932781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.234440, 20.988276, 22.881901>,  <20.922220, 21.223494, 22.797098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.234440, 20.988276, 22.881901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334092, -0.679103, -0.653607,
		0.528324, 0.439343, -0.726534,
		0.780549, -0.588045, 0.212006,
		21.468605, 20.811861, 22.945503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.157106, 21.039173, 22.096039>,  <20.922220, 21.223494, 22.797098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.157106, 21.039173, 22.096039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.317444, 20.797709, 22.371696>,  <21.413647, 20.652830, 22.537090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.317444, 20.797709, 22.371696>,  <21.157106, 21.039173, 22.096039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.317444, 20.797709, 22.371696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250650, -0.795779, -0.551281,
		0.881193, 0.048242, -0.470289,
		0.400842, -0.603663, 0.689143,
		21.437696, 20.616610, 22.578440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.615402, 20.532513, 21.824276>,  <21.157106, 21.039173, 22.096039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.615402, 20.532513, 21.824276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.503393, 20.358852, 22.166761>,  <21.436188, 20.254656, 22.372252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.503393, 20.358852, 22.166761>,  <21.615402, 20.532513, 21.824276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.503393, 20.358852, 22.166761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067593, -0.880763, -0.468708,
		0.957610, -0.189123, 0.217290,
		-0.280024, -0.434153, 0.856211,
		21.419386, 20.228607, 22.423624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.991695, 19.928898, 21.799772>,  <21.615402, 20.532513, 21.824276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.991695, 19.928898, 21.799772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.710320, 19.872784, 22.078482>,  <21.541494, 19.839115, 22.245708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.710320, 19.872784, 22.078482>,  <21.991695, 19.928898, 21.799772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.710320, 19.872784, 22.078482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215942, -0.891805, -0.397558,
		0.677159, -0.430121, 0.597036,
		-0.703437, -0.140285, 0.696775,
		21.499289, 19.830698, 22.287514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.108301, 19.195763, 22.080635>,  <21.991695, 19.928898, 21.799772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.108301, 19.195763, 22.080635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.732862, 19.294243, 22.177317>,  <21.507599, 19.353331, 22.235325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.732862, 19.294243, 22.177317>,  <22.108301, 19.195763, 22.080635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.732862, 19.294243, 22.177317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332714, -0.831299, -0.445246,
		0.091308, -0.498325, 0.862169,
		-0.938597, 0.246201, 0.241704,
		21.451283, 19.368103, 22.249828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.845276, 18.629257, 22.540213>,  <22.108301, 19.195763, 22.080635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.845276, 18.629257, 22.540213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.547529, 18.820805, 22.354050>,  <21.368881, 18.935734, 22.242352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.547529, 18.820805, 22.354050>,  <21.845276, 18.629257, 22.540213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.547529, 18.820805, 22.354050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330673, -0.869833, -0.366123,
		-0.580151, -0.118633, 0.805823,
		-0.744366, 0.478870, -0.465406,
		21.324219, 18.964466, 22.214428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.154650, 18.226692, 22.708220>,  <21.845276, 18.629257, 22.540213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.154650, 18.226692, 22.708220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.086834, 18.422016, 22.365803>,  <21.046144, 18.539211, 22.160353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.086834, 18.422016, 22.365803>,  <21.154650, 18.226692, 22.708220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.086834, 18.422016, 22.365803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384667, -0.832507, -0.398702,
		-0.907352, 0.261696, 0.328980,
		-0.169540, 0.488311, -0.856042,
		21.035973, 18.568510, 22.108990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.829491, 17.796726, 22.367273>,  <21.154650, 18.226692, 22.708220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.829491, 17.796726, 22.367273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.837109, 18.072920, 22.078035>,  <20.841679, 18.238636, 21.904493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.837109, 18.072920, 22.078035>,  <20.829491, 17.796726, 22.367273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.837109, 18.072920, 22.078035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365731, -0.668292, -0.647786,
		-0.930526, 0.276794, 0.239806,
		0.019043, 0.690486, -0.723095,
		20.842821, 18.280066, 21.861107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.060862, 18.080782, 22.117167>,  <20.829491, 17.796726, 22.367273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.060862, 18.080782, 22.117167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.326553, 18.113932, 21.820000>,  <20.485970, 18.133821, 21.641699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.326553, 18.113932, 21.820000>,  <20.060862, 18.080782, 22.117167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.326553, 18.113932, 21.820000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456165, -0.742400, -0.490668,
		-0.592208, 0.664811, -0.455320,
		0.664231, 0.082877, -0.742919,
		20.525824, 18.138794, 21.597124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.630421, 18.190468, 21.498665>,  <20.060862, 18.080782, 22.117167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.630421, 18.190468, 21.498665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.990173, 18.087748, 21.357151>,  <20.206024, 18.026115, 21.272243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.990173, 18.087748, 21.357151>,  <19.630421, 18.190468, 21.498665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.990173, 18.087748, 21.357151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431486, -0.651454, -0.624041,
		-0.070220, 0.713905, -0.696712,
		0.899382, -0.256802, -0.353785,
		20.259989, 18.010708, 21.251015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.477558, 18.107563, 20.770514>,  <19.630421, 18.190468, 21.498665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.477558, 18.107563, 20.770514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.832760, 17.930309, 20.819635>,  <20.045881, 17.823957, 20.849108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.832760, 17.930309, 20.819635>,  <19.477558, 18.107563, 20.770514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.832760, 17.930309, 20.819635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312433, -0.777385, -0.545948,
		0.337396, 0.446435, -0.828770,
		0.888003, -0.443136, 0.122805,
		20.099161, 17.797369, 20.856478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.768269, 17.810711, 20.097368>,  <19.477558, 18.107563, 20.770514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.768269, 17.810711, 20.097368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.939280, 17.580791, 20.376459>,  <20.041885, 17.442839, 20.543915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.939280, 17.580791, 20.376459>,  <19.768269, 17.810711, 20.097368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.939280, 17.580791, 20.376459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302308, -0.818292, -0.488885,
		0.851957, -0.001918, -0.523608,
		0.427526, -0.574800, 0.697729,
		20.067537, 17.408352, 20.585777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.154045, 17.283895, 19.791597>,  <19.768269, 17.810711, 20.097368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.154045, 17.283895, 19.791597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.114115, 17.134850, 20.160639>,  <20.090157, 17.045422, 20.382063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.114115, 17.134850, 20.160639>,  <20.154045, 17.283895, 19.791597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.114115, 17.134850, 20.160639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000595, -0.927256, -0.374429,
		0.995005, -0.036828, 0.092785,
		-0.099825, -0.372613, 0.922602,
		20.084167, 17.023066, 20.437420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.573397, 16.787306, 19.812061>,  <20.154045, 17.283895, 19.791597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.573397, 16.787306, 19.812061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.295116, 16.707447, 20.088074>,  <20.128147, 16.659533, 20.253681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.295116, 16.707447, 20.088074>,  <20.573397, 16.787306, 19.812061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.295116, 16.707447, 20.088074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072582, -0.936147, -0.344035,
		0.714655, -0.289429, 0.636788,
		-0.695702, -0.199647, 0.690029,
		20.086407, 16.647552, 20.295082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.790609, 16.169350, 20.130699>,  <20.573397, 16.787306, 19.812061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.790609, 16.169350, 20.130699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.392555, 16.191147, 20.163532>,  <20.153723, 16.204226, 20.183231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.392555, 16.191147, 20.163532>,  <20.790609, 16.169350, 20.130699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.392555, 16.191147, 20.163532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082660, -0.915122, -0.394613,
		0.053612, -0.399478, 0.915174,
		-0.995135, 0.054492, 0.082083,
		20.094015, 16.207495, 20.188156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.600430, 15.539521, 20.455132>,  <20.790609, 16.169350, 20.130699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.600430, 15.539521, 20.455132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.260130, 15.643426, 20.272375>,  <20.055950, 15.705769, 20.162722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.260130, 15.643426, 20.272375>,  <20.600430, 15.539521, 20.455132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.260130, 15.643426, 20.272375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040873, -0.899389, -0.435234,
		-0.523979, -0.351601, 0.775773,
		-0.850750, 0.259762, -0.456890,
		20.004906, 15.721354, 20.135307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.086014, 15.011244, 20.531961>,  <20.600430, 15.539521, 20.455132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.086014, 15.011244, 20.531961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.959490, 15.223853, 20.217655>,  <19.883575, 15.351418, 20.029072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.959490, 15.223853, 20.217655>,  <20.086014, 15.011244, 20.531961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.959490, 15.223853, 20.217655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230695, -0.846529, -0.479759,
		-0.920178, 0.029520, 0.390386,
		-0.316311, 0.531524, -0.785767,
		19.864597, 15.383310, 19.981926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.490278, 14.642422, 20.354355>,  <20.086014, 15.011244, 20.531961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.490278, 14.642422, 20.354355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.565502, 14.865192, 20.030758>,  <19.610636, 14.998855, 19.836599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.565502, 14.865192, 20.030758>,  <19.490278, 14.642422, 20.354355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.565502, 14.865192, 20.030758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285035, -0.757291, -0.587592,
		-0.939888, 0.341093, 0.016329,
		0.188058, 0.556925, -0.808992,
		19.621920, 15.032270, 19.788061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.832281, 14.846823, 20.037771>,  <19.490278, 14.642422, 20.354355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.832281, 14.846823, 20.037771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.076420, 14.854697, 19.721016>,  <19.222902, 14.859422, 19.530962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.076420, 14.854697, 19.721016>,  <18.832281, 14.846823, 20.037771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.076420, 14.854697, 19.721016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542947, -0.717524, -0.436312,
		-0.576789, 0.696256, -0.427251,
		0.610347, 0.019685, -0.791889,
		19.259523, 14.860602, 19.483450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.411501, 14.954805, 19.384363>,  <18.832281, 14.846823, 20.037771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.411501, 14.954805, 19.384363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.768412, 14.797333, 19.295952>,  <18.982559, 14.702849, 19.242905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.768412, 14.797333, 19.295952>,  <18.411501, 14.954805, 19.384363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.768412, 14.797333, 19.295952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439563, -0.645735, -0.624348,
		0.103068, 0.654249, -0.749223,
		0.892279, -0.393681, -0.221029,
		19.036095, 14.679229, 19.229643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.323120, 14.639648, 18.689714>,  <18.411501, 14.954805, 19.384363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.323120, 14.639648, 18.689714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.689392, 14.491246, 18.751534>,  <18.909155, 14.402205, 18.788626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.689392, 14.491246, 18.751534>,  <18.323120, 14.639648, 18.689714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.689392, 14.491246, 18.751534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161821, -0.692325, -0.703207,
		0.367891, 0.618903, -0.693985,
		0.915680, -0.371005, 0.154549,
		18.964096, 14.379945, 18.797897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.781237, 14.694615, 17.996164>,  <18.323120, 14.639648, 18.689714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.781237, 14.694615, 17.996164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.927528, 14.403917, 18.228743>,  <19.015305, 14.229498, 18.368290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.927528, 14.403917, 18.228743>,  <18.781237, 14.694615, 17.996164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.927528, 14.403917, 18.228743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124478, -0.657310, -0.743269,
		0.922359, 0.199460, -0.330863,
		0.365732, -0.726746, 0.581447,
		19.037249, 14.185894, 18.403177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.351917, 14.400237, 17.613781>,  <18.781237, 14.694615, 17.996164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.351917, 14.400237, 17.613781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.226461, 14.133817, 17.884485>,  <19.151188, 13.973965, 18.046907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.226461, 14.133817, 17.884485>,  <19.351917, 14.400237, 17.613781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.226461, 14.133817, 17.884485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058271, -0.697881, -0.713840,
		0.947753, -0.263323, 0.180071,
		-0.313638, -0.666051, 0.676762,
		19.132370, 13.934002, 18.087515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.652031, 13.863200, 17.351797>,  <19.351917, 14.400237, 17.613781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.652031, 13.863200, 17.351797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.372938, 13.731447, 17.606255>,  <19.205482, 13.652395, 17.758930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.372938, 13.731447, 17.606255>,  <19.652031, 13.863200, 17.351797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.372938, 13.731447, 17.606255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126136, -0.817659, -0.561714,
		0.705168, -0.472166, 0.528959,
		-0.697730, -0.329382, 0.636145,
		19.163620, 13.632632, 17.797098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.917395, 13.185983, 17.530867>,  <19.652031, 13.863200, 17.351797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.917395, 13.185983, 17.530867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.525434, 13.159316, 17.606075>,  <19.290258, 13.143316, 17.651199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.525434, 13.159316, 17.606075>,  <19.917395, 13.185983, 17.530867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.525434, 13.159316, 17.606075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052744, -0.822389, -0.566476,
		0.192391, -0.565006, 0.802343,
		-0.979900, -0.066666, 0.188020,
		19.231464, 13.139317, 17.662481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.787388, 12.554590, 17.600698>,  <19.917395, 13.185983, 17.530867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.787388, 12.554590, 17.600698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.405647, 12.655793, 17.537195>,  <19.176603, 12.716515, 17.499092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.405647, 12.655793, 17.537195>,  <19.787388, 12.554590, 17.600698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.405647, 12.655793, 17.537195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113389, -0.798606, -0.591077,
		-0.276333, -0.546092, 0.790837,
		-0.954349, 0.253006, -0.158760,
		19.119343, 12.731695, 17.489567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.301344, 11.926374, 17.545477>,  <19.787388, 12.554590, 17.600698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.301344, 11.926374, 17.545477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.141571, 12.232225, 17.343172>,  <19.045708, 12.415736, 17.221788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.141571, 12.232225, 17.343172>,  <19.301344, 11.926374, 17.545477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.141571, 12.232225, 17.343172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339343, -0.635816, -0.693242,
		-0.851645, -0.105277, 0.513437,
		-0.399434, 0.764628, -0.505764,
		19.021740, 12.461614, 17.191442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.594725, 11.860376, 17.503788>,  <19.301344, 11.926374, 17.545477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.594725, 11.860376, 17.503788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.732595, 12.037587, 17.172747>,  <18.815317, 12.143913, 16.974123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.732595, 12.037587, 17.172747>,  <18.594725, 11.860376, 17.503788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.732595, 12.037587, 17.172747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427156, -0.711042, -0.558532,
		-0.835904, 0.546028, -0.055839,
		0.344678, 0.443027, -0.827602,
		18.835999, 12.170495, 16.924467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.016014, 12.046763, 17.068760>,  <18.594725, 11.860376, 17.503788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.016014, 12.046763, 17.068760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.365208, 11.973058, 16.888119>,  <18.574724, 11.928834, 16.779734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.365208, 11.973058, 16.888119>,  <18.016014, 12.046763, 17.068760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.365208, 11.973058, 16.888119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390656, -0.818530, -0.421185,
		-0.292043, 0.544109, -0.786547,
		0.872983, -0.184265, -0.451605,
		18.627102, 11.917778, 16.752638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.917891, 11.776918, 17.829313>,  <18.016014, 12.046763, 17.068760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.917891, 11.776918, 17.829313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.065683, 11.554809, 17.531279>,  <18.154360, 11.421543, 17.352459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.065683, 11.554809, 17.531279>,  <17.917891, 11.776918, 17.829313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.065683, 11.554809, 17.531279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162113, 0.751011, -0.640080,
		0.914987, 0.357287, 0.187470,
		0.369484, -0.555273, -0.745086,
		18.176529, 11.388227, 17.307753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816544, 11.053305, 17.752209>,  <17.917891, 11.776918, 17.829313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.816544, 11.053305, 17.752209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.017786, 10.855814, 18.035933>,  <18.138531, 10.737319, 18.206167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.017786, 10.855814, 18.035933>,  <17.816544, 11.053305, 17.752209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.017786, 10.855814, 18.035933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393779, 0.861558, 0.320400,
		-0.769301, 0.118117, 0.627873,
		0.503104, -0.493728, 0.709309,
		18.168716, 10.707696, 18.248726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.648994, 11.356156, 18.336737>,  <17.816544, 11.053305, 17.752209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.648994, 11.356156, 18.336737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.030113, 11.234713, 18.336924>,  <18.258785, 11.161846, 18.337036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.030113, 11.234713, 18.336924>,  <17.648994, 11.356156, 18.336737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.030113, 11.234713, 18.336924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291844, 0.916298, 0.274272,
		-0.083701, -0.261189, 0.961652,
		0.952796, -0.303610, 0.000469,
		18.315952, 11.143630, 18.337065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.016888, 11.817229, 18.855127>,  <17.648994, 11.356156, 18.336737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.016888, 11.817229, 18.855127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.311255, 11.644788, 18.646292>,  <18.487875, 11.541323, 18.520990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.311255, 11.644788, 18.646292>,  <18.016888, 11.817229, 18.855127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.311255, 11.644788, 18.646292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539277, 0.839461, 0.066977,
		0.409398, -0.330839, 0.850258,
		0.735917, -0.431104, -0.522088,
		18.532030, 11.515456, 18.489666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.768702, 11.706280, 19.227207>,  <18.016888, 11.817229, 18.855127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.768702, 11.706280, 19.227207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.732841, 11.783681, 18.836409>,  <18.711327, 11.830122, 18.601931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.732841, 11.783681, 18.836409>,  <18.768702, 11.706280, 19.227207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.732841, 11.783681, 18.836409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481230, 0.867256, 0.127611,
		0.871998, -0.458719, -0.170869,
		-0.089649, 0.193503, -0.976995,
		18.705946, 11.841732, 18.543310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.371157, 12.008294, 19.022644>,  <18.768702, 11.706280, 19.227207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.371157, 12.008294, 19.022644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.124065, 12.157408, 18.745676>,  <18.975811, 12.246876, 18.579496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.124065, 12.157408, 18.745676>,  <19.371157, 12.008294, 19.022644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.124065, 12.157408, 18.745676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476618, 0.877832, 0.047400,
		0.625498, -0.300738, -0.719937,
		-0.617728, 0.372783, -0.692419,
		18.938747, 12.269243, 18.537951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.866844, 12.442242, 18.477652>,  <19.371157, 12.008294, 19.022644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.866844, 12.442242, 18.477652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.238354, 12.295910, 18.453815>,  <20.461260, 12.208111, 18.439514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.238354, 12.295910, 18.453815>,  <19.866844, 12.442242, 18.477652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.238354, 12.295910, 18.453815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030333, 0.235257, -0.971460,
		0.369408, 0.900457, 0.229596,
		0.928772, -0.365829, -0.059592,
		20.516985, 12.186161, 18.435938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.282063, 12.972885, 18.182859>,  <19.866844, 12.442242, 18.477652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.282063, 12.972885, 18.182859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.489494, 12.636786, 18.119539>,  <20.613953, 12.435125, 18.081547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.489494, 12.636786, 18.119539>,  <20.282063, 12.972885, 18.182859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.489494, 12.636786, 18.119539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112737, 0.116332, -0.986791,
		0.847566, 0.529574, -0.034400,
		0.518577, -0.840249, -0.158301,
		20.645067, 12.384710, 18.072048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.042435, 13.052538, 17.804365>,  <20.282063, 12.972885, 18.182859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.042435, 13.052538, 17.804365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.963768, 12.670938, 17.713852>,  <20.916569, 12.441978, 17.659544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.963768, 12.670938, 17.713852>,  <21.042435, 13.052538, 17.804365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.963768, 12.670938, 17.713852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080369, 0.214330, -0.973449,
		0.977171, -0.209631, 0.034520,
		-0.196667, -0.954001, -0.226285,
		20.904768, 12.384737, 17.645966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.510233, 12.914469, 17.241741>,  <21.042435, 13.052538, 17.804365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.510233, 12.914469, 17.241741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.241917, 12.618670, 17.219193>,  <21.080927, 12.441190, 17.205664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.241917, 12.618670, 17.219193>,  <21.510233, 12.914469, 17.241741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.241917, 12.618670, 17.219193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003710, 0.079354, -0.996840,
		0.741636, -0.668463, -0.055974,
		-0.670792, -0.739499, -0.056372,
		21.040678, 12.396820, 17.202280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.856129, 12.411328, 16.718111>,  <21.510233, 12.914469, 17.241741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.856129, 12.411328, 16.718111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.465767, 12.334085, 16.758749>,  <21.231550, 12.287740, 16.783131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.465767, 12.334085, 16.758749>,  <21.856129, 12.411328, 16.718111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.465767, 12.334085, 16.758749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074058, -0.144827, -0.986682,
		0.205249, -0.970430, 0.127036,
		-0.975904, -0.193107, 0.101593,
		21.172997, 12.276154, 16.789227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.688732, 11.841485, 16.289682>,  <21.856129, 12.411328, 16.718111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.688732, 11.841485, 16.289682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.337589, 12.028296, 16.332109>,  <21.126904, 12.140382, 16.357567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.337589, 12.028296, 16.332109>,  <21.688732, 11.841485, 16.289682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.337589, 12.028296, 16.332109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124866, -0.009379, -0.992129,
		-0.462355, -0.884194, 0.066549,
		-0.877859, 0.467026, 0.106069,
		21.074232, 12.168404, 16.363930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.224394, 11.434677, 15.835670>,  <21.688732, 11.841485, 16.289682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.224394, 11.434677, 15.835670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.058756, 11.792666, 15.902062>,  <20.959373, 12.007460, 15.941897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.058756, 11.792666, 15.902062>,  <21.224394, 11.434677, 15.835670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.058756, 11.792666, 15.902062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274630, 0.051008, -0.960196,
		-0.867815, -0.443195, 0.224664,
		-0.414095, 0.894972, 0.165980,
		20.934528, 12.061158, 15.951857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.694357, 11.372873, 15.468059>,  <21.224394, 11.434677, 15.835670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.694357, 11.372873, 15.468059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.719526, 11.769175, 15.516141>,  <20.734629, 12.006955, 15.544991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.719526, 11.769175, 15.516141>,  <20.694357, 11.372873, 15.468059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.719526, 11.769175, 15.516141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320336, 0.134120, -0.937762,
		-0.945212, 0.020501, 0.325813,
		0.062923, 0.990753, 0.120205,
		20.738403, 12.066401, 15.552202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.067533, 11.607012, 15.181703>,  <20.694357, 11.372873, 15.468059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.067533, 11.607012, 15.181703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.365223, 11.874177, 15.179670>,  <20.543837, 12.034476, 15.178452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.365223, 11.874177, 15.179670>,  <20.067533, 11.607012, 15.181703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.365223, 11.874177, 15.179670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134971, 0.142935, -0.980486,
		-0.654153, 0.730386, 0.196524,
		0.744223, 0.667912, -0.005080,
		20.588490, 12.074551, 15.178146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.835159, 11.980577, 14.689746>,  <20.067533, 11.607012, 15.181703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.835159, 11.980577, 14.689746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.207584, 12.121850, 14.726369>,  <20.431040, 12.206614, 14.748343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.207584, 12.121850, 14.726369>,  <19.835159, 11.980577, 14.689746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.207584, 12.121850, 14.726369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077119, 0.054770, -0.995516,
		-0.356612, 0.933951, 0.023758,
		0.931064, 0.353181, 0.091557,
		20.486904, 12.227804, 14.753836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.906624, 12.583450, 14.297567>,  <19.835159, 11.980577, 14.689746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.906624, 12.583450, 14.297567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.288769, 12.468725, 14.325922>,  <20.518055, 12.399890, 14.342935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.288769, 12.468725, 14.325922>,  <19.906624, 12.583450, 14.297567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.288769, 12.468725, 14.325922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132405, 0.201156, -0.970569,
		0.264113, 0.936629, 0.230152,
		0.955360, -0.286814, 0.070887,
		20.575377, 12.382681, 14.347188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.309155, 13.124109, 14.004037>,  <19.906624, 12.583450, 14.297567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.309155, 13.124109, 14.004037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.505745, 12.775799, 13.998352>,  <20.623699, 12.566813, 13.994941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.505745, 12.775799, 13.998352>,  <20.309155, 13.124109, 14.004037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.505745, 12.775799, 13.998352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174606, 0.114510, -0.977957,
		0.853209, 0.478159, 0.208322,
		0.491474, -0.870776, -0.014212,
		20.653187, 12.514565, 13.994088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.897903, 13.343898, 13.608459>,  <20.309155, 13.124109, 14.004037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.897903, 13.343898, 13.608459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.905806, 12.944252, 13.623311>,  <20.910547, 12.704464, 13.632223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.905806, 12.944252, 13.623311>,  <20.897903, 13.343898, 13.608459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.905806, 12.944252, 13.623311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364771, -0.027377, -0.930695,
		0.930888, 0.031930, 0.363908,
		0.019754, -0.999115, 0.037132,
		20.911732, 12.644518, 13.634451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.494881, 13.225677, 13.376176>,  <20.897903, 13.343898, 13.608459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.494881, 13.225677, 13.376176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.288916, 12.889989, 13.306231>,  <21.165337, 12.688576, 13.264265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.288916, 12.889989, 13.306231>,  <21.494881, 13.225677, 13.376176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.288916, 12.889989, 13.306231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273571, 0.032446, -0.961304,
		0.812420, -0.542823, 0.212880,
		-0.514911, -0.839221, -0.174861,
		21.134443, 12.638223, 13.253774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.974260, 12.718946, 13.187037>,  <21.494881, 13.225677, 13.376176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.974260, 12.718946, 13.187037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.634687, 12.575352, 13.031888>,  <21.430944, 12.489195, 12.938799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.634687, 12.575352, 13.031888>,  <21.974260, 12.718946, 13.187037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.634687, 12.575352, 13.031888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516359, -0.406973, -0.753489,
		0.112640, -0.839941, 0.530859,
		-0.848932, -0.358987, -0.387870,
		21.380009, 12.467656, 12.915526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.157824, 12.112941, 12.938153>,  <21.974260, 12.718946, 13.187037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.157824, 12.112941, 12.938153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.812126, 12.151987, 12.740748>,  <21.604708, 12.175415, 12.622305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.812126, 12.151987, 12.740748>,  <22.157824, 12.112941, 12.938153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.812126, 12.151987, 12.740748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349932, -0.588141, -0.729135,
		-0.361429, -0.802846, 0.474139,
		-0.864244, 0.097614, -0.493512,
		21.552853, 12.181272, 12.592694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.925104, 11.411675, 12.735136>,  <22.157824, 12.112941, 12.938153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.925104, 11.411675, 12.735136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.744268, 11.681218, 12.501373>,  <21.635767, 11.842944, 12.361115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.744268, 11.681218, 12.501373>,  <21.925104, 11.411675, 12.735136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.744268, 11.681218, 12.501373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333124, -0.480222, -0.811428,
		-0.827432, -0.561518, -0.007375,
		-0.452089, 0.673858, -0.584406,
		21.608641, 11.883375, 12.326052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.674049, 10.938565, 12.201237>,  <21.925104, 11.411675, 12.735136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.674049, 10.938565, 12.201237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.657045, 11.309847, 12.053382>,  <21.646843, 11.532616, 11.964669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.657045, 11.309847, 12.053382>,  <21.674049, 10.938565, 12.201237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.657045, 11.309847, 12.053382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593623, -0.274120, -0.756617,
		-0.803620, -0.251588, -0.539351,
		-0.042508, 0.928203, -0.369637,
		21.644293, 11.588308, 11.942491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.567698, 10.817259, 11.576723>,  <21.674049, 10.938565, 12.201237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.567698, 10.817259, 11.576723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.672155, 11.202323, 11.548186>,  <21.734831, 11.433361, 11.531064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.672155, 11.202323, 11.548186>,  <21.567698, 10.817259, 11.576723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.672155, 11.202323, 11.548186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575496, -0.214600, -0.789146,
		-0.774989, 0.165024, -0.610048,
		0.261144, 0.962660, -0.071342,
		21.750498, 11.491121, 11.526784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.430626, 10.999002, 10.872519>,  <21.567698, 10.817259, 11.576723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.430626, 10.999002, 10.872519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.702061, 11.264674, 10.997988>,  <21.864922, 11.424077, 11.073269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.702061, 11.264674, 10.997988>,  <21.430626, 10.999002, 10.872519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.702061, 11.264674, 10.997988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521706, -0.135211, -0.842343,
		-0.517054, 0.735245, -0.438258,
		0.678586, 0.664178, 0.313670,
		21.905636, 11.463927, 11.092089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.635313, 11.482480, 10.349032>,  <21.430626, 10.999002, 10.872519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.635313, 11.482480, 10.349032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.944485, 11.450382, 10.600791>,  <22.129988, 11.431124, 10.751846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.944485, 11.450382, 10.600791>,  <21.635313, 11.482480, 10.349032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.944485, 11.450382, 10.600791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633663, 0.046945, -0.772184,
		0.032416, 0.995669, 0.087132,
		0.772930, -0.080243, 0.629396,
		22.176363, 11.426310, 10.789610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.221760, 12.003123, 10.779232>,  <21.635313, 11.482480, 10.349032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.221760, 12.003123, 10.779232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.952583, 11.707896, 10.759595>,  <20.791079, 11.530760, 10.747812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.952583, 11.707896, 10.759595>,  <21.221760, 12.003123, 10.779232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.952583, 11.707896, 10.759595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001489, 0.067720, -0.997703,
		0.739696, -0.671320, -0.046670,
		-0.672939, -0.738067, -0.049093,
		20.750702, 11.486476, 10.744867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.931873, 12.700559, 10.513267>,  <21.221760, 12.003123, 10.779232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.931873, 12.700559, 10.513267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.728144, 12.882463, 10.221025>,  <20.605906, 12.991605, 10.045679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.728144, 12.882463, 10.221025>,  <20.931873, 12.700559, 10.513267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.728144, 12.882463, 10.221025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712182, 0.253853, 0.654489,
		0.483101, 0.853670, 0.194579,
		-0.509323, 0.454760, -0.730605,
		20.575346, 13.018890, 10.001843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.478592, 13.171705, 10.838143>,  <20.931873, 12.700559, 10.513267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.478592, 13.171705, 10.838143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.649923, 13.238989, 10.483011>,  <21.752722, 13.279359, 10.269932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.649923, 13.238989, 10.483011>,  <21.478592, 13.171705, 10.838143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.649923, 13.238989, 10.483011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443951, 0.816594, 0.368894,
		0.787046, -0.552160, 0.275095,
		0.428329, 0.168208, -0.887829,
		21.778421, 13.289452, 10.216662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.225279, 13.256408, 10.956972>,  <21.478592, 13.171705, 10.838143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.225279, 13.256408, 10.956972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.093100, 13.449250, 10.632410>,  <22.013792, 13.564956, 10.437673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.093100, 13.449250, 10.632410>,  <22.225279, 13.256408, 10.956972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.093100, 13.449250, 10.632410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297792, 0.869043, 0.395075,
		0.895614, -0.111078, -0.430741,
		-0.330448, 0.482105, -0.811405,
		21.993965, 13.593882, 10.388988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.692822, 13.727810, 10.746128>,  <22.225279, 13.256408, 10.956972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.692822, 13.727810, 10.746128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.359819, 13.873030, 10.578733>,  <22.160019, 13.960162, 10.478296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.359819, 13.873030, 10.578733>,  <22.692822, 13.727810, 10.746128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.359819, 13.873030, 10.578733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292935, 0.929593, 0.223709,
		0.470240, 0.063649, -0.880240,
		-0.832504, 0.363050, -0.418487,
		22.110067, 13.981945, 10.453187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.935247, 14.230187, 10.242523>,  <22.692822, 13.727810, 10.746128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.935247, 14.230187, 10.242523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.587044, 14.356915, 10.393171>,  <22.378122, 14.432951, 10.483560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.587044, 14.356915, 10.393171>,  <22.935247, 14.230187, 10.242523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.587044, 14.356915, 10.393171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450715, 0.820545, 0.351515,
		-0.197667, 0.475744, -0.857085,
		-0.870508, 0.316818, 0.376619,
		22.325891, 14.451960, 10.506157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.843155, 14.939882, 10.008137>,  <22.935247, 14.230187, 10.242523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.843155, 14.939882, 10.008137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.641722, 14.884034, 10.349173>,  <22.520861, 14.850525, 10.553794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.641722, 14.884034, 10.349173>,  <22.843155, 14.939882, 10.008137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.641722, 14.884034, 10.349173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488597, 0.767853, 0.414336,
		-0.712514, 0.625226, -0.318460,
		-0.503584, -0.139621, 0.852589,
		22.490646, 14.842148, 10.604949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.630821, 15.573802, 10.375904>,  <22.843155, 14.939882, 10.008137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.630821, 15.573802, 10.375904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.678450, 15.267064, 10.628181>,  <22.707027, 15.083021, 10.779547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.678450, 15.267064, 10.628181>,  <22.630821, 15.573802, 10.375904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.678450, 15.267064, 10.628181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682907, 0.524352, 0.508620,
		-0.720736, 0.370141, 0.586119,
		0.119071, -0.766845, 0.630691,
		22.714170, 15.037010, 10.817388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.911806, 15.806938, 10.988696>,  <22.630821, 15.573802, 10.375904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.911806, 15.806938, 10.988696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.050911, 16.058479, 11.266863>,  <23.134375, 16.209404, 11.433763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.050911, 16.058479, 11.266863>,  <22.911806, 15.806938, 10.988696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.050911, 16.058479, 11.266863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541980, -0.470400, 0.696406,
		0.765061, -0.619086, 0.177239,
		0.347762, 0.628853, 0.695417,
		23.155239, 16.247135, 11.475488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.268423, 15.471087, 11.597600>,  <22.911806, 15.806938, 10.988696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.268423, 15.471087, 11.597600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.123320, 15.825080, 11.714366>,  <23.036259, 16.037476, 11.784426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.123320, 15.825080, 11.714366>,  <23.268423, 15.471087, 11.597600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.123320, 15.825080, 11.714366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348891, -0.419446, 0.838057,
		0.864108, 0.202164, 0.460919,
		-0.362756, 0.884982, 0.291914,
		23.014492, 16.090574, 11.801940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.585089, 15.582144, 12.220716>,  <23.268423, 15.471087, 11.597600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.585089, 15.582144, 12.220716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.247131, 15.795968, 12.212709>,  <23.044357, 15.924263, 12.207906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.247131, 15.795968, 12.212709>,  <23.585089, 15.582144, 12.220716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.247131, 15.795968, 12.212709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266073, -0.387488, 0.882643,
		0.464071, 0.751064, 0.469618,
		-0.844893, 0.534561, -0.020016,
		22.993664, 15.956336, 12.206705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.624428, 16.001169, 12.790289>,  <23.585089, 15.582144, 12.220716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.624428, 16.001169, 12.790289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.237078, 15.973643, 12.694363>,  <23.004667, 15.957128, 12.636806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.237078, 15.973643, 12.694363>,  <23.624428, 16.001169, 12.790289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.237078, 15.973643, 12.694363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208611, -0.303921, 0.929577,
		-0.136854, 0.950209, 0.279954,
		-0.968376, -0.068815, -0.239817,
		22.946566, 15.952999, 12.622417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.257153, 16.339436, 13.320452>,  <23.624428, 16.001169, 12.790289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.257153, 16.339436, 13.320452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.986809, 16.098375, 13.150735>,  <22.824602, 15.953739, 13.048904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.986809, 16.098375, 13.150735>,  <23.257153, 16.339436, 13.320452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.986809, 16.098375, 13.150735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380505, -0.207720, 0.901148,
		-0.631212, 0.770496, -0.088922,
		-0.675860, -0.602651, -0.424293,
		22.784050, 15.917580, 13.023447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.776937, 16.423502, 13.708613>,  <23.257153, 16.339436, 13.320452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.776937, 16.423502, 13.708613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.697367, 16.082188, 13.515809>,  <22.649624, 15.877399, 13.400126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.697367, 16.082188, 13.515809>,  <22.776937, 16.423502, 13.708613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.697367, 16.082188, 13.515809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384107, -0.384603, 0.839370,
		-0.901604, 0.352119, -0.251243,
		-0.198929, -0.853284, -0.482011,
		22.637688, 15.826202, 13.371206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.094465, 16.195555, 13.945553>,  <22.776937, 16.423502, 13.708613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.094465, 16.195555, 13.945553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.235920, 15.870260, 13.760692>,  <22.320793, 15.675083, 13.649775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.235920, 15.870260, 13.760692>,  <22.094465, 16.195555, 13.945553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.235920, 15.870260, 13.760692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440870, -0.580670, 0.684438,
		-0.824970, -0.038291, -0.563877,
		0.353634, -0.813238, -0.462154,
		22.342010, 15.626288, 13.622046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.568422, 15.737675, 14.025145>,  <22.094465, 16.195555, 13.945553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.568422, 15.737675, 14.025145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.875818, 15.492917, 13.950300>,  <22.060255, 15.346063, 13.905394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.875818, 15.492917, 13.950300>,  <21.568422, 15.737675, 14.025145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.875818, 15.492917, 13.950300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225455, -0.532610, 0.815780,
		-0.598828, -0.584732, -0.547260,
		0.768489, -0.611894, -0.187110,
		22.106365, 15.309349, 13.894167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.350750, 14.990623, 13.996153>,  <21.568422, 15.737675, 14.025145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.350750, 14.990623, 13.996153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.734560, 15.013221, 14.106509>,  <21.964846, 15.026779, 14.172723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.734560, 15.013221, 14.106509>,  <21.350750, 14.990623, 13.996153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.734560, 15.013221, 14.106509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218146, -0.470464, 0.855030,
		0.178101, -0.880609, -0.439099,
		0.959527, 0.056494, 0.275891,
		22.022419, 15.030169, 14.189277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.505384, 14.355582, 14.285993>,  <21.350750, 14.990623, 13.996153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.505384, 14.355582, 14.285993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.813124, 14.579754, 14.408645>,  <21.997768, 14.714256, 14.482236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.813124, 14.579754, 14.408645>,  <21.505384, 14.355582, 14.285993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.813124, 14.579754, 14.408645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106883, -0.360299, 0.926693,
		0.629824, -0.745724, -0.217296,
		0.769349, 0.560429, 0.306630,
		22.043928, 14.747883, 14.500634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.059315, 13.905066, 14.533248>,  <21.505384, 14.355582, 14.285993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.059315, 13.905066, 14.533248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.097635, 14.256015, 14.721309>,  <22.120626, 14.466584, 14.834146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.097635, 14.256015, 14.721309>,  <22.059315, 13.905066, 14.533248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.097635, 14.256015, 14.721309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027008, -0.474441, 0.879873,
		0.995034, -0.071593, -0.069148,
		0.095800, 0.877371, 0.470152,
		22.126375, 14.519226, 14.862354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.412880, 13.661823, 15.104806>,  <22.059315, 13.905066, 14.533248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.412880, 13.661823, 15.104806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.339327, 14.041453, 15.207134>,  <22.295195, 14.269231, 15.268531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.339327, 14.041453, 15.207134>,  <22.412880, 13.661823, 15.104806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.339327, 14.041453, 15.207134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167733, -0.226145, 0.959544,
		0.968531, 0.219355, -0.117606,
		-0.183885, 0.949074, 0.255821,
		22.284161, 14.326176, 15.283880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.970633, 13.806247, 15.495636>,  <22.412880, 13.661823, 15.104806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.970633, 13.806247, 15.495636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.682919, 14.067129, 15.591348>,  <22.510290, 14.223659, 15.648774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.682919, 14.067129, 15.591348>,  <22.970633, 13.806247, 15.495636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.682919, 14.067129, 15.591348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167380, -0.171585, 0.970846,
		0.674248, 0.738368, 0.014253,
		-0.719287, 0.652205, 0.239279,
		22.467133, 14.262791, 15.663132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.217304, 14.109928, 16.071407>,  <22.970633, 13.806247, 15.495636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.217304, 14.109928, 16.071407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.832092, 14.216026, 16.090246>,  <22.600965, 14.279685, 16.101549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.832092, 14.216026, 16.090246>,  <23.217304, 14.109928, 16.071407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.832092, 14.216026, 16.090246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022563, -0.253625, 0.967039,
		0.268449, 0.930225, 0.250233,
		-0.963030, 0.265247, 0.047097,
		22.543184, 14.295600, 16.104376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.211044, 14.415381, 16.696711>,  <23.217304, 14.109928, 16.071407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.211044, 14.415381, 16.696711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.825352, 14.338470, 16.623734>,  <22.593937, 14.292322, 16.579948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.825352, 14.338470, 16.623734>,  <23.211044, 14.415381, 16.696711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.825352, 14.338470, 16.623734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088249, -0.416151, 0.905003,
		-0.249937, 0.888733, 0.384298,
		-0.964232, -0.192280, -0.182442,
		22.536081, 14.280786, 16.569000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.037172, 15.068768, 16.509457>,  <23.211044, 14.415381, 16.696711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.037172, 15.068768, 16.509457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.305607, 15.363791, 16.539528>,  <23.466667, 15.540804, 16.557571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.305607, 15.363791, 16.539528>,  <23.037172, 15.068768, 16.509457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.305607, 15.363791, 16.539528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154956, -0.238708, 0.958648,
		0.725004, -0.631687, -0.274483,
		0.671087, 0.737557, 0.075181,
		23.506933, 15.585057, 16.562082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.795994, 14.863819, 16.671173>,  <23.037172, 15.068768, 16.509457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.795994, 14.863819, 16.671173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.728415, 15.226471, 16.825825>,  <23.687868, 15.444062, 16.918615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.728415, 15.226471, 16.825825>,  <23.795994, 14.863819, 16.671173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.728415, 15.226471, 16.825825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356893, -0.309376, 0.881427,
		0.918741, 0.286899, -0.271301,
		-0.168947, 0.906629, 0.386628,
		23.677731, 15.498460, 16.941813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.392805, 15.049017, 17.087866>,  <23.795994, 14.863819, 16.671173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.392805, 15.049017, 17.087866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.033152, 15.173622, 17.210840>,  <23.817360, 15.248385, 17.284624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.033152, 15.173622, 17.210840>,  <24.392805, 15.049017, 17.087866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.033152, 15.173622, 17.210840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114502, -0.510543, 0.852194,
		0.422428, 0.801439, 0.423379,
		-0.899135, 0.311513, 0.307434,
		23.763411, 15.267076, 17.303070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.960615, 15.439527, 17.199959>,  <24.392805, 15.049017, 17.087866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.960615, 15.439527, 17.199959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.740942, 15.202972, 17.436150>,  <24.609138, 15.061040, 17.577864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.740942, 15.202972, 17.436150>,  <24.960615, 15.439527, 17.199959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.740942, 15.202972, 17.436150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835452, -0.371212, 0.405243,
		-0.020463, 0.715867, 0.697937,
		-0.549182, -0.591385, 0.590476,
		24.576187, 15.025557, 17.613293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.197443, 15.133265, 16.533760>,  <24.960615, 15.439527, 17.199959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.197443, 15.133265, 16.533760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422516, 14.960985, 16.251516>,  <25.557560, 14.857617, 16.082170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422516, 14.960985, 16.251516>,  <25.197443, 15.133265, 16.533760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422516, 14.960985, 16.251516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090218, 0.880449, -0.465479,
		0.821735, 0.198258, 0.534271,
		0.562683, -0.430701, -0.705609,
		25.591320, 14.831775, 16.039833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767393, 15.388257, 16.623804>,  <25.197443, 15.133265, 16.533760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767393, 15.388257, 16.623804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662153, 15.284012, 16.252243>,  <25.599010, 15.221465, 16.029306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662153, 15.284012, 16.252243>,  <25.767393, 15.388257, 16.623804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.662153, 15.284012, 16.252243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021867, 0.964188, -0.264319,
		0.964543, -0.049209, -0.259299,
		-0.263019, -0.260617, -0.928924,
		25.583223, 15.205828, 15.973572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422798, 15.513469, 16.926083>,  <25.767393, 15.388257, 16.623804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422798, 15.513469, 16.926083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745228, 15.594359, 17.148560>,  <26.938684, 15.642894, 17.282045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745228, 15.594359, 17.148560>,  <26.422798, 15.513469, 16.926083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745228, 15.594359, 17.148560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450344, 0.400156, -0.798164,
		-0.383975, 0.893856, 0.231484,
		0.806073, 0.202227, 0.556193,
		26.987049, 15.655027, 17.315418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725739, 15.363317, 16.300413>,  <26.422798, 15.513469, 16.926083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725739, 15.363317, 16.300413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794697, 15.752605, 16.361231>,  <26.836073, 15.986178, 16.397722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794697, 15.752605, 16.361231>,  <26.725739, 15.363317, 16.300413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794697, 15.752605, 16.361231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106266, 0.135081, -0.985120,
		-0.979279, 0.185989, -0.080133,
		0.172397, 0.973222, 0.152046,
		26.846416, 16.044573, 16.406845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.354952, 15.676056, 15.816326>,  <26.725739, 15.363317, 16.300413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.354952, 15.676056, 15.816326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651796, 15.927802, 15.908563>,  <26.829903, 16.078850, 15.963904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651796, 15.927802, 15.908563>,  <26.354952, 15.676056, 15.816326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.651796, 15.927802, 15.908563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105716, 0.229818, -0.967475,
		-0.661889, 0.742350, 0.104016,
		0.742110, 0.629365, 0.230592,
		26.874430, 16.116611, 15.977740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367039, 14.902380, 15.539128>,  <26.354952, 15.676056, 15.816326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367039, 14.902380, 15.539128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596113, 15.078376, 15.262450>,  <26.733559, 15.183973, 15.096443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596113, 15.078376, 15.262450>,  <26.367039, 14.902380, 15.539128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596113, 15.078376, 15.262450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766664, -0.586222, 0.261859,
		-0.290271, -0.680260, -0.673045,
		0.572686, 0.439988, -0.691694,
		26.767920, 15.210372, 15.054942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754143, 14.464493, 15.045990>,  <26.367039, 14.902380, 15.539128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754143, 14.464493, 15.045990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905979, 14.815579, 15.162968>,  <26.997080, 15.026232, 15.233154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905979, 14.815579, 15.162968>,  <26.754143, 14.464493, 15.045990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905979, 14.815579, 15.162968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769691, -0.474996, 0.426561,
		0.513310, 0.063173, -0.855875,
		0.379590, 0.877717, 0.292444,
		27.019855, 15.078895, 15.250701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<17.520815, 22.119461, 21.260796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.246317, 22.031464, 21.538118>,  <17.081617, 21.978666, 21.704512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.246317, 22.031464, 21.538118>,  <17.520815, 22.119461, 21.260796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.246317, 22.031464, 21.538118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348011, -0.737685, -0.578540,
		0.638715, -0.638298, 0.429673,
		-0.686245, -0.219991, 0.693305,
		17.040443, 21.965466, 21.746109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.680952, 21.374454, 21.481668>,  <17.520815, 22.119461, 21.260796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.680952, 21.374454, 21.481668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.302635, 21.431028, 21.598612>,  <17.075645, 21.464973, 21.668777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.302635, 21.431028, 21.598612>,  <17.680952, 21.374454, 21.481668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.302635, 21.431028, 21.598612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294160, -0.754589, -0.586571,
		0.137649, -0.640774, 0.755289,
		-0.945792, 0.141435, 0.292358,
		17.018898, 21.473459, 21.686319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.484734, 20.733849, 21.759981>,  <17.680952, 21.374454, 21.481668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.484734, 20.733849, 21.759981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.180332, 20.951281, 21.618340>,  <16.997690, 21.081739, 21.533356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.180332, 20.951281, 21.618340>,  <17.484734, 20.733849, 21.759981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.180332, 20.951281, 21.618340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227926, -0.735057, -0.638546,
		-0.607387, -0.405229, 0.683280,
		-0.761006, 0.543582, -0.354102,
		16.952030, 21.114355, 21.512108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.967642, 20.270685, 21.768143>,  <17.484734, 20.733849, 21.759981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.967642, 20.270685, 21.768143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.822872, 20.562679, 21.536236>,  <16.736010, 20.737877, 21.397093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.822872, 20.562679, 21.536236>,  <16.967642, 20.270685, 21.768143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.822872, 20.562679, 21.536236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297002, -0.679816, -0.670552,
		-0.883629, -0.070499, 0.462850,
		-0.361926, 0.729987, -0.579767,
		16.714294, 20.781675, 21.362307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.407585, 20.001127, 21.634207>,  <16.967642, 20.270685, 21.768143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.407585, 20.001127, 21.634207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.447752, 20.288607, 21.358994>,  <16.471851, 20.461094, 21.193865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.447752, 20.288607, 21.358994>,  <16.407585, 20.001127, 21.634207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.447752, 20.288607, 21.358994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469684, -0.575384, -0.669575,
		-0.877105, 0.390394, 0.279783,
		0.100415, 0.718697, -0.688034,
		16.477877, 20.504215, 21.152584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.764106, 20.037985, 21.402340>,  <16.407585, 20.001127, 21.634207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.764106, 20.037985, 21.402340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.020849, 20.186501, 21.133965>,  <16.174896, 20.275610, 20.972939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.020849, 20.186501, 21.133965>,  <15.764106, 20.037985, 21.402340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.020849, 20.186501, 21.133965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340920, -0.645564, -0.683389,
		-0.686870, 0.667377, -0.287781,
		0.641859, 0.371289, -0.670941,
		16.213408, 20.297888, 20.932682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.378161, 20.091509, 20.778839>,  <15.764106, 20.037985, 21.402340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.378161, 20.091509, 20.778839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.768974, 20.090391, 20.693611>,  <16.003462, 20.089720, 20.642473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.768974, 20.090391, 20.693611>,  <15.378161, 20.091509, 20.778839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.768974, 20.090391, 20.693611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147608, -0.730035, -0.667279,
		-0.153685, 0.683404, -0.713680,
		0.977033, -0.002794, -0.213071,
		16.062084, 20.089554, 20.629690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.370819, 19.928171, 20.133015>,  <15.378161, 20.091509, 20.778839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.370819, 19.928171, 20.133015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.747620, 19.835155, 20.229811>,  <15.973701, 19.779346, 20.287888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.747620, 19.835155, 20.229811>,  <15.370819, 19.928171, 20.133015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.747620, 19.835155, 20.229811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067704, -0.837894, -0.541617,
		0.328707, 0.493821, -0.805042,
		0.942002, -0.232538, 0.241988,
		16.030220, 19.765394, 20.302406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.711515, 19.633932, 19.523554>,  <15.370819, 19.928171, 20.133015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.711515, 19.633932, 19.523554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.959841, 19.504887, 19.809353>,  <16.108837, 19.427460, 19.980833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.959841, 19.504887, 19.809353>,  <15.711515, 19.633932, 19.523554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.959841, 19.504887, 19.809353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128830, -0.857027, -0.498907,
		0.773300, 0.401778, -0.490492,
		0.620814, -0.322615, 0.714500,
		16.146086, 19.408102, 20.023703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.424860, 19.503981, 19.256506>,  <15.711515, 19.633932, 19.523554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.424860, 19.503981, 19.256506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.349016, 19.271954, 19.573383>,  <16.303511, 19.132736, 19.763510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.349016, 19.271954, 19.573383>,  <16.424860, 19.503981, 19.256506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.349016, 19.271954, 19.573383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173353, -0.813931, -0.554495,
		0.966435, 0.032191, 0.254885,
		-0.189609, -0.580069, 0.792192,
		16.292133, 19.097933, 19.811041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.907507, 19.000706, 19.233171>,  <16.424860, 19.503981, 19.256506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.907507, 19.000706, 19.233171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.621506, 18.850039, 19.468761>,  <16.449905, 18.759638, 19.610115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.621506, 18.850039, 19.468761>,  <16.907507, 19.000706, 19.233171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.621506, 18.850039, 19.468761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119563, -0.895921, -0.427820,
		0.688822, -0.235473, 0.685621,
		-0.715003, -0.376667, 0.588977,
		16.407005, 18.737038, 19.645454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.221703, 18.406696, 19.510164>,  <16.907507, 19.000706, 19.233171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.221703, 18.406696, 19.510164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.826408, 18.360334, 19.550083>,  <16.589231, 18.332518, 19.574036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.826408, 18.360334, 19.550083>,  <17.221703, 18.406696, 19.510164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.826408, 18.360334, 19.550083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086756, -0.962149, -0.258346,
		0.125965, -0.246649, 0.960884,
		-0.988234, -0.115905, 0.099799,
		16.529938, 18.325563, 19.580023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.132559, 17.827316, 19.721262>,  <17.221703, 18.406696, 19.510164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.132559, 17.827316, 19.721262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.742548, 17.839485, 19.633266>,  <16.508541, 17.846786, 19.580469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.742548, 17.839485, 19.633266>,  <17.132559, 17.827316, 19.721262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.742548, 17.839485, 19.633266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007237, -0.994398, -0.105449,
		-0.221964, -0.101224, 0.969786,
		-0.975028, 0.030424, -0.219988,
		16.450039, 17.848612, 19.567270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.809454, 17.246386, 20.022032>,  <17.132559, 17.827316, 19.721262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.809454, 17.246386, 20.022032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.554115, 17.353024, 19.733189>,  <16.400913, 17.417006, 19.559883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.554115, 17.353024, 19.733189>,  <16.809454, 17.246386, 20.022032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.554115, 17.353024, 19.733189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142176, -0.962803, -0.229773,
		-0.756505, -0.044008, 0.652505,
		-0.638346, 0.266595, -0.722109,
		16.362612, 17.433002, 19.516556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.424330, 16.613857, 19.902534>,  <16.809454, 17.246386, 20.022032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.424330, 16.613857, 19.902534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.299353, 16.802490, 19.572689>,  <16.224367, 16.915670, 19.374781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.299353, 16.802490, 19.572689>,  <16.424330, 16.613857, 19.902534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.299353, 16.802490, 19.572689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069744, -0.877118, -0.475184,
		-0.947373, -0.090954, 0.306938,
		-0.312441, 0.471583, -0.824615,
		16.205620, 16.943966, 19.325304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.836838, 16.281643, 19.680372>,  <16.424330, 16.613857, 19.902534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.836838, 16.281643, 19.680372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.985373, 16.474276, 19.362835>,  <16.074495, 16.589855, 19.172314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.985373, 16.474276, 19.362835>,  <15.836838, 16.281643, 19.680372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.985373, 16.474276, 19.362835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049909, -0.864092, -0.500854,
		-0.927155, 0.146367, -0.344907,
		0.371340, 0.481583, -0.793841,
		16.096775, 16.618752, 19.124683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.302621, 16.002172, 19.155045>,  <15.836838, 16.281643, 19.680372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.302621, 16.002172, 19.155045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.645443, 16.138369, 19.000372>,  <15.851136, 16.220087, 18.907568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.645443, 16.138369, 19.000372>,  <15.302621, 16.002172, 19.155045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.645443, 16.138369, 19.000372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097005, -0.843727, -0.527935,
		-0.506009, 0.414960, -0.756150,
		0.857056, 0.340490, -0.386680,
		15.902560, 16.240515, 18.884369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.304921, 15.702615, 18.473137>,  <15.302621, 16.002172, 19.155045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.304921, 15.702615, 18.473137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.687981, 15.813034, 18.505892>,  <15.917816, 15.879286, 18.525545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.687981, 15.813034, 18.505892>,  <15.304921, 15.702615, 18.473137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.687981, 15.813034, 18.505892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285067, -0.868895, -0.404670,
		-0.040557, 0.410875, -0.910789,
		0.957649, 0.276048, 0.081887,
		15.975275, 15.895848, 18.530458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.621524, 15.551720, 17.801403>,  <15.304921, 15.702615, 18.473137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.621524, 15.551720, 17.801403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.929776, 15.583796, 18.054289>,  <16.114727, 15.603041, 18.206020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.929776, 15.583796, 18.054289>,  <15.621524, 15.551720, 17.801403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.929776, 15.583796, 18.054289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416631, -0.814080, -0.404589,
		0.482231, 0.575190, -0.660764,
		0.770631, 0.080189, 0.632216,
		16.160965, 15.607852, 18.243954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105459, 15.379633, 17.444466>,  <15.621524, 15.551720, 17.801403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.105459, 15.379633, 17.444466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.251572, 15.308424, 17.809952>,  <16.339239, 15.265698, 18.029243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.251572, 15.308424, 17.809952>,  <16.105459, 15.379633, 17.444466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.251572, 15.308424, 17.809952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306263, -0.903920, -0.298550,
		0.879075, 0.388892, -0.275663,
		0.365281, -0.178023, 0.913716,
		16.361156, 15.255017, 18.084066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.750175, 15.096210, 17.311235>,  <16.105459, 15.379633, 17.444466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.750175, 15.096210, 17.311235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.636902, 14.968046, 17.672819>,  <16.568937, 14.891148, 17.889771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.636902, 14.968046, 17.672819>,  <16.750175, 15.096210, 17.311235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.636902, 14.968046, 17.672819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308843, -0.922801, -0.230336,
		0.907978, 0.213954, 0.360278,
		-0.283183, -0.320409, 0.903961,
		16.551947, 14.871923, 17.944008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.334038, 14.799821, 17.621521>,  <16.750175, 15.096210, 17.311235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.334038, 14.799821, 17.621521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.021721, 14.645073, 17.817764>,  <16.834332, 14.552224, 17.935511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.021721, 14.645073, 17.817764>,  <17.334038, 14.799821, 17.621521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.021721, 14.645073, 17.817764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314183, -0.921847, -0.226908,
		0.540051, -0.023026, 0.841317,
		-0.780790, -0.386869, 0.490610,
		16.787483, 14.529012, 17.964947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.324308, 14.433320, 16.997841>,  <17.334038, 14.799821, 17.621521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.324308, 14.433320, 16.997841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.531755, 14.446486, 16.656092>,  <17.656223, 14.454386, 16.451042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.531755, 14.446486, 16.656092>,  <17.324308, 14.433320, 16.997841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.531755, 14.446486, 16.656092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358529, 0.898789, 0.252259,
		0.776205, -0.437143, 0.454326,
		0.518617, 0.032915, -0.854373,
		17.687340, 14.456361, 16.399780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.971678, 14.540421, 17.216343>,  <17.324308, 14.433320, 16.997841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.971678, 14.540421, 17.216343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.861734, 14.688512, 16.861404>,  <17.795769, 14.777367, 16.648441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.861734, 14.688512, 16.861404>,  <17.971678, 14.540421, 17.216343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.861734, 14.688512, 16.861404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189262, 0.925668, 0.327594,
		0.942673, -0.077900, -0.324498,
		-0.274858, 0.370229, -0.887346,
		17.779278, 14.799581, 16.595200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.594149, 14.971225, 17.021467>,  <17.971678, 14.540421, 17.216343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.594149, 14.971225, 17.021467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.265921, 15.063581, 16.812334>,  <18.068985, 15.118996, 16.686853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.265921, 15.063581, 16.812334>,  <18.594149, 14.971225, 17.021467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.265921, 15.063581, 16.812334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130565, 0.966307, 0.221820,
		0.556435, 0.113755, -0.823067,
		-0.820569, 0.230893, -0.522834,
		18.019751, 15.132850, 16.655483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.773333, 15.373561, 16.448015>,  <18.594149, 14.971225, 17.021467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.773333, 15.373561, 16.448015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.399178, 15.505045, 16.500172>,  <18.174685, 15.583935, 16.531466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.399178, 15.505045, 16.500172>,  <18.773333, 15.373561, 16.448015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.399178, 15.505045, 16.500172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344992, 0.929230, 0.132334,
		-0.077662, 0.168767, -0.982592,
		-0.935387, 0.328709, 0.130389,
		18.118561, 15.603658, 16.539288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.784214, 16.029356, 16.156294>,  <18.773333, 15.373561, 16.448015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.784214, 16.029356, 16.156294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.440382, 16.019747, 16.360468>,  <18.234083, 16.013981, 16.482973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.440382, 16.019747, 16.360468>,  <18.784214, 16.029356, 16.156294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.440382, 16.019747, 16.360468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188337, 0.913681, 0.360162,
		-0.475027, 0.405722, -0.780858,
		-0.859580, -0.024023, 0.510436,
		18.182508, 16.012541, 16.513599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.335468, 16.559780, 16.028902>,  <18.784214, 16.029356, 16.156294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.335468, 16.559780, 16.028902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.223810, 16.464193, 16.400919>,  <18.156816, 16.406841, 16.624128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.223810, 16.464193, 16.400919>,  <18.335468, 16.559780, 16.028902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.223810, 16.464193, 16.400919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280174, 0.906128, 0.316913,
		-0.918467, 0.349037, -0.185987,
		-0.279143, -0.238966, 0.930040,
		18.140068, 16.392504, 16.679932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.006252, 17.114742, 16.317223>,  <18.335468, 16.559780, 16.028902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.006252, 17.114742, 16.317223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.062723, 16.921883, 16.663078>,  <18.096605, 16.806168, 16.870592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.062723, 16.921883, 16.663078>,  <18.006252, 17.114742, 16.317223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.062723, 16.921883, 16.663078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377457, 0.833629, 0.403224,
		-0.915202, 0.269438, 0.299681,
		0.141179, -0.482148, 0.864640,
		18.105076, 16.777239, 16.922470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.724388, 17.597576, 16.830441>,  <18.006252, 17.114742, 16.317223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.724388, 17.597576, 16.830441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.979410, 17.367014, 17.034903>,  <18.132423, 17.228676, 17.157579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.979410, 17.367014, 17.034903>,  <17.724388, 17.597576, 16.830441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.979410, 17.367014, 17.034903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260386, 0.785665, 0.561186,
		-0.725067, -0.224690, 0.650993,
		0.637555, -0.576407, 0.511154,
		18.170677, 17.194092, 17.188250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.754585, 17.920561, 17.407743>,  <17.724388, 17.597576, 16.830441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.754585, 17.920561, 17.407743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.061123, 17.668825, 17.459352>,  <18.245045, 17.517784, 17.490318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.061123, 17.668825, 17.459352>,  <17.754585, 17.920561, 17.407743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.061123, 17.668825, 17.459352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370882, 0.597394, 0.711032,
		-0.524560, -0.497043, 0.691220,
		0.766344, -0.629340, 0.129025,
		18.291027, 17.480022, 17.498060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.791609, 17.731194, 18.117672>,  <17.754585, 17.920561, 17.407743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.791609, 17.731194, 18.117672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.158253, 17.692686, 17.962463>,  <18.378239, 17.669580, 17.869339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.158253, 17.692686, 17.962463>,  <17.791609, 17.731194, 18.117672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.158253, 17.692686, 17.962463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350222, 0.661437, 0.663209,
		0.192804, -0.743796, 0.639995,
		0.916608, -0.096271, -0.388022,
		18.433235, 17.663805, 17.846056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.245413, 17.644600, 18.685215>,  <17.791609, 17.731194, 18.117672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.245413, 17.644600, 18.685215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.499510, 17.774099, 18.404743>,  <18.651968, 17.851799, 18.236460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.499510, 17.774099, 18.404743>,  <18.245413, 17.644600, 18.685215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.499510, 17.774099, 18.404743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288892, 0.742379, 0.604496,
		0.716240, -0.586569, 0.378068,
		0.635249, 0.323744, -0.701177,
		18.690083, 17.871223, 18.194389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.874695, 17.686886, 19.059517>,  <18.245413, 17.644600, 18.685215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.874695, 17.686886, 19.059517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.894703, 17.928379, 18.741270>,  <18.906708, 18.073275, 18.550322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.894703, 17.928379, 18.741270>,  <18.874695, 17.686886, 19.059517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.894703, 17.928379, 18.741270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427131, 0.707158, 0.563459,
		0.902805, -0.368016, -0.222502,
		0.050018, 0.603731, -0.795617,
		18.909708, 18.109499, 18.502584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.590878, 17.932009, 19.051218>,  <18.874695, 17.686886, 19.059517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.590878, 17.932009, 19.051218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.394686, 18.190271, 18.817104>,  <19.276970, 18.345228, 18.676636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.394686, 18.190271, 18.817104>,  <19.590878, 17.932009, 19.051218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.394686, 18.190271, 18.817104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441956, 0.763137, 0.471483,
		0.751068, -0.027418, -0.659655,
		-0.490480, 0.645654, -0.585286,
		19.247541, 18.383968, 18.641518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.046385, 18.447380, 19.143661>,  <19.590878, 17.932009, 19.051218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.046385, 18.447380, 19.143661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.730223, 18.648312, 19.003420>,  <19.540525, 18.768871, 18.919275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.730223, 18.648312, 19.003420>,  <20.046385, 18.447380, 19.143661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.730223, 18.648312, 19.003420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260562, 0.793671, 0.549721,
		0.554404, 0.343150, -0.758211,
		-0.790407, 0.502329, -0.350603,
		19.493101, 18.799009, 18.898239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.302280, 19.103991, 18.949778>,  <20.046385, 18.447380, 19.143661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.302280, 19.103991, 18.949778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.909973, 19.156052, 19.007950>,  <19.674589, 19.187288, 19.042854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.909973, 19.156052, 19.007950>,  <20.302280, 19.103991, 18.949778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.909973, 19.156052, 19.007950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189134, 0.817683, 0.543712,
		-0.048151, 0.560762, -0.826575,
		-0.980770, 0.130153, 0.145432,
		19.615742, 19.195097, 19.051579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.246223, 19.834108, 18.898699>,  <20.302280, 19.103991, 18.949778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.246223, 19.834108, 18.898699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.887049, 19.719307, 19.032166>,  <19.671543, 19.650427, 19.112246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.887049, 19.719307, 19.032166>,  <20.246223, 19.834108, 18.898699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.887049, 19.719307, 19.032166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093645, 0.865358, 0.492327,
		-0.430042, 0.410833, -0.803915,
		-0.897939, -0.287003, 0.333668,
		19.617666, 19.633205, 19.132265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.689873, 20.287474, 18.808741>,  <20.246223, 19.834108, 18.898699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.689873, 20.287474, 18.808741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.584785, 20.094975, 19.143257>,  <19.521734, 19.979475, 19.343967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.584785, 20.094975, 19.143257>,  <19.689873, 20.287474, 18.808741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.584785, 20.094975, 19.143257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189621, 0.875584, 0.444293,
		-0.946057, -0.041856, -0.321285,
		-0.262716, -0.481249, 0.836289,
		19.505970, 19.950600, 19.394144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.190851, 20.683510, 18.969934>,  <19.689873, 20.287474, 18.808741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.190851, 20.683510, 18.969934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.238132, 20.472771, 19.306616>,  <19.266502, 20.346327, 19.508625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.238132, 20.472771, 19.306616>,  <19.190851, 20.683510, 18.969934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.238132, 20.472771, 19.306616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103572, 0.836479, 0.538122,
		-0.987573, -0.150785, 0.044309,
		0.118204, -0.526846, 0.841701,
		19.273594, 20.314716, 19.559126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<18.405708, 20.782269, 19.476849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.705242, 20.659477, 19.711800>,  <18.884962, 20.585802, 19.852770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.705242, 20.659477, 19.711800>,  <18.405708, 20.782269, 19.476849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.705242, 20.659477, 19.711800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226102, 0.714766, 0.661806,
		-0.622999, -0.628389, 0.465832,
		0.748833, -0.306979, 0.587379,
		18.929892, 20.567383, 19.888014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.179462, 20.627274, 20.304268>,  <18.405708, 20.782269, 19.476849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.179462, 20.627274, 20.304268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.569500, 20.710726, 20.274160>,  <18.803522, 20.760798, 20.256096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.569500, 20.710726, 20.274160>,  <18.179462, 20.627274, 20.304268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.569500, 20.710726, 20.274160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094238, 0.696929, 0.710921,
		0.200778, -0.686121, 0.699232,
		0.975094, 0.208632, -0.075270,
		18.862028, 20.773315, 20.251579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.236509, 20.897131, 20.875301>,  <18.179462, 20.627274, 20.304268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.236509, 20.897131, 20.875301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.586409, 21.001408, 20.711908>,  <18.796349, 21.063974, 20.613873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.586409, 21.001408, 20.711908>,  <18.236509, 20.897131, 20.875301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.586409, 21.001408, 20.711908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031319, 0.810782, 0.584511,
		0.483567, -0.524092, 0.701064,
		0.874747, 0.260693, -0.408481,
		18.848833, 21.079617, 20.589363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.631632, 21.120348, 21.453880>,  <18.236509, 20.897131, 20.875301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.631632, 21.120348, 21.453880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.851963, 21.277851, 21.159521>,  <18.984161, 21.372353, 20.982906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.851963, 21.277851, 21.159521>,  <18.631632, 21.120348, 21.453880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.851963, 21.277851, 21.159521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243409, 0.767598, 0.592912,
		0.798336, -0.505717, 0.326972,
		0.550829, 0.393755, -0.735897,
		19.017212, 21.395977, 20.938751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.273626, 21.398106, 21.801140>,  <18.631632, 21.120348, 21.453880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.273626, 21.398106, 21.801140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.234524, 21.577230, 21.445633>,  <19.211061, 21.684706, 21.232328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.234524, 21.577230, 21.445633>,  <19.273626, 21.398106, 21.801140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.234524, 21.577230, 21.445633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240451, 0.877214, 0.415546,
		0.965726, -0.173083, -0.193431,
		-0.097756, 0.447814, -0.888767,
		19.205196, 21.711575, 21.179003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.901241, 21.642786, 21.561876>,  <19.273626, 21.398106, 21.801140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.901241, 21.642786, 21.561876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.634451, 21.870827, 21.369987>,  <19.474377, 22.007650, 21.254854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.634451, 21.870827, 21.369987>,  <19.901241, 21.642786, 21.561876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.634451, 21.870827, 21.369987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489838, 0.820662, 0.294232,
		0.561430, -0.038741, -0.826617,
		-0.666974, 0.570100, -0.479721,
		19.434359, 22.041857, 21.226070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.283375, 22.218584, 21.179569>,  <19.901241, 21.642786, 21.561876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.283375, 22.218584, 21.179569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.905363, 22.335072, 21.239050>,  <19.678556, 22.404964, 21.274738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.905363, 22.335072, 21.239050>,  <20.283375, 22.218584, 21.179569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.905363, 22.335072, 21.239050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311374, 0.940315, 0.137309,
		-0.099841, 0.176064, -0.979302,
		-0.945028, 0.291220, 0.148704,
		19.621855, 22.422438, 21.283661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.398657, 22.868502, 20.948687>,  <20.283375, 22.218584, 21.179569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.398657, 22.868502, 20.948687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.054176, 22.854733, 21.151525>,  <19.847488, 22.846472, 21.273228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.054176, 22.854733, 21.151525>,  <20.398657, 22.868502, 20.948687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.054176, 22.854733, 21.151525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147582, 0.937784, 0.314293,
		-0.486364, 0.345508, -0.802542,
		-0.861202, -0.034420, 0.507095,
		19.795816, 22.844406, 21.303654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.954445, 23.438046, 20.716402>,  <20.398657, 22.868502, 20.948687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.954445, 23.438046, 20.716402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.822102, 23.322624, 21.075796>,  <19.742697, 23.253372, 21.291431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.822102, 23.322624, 21.075796>,  <19.954445, 23.438046, 20.716402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.822102, 23.322624, 21.075796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077655, 0.957200, 0.278814,
		-0.940481, 0.022476, -0.339103,
		-0.330856, -0.288552, 0.898483,
		19.722845, 23.236059, 21.345341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.532650, 23.996515, 20.975199>,  <19.954445, 23.438046, 20.716402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.532650, 23.996515, 20.975199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.600061, 23.806793, 21.320831>,  <19.640509, 23.692961, 21.528210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.600061, 23.806793, 21.320831>,  <19.532650, 23.996515, 20.975199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.600061, 23.806793, 21.320831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069037, 0.880145, 0.469658,
		-0.983276, -0.019498, 0.181075,
		0.168530, -0.474305, 0.864079,
		19.650620, 23.664501, 21.580055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.184120, 24.406298, 21.447397>,  <19.532650, 23.996515, 20.975199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.184120, 24.406298, 21.447397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.421034, 24.163433, 21.659266>,  <19.563183, 24.017714, 21.786386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.421034, 24.163433, 21.659266>,  <19.184120, 24.406298, 21.447397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.421034, 24.163433, 21.659266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202682, 0.748517, 0.631381,
		-0.779820, -0.266602, 0.566396,
		0.592285, -0.607162, 0.529673,
		19.598719, 23.981285, 21.818167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.077667, 24.663435, 22.065872>,  <19.184120, 24.406298, 21.447397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.077667, 24.663435, 22.065872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.407633, 24.438427, 22.088097>,  <19.605612, 24.303421, 22.101431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.407633, 24.438427, 22.088097>,  <19.077667, 24.663435, 22.065872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.407633, 24.438427, 22.088097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391949, 0.640051, 0.660841,
		-0.407300, -0.523359, 0.748467,
		0.824913, -0.562522, 0.055563,
		19.655107, 24.269670, 22.104765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.199451, 24.475559, 22.787531>,  <19.077667, 24.663435, 22.065872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.199451, 24.475559, 22.787531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.528563, 24.492308, 22.560804>,  <19.726030, 24.502357, 22.424768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.528563, 24.492308, 22.560804>,  <19.199451, 24.475559, 22.787531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.528563, 24.492308, 22.560804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349717, 0.748849, 0.562959,
		0.448032, -0.661416, 0.601494,
		0.822779, 0.041871, -0.566816,
		19.775396, 24.504869, 22.390760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.780210, 24.516441, 23.279366>,  <19.199451, 24.475559, 22.787531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.780210, 24.516441, 23.279366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.936541, 24.663528, 22.941835>,  <20.030338, 24.751780, 22.739317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.936541, 24.663528, 22.941835>,  <19.780210, 24.516441, 23.279366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.936541, 24.663528, 22.941835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469977, 0.708517, 0.526428,
		0.791440, -0.602319, 0.104088,
		0.390825, 0.367717, -0.843825,
		20.053789, 24.773844, 22.688688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.526682, 24.453424, 23.279219>,  <19.780210, 24.516441, 23.279366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.526682, 24.453424, 23.279219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.454163, 24.755329, 23.027039>,  <20.410652, 24.936472, 22.875731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.454163, 24.755329, 23.027039>,  <20.526682, 24.453424, 23.279219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.454163, 24.755329, 23.027039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606945, 0.590288, 0.532145,
		0.773789, -0.286172, -0.565116,
		-0.181297, 0.754762, -0.630449,
		20.399775, 24.981758, 22.837904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.162251, 24.670870, 23.054815>,  <20.526682, 24.453424, 23.279219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.162251, 24.670870, 23.054815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.905067, 24.966507, 22.974468>,  <20.750757, 25.143888, 22.926260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.905067, 24.966507, 22.974468>,  <21.162251, 24.670870, 23.054815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.905067, 24.966507, 22.974468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579877, 0.641086, 0.502744,
		0.500346, 0.206767, -0.840774,
		-0.642960, 0.739091, -0.200865,
		20.712179, 25.188234, 22.914209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.565737, 25.231190, 22.877928>,  <21.162251, 24.670870, 23.054815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.565737, 25.231190, 22.877928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.212797, 25.389957, 22.979055>,  <21.001034, 25.485218, 23.039732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.212797, 25.389957, 22.979055>,  <21.565737, 25.231190, 22.877928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.212797, 25.389957, 22.979055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470597, 0.745020, 0.472742,
		-0.000714, 0.536098, -0.844156,
		-0.882348, 0.396919, 0.252818,
		20.948093, 25.509033, 23.054901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.732273, 25.861420, 22.743673>,  <21.565737, 25.231190, 22.877928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.732273, 25.861420, 22.743673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.400669, 25.920883, 22.959320>,  <21.201708, 25.956562, 23.088707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.400669, 25.920883, 22.959320>,  <21.732273, 25.861420, 22.743673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.400669, 25.920883, 22.959320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408477, 0.819390, 0.402177,
		-0.381958, 0.553624, -0.740005,
		-0.829008, 0.148660, 0.539116,
		21.151966, 25.965481, 23.121056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.545885, 26.564596, 22.688047>,  <21.732273, 25.861420, 22.743673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.545885, 26.564596, 22.688047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.390551, 26.412992, 23.024035>,  <21.297350, 26.322029, 23.225626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.390551, 26.412992, 23.024035>,  <21.545885, 26.564596, 22.688047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.390551, 26.412992, 23.024035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387178, 0.760042, 0.521947,
		-0.836235, 0.527908, -0.148407,
		-0.388336, -0.379010, 0.839968,
		21.274050, 26.299290, 23.276026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.191534, 27.078440, 23.002060>,  <21.545885, 26.564596, 22.688047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.191534, 27.078440, 23.002060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.277359, 26.814709, 23.290297>,  <21.328854, 26.656469, 23.463238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.277359, 26.814709, 23.290297>,  <21.191534, 27.078440, 23.002060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.277359, 26.814709, 23.290297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191181, 0.751851, 0.631007,
		-0.957817, 0.002373, 0.287369,
		0.214561, -0.659328, 0.720590,
		21.341728, 26.616911, 23.506474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.036047, 27.460712, 23.628363>,  <21.191534, 27.078440, 23.002060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.036047, 27.460712, 23.628363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.242220, 27.152424, 23.778196>,  <21.365925, 26.967451, 23.868097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.242220, 27.152424, 23.778196>,  <21.036047, 27.460712, 23.628363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.242220, 27.152424, 23.778196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423819, 0.609199, 0.670265,
		-0.744785, -0.186720, 0.640648,
		0.515434, -0.770722, 0.374587,
		21.396851, 26.921207, 23.890572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.896233, 27.394567, 24.298204>,  <21.036047, 27.460712, 23.628363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.896233, 27.394567, 24.298204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.263657, 27.255554, 24.222872>,  <21.484112, 27.172146, 24.177673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.263657, 27.255554, 24.222872>,  <20.896233, 27.394567, 24.298204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.263657, 27.255554, 24.222872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379763, 0.643722, 0.664381,
		-0.109662, -0.681795, 0.723278,
		0.918561, -0.347531, -0.188329,
		21.539225, 27.151295, 24.166372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.216928, 27.305643, 24.985847>,  <20.896233, 27.394567, 24.298204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.216928, 27.305643, 24.985847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.485550, 27.341078, 24.691591>,  <21.646723, 27.362339, 24.515038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.485550, 27.341078, 24.691591>,  <21.216928, 27.305643, 24.985847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.485550, 27.341078, 24.691591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518127, 0.653589, 0.551693,
		0.529680, -0.751647, 0.393021,
		0.671553, 0.088586, -0.735642,
		21.687016, 27.367653, 24.470900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.799103, 27.292830, 25.464653>,  <21.216928, 27.305643, 24.985847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.799103, 27.292830, 25.464653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.782194, 27.183168, 25.080351>,  <21.772049, 27.117373, 24.849770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.782194, 27.183168, 25.080351>,  <21.799103, 27.292830, 25.464653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.782194, 27.183168, 25.080351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956338, 0.289442, -0.040515,
		0.289190, 0.917095, -0.274420,
		-0.042272, -0.274155, -0.960756,
		21.769512, 27.100924, 24.792124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.827892, 26.961254, 26.159811>,  <21.799103, 27.292830, 25.464653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.827892, 26.961254, 26.159811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.510925, 26.988058, 26.402327>,  <21.320745, 27.004141, 26.547836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.510925, 26.988058, 26.402327>,  <21.827892, 26.961254, 26.159811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.510925, 26.988058, 26.402327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535963, -0.551050, -0.639599,
		0.291235, -0.831777, 0.472577,
		-0.792418, 0.067010, 0.606287,
		21.273199, 27.008162, 26.584213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.612791, 26.271917, 26.208769>,  <21.827892, 26.961254, 26.159811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.612791, 26.271917, 26.208769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.296965, 26.504612, 26.286911>,  <21.107468, 26.644228, 26.333797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.296965, 26.504612, 26.286911>,  <21.612791, 26.271917, 26.208769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.296965, 26.504612, 26.286911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594054, -0.644743, -0.481046,
		-0.153887, -0.495872, 0.854652,
		-0.789568, 0.581737, 0.195357,
		21.060095, 26.679132, 26.345518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.032499, 25.833889, 26.415220>,  <21.612791, 26.271917, 26.208769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.032499, 25.833889, 26.415220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.838335, 26.173862, 26.333252>,  <20.721836, 26.377846, 26.284071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.838335, 26.173862, 26.333252>,  <21.032499, 25.833889, 26.415220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.838335, 26.173862, 26.333252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780472, -0.526881, -0.336541,
		-0.394005, -0.003427, 0.919102,
		-0.485410, 0.849932, -0.204919,
		20.692713, 26.428843, 26.271776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.425196, 25.832314, 26.732838>,  <21.032499, 25.833889, 26.415220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.425196, 25.832314, 26.732838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.347540, 26.072662, 26.422672>,  <20.300947, 26.216871, 26.236572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.347540, 26.072662, 26.422672>,  <20.425196, 25.832314, 26.732838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.347540, 26.072662, 26.422672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763335, -0.589008, -0.265311,
		-0.616142, 0.540393, 0.573013,
		-0.194137, 0.600870, -0.775413,
		20.289299, 26.252924, 26.190048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.694061, 25.873781, 26.739218>,  <20.425196, 25.832314, 26.732838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.694061, 25.873781, 26.739218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.781300, 25.978315, 26.363104>,  <19.833643, 26.041037, 26.137436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.781300, 25.978315, 26.363104>,  <19.694061, 25.873781, 26.739218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.781300, 25.978315, 26.363104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617312, -0.709301, -0.340322,
		-0.755883, 0.654673, 0.006629,
		0.218097, 0.261336, -0.940286,
		19.846729, 26.056717, 26.081018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.080627, 25.879721, 26.378016>,  <19.694061, 25.873781, 26.739218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.080627, 25.879721, 26.378016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.333717, 25.874472, 26.068310>,  <19.485571, 25.871323, 25.882486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.333717, 25.874472, 26.068310>,  <19.080627, 25.879721, 26.378016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.333717, 25.874472, 26.068310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613735, -0.618211, -0.491064,
		-0.472216, 0.785903, -0.399211,
		0.632726, -0.013122, -0.774265,
		19.523535, 25.870535, 25.836031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.798437, 26.018688, 25.781502>,  <19.080627, 25.879721, 26.378016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.798437, 26.018688, 25.781502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.117643, 25.816912, 25.649620>,  <19.309168, 25.695845, 25.570492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.117643, 25.816912, 25.649620>,  <18.798437, 26.018688, 25.781502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.117643, 25.816912, 25.649620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596503, -0.583352, -0.551256,
		0.085744, 0.636582, -0.766427,
		0.798017, -0.504443, -0.329704,
		19.357048, 25.665579, 25.550709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.645546, 25.984188, 25.047689>,  <18.798437, 26.018688, 25.781502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.645546, 25.984188, 25.047689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.887966, 25.676231, 25.127663>,  <19.033419, 25.491457, 25.175646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.887966, 25.676231, 25.127663>,  <18.645546, 25.984188, 25.047689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.887966, 25.676231, 25.127663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507302, -0.567711, -0.648344,
		0.612658, 0.291502, -0.734627,
		0.606049, -0.769890, 0.199933,
		19.069780, 25.445265, 25.187643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.642574, 25.550291, 24.474199>,  <18.645546, 25.984188, 25.047689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.642574, 25.550291, 24.474199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.865713, 25.303923, 24.696711>,  <18.999596, 25.156101, 24.830217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.865713, 25.303923, 24.696711>,  <18.642574, 25.550291, 24.474199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.865713, 25.303923, 24.696711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310596, -0.776487, -0.548268,
		0.769635, 0.133071, -0.624464,
		0.557846, -0.615922, 0.556280,
		19.033068, 25.119146, 24.863594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.108246, 25.193396, 23.995157>,  <18.642574, 25.550291, 24.474199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.108246, 25.193396, 23.995157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.030544, 24.972382, 24.319372>,  <18.983923, 24.839773, 24.513901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.030544, 24.972382, 24.319372>,  <19.108246, 25.193396, 23.995157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.030544, 24.972382, 24.319372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303895, -0.751729, -0.585279,
		0.932692, -0.360010, -0.021888,
		-0.194253, -0.552536, 0.810537,
		18.972269, 24.806622, 24.562532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.565977, 24.692055, 23.946836>,  <19.108246, 25.193396, 23.995157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.565977, 24.692055, 23.946836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.254698, 24.575735, 24.169493>,  <19.067930, 24.505943, 24.303085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.254698, 24.575735, 24.169493>,  <19.565977, 24.692055, 23.946836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.254698, 24.575735, 24.169493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145327, -0.778898, -0.610081,
		0.610976, -0.555657, 0.563874,
		-0.778196, -0.290799, 0.556639,
		19.021238, 24.488495, 24.336485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.533691, 23.918434, 23.949240>,  <19.565977, 24.692055, 23.946836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.533691, 23.918434, 23.949240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.162292, 24.030991, 24.046162>,  <18.939453, 24.098524, 24.104315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.162292, 24.030991, 24.046162>,  <19.533691, 23.918434, 23.949240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.162292, 24.030991, 24.046162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369092, -0.770997, -0.518974,
		0.040785, -0.571300, 0.819728,
		-0.928498, 0.281389, 0.242307,
		18.883743, 24.115408, 24.118855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.178667, 23.288261, 23.966824>,  <19.533691, 23.918434, 23.949240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.178667, 23.288261, 23.966824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.869259, 23.541254, 23.950657>,  <18.683615, 23.693050, 23.940956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.869259, 23.541254, 23.950657>,  <19.178667, 23.288261, 23.966824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.869259, 23.541254, 23.950657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500263, -0.648484, -0.573764,
		-0.389106, -0.423599, 0.818023,
		-0.773520, 0.632482, -0.040418,
		18.637203, 23.730999, 23.938532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.547646, 22.843172, 24.209927>,  <19.178667, 23.288261, 23.966824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.547646, 22.843172, 24.209927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.429041, 23.145832, 23.976841>,  <18.357878, 23.327429, 23.836988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.429041, 23.145832, 23.976841>,  <18.547646, 22.843172, 24.209927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.429041, 23.145832, 23.976841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534710, -0.637085, -0.555165,
		-0.791307, 0.146971, 0.593492,
		-0.296512, 0.756652, -0.582716,
		18.340088, 23.372828, 23.802027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.851059, 22.711407, 24.087013>,  <18.547646, 22.843172, 24.209927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.851059, 22.711407, 24.087013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.946787, 22.978655, 23.805208>,  <18.004225, 23.139004, 23.636126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.946787, 22.978655, 23.805208>,  <17.851059, 22.711407, 24.087013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.946787, 22.978655, 23.805208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464939, -0.558142, -0.687248,
		-0.852383, 0.492029, 0.177059,
		0.239322, 0.668120, -0.704514,
		18.018583, 23.179090, 23.593853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.223631, 22.771103, 23.741655>,  <17.851059, 22.711407, 24.087013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.223631, 22.771103, 23.741655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.479166, 22.919485, 23.472055>,  <17.632486, 23.008514, 23.310295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.479166, 22.919485, 23.472055>,  <17.223631, 22.771103, 23.741655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.479166, 22.919485, 23.472055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540701, -0.406734, -0.736349,
		-0.547291, 0.834842, -0.059261,
		0.638838, 0.370955, -0.674001,
		17.670818, 23.030771, 23.269855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.889017, 23.229340, 23.249659>,  <17.223631, 22.771103, 23.741655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.889017, 23.229340, 23.249659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.221022, 23.076918, 23.086746>,  <17.420225, 22.985464, 22.988998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.221022, 23.076918, 23.086746>,  <16.889017, 23.229340, 23.249659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.221022, 23.076918, 23.086746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536572, -0.346245, -0.769549,
		0.152220, 0.857271, -0.491850,
		0.830012, -0.381054, -0.407282,
		17.470026, 22.962601, 22.964561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.911476, 23.337770, 22.603745>,  <16.889017, 23.229340, 23.249659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.911476, 23.337770, 22.603745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.147947, 23.016300, 22.630917>,  <17.289829, 22.823418, 22.647221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.147947, 23.016300, 22.630917>,  <16.911476, 23.337770, 22.603745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.147947, 23.016300, 22.630917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549045, -0.462703, -0.696028,
		0.590814, 0.374178, -0.714794,
		0.591176, -0.803677, 0.067931,
		17.325300, 22.775198, 22.651297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.779337, 23.116371, 21.969864>,  <16.911476, 23.337770, 22.603745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.779337, 23.116371, 21.969864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.968792, 22.818224, 22.157520>,  <17.082464, 22.639336, 22.270115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.968792, 22.818224, 22.157520>,  <16.779337, 23.116371, 21.969864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.968792, 22.818224, 22.157520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345945, -0.647317, -0.679193,
		0.809932, 0.159394, -0.564450,
		0.473638, -0.745369, 0.469141,
		17.110884, 22.594614, 22.298264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.158676, 22.783106, 21.453535>,  <16.779337, 23.116371, 21.969864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.158676, 22.783106, 21.453535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.088936, 22.531199, 21.756319>,  <17.047091, 22.380054, 21.937990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.088936, 22.531199, 21.756319>,  <17.158676, 22.783106, 21.453535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.088936, 22.531199, 21.756319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366564, -0.671973, -0.643493,
		0.913910, -0.389669, -0.113691,
		-0.174352, -0.629770, 0.756962,
		17.036631, 22.342268, 21.983408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<27.887112, 11.224047, 11.113125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.584162, 11.216497, 11.374207>,  <27.402391, 11.211968, 11.530857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.584162, 11.216497, 11.374207>,  <27.887112, 11.224047, 11.113125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584162, 11.216497, 11.374207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532247, 0.596914, -0.600340,
		-0.378280, -0.802083, -0.462133,
		-0.757376, -0.018872, 0.652707,
		27.356949, 11.210835, 11.570020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167423, 11.013865, 10.881434>,  <27.887112, 11.224047, 11.113125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167423, 11.013865, 10.881434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.107908, 11.279616, 11.174410>,  <27.072199, 11.439067, 11.350195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.107908, 11.279616, 11.174410>,  <27.167423, 11.013865, 10.881434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107908, 11.279616, 11.174410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526890, 0.573523, -0.627262,
		-0.836809, -0.479244, 0.264720,
		-0.148788, 0.664377, 0.732438,
		27.063272, 11.478930, 11.394141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448784, 11.014317, 10.907573>,  <27.167423, 11.013865, 10.881434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448784, 11.014317, 10.907573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.273664, 11.024964, 11.267044>,  <26.168592, 11.031353, 11.482727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.273664, 11.024964, 11.267044>,  <26.448784, 11.014317, 10.907573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273664, 11.024964, 11.267044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788584, -0.491451, -0.369609,
		0.431817, -0.870498, 0.236148,
		-0.437799, 0.026619, 0.898679,
		26.142324, 11.032950, 11.536648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165319, 10.352020, 11.126554>,  <26.448784, 11.014317, 10.907573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165319, 10.352020, 11.126554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.973509, 10.659710, 11.295478>,  <25.858423, 10.844324, 11.396832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.973509, 10.659710, 11.295478>,  <26.165319, 10.352020, 11.126554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973509, 10.659710, 11.295478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877439, -0.413499, -0.243144,
		-0.012407, -0.487147, 0.873232,
		-0.479527, 0.769225, 0.422312,
		25.829651, 10.890477, 11.422172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571024, 10.204368, 11.629487>,  <26.165319, 10.352020, 11.126554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.571024, 10.204368, 11.629487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.535206, 10.532323, 11.403296>,  <25.513716, 10.729096, 11.267582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.535206, 10.532323, 11.403296>,  <25.571024, 10.204368, 11.629487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.535206, 10.532323, 11.403296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885448, -0.325490, -0.331720,
		-0.456031, 0.470997, 0.755115,
		-0.089543, 0.819889, -0.565476,
		25.508343, 10.778290, 11.233653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.049129, 10.744844, 11.824121>,  <25.571024, 10.204368, 11.629487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.049129, 10.744844, 11.824121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.139442, 10.654570, 11.445050>,  <25.193630, 10.600405, 11.217608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.139442, 10.654570, 11.445050>,  <25.049129, 10.744844, 11.824121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.139442, 10.654570, 11.445050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798467, -0.600178, -0.047303,
		-0.558098, 0.767367, -0.315712,
		0.225782, -0.225686, -0.947675,
		25.207176, 10.586864, 11.160748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.394987, 10.765310, 11.381191>,  <25.049129, 10.744844, 11.824121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.394987, 10.765310, 11.381191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.673595, 10.519981, 11.232225>,  <24.840761, 10.372785, 11.142846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.673595, 10.519981, 11.232225>,  <24.394987, 10.765310, 11.381191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.673595, 10.519981, 11.232225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695215, -0.705287, -0.138730,
		-0.177573, 0.355537, -0.917639,
		0.696522, -0.613322, -0.372415,
		24.882553, 10.335985, 11.120501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.642216, 10.530081, 11.511329>,  <24.394987, 10.765310, 11.381191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.642216, 10.530081, 11.511329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.593357, 10.325697, 11.170976>,  <23.564041, 10.203067, 10.966764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.593357, 10.325697, 11.170976>,  <23.642216, 10.530081, 11.511329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.593357, 10.325697, 11.170976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945487, -0.200855, 0.256342,
		-0.301884, 0.835809, -0.458573,
		-0.122146, -0.510961, -0.850882,
		23.556713, 10.172409, 10.915711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.213354, 11.056328, 11.233458>,  <23.642216, 10.530081, 11.511329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.213354, 11.056328, 11.233458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.061014, 11.324585, 10.978838>,  <22.969610, 11.485539, 10.826066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.061014, 11.324585, 10.978838>,  <23.213354, 11.056328, 11.233458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.061014, 11.324585, 10.978838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765497, 0.157447, 0.623879,
		0.518622, 0.724879, 0.453411,
		-0.380848, 0.670642, -0.636548,
		22.946760, 11.525778, 10.787873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.981236, 11.661256, 11.514846>,  <23.213354, 11.056328, 11.233458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.981236, 11.661256, 11.514846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.709866, 11.694541, 11.222870>,  <22.547043, 11.714512, 11.047684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.709866, 11.694541, 11.222870>,  <22.981236, 11.661256, 11.514846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.709866, 11.694541, 11.222870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655135, 0.381107, 0.652346,
		0.332469, 0.920779, -0.204037,
		-0.678427, 0.083213, -0.729940,
		22.506338, 11.719505, 11.003888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.781631, 12.298977, 11.586136>,  <22.981236, 11.661256, 11.514846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.781631, 12.298977, 11.586136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.516161, 12.058215, 11.408486>,  <22.356878, 11.913757, 11.301896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.516161, 12.058215, 11.408486>,  <22.781631, 12.298977, 11.586136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.516161, 12.058215, 11.408486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660175, 0.192146, 0.726119,
		-0.351718, 0.775106, -0.524886,
		-0.663674, -0.601906, -0.444124,
		22.317059, 11.877644, 11.275249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.196846, 12.698965, 11.470620>,  <22.781631, 12.298977, 11.586136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.196846, 12.698965, 11.470620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.055349, 12.325220, 11.487748>,  <21.970451, 12.100973, 11.498025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.055349, 12.325220, 11.487748>,  <22.196846, 12.698965, 11.470620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.055349, 12.325220, 11.487748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687782, 0.290868, 0.665095,
		-0.633895, 0.205821, -0.745530,
		-0.353741, -0.934363, 0.042819,
		21.949226, 12.044911, 11.500594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.523706, 12.756444, 11.464748>,  <22.196846, 12.698965, 11.470620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.523706, 12.756444, 11.464748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.554922, 12.386886, 11.614589>,  <21.573652, 12.165151, 11.704493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.554922, 12.386886, 11.614589>,  <21.523706, 12.756444, 11.464748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.554922, 12.386886, 11.614589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720222, 0.207561, 0.661965,
		-0.689340, -0.321456, -0.649213,
		0.078041, -0.923896, 0.374600,
		21.578335, 12.109716, 11.726969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.866293, 12.593557, 11.587626>,  <21.523706, 12.756444, 11.464748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.866293, 12.593557, 11.587626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.089794, 12.357239, 11.820437>,  <21.223896, 12.215448, 11.960124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.089794, 12.357239, 11.820437>,  <20.866293, 12.593557, 11.587626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.089794, 12.357239, 11.820437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628422, 0.156348, 0.761998,
		-0.541184, -0.791527, -0.283909,
		0.558754, -0.590796, 0.582026,
		21.257420, 12.180000, 11.995046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.370619, 12.460201, 12.121691>,  <20.866293, 12.593557, 11.587626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.370619, 12.460201, 12.121691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.726122, 12.329047, 12.249816>,  <20.939425, 12.250355, 12.326691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.726122, 12.329047, 12.249816>,  <20.370619, 12.460201, 12.121691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.726122, 12.329047, 12.249816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350308, -0.035181, 0.935974,
		-0.295622, -0.944063, -0.146128,
		0.888759, -0.327885, 0.320312,
		20.992750, 12.230682, 12.345910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.362856, 11.876455, 12.472419>,  <20.370619, 12.460201, 12.121691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.362856, 11.876455, 12.472419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.688583, 12.038285, 12.638891>,  <20.884020, 12.135384, 12.738775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.688583, 12.038285, 12.638891>,  <20.362856, 11.876455, 12.472419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.688583, 12.038285, 12.638891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427173, -0.067698, 0.901632,
		0.392953, -0.911995, 0.117696,
		0.814316, 0.404576, 0.416182,
		20.932878, 12.159657, 12.763746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.427841, 11.538129, 13.085089>,  <20.362856, 11.876455, 12.472419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.427841, 11.538129, 13.085089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.673058, 11.847082, 13.151546>,  <20.820189, 12.032454, 13.191420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.673058, 11.847082, 13.151546>,  <20.427841, 11.538129, 13.085089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.673058, 11.847082, 13.151546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126602, -0.111536, 0.985663,
		0.779841, -0.625287, 0.029409,
		0.613042, 0.772383, 0.166143,
		20.856970, 12.078797, 13.201388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.932770, 11.356151, 13.469259>,  <20.427841, 11.538129, 13.085089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.932770, 11.356151, 13.469259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.943708, 11.748843, 13.544577>,  <20.950272, 11.984459, 13.589767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.943708, 11.748843, 13.544577>,  <20.932770, 11.356151, 13.469259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.943708, 11.748843, 13.544577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111822, -0.190186, 0.975359,
		0.993352, -0.005619, -0.114981,
		0.027348, 0.981732, 0.188293,
		20.951912, 12.043363, 13.601065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.517410, 11.493966, 13.955481>,  <20.932770, 11.356151, 13.469259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.517410, 11.493966, 13.955481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.264969, 11.803381, 13.978628>,  <21.113504, 11.989030, 13.992517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.264969, 11.803381, 13.978628>,  <21.517410, 11.493966, 13.955481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.264969, 11.803381, 13.978628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073257, -0.014832, 0.997203,
		0.772232, 0.633577, -0.047306,
		-0.631103, 0.773538, 0.057868,
		21.075638, 12.035442, 13.995989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.804745, 12.044041, 14.460365>,  <21.517410, 11.493966, 13.955481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.804745, 12.044041, 14.460365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.421146, 12.150680, 14.421892>,  <21.190987, 12.214663, 14.398808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.421146, 12.150680, 14.421892>,  <21.804745, 12.044041, 14.460365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.421146, 12.150680, 14.421892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089908, 0.035674, 0.995311,
		0.268778, 0.963148, -0.010242,
		-0.958997, 0.266597, -0.096183,
		21.133448, 12.230659, 14.393037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.745586, 12.650032, 14.851352>,  <21.804745, 12.044041, 14.460365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.745586, 12.650032, 14.851352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.364208, 12.533656, 14.819619>,  <21.135382, 12.463830, 14.800580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.364208, 12.533656, 14.819619>,  <21.745586, 12.650032, 14.851352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.364208, 12.533656, 14.819619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143444, 0.206148, 0.967950,
		-0.265262, 0.934268, -0.238285,
		-0.953446, -0.290941, -0.079332,
		21.078175, 12.446374, 14.795819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.277767, 13.157336, 15.230960>,  <21.745586, 12.650032, 14.851352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.277767, 13.157336, 15.230960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.081924, 12.809069, 15.212096>,  <20.964418, 12.600108, 15.200778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.081924, 12.809069, 15.212096>,  <21.277767, 13.157336, 15.230960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.081924, 12.809069, 15.212096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159278, 0.036129, 0.986573,
		-0.857273, 0.490543, -0.156367,
		-0.489605, -0.870668, -0.047160,
		20.935043, 12.547869, 15.197948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.758181, 13.345508, 15.633827>,  <21.277767, 13.157336, 15.230960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.758181, 13.345508, 15.633827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.764448, 12.945850, 15.618499>,  <20.768208, 12.706057, 15.609302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.764448, 12.945850, 15.618499>,  <20.758181, 13.345508, 15.633827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.764448, 12.945850, 15.618499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069648, -0.037142, 0.996880,
		-0.997449, -0.018288, 0.069007,
		0.015668, -0.999143, -0.038321,
		20.769148, 12.646108, 15.607002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.294237, 13.169409, 16.246351>,  <20.758181, 13.345508, 15.633827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.294237, 13.169409, 16.246351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.481422, 12.828972, 16.151142>,  <20.593733, 12.624710, 16.094017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.481422, 12.828972, 16.151142>,  <20.294237, 13.169409, 16.246351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.481422, 12.828972, 16.151142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000177, -0.269245, 0.963072,
		-0.883749, -0.450723, -0.125846,
		0.467962, -0.851091, -0.238025,
		20.621811, 12.573645, 16.079735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.938503, 12.637839, 16.688211>,  <20.294237, 13.169409, 16.246351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.938503, 12.637839, 16.688211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.291464, 12.489132, 16.572865>,  <20.503241, 12.399907, 16.503656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.291464, 12.489132, 16.572865>,  <19.938503, 12.637839, 16.688211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.291464, 12.489132, 16.572865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111699, -0.429847, 0.895966,
		-0.457052, -0.822809, -0.337769,
		0.882398, -0.371775, -0.288370,
		20.556185, 12.377602, 16.486355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.890093, 11.985761, 16.906570>,  <19.938503, 12.637839, 16.688211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.890093, 11.985761, 16.906570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.276297, 12.078490, 16.859152>,  <20.508018, 12.134128, 16.830700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.276297, 12.078490, 16.859152>,  <19.890093, 11.985761, 16.906570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.276297, 12.078490, 16.859152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203162, -0.385975, 0.899860,
		0.162852, -0.892906, -0.419760,
		0.965507, 0.231824, -0.118548,
		20.565948, 12.148037, 16.823587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.205339, 11.380825, 17.125017>,  <19.890093, 11.985761, 16.906570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.205339, 11.380825, 17.125017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.470835, 11.678940, 17.150326>,  <20.630131, 11.857808, 17.165510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.470835, 11.678940, 17.150326>,  <20.205339, 11.380825, 17.125017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.470835, 11.678940, 17.150326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298028, -0.341105, 0.891531,
		0.686028, -0.572884, -0.448520,
		0.663736, 0.745286, 0.063272,
		20.669956, 11.902526, 17.169308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.726694, 11.120068, 17.460920>,  <20.205339, 11.380825, 17.125017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.726694, 11.120068, 17.460920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.752466, 11.515131, 17.518021>,  <20.767929, 11.752170, 17.552280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.752466, 11.515131, 17.518021>,  <20.726694, 11.120068, 17.460920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.752466, 11.515131, 17.518021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262225, -0.154778, 0.952513,
		0.962853, -0.023937, -0.268961,
		0.064430, 0.987659, 0.142752,
		20.771795, 11.811429, 17.560846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.349791, 11.372024, 17.778063>,  <20.726694, 11.120068, 17.460920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.349791, 11.372024, 17.778063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.103619, 11.669722, 17.881866>,  <20.955915, 11.848340, 17.944149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.103619, 11.669722, 17.881866>,  <21.349791, 11.372024, 17.778063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.103619, 11.669722, 17.881866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204842, -0.166908, 0.964459,
		0.761107, 0.646717, -0.049732,
		-0.615431, 0.744244, 0.259510,
		20.918989, 11.892995, 17.959719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.677904, 11.654558, 18.407171>,  <21.349791, 11.372024, 17.778063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.677904, 11.654558, 18.407171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.306139, 11.802172, 18.406015>,  <21.083080, 11.890739, 18.405321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.306139, 11.802172, 18.406015>,  <21.677904, 11.654558, 18.407171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.306139, 11.802172, 18.406015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052663, -0.124869, 0.990775,
		0.365268, 0.920990, 0.135490,
		-0.929412, 0.369034, -0.002892,
		21.027315, 11.912882, 18.405148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.717493, 12.102403, 18.879225>,  <21.677904, 11.654558, 18.407171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.717493, 12.102403, 18.879225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.336483, 11.985440, 18.845291>,  <21.107878, 11.915263, 18.824930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.336483, 11.985440, 18.845291>,  <21.717493, 12.102403, 18.879225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.336483, 11.985440, 18.845291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017139, -0.226702, 0.973813,
		-0.303980, 0.929035, 0.210927,
		-0.952524, -0.292405, -0.084836,
		21.050726, 11.897718, 18.819839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.268236, 12.555260, 19.368492>,  <21.717493, 12.102403, 18.879225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.268236, 12.555260, 19.368492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.157993, 12.182132, 19.275639>,  <21.091848, 11.958255, 19.219927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.157993, 12.182132, 19.275639>,  <21.268236, 12.555260, 19.368492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.157993, 12.182132, 19.275639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168946, -0.284734, 0.943601,
		-0.946308, 0.220844, 0.236071,
		-0.275606, -0.932821, -0.232136,
		21.075312, 11.902286, 19.205997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.803446, 12.941352, 19.071377>,  <21.268236, 12.555260, 19.368492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.803446, 12.941352, 19.071377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.795389, 12.755662, 18.717182>,  <21.790554, 12.644248, 18.504665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.795389, 12.755662, 18.717182>,  <21.803446, 12.941352, 19.071377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.795389, 12.755662, 18.717182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148749, 0.877202, -0.456498,
		0.988670, 0.122520, -0.086723,
		-0.020143, -0.464226, -0.885488,
		21.789347, 12.616394, 18.451536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.092701, 13.379055, 18.690395>,  <21.803446, 12.941352, 19.071377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.092701, 13.379055, 18.690395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.959446, 13.151534, 18.389601>,  <21.879494, 13.015021, 18.209124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.959446, 13.151534, 18.389601>,  <22.092701, 13.379055, 18.690395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.959446, 13.151534, 18.389601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098523, 0.772179, -0.627721,
		0.937717, -0.283205, -0.201202,
		-0.333137, -0.568802, -0.751987,
		21.859505, 12.980893, 18.164005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.622869, 13.384425, 18.171162>,  <22.092701, 13.379055, 18.690395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.622869, 13.384425, 18.171162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.264881, 13.304877, 18.011421>,  <22.050089, 13.257149, 17.915577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.264881, 13.304877, 18.011421>,  <22.622869, 13.384425, 18.171162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.264881, 13.304877, 18.011421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103349, 0.778378, -0.619231,
		0.433991, -0.595465, -0.676071,
		-0.894970, -0.198870, -0.399350,
		21.996389, 13.245216, 17.891617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.797131, 13.475536, 17.462389>,  <22.622869, 13.384425, 18.171162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.797131, 13.475536, 17.462389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.406387, 13.516100, 17.537718>,  <22.171942, 13.540439, 17.582914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.406387, 13.516100, 17.537718>,  <22.797131, 13.475536, 17.462389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.406387, 13.516100, 17.537718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074902, 0.662519, -0.745291,
		-0.200347, -0.742149, -0.639591,
		-0.976858, 0.101410, 0.188322,
		22.113331, 13.546523, 17.594213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.500183, 13.243873, 16.888565>,  <22.797131, 13.475536, 17.462389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.500183, 13.243873, 16.888565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.294170, 13.521772, 17.089390>,  <22.170563, 13.688512, 17.209885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.294170, 13.521772, 17.089390>,  <22.500183, 13.243873, 16.888565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.294170, 13.521772, 17.089390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187567, 0.480178, -0.856882,
		-0.836396, -0.535493, -0.116996,
		-0.515034, 0.694749, 0.502060,
		22.139660, 13.730197, 17.240007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.696554, 13.355165, 16.675379>,  <22.500183, 13.243873, 16.888565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.696554, 13.355165, 16.675379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.872049, 13.697779, 16.784088>,  <21.977346, 13.903347, 16.849314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.872049, 13.697779, 16.784088>,  <21.696554, 13.355165, 16.675379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.872049, 13.697779, 16.784088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116782, 0.354219, -0.927842,
		-0.890995, 0.375339, 0.255436,
		0.438736, 0.856534, 0.271774,
		22.003670, 13.954739, 16.865620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.292555, 13.933016, 16.372663>,  <21.696554, 13.355165, 16.675379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.292555, 13.933016, 16.372663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.666534, 14.066186, 16.421703>,  <21.890923, 14.146088, 16.451128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.666534, 14.066186, 16.421703>,  <21.292555, 13.933016, 16.372663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.666534, 14.066186, 16.421703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034938, 0.430286, -0.902016,
		-0.353057, 0.839056, 0.413928,
		0.934949, 0.332925, 0.122600,
		21.947020, 14.166063, 16.458483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.271345, 14.582413, 16.098915>,  <21.292555, 13.933016, 16.372663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.271345, 14.582413, 16.098915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.664764, 14.513090, 16.119316>,  <21.900816, 14.471497, 16.131556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.664764, 14.513090, 16.119316>,  <21.271345, 14.582413, 16.098915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.664764, 14.513090, 16.119316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123947, 0.441968, -0.888427,
		0.131430, 0.880130, 0.456177,
		0.983546, -0.173308, 0.051001,
		21.959827, 14.461098, 16.134617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.536821, 15.165303, 15.953256>,  <21.271345, 14.582413, 16.098915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.536821, 15.165303, 15.953256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.844042, 14.915406, 15.896979>,  <22.028374, 14.765469, 15.863214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.844042, 14.915406, 15.896979>,  <21.536821, 15.165303, 15.953256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.844042, 14.915406, 15.896979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166418, 0.406866, -0.898201,
		0.618386, 0.666452, 0.416462,
		0.768052, -0.624741, -0.140691,
		22.074457, 14.727983, 15.854772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.968420, 15.546246, 15.613935>,  <21.536821, 15.165303, 15.953256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.968420, 15.546246, 15.613935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.068163, 15.171548, 15.515685>,  <22.128008, 14.946730, 15.456736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.068163, 15.171548, 15.515685>,  <21.968420, 15.546246, 15.613935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.068163, 15.171548, 15.515685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253777, 0.307981, -0.916921,
		0.934569, 0.166306, 0.314521,
		0.249356, -0.936744, -0.245625,
		22.142969, 14.890525, 15.441998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.580952, 15.631015, 15.270519>,  <21.968420, 15.546246, 15.613935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.580952, 15.631015, 15.270519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.448812, 15.268172, 15.166188>,  <22.369530, 15.050467, 15.103590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.448812, 15.268172, 15.166188>,  <22.580952, 15.631015, 15.270519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.448812, 15.268172, 15.166188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373220, 0.128280, -0.918831,
		0.866936, -0.400879, 0.296174,
		-0.330347, -0.907106, -0.260826,
		22.349709, 14.996040, 15.087940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.109865, 15.385509, 14.892962>,  <22.580952, 15.631015, 15.270519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.109865, 15.385509, 14.892962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.782726, 15.193300, 14.766330>,  <22.586443, 15.077975, 14.690351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.782726, 15.193300, 14.766330>,  <23.109865, 15.385509, 14.892962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.782726, 15.193300, 14.766330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266085, 0.172005, -0.948479,
		0.510216, -0.859951, -0.012815,
		-0.817850, -0.480520, -0.316580,
		22.537371, 15.049145, 14.671356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.269791, 15.149786, 14.292984>,  <23.109865, 15.385509, 14.892962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.269791, 15.149786, 14.292984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.881952, 15.054765, 14.269494>,  <22.649248, 14.997752, 14.255400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.881952, 15.054765, 14.269494>,  <23.269791, 15.149786, 14.292984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.881952, 15.054765, 14.269494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035368, 0.101424, -0.994214,
		0.242136, -0.966065, -0.089938,
		-0.969598, -0.237554, -0.058726,
		22.591072, 14.983499, 14.251877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.168509, 14.562698, 13.781817>,  <23.269791, 15.149786, 14.292984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.168509, 14.562698, 13.781817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.841946, 14.791779, 13.811454>,  <22.646008, 14.929227, 13.829236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.841946, 14.791779, 13.811454>,  <23.168509, 14.562698, 13.781817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.841946, 14.791779, 13.811454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106209, 0.275027, -0.955552,
		-0.567623, -0.772252, -0.285360,
		-0.816409, 0.572701, 0.074092,
		22.597023, 14.963589, 13.833681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.924765, 14.648544, 13.120648>,  <23.168509, 14.562698, 13.781817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.924765, 14.648544, 13.120648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.699272, 14.935286, 13.284760>,  <22.563976, 15.107330, 13.383226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.699272, 14.935286, 13.284760>,  <22.924765, 14.648544, 13.120648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.699272, 14.935286, 13.284760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045738, 0.523062, -0.851066,
		-0.824691, -0.461007, -0.327654,
		-0.563731, 0.716853, 0.410279,
		22.530153, 15.150341, 13.407844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.255688, 14.775686, 12.749707>,  <22.924765, 14.648544, 13.120648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.255688, 14.775686, 12.749707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.347933, 15.113952, 12.942236>,  <22.403280, 15.316911, 13.057754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.347933, 15.113952, 12.942236>,  <22.255688, 14.775686, 12.749707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.347933, 15.113952, 12.942236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130721, 0.463247, -0.876535,
		-0.964225, 0.265058, -0.003717,
		0.230611, 0.845664, 0.481323,
		22.417116, 15.367651, 13.086633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.984919, 15.279559, 12.273099>,  <22.255688, 14.775686, 12.749707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.984919, 15.279559, 12.273099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.173937, 15.504226, 12.544755>,  <22.287348, 15.639026, 12.707748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.173937, 15.504226, 12.544755>,  <21.984919, 15.279559, 12.273099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.173937, 15.504226, 12.544755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115997, 0.724264, -0.679695,
		-0.873640, 0.399965, 0.277095,
		0.472544, 0.561667, 0.679141,
		22.315701, 15.672726, 12.748497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.710907, 16.007303, 12.273685>,  <21.984919, 15.279559, 12.273099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.710907, 16.007303, 12.273685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.091185, 16.007393, 12.397738>,  <22.319351, 16.007446, 12.472171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.091185, 16.007393, 12.397738>,  <21.710907, 16.007303, 12.273685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.091185, 16.007393, 12.397738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229096, 0.673526, -0.702764,
		-0.209040, 0.739163, 0.640265,
		0.950693, 0.000224, 0.310133,
		22.376392, 16.007460, 12.490778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.916245, 16.754946, 12.339540>,  <21.710907, 16.007303, 12.273685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.916245, 16.754946, 12.339540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.237082, 16.521482, 12.288960>,  <22.429585, 16.381405, 12.258613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.237082, 16.521482, 12.288960>,  <21.916245, 16.754946, 12.339540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.237082, 16.521482, 12.288960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247207, 0.517237, -0.819362,
		0.543632, 0.625945, 0.559157,
		0.802093, -0.583659, -0.126448,
		22.477709, 16.346384, 12.251026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.344976, 17.200224, 12.126264>,  <21.916245, 16.754946, 12.339540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.344976, 17.200224, 12.126264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.542114, 16.870401, 12.015119>,  <22.660397, 16.672508, 11.948432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.542114, 16.870401, 12.015119>,  <22.344976, 17.200224, 12.126264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.542114, 16.870401, 12.015119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310982, 0.465169, -0.828799,
		0.812645, 0.322061, 0.485679,
		0.492847, -0.824557, -0.277862,
		22.689968, 16.623034, 11.931760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<18.945360, 18.780636, 17.403725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.950075, 18.581442, 17.750566>,  <18.952904, 18.461926, 17.958672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.950075, 18.581442, 17.750566>,  <18.945360, 18.780636, 17.403725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.950075, 18.581442, 17.750566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055809, -0.865488, -0.497812,
		0.998372, 0.054261, 0.017590,
		0.011788, -0.497983, 0.867107,
		18.953611, 18.432047, 18.010698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.574152, 18.371336, 17.363405>,  <18.945360, 18.780636, 17.403725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.574152, 18.371336, 17.363405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.292377, 18.221605, 17.604618>,  <19.123312, 18.131767, 17.749346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.292377, 18.221605, 17.604618>,  <19.574152, 18.371336, 17.363405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.292377, 18.221605, 17.604618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089442, -0.889665, -0.447768,
		0.704110, -0.261488, 0.660192,
		-0.704436, -0.374327, 0.603034,
		19.081047, 18.109306, 17.785528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.659655, 17.680775, 17.317696>,  <19.574152, 18.371336, 17.363405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.659655, 17.680775, 17.317696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.290356, 17.675501, 17.471289>,  <19.068777, 17.672337, 17.563444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.290356, 17.675501, 17.471289>,  <19.659655, 17.680775, 17.317696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.290356, 17.675501, 17.471289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161688, -0.893269, -0.419437,
		0.348531, -0.449329, 0.822575,
		-0.923246, -0.013186, 0.383983,
		19.013382, 17.671545, 17.586483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.463827, 16.904377, 17.598280>,  <19.659655, 17.680775, 17.317696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.463827, 16.904377, 17.598280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.103886, 17.071728, 17.548929>,  <18.887920, 17.172138, 17.519318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.103886, 17.071728, 17.548929>,  <19.463827, 16.904377, 17.598280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.103886, 17.071728, 17.548929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371282, -0.883126, -0.286772,
		-0.228938, -0.212245, 0.950021,
		-0.899854, 0.418379, -0.123379,
		18.833929, 17.197241, 17.511915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.015484, 16.320616, 17.588566>,  <19.463827, 16.904377, 17.598280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.015484, 16.320616, 17.588566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.739244, 16.601921, 17.521044>,  <18.573500, 16.770704, 17.480530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.739244, 16.601921, 17.521044>,  <19.015484, 16.320616, 17.588566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.739244, 16.601921, 17.521044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593925, -0.684647, -0.422507,
		-0.412705, -0.191525, 0.890501,
		-0.690600, 0.703261, -0.168806,
		18.532064, 16.812899, 17.470402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.459864, 15.992963, 17.916843>,  <19.015484, 16.320616, 17.588566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.459864, 15.992963, 17.916843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.345379, 16.252108, 17.634466>,  <18.276688, 16.407595, 17.465040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.345379, 16.252108, 17.634466>,  <18.459864, 15.992963, 17.916843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.345379, 16.252108, 17.634466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603636, -0.694091, -0.392252,
		-0.744115, 0.313867, 0.589729,
		-0.286211, 0.647862, -0.705945,
		18.259516, 16.446466, 17.422684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.736448, 15.874527, 17.802889>,  <18.459864, 15.992963, 17.916843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.736448, 15.874527, 17.802889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.887453, 16.035406, 17.469250>,  <17.978056, 16.131933, 17.269066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.887453, 16.035406, 17.469250>,  <17.736448, 15.874527, 17.802889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.887453, 16.035406, 17.469250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407892, -0.736432, -0.539714,
		-0.831330, 0.543971, -0.113959,
		0.377512, 0.402197, -0.834100,
		18.000706, 16.156065, 17.219019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.210615, 15.944529, 17.420506>,  <17.736448, 15.874527, 17.802889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.210615, 15.944529, 17.420506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.508070, 15.957202, 17.153372>,  <17.686543, 15.964806, 16.993092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.508070, 15.957202, 17.153372>,  <17.210615, 15.944529, 17.420506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.508070, 15.957202, 17.153372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442781, -0.725089, -0.527438,
		-0.500949, 0.687926, -0.525174,
		0.743636, 0.031682, -0.667834,
		17.731161, 15.966706, 16.953022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.892799, 15.853685, 16.735130>,  <17.210615, 15.944529, 17.420506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.892799, 15.853685, 16.735130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.275587, 15.748244, 16.686598>,  <17.505260, 15.684979, 16.657478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.275587, 15.748244, 16.686598>,  <16.892799, 15.853685, 16.735130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.275587, 15.748244, 16.686598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285615, -0.781723, -0.554376,
		0.051289, 0.565176, -0.823375,
		0.956971, -0.263602, -0.121329,
		17.562679, 15.669164, 16.650200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.986910, 15.585702, 16.016058>,  <16.892799, 15.853685, 16.735130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.986910, 15.585702, 16.016058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.307259, 15.440815, 16.206804>,  <17.499468, 15.353883, 16.321253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.307259, 15.440815, 16.206804>,  <16.986910, 15.585702, 16.016058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.307259, 15.440815, 16.206804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164151, -0.898611, -0.406882,
		0.575896, 0.247583, -0.779132,
		0.800873, -0.362217, 0.476866,
		17.547520, 15.332150, 16.349863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.413258, 15.370665, 15.459935>,  <16.986910, 15.585702, 16.016058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.413258, 15.370665, 15.459935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500341, 15.190355, 15.806208>,  <17.552591, 15.082170, 16.013971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500341, 15.190355, 15.806208>,  <17.413258, 15.370665, 15.459935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.500341, 15.190355, 15.806208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032614, -0.889821, -0.455142,
		0.975468, 0.070856, -0.208425,
		0.217711, -0.450774, 0.865681,
		17.565655, 15.055123, 16.065912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.067818, 14.950080, 15.389726>,  <17.413258, 15.370665, 15.459935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.067818, 14.950080, 15.389726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816545, 14.803178, 15.664102>,  <17.665783, 14.715036, 15.828727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816545, 14.803178, 15.664102>,  <18.067818, 14.950080, 15.389726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.816545, 14.803178, 15.664102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118056, -0.916376, -0.382516,
		0.769060, -0.159310, 0.619006,
		-0.628180, -0.367255, 0.685940,
		17.628092, 14.693002, 15.869884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.435139, 14.341894, 15.683534>,  <18.067818, 14.950080, 15.389726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.435139, 14.341894, 15.683534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.035858, 14.317930, 15.683718>,  <17.796289, 14.303552, 15.683828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.035858, 14.317930, 15.683718>,  <18.435139, 14.341894, 15.683534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.035858, 14.317930, 15.683718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053702, -0.898112, -0.436475,
		0.026563, -0.435666, 0.899716,
		-0.998204, -0.059911, 0.000460,
		17.736397, 14.299957, 15.683856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.351871, 13.716343, 15.948037>,  <18.435139, 14.341894, 15.683534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.351871, 13.716343, 15.948037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.095795, 13.851247, 15.671947>,  <17.942148, 13.932189, 15.506294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.095795, 13.851247, 15.671947>,  <18.351871, 13.716343, 15.948037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.095795, 13.851247, 15.671947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020169, -0.905547, -0.423765,
		-0.767949, -0.257371, 0.586527,
		-0.640193, 0.337260, -0.690224,
		17.903736, 13.952425, 15.464880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.280802, 13.324900, 16.622396>,  <18.351871, 13.716343, 15.948037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.280802, 13.324900, 16.622396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.437866, 13.021191, 16.829983>,  <18.532104, 12.838965, 16.954535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.437866, 13.021191, 16.829983>,  <18.280802, 13.324900, 16.622396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.437866, 13.021191, 16.829983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076224, 0.589212, 0.804375,
		-0.916519, -0.276289, 0.289236,
		0.392661, -0.759272, 0.518964,
		18.555664, 12.793409, 16.985672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.975479, 13.234307, 17.245621>,  <18.280802, 13.324900, 16.622396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.975479, 13.234307, 17.245621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.334707, 13.070449, 17.309694>,  <18.550243, 12.972134, 17.348139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.334707, 13.070449, 17.309694>,  <17.975479, 13.234307, 17.245621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.334707, 13.070449, 17.309694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155790, 0.636809, 0.755118,
		-0.411337, -0.653195, 0.635718,
		0.898071, -0.409647, 0.160182,
		18.604128, 12.947555, 17.357748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.976200, 12.995015, 17.907644>,  <17.975479, 13.234307, 17.245621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.976200, 12.995015, 17.907644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.360199, 13.051341, 17.810831>,  <18.590597, 13.085136, 17.752743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.360199, 13.051341, 17.810831>,  <17.976200, 12.995015, 17.907644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.360199, 13.051341, 17.810831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092043, 0.657639, 0.747689,
		0.264456, -0.740055, 0.618370,
		0.959995, 0.140814, -0.242033,
		18.648197, 13.093585, 17.738220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.276167, 13.087876, 18.566664>,  <17.976200, 12.995015, 17.907644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.276167, 13.087876, 18.566664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.567511, 13.225184, 18.329460>,  <18.742317, 13.307570, 18.187138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.567511, 13.225184, 18.329460>,  <18.276167, 13.087876, 18.566664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.567511, 13.225184, 18.329460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243906, 0.678882, 0.692553,
		0.640316, -0.649065, 0.410743,
		0.728358, 0.343270, -0.593010,
		18.786018, 13.328165, 18.151558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.037491, 12.971692, 18.831810>,  <18.276167, 13.087876, 18.566664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.037491, 12.971692, 18.831810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.042692, 13.307030, 18.613815>,  <19.045813, 13.508232, 18.483019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.042692, 13.307030, 18.613815>,  <19.037491, 12.971692, 18.831810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.042692, 13.307030, 18.613815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498657, 0.466985, 0.730251,
		0.866702, -0.281255, -0.411975,
		0.013001, 0.838344, -0.544986,
		19.046593, 13.558533, 18.450319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.542137, 13.247521, 19.150366>,  <19.037491, 12.971692, 18.831810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.542137, 13.247521, 19.150366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.370644, 13.540894, 18.939363>,  <19.267748, 13.716917, 18.812761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.370644, 13.540894, 18.939363>,  <19.542137, 13.247521, 19.150366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.370644, 13.540894, 18.939363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358631, 0.674086, 0.645749,
		0.829198, 0.087675, -0.552037,
		-0.428736, 0.733431, -0.527507,
		19.242023, 13.760923, 18.781111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.085087, 13.741138, 19.054079>,  <19.542137, 13.247521, 19.150366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.085087, 13.741138, 19.054079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.728601, 13.914352, 19.000090>,  <19.514709, 14.018281, 18.967695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.728601, 13.914352, 19.000090>,  <20.085087, 13.741138, 19.054079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.728601, 13.914352, 19.000090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337139, 0.831482, 0.441559,
		0.303440, 0.348018, -0.887021,
		-0.891213, 0.433037, -0.134975,
		19.461237, 14.044264, 18.959597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.219568, 14.376537, 18.734646>,  <20.085087, 13.741138, 19.054079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.219568, 14.376537, 18.734646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.859600, 14.432967, 18.899687>,  <19.643620, 14.466825, 18.998713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.859600, 14.432967, 18.899687>,  <20.219568, 14.376537, 18.734646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.859600, 14.432967, 18.899687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306799, 0.877245, 0.369209,
		-0.309869, 0.458845, -0.832732,
		-0.899920, 0.141075, 0.412604,
		19.589624, 14.475289, 19.023468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.230009, 15.040810, 18.647638>,  <20.219568, 14.376537, 18.734646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.230009, 15.040810, 18.647638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.936909, 14.959954, 18.907551>,  <19.761049, 14.911441, 19.063499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.936909, 14.959954, 18.907551>,  <20.230009, 15.040810, 18.647638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.936909, 14.959954, 18.907551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277359, 0.783237, 0.556428,
		-0.621409, 0.587946, -0.517852,
		-0.732750, -0.202138, 0.649782,
		19.717083, 14.899313, 19.102486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.894949, 15.730229, 18.720444>,  <20.230009, 15.040810, 18.647638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.894949, 15.730229, 18.720444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.800707, 15.506209, 19.038145>,  <19.744162, 15.371798, 19.228765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.800707, 15.506209, 19.038145>,  <19.894949, 15.730229, 18.720444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.800707, 15.506209, 19.038145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038016, 0.811321, 0.583364,
		-0.971105, 0.167637, -0.169859,
		-0.235604, -0.560050, 0.794251,
		19.730026, 15.338195, 19.276421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.389118, 16.102495, 19.016581>,  <19.894949, 15.730229, 18.720444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.389118, 16.102495, 19.016581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.512323, 15.879275, 19.324789>,  <19.586246, 15.745343, 19.509714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.512323, 15.879275, 19.324789>,  <19.389118, 16.102495, 19.016581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.512323, 15.879275, 19.324789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082376, 0.791214, 0.605966,
		-0.947809, -0.250118, 0.197734,
		0.308013, -0.558051, 0.770523,
		19.604727, 15.711860, 19.555946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.996269, 16.301796, 19.573872>,  <19.389118, 16.102495, 19.016581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.996269, 16.301796, 19.573872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.288675, 16.106834, 19.764893>,  <19.464119, 15.989858, 19.879505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.288675, 16.106834, 19.764893>,  <18.996269, 16.301796, 19.573872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.288675, 16.106834, 19.764893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031032, 0.722875, 0.690282,
		-0.681656, -0.489787, 0.543557,
		0.731015, -0.487402, 0.477553,
		19.507980, 15.960614, 19.908159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.802889, 16.272671, 20.385427>,  <18.996269, 16.301796, 19.573872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.802889, 16.272671, 20.385427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.196707, 16.257164, 20.317116>,  <19.432999, 16.247860, 20.276129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.196707, 16.257164, 20.317116>,  <18.802889, 16.272671, 20.385427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.196707, 16.257164, 20.317116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158791, 0.608859, 0.777224,
		0.073848, -0.792331, 0.605606,
		0.984547, -0.038768, -0.170778,
		19.492071, 16.245533, 20.265882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.096035, 16.235176, 21.087111>,  <18.802889, 16.272671, 20.385427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.096035, 16.235176, 21.087111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.402025, 16.346069, 20.854574>,  <19.585619, 16.412605, 20.715054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.402025, 16.346069, 20.854574>,  <19.096035, 16.235176, 21.087111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.402025, 16.346069, 20.854574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308971, 0.634011, 0.708920,
		0.565108, -0.721924, 0.399348,
		0.764977, 0.277229, -0.581338,
		19.631517, 16.429239, 20.680172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.184378, 15.765478, 21.733747>,  <19.096035, 16.235176, 21.087111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.184378, 15.765478, 21.733747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.956238, 15.749524, 22.061920>,  <18.819353, 15.739952, 22.258823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.956238, 15.749524, 22.061920>,  <19.184378, 15.765478, 21.733747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.956238, 15.749524, 22.061920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506444, -0.769304, -0.389469,
		0.646696, -0.637637, 0.418573,
		-0.570350, -0.039885, 0.820433,
		18.785133, 15.737558, 22.308050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.224152, 15.092623, 21.869747>,  <19.184378, 15.765478, 21.733747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.224152, 15.092623, 21.869747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.905073, 15.189942, 22.090469>,  <18.713627, 15.248334, 22.222902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.905073, 15.189942, 22.090469>,  <19.224152, 15.092623, 21.869747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.905073, 15.189942, 22.090469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448244, -0.851323, -0.272628,
		0.403433, -0.464817, 0.788154,
		-0.797696, 0.243299, 0.551804,
		18.665764, 15.262932, 22.256010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.962141, 14.459901, 22.190849>,  <19.224152, 15.092623, 21.869747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.962141, 14.459901, 22.190849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.669796, 14.732213, 22.210335>,  <18.494389, 14.895600, 22.222027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.669796, 14.732213, 22.210335>,  <18.962141, 14.459901, 22.190849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.669796, 14.732213, 22.210335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672893, -0.706768, -0.218390,
		-0.114245, -0.192394, 0.974645,
		-0.730865, 0.680781, 0.048716,
		18.450537, 14.936447, 22.224949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.405197, 14.019341, 22.342430>,  <18.962141, 14.459901, 22.190849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.405197, 14.019341, 22.342430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.233620, 14.357453, 22.214987>,  <18.130674, 14.560320, 22.138521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.233620, 14.357453, 22.214987>,  <18.405197, 14.019341, 22.342430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.233620, 14.357453, 22.214987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745185, -0.530469, -0.404106,
		-0.510595, 0.064085, 0.857430,
		-0.428943, 0.845278, -0.318610,
		18.104937, 14.611037, 22.119404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.676741, 14.033429, 22.658604>,  <18.405197, 14.019341, 22.342430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.676741, 14.033429, 22.658604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.683485, 14.276487, 22.340992>,  <17.687532, 14.422322, 22.150425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.683485, 14.276487, 22.340992>,  <17.676741, 14.033429, 22.658604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.683485, 14.276487, 22.340992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769272, -0.499405, -0.398516,
		-0.638699, 0.617544, 0.459025,
		0.016861, 0.607646, -0.794029,
		17.688543, 14.458781, 22.102783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.009434, 14.269661, 22.583969>,  <17.676741, 14.033429, 22.658604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.009434, 14.269661, 22.583969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.166300, 14.341744, 22.223141>,  <17.260420, 14.384995, 22.006643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.166300, 14.341744, 22.223141>,  <17.009434, 14.269661, 22.583969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.166300, 14.341744, 22.223141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824947, -0.364997, -0.431554,
		-0.407023, 0.913401, 0.005524,
		0.392166, 0.180210, -0.902070,
		17.283949, 14.395807, 21.952520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.425779, 14.656860, 22.174183>,  <17.009434, 14.269661, 22.583969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.425779, 14.656860, 22.174183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.694237, 14.504772, 21.919626>,  <16.855312, 14.413520, 21.766891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.694237, 14.504772, 21.919626>,  <16.425779, 14.656860, 22.174183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.694237, 14.504772, 21.919626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740796, -0.311520, -0.595128,
		0.028030, 0.870855, -0.490740,
		0.671145, -0.380220, -0.636394,
		16.895580, 14.390706, 21.728708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.247383, 15.020515, 21.644070>,  <16.425779, 14.656860, 22.174183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.247383, 15.020515, 21.644070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.439617, 14.695519, 21.512072>,  <16.554958, 14.500522, 21.432873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.439617, 14.695519, 21.512072>,  <16.247383, 15.020515, 21.644070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.439617, 14.695519, 21.512072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794745, -0.244458, -0.555537,
		0.370699, 0.529244, -0.763206,
		0.480586, -0.812491, -0.329994,
		16.583794, 14.451773, 21.413073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.224796, 14.986070, 20.929949>,  <16.247383, 15.020515, 21.644070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.224796, 14.986070, 20.929949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.314188, 14.609618, 21.031406>,  <16.367823, 14.383747, 21.092281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.314188, 14.609618, 21.031406>,  <16.224796, 14.986070, 20.929949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.314188, 14.609618, 21.031406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793314, -0.326815, -0.513658,
		0.566313, -0.086430, -0.819646,
		0.223477, -0.941128, 0.253646,
		16.381231, 14.327280, 21.107500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.022993, 14.683755, 20.407190>,  <16.224796, 14.986070, 20.929949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.022993, 14.683755, 20.407190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.045332, 14.384447, 20.671606>,  <16.058735, 14.204863, 20.830256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.045332, 14.384447, 20.671606>,  <16.022993, 14.683755, 20.407190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.045332, 14.384447, 20.671606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769365, -0.454230, -0.449169,
		0.636364, -0.483497, -0.601059,
		0.055847, -0.748269, 0.661041,
		16.062086, 14.159966, 20.869919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.121948, 14.030063, 20.092745>,  <16.022993, 14.683755, 20.407190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.121948, 14.030063, 20.092745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.927780, 13.974004, 20.437935>,  <15.811279, 13.940369, 20.645048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.927780, 13.974004, 20.437935>,  <16.121948, 14.030063, 20.092745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.927780, 13.974004, 20.437935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840458, -0.197093, -0.504761,
		0.240827, -0.970316, -0.022115,
		-0.485419, -0.140147, 0.862975,
		15.782154, 13.931960, 20.696827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.735839, 13.372459, 20.030989>,  <16.121948, 14.030063, 20.092745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.735839, 13.372459, 20.030989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.566360, 13.598671, 20.314016>,  <15.464672, 13.734398, 20.483833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.566360, 13.598671, 20.314016>,  <15.735839, 13.372459, 20.030989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.566360, 13.598671, 20.314016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873111, -0.047015, -0.485250,
		-0.241157, -0.823387, 0.513689,
		-0.423699, 0.565529, 0.707570,
		15.439250, 13.768330, 20.526287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<19.876068, 20.014795, 25.476030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.272293, 19.960039, 25.478720>,  <20.510029, 19.927185, 25.480333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.272293, 19.960039, 25.478720>,  <19.876068, 20.014795, 25.476030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.272293, 19.960039, 25.478720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096038, -0.728267, -0.678531,
		0.097783, 0.671482, -0.734541,
		0.990563, -0.136892, 0.006724,
		20.569462, 19.918972, 25.480738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.161503, 20.063768, 24.808022>,  <19.876068, 20.014795, 25.476030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.161503, 20.063768, 24.808022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.436165, 19.854992, 25.010441>,  <20.600962, 19.729727, 25.131893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.436165, 19.854992, 25.010441>,  <20.161503, 20.063768, 24.808022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.436165, 19.854992, 25.010441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184803, -0.798545, -0.572864,
		0.703103, 0.299841, -0.644781,
		0.686655, -0.521940, 0.506048,
		20.642160, 19.698410, 25.162254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.679867, 19.706949, 24.313696>,  <20.161503, 20.063768, 24.808022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.679867, 19.706949, 24.313696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.706932, 19.511253, 24.661505>,  <20.723171, 19.393837, 24.870190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.706932, 19.511253, 24.661505>,  <20.679867, 19.706949, 24.313696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.706932, 19.511253, 24.661505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005570, -0.871691, -0.490024,
		0.997693, 0.028315, -0.061708,
		0.067665, -0.489237, 0.869522,
		20.727232, 19.364483, 24.922361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.227364, 19.187250, 24.186121>,  <20.679867, 19.706949, 24.313696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.227364, 19.187250, 24.186121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.983299, 19.081224, 24.484770>,  <20.836861, 19.017609, 24.663960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.983299, 19.081224, 24.484770>,  <21.227364, 19.187250, 24.186121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.983299, 19.081224, 24.484770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156092, -0.883685, -0.441289,
		0.776750, -0.385798, 0.497814,
		-0.610159, -0.265066, 0.746622,
		20.800251, 19.001705, 24.708757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.499472, 18.557957, 24.512064>,  <21.227364, 19.187250, 24.186121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.499472, 18.557957, 24.512064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.108515, 18.584723, 24.592295>,  <20.873941, 18.600782, 24.640432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.108515, 18.584723, 24.592295>,  <21.499472, 18.557957, 24.512064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.108515, 18.584723, 24.592295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141071, -0.912975, -0.382851,
		0.157502, -0.402491, 0.901773,
		-0.977391, 0.066915, 0.200575,
		20.815298, 18.604797, 24.652468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.153767, 17.858610, 24.416315>,  <21.499472, 18.557957, 24.512064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.153767, 17.858610, 24.416315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.783945, 17.995481, 24.483379>,  <20.562052, 18.077604, 24.523619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.783945, 17.995481, 24.483379>,  <21.153767, 17.858610, 24.416315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.783945, 17.995481, 24.483379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379549, -0.865952, -0.325684,
		0.033743, -0.364748, 0.930495,
		-0.924556, 0.342179, 0.167660,
		20.506578, 18.098135, 24.533678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.748011, 17.335510, 24.853968>,  <21.153767, 17.858610, 24.416315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.748011, 17.335510, 24.853968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.470436, 17.568367, 24.684469>,  <20.303890, 17.708082, 24.582771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.470436, 17.568367, 24.684469>,  <20.748011, 17.335510, 24.853968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.470436, 17.568367, 24.684469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511342, -0.812762, -0.279189,
		-0.506931, 0.022939, 0.861681,
		-0.693938, 0.582143, -0.423744,
		20.262255, 17.743010, 24.557346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.207886, 16.948818, 24.931400>,  <20.748011, 17.335510, 24.853968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.207886, 16.948818, 24.931400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.096392, 17.217726, 24.657070>,  <20.029495, 17.379070, 24.492472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.096392, 17.217726, 24.657070>,  <20.207886, 16.948818, 24.931400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.096392, 17.217726, 24.657070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523395, -0.705093, -0.478438,
		-0.805212, 0.225602, 0.548396,
		-0.278733, 0.672271, -0.685828,
		20.012772, 17.419407, 24.451323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.488426, 16.771166, 24.754330>,  <20.207886, 16.948818, 24.931400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.488426, 16.771166, 24.754330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.600462, 16.996876, 24.443680>,  <19.667683, 17.132301, 24.257290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.600462, 16.996876, 24.443680>,  <19.488426, 16.771166, 24.754330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.600462, 16.996876, 24.443680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613327, -0.517175, -0.596959,
		-0.738500, 0.643525, 0.201230,
		0.280087, 0.564274, -0.776625,
		19.684488, 17.166159, 24.210691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.921822, 17.041496, 24.285309>,  <19.488426, 16.771166, 24.754330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.921822, 17.041496, 24.285309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.216099, 17.071444, 24.016043>,  <19.392664, 17.089413, 23.854483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.216099, 17.071444, 24.016043>,  <18.921822, 17.041496, 24.285309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.216099, 17.071444, 24.016043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470973, -0.657718, -0.587870,
		-0.486768, 0.749534, -0.448615,
		0.735691, 0.074870, -0.673167,
		19.436806, 17.093904, 23.814093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.673351, 17.066730, 23.611799>,  <18.921822, 17.041496, 24.285309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.673351, 17.066730, 23.611799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.045746, 16.967857, 23.504341>,  <19.269182, 16.908533, 23.439867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.045746, 16.967857, 23.504341>,  <18.673351, 17.066730, 23.611799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.045746, 16.967857, 23.504341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364730, -0.661011, -0.655772,
		-0.015482, 0.708496, -0.705545,
		0.930985, -0.247181, -0.268643,
		19.325041, 16.893703, 23.423748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.649105, 17.149553, 22.916325>,  <18.673351, 17.066730, 23.611799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.649105, 17.149553, 22.916325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.955481, 16.908798, 23.006716>,  <19.139305, 16.764345, 23.060951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.955481, 16.908798, 23.006716>,  <18.649105, 17.149553, 22.916325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.955481, 16.908798, 23.006716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364373, -0.695988, -0.618734,
		0.529688, 0.391573, -0.752397,
		0.765939, -0.601890, 0.225978,
		19.185263, 16.728231, 23.074509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.977108, 17.034098, 22.295084>,  <18.649105, 17.149553, 22.916325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.977108, 17.034098, 22.295084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.073399, 16.739716, 22.548201>,  <19.131172, 16.563087, 22.700069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.073399, 16.739716, 22.548201>,  <18.977108, 17.034098, 22.295084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.073399, 16.739716, 22.548201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299147, -0.676481, -0.672967,
		0.923343, -0.027298, -0.383004,
		0.240725, -0.735954, 0.632790,
		19.145617, 16.518929, 22.738037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.178181, 16.484306, 21.920486>,  <18.977108, 17.034098, 22.295084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.178181, 16.484306, 21.920486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.057037, 16.285645, 22.245844>,  <18.984352, 16.166449, 22.441059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.057037, 16.285645, 22.245844>,  <19.178181, 16.484306, 21.920486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.057037, 16.285645, 22.245844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374088, -0.723029, -0.580764,
		0.876547, -0.480171, 0.033183,
		-0.302858, -0.496653, 0.813396,
		18.966181, 16.136648, 22.489862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.817940, 16.537203, 21.646179>,  <19.178181, 16.484306, 21.920486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.817940, 16.537203, 21.646179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.883892, 16.695581, 21.284840>,  <19.923464, 16.790607, 21.068035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.883892, 16.695581, 21.284840>,  <19.817940, 16.537203, 21.646179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.883892, 16.695581, 21.284840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492913, 0.760233, 0.423181,
		0.854313, -0.515047, -0.069820,
		0.164879, 0.395945, -0.903351,
		19.933355, 16.814365, 21.013834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.520376, 16.847063, 21.633844>,  <19.817940, 16.537203, 21.646179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.520376, 16.847063, 21.633844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.369329, 17.025774, 21.309425>,  <20.278702, 17.132999, 21.114775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.369329, 17.025774, 21.309425>,  <20.520376, 16.847063, 21.633844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.369329, 17.025774, 21.309425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563497, 0.805913, 0.181589,
		0.734763, -0.388452, -0.556083,
		-0.377616, 0.446776, -0.811047,
		20.256044, 17.159807, 21.066111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.070518, 17.014370, 21.172968>,  <20.520376, 16.847063, 21.633844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.070518, 17.014370, 21.172968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.773102, 17.264130, 21.077242>,  <20.594652, 17.413984, 21.019806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.773102, 17.264130, 21.077242>,  <21.070518, 17.014370, 21.172968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.773102, 17.264130, 21.077242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588939, 0.780987, 0.207869,
		0.316693, 0.013619, -0.948430,
		-0.743543, 0.624398, -0.239313,
		20.550039, 17.451448, 21.005447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.331135, 17.600391, 20.732372>,  <21.070518, 17.014370, 21.172968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.331135, 17.600391, 20.732372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.994276, 17.729967, 20.904816>,  <20.792162, 17.807713, 21.008282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.994276, 17.729967, 20.904816>,  <21.331135, 17.600391, 20.732372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.994276, 17.729967, 20.904816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465908, 0.839621, 0.279223,
		-0.271514, 0.436003, -0.858010,
		-0.842146, 0.323941, 0.431107,
		20.741632, 17.827148, 21.034147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.370390, 18.360235, 20.658543>,  <21.331135, 17.600391, 20.732372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.370390, 18.360235, 20.658543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.112888, 18.285122, 20.955276>,  <20.958387, 18.240053, 21.133316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.112888, 18.285122, 20.955276>,  <21.370390, 18.360235, 20.658543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.112888, 18.285122, 20.955276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215865, 0.885490, 0.411473,
		-0.734154, 0.425023, -0.529503,
		-0.643755, -0.187783, 0.741833,
		20.919762, 18.228786, 21.177826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.231569, 19.041830, 20.804634>,  <21.370390, 18.360235, 20.658543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.231569, 19.041830, 20.804634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.118313, 18.807056, 21.108038>,  <21.050358, 18.666193, 21.290081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.118313, 18.807056, 21.108038>,  <21.231569, 19.041830, 20.804634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.118313, 18.807056, 21.108038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085188, 0.772358, 0.629449,
		-0.955287, 0.242840, -0.168688,
		-0.283143, -0.586935, 0.758510,
		21.033369, 18.630976, 21.335590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.686752, 19.321598, 21.086332>,  <21.231569, 19.041830, 20.804634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.686752, 19.321598, 21.086332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.788698, 19.108101, 21.408863>,  <20.849867, 18.980003, 21.602381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.788698, 19.108101, 21.408863>,  <20.686752, 19.321598, 21.086332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.788698, 19.108101, 21.408863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005605, 0.834664, 0.550731,
		-0.966960, -0.135843, 0.215719,
		0.254866, -0.533744, 0.806325,
		20.865158, 18.947977, 21.650761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.226871, 19.500441, 21.769718>,  <20.686752, 19.321598, 21.086332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.226871, 19.500441, 21.769718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.576439, 19.353836, 21.897429>,  <20.786179, 19.265873, 21.974054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.576439, 19.353836, 21.897429>,  <20.226871, 19.500441, 21.769718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.576439, 19.353836, 21.897429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161589, 0.838552, 0.520307,
		-0.458428, -0.403114, 0.792049,
		0.873918, -0.366510, 0.319277,
		20.838614, 19.243883, 21.993212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.184397, 19.565308, 22.467529>,  <20.226871, 19.500441, 21.769718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.184397, 19.565308, 22.467529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.575155, 19.511276, 22.401285>,  <20.809610, 19.478857, 22.361538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.575155, 19.511276, 22.401285>,  <20.184397, 19.565308, 22.467529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.575155, 19.511276, 22.401285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213637, 0.637850, 0.739937,
		0.005683, -0.758222, 0.651972,
		0.976897, -0.135080, -0.165610,
		20.868225, 19.470753, 22.351603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.535000, 19.546749, 23.103477>,  <20.184397, 19.565308, 22.467529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.535000, 19.546749, 23.103477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.837011, 19.634470, 22.856306>,  <21.018219, 19.687103, 22.708004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.837011, 19.634470, 22.856306>,  <20.535000, 19.546749, 23.103477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.837011, 19.634470, 22.856306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386504, 0.612420, 0.689606,
		0.529666, -0.759505, 0.377633,
		0.755029, 0.219304, -0.617929,
		21.063520, 19.700260, 22.670927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.189913, 19.651186, 23.514364>,  <20.535000, 19.546749, 23.103477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.189913, 19.651186, 23.514364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.264563, 19.823587, 23.161228>,  <21.309353, 19.927029, 22.949347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.264563, 19.823587, 23.161228>,  <21.189913, 19.651186, 23.514364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.264563, 19.823587, 23.161228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349079, 0.810894, 0.469674,
		0.918321, -0.395834, 0.000880,
		0.186627, 0.431005, -0.882839,
		21.320551, 19.952888, 22.896376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.020327, 19.775799, 23.453543>,  <21.189913, 19.651186, 23.514364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.020327, 19.775799, 23.453543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.831009, 20.014574, 23.194418>,  <21.717419, 20.157839, 23.038944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.831009, 20.014574, 23.194418>,  <22.020327, 19.775799, 23.453543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.831009, 20.014574, 23.194418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558053, 0.772183, 0.303826,
		0.681593, -0.217713, -0.698593,
		-0.473295, 0.596938, -0.647810,
		21.689020, 20.193655, 23.000074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.507692, 20.112957, 23.195168>,  <22.020327, 19.775799, 23.453543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.507692, 20.112957, 23.195168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.180521, 20.329161, 23.116335>,  <21.984219, 20.458883, 23.069035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.180521, 20.329161, 23.116335>,  <22.507692, 20.112957, 23.195168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.180521, 20.329161, 23.116335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507537, 0.839220, 0.195231,
		0.270920, 0.059658, -0.960751,
		-0.817929, 0.540509, -0.197083,
		21.935143, 20.491314, 23.057211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.819586, 20.648306, 22.940153>,  <22.507692, 20.112957, 23.195168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.819586, 20.648306, 22.940153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.451296, 20.773083, 23.033926>,  <22.230322, 20.847948, 23.090189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.451296, 20.773083, 23.033926>,  <22.819586, 20.648306, 22.940153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.451296, 20.773083, 23.033926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375521, 0.871627, 0.315040,
		-0.106062, 0.378099, -0.919669,
		-0.920725, 0.311941, 0.234431,
		22.175077, 20.866665, 23.104256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<16.347803, 22.211138, 25.139034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.667452, 21.989265, 25.231754>,  <16.859241, 21.856142, 25.287386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.667452, 21.989265, 25.231754>,  <16.347803, 22.211138, 25.139034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.667452, 21.989265, 25.231754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115974, -0.520585, -0.845896,
		0.589875, 0.649092, -0.480340,
		0.799123, -0.554680, 0.231802,
		16.907188, 21.822861, 25.301294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.772366, 22.255615, 24.478083>,  <16.347803, 22.211138, 25.139034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.772366, 22.255615, 24.478083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.889402, 21.940622, 24.695066>,  <16.959623, 21.751627, 24.825256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.889402, 21.940622, 24.695066>,  <16.772366, 22.255615, 24.478083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.889402, 21.940622, 24.695066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227933, -0.608369, -0.760219,
		0.928675, 0.098788, -0.357496,
		0.292590, -0.787482, 0.542460,
		16.977179, 21.704378, 24.857805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.078638, 21.743742, 24.016638>,  <16.772366, 22.255615, 24.478083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.078638, 21.743742, 24.016638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.021551, 21.521332, 24.344166>,  <16.987299, 21.387886, 24.540682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.021551, 21.521332, 24.344166>,  <17.078638, 21.743742, 24.016638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.021551, 21.521332, 24.344166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283231, -0.769750, -0.572070,
		0.948373, -0.313559, -0.047628,
		-0.142716, -0.556026, 0.818821,
		16.978737, 21.354525, 24.589811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.373718, 21.068680, 23.901678>,  <17.078638, 21.743742, 24.016638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.373718, 21.068680, 23.901678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.093840, 20.991676, 24.176884>,  <16.925913, 20.945475, 24.342007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.093840, 20.991676, 24.176884>,  <17.373718, 21.068680, 23.901678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.093840, 20.991676, 24.176884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152628, -0.900504, -0.407183,
		0.697948, -0.389915, 0.600696,
		-0.699695, -0.192509, 0.688017,
		16.883930, 20.933924, 24.383289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.633671, 20.444767, 24.228540>,  <17.373718, 21.068680, 23.901678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.633671, 20.444767, 24.228540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.247141, 20.517403, 24.301474>,  <17.015223, 20.560984, 24.345234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.247141, 20.517403, 24.301474>,  <17.633671, 20.444767, 24.228540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.247141, 20.517403, 24.301474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212903, -0.962150, -0.170119,
		0.144539, -0.203208, 0.968408,
		-0.966323, 0.181588, 0.182332,
		16.957243, 20.571878, 24.356173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.438219, 19.800028, 24.375340>,  <17.633671, 20.444767, 24.228540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.438219, 19.800028, 24.375340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.083229, 19.980070, 24.335752>,  <16.870235, 20.088097, 24.312000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.083229, 19.980070, 24.335752>,  <17.438219, 19.800028, 24.375340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.083229, 19.980070, 24.335752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335880, -0.778751, -0.529841,
		-0.315557, -0.436978, 0.842303,
		-0.887473, 0.450108, -0.098968,
		16.816988, 20.115103, 24.306063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.092812, 19.280628, 24.489967>,  <17.438219, 19.800028, 24.375340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.092812, 19.280628, 24.489967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.886211, 19.541576, 24.268106>,  <16.762251, 19.698145, 24.134991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.886211, 19.541576, 24.268106>,  <17.092812, 19.280628, 24.489967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.886211, 19.541576, 24.268106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327104, -0.748935, -0.576281,
		-0.791350, -0.116218, 0.600216,
		-0.516496, 0.652373, -0.554654,
		16.731262, 19.737288, 24.101711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.474606, 18.991114, 24.391050>,  <17.092812, 19.280628, 24.489967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.474606, 18.991114, 24.391050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.439146, 19.270218, 24.106722>,  <16.417871, 19.437681, 23.936125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.439146, 19.270218, 24.106722>,  <16.474606, 18.991114, 24.391050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.439146, 19.270218, 24.106722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489066, -0.652179, -0.579204,
		-0.867730, 0.296295, 0.399066,
		-0.088647, 0.697762, -0.710823,
		16.412552, 19.479548, 23.893475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.829033, 18.960140, 24.129831>,  <16.474606, 18.991114, 24.391050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.829033, 18.960140, 24.129831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.007076, 19.169853, 23.839451>,  <16.113903, 19.295681, 23.665222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.007076, 19.169853, 23.839451>,  <15.829033, 18.960140, 24.129831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.007076, 19.169853, 23.839451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473661, -0.550149, -0.687736,
		-0.759950, 0.649973, 0.003456,
		0.445109, 0.524282, -0.725952,
		16.140610, 19.327137, 23.621666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.318549, 19.192659, 23.763201>,  <15.829033, 18.960140, 24.129831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.318549, 19.192659, 23.763201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.629694, 19.206747, 23.512222>,  <15.816381, 19.215200, 23.361635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.629694, 19.206747, 23.512222>,  <15.318549, 19.192659, 23.763201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.629694, 19.206747, 23.512222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601827, -0.245699, -0.759892,
		-0.180926, 0.968706, -0.169924,
		0.777862, 0.035220, -0.627447,
		15.863052, 19.217314, 23.323988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.997122, 19.268925, 23.158760>,  <15.318549, 19.192659, 23.763201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.997122, 19.268925, 23.158760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.361735, 19.141762, 23.054422>,  <15.580503, 19.065464, 22.991819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.361735, 19.141762, 23.054422>,  <14.997122, 19.268925, 23.158760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.361735, 19.141762, 23.054422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371322, -0.363738, -0.854292,
		0.176704, 0.875575, -0.449605,
		0.911535, -0.317905, -0.260846,
		15.635196, 19.046391, 22.976168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.187442, 19.521418, 22.381186>,  <14.997122, 19.268925, 23.158760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.187442, 19.521418, 22.381186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.371273, 19.186199, 22.498808>,  <15.481572, 18.985069, 22.569382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.371273, 19.186199, 22.498808>,  <15.187442, 19.521418, 22.381186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.371273, 19.186199, 22.498808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308361, -0.461061, -0.832067,
		0.832887, 0.291724, -0.470314,
		0.459578, -0.838045, 0.294056,
		15.509147, 18.934786, 22.587025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.541371, 19.228590, 21.792685>,  <15.187442, 19.521418, 22.381186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.541371, 19.228590, 21.792685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.542076, 18.923878, 22.051817>,  <15.542499, 18.741051, 22.207296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.542076, 18.923878, 22.051817>,  <15.541371, 19.228590, 21.792685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.542076, 18.923878, 22.051817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410982, -0.591144, -0.694004,
		0.911642, -0.265026, -0.314119,
		0.001761, -0.761781, 0.647832,
		15.542604, 18.695343, 22.246166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.762036, 18.719158, 21.294842>,  <15.541371, 19.228590, 21.792685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.762036, 18.719158, 21.294842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.587520, 18.557840, 21.616589>,  <15.482809, 18.461050, 21.809637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.587520, 18.557840, 21.616589>,  <15.762036, 18.719158, 21.294842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.587520, 18.557840, 21.616589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494853, -0.639065, -0.588827,
		0.751511, -0.654943, 0.079248,
		-0.436293, -0.403294, 0.804365,
		15.456632, 18.436852, 21.857899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.341776, 18.506220, 20.912256>,  <15.762036, 18.719158, 21.294842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.341776, 18.506220, 20.912256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.265436, 18.695580, 20.568287>,  <16.219631, 18.809196, 20.361906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.265436, 18.695580, 20.568287>,  <16.341776, 18.506220, 20.912256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.265436, 18.695580, 20.568287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115103, 0.880775, 0.459334,
		0.974848, -0.011315, -0.222586,
		-0.190850, 0.473401, -0.859923,
		16.208181, 18.837601, 20.310310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.961073, 19.004847, 20.975676>,  <16.341776, 18.506220, 20.912256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.961073, 19.004847, 20.975676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.697735, 19.110983, 20.693916>,  <16.539732, 19.174665, 20.524860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.697735, 19.110983, 20.693916>,  <16.961073, 19.004847, 20.975676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.697735, 19.110983, 20.693916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042459, 0.921226, 0.386704,
		0.751518, 0.284493, -0.595218,
		-0.658345, 0.265343, -0.704397,
		16.500231, 19.190586, 20.482597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.190634, 19.573444, 20.750242>,  <16.961073, 19.004847, 20.975676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.190634, 19.573444, 20.750242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.824564, 19.629425, 20.599051>,  <16.604921, 19.663013, 20.508335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.824564, 19.629425, 20.599051>,  <17.190634, 19.573444, 20.750242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.824564, 19.629425, 20.599051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079671, 0.982092, 0.170727,
		0.395103, 0.126131, -0.909937,
		-0.915175, 0.139950, -0.377979,
		16.550011, 19.671410, 20.485657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.278067, 20.105469, 20.179705>,  <17.190634, 19.573444, 20.750242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.278067, 20.105469, 20.179705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.908279, 20.095749, 20.331898>,  <16.686407, 20.089916, 20.423214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.908279, 20.095749, 20.331898>,  <17.278067, 20.105469, 20.179705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.908279, 20.095749, 20.331898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110645, 0.937917, 0.328740,
		-0.364851, 0.346008, -0.864385,
		-0.924468, -0.024301, 0.380485,
		16.630939, 20.088459, 20.446043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.038542, 20.696459, 20.065065>,  <17.278067, 20.105469, 20.179705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.038542, 20.696459, 20.065065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.757404, 20.595915, 20.331247>,  <16.588722, 20.535587, 20.490957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.757404, 20.595915, 20.331247>,  <17.038542, 20.696459, 20.065065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.757404, 20.595915, 20.331247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069952, 0.906531, 0.416304,
		-0.707898, 0.339146, -0.619565,
		-0.702843, -0.251361, 0.665455,
		16.546551, 20.520506, 20.530884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.631247, 21.280499, 20.104183>,  <17.038542, 20.696459, 20.065065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.631247, 21.280499, 20.104183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.572515, 21.061363, 20.433622>,  <16.537277, 20.929882, 20.631287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.572515, 21.061363, 20.433622>,  <16.631247, 21.280499, 20.104183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.572515, 21.061363, 20.433622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063705, 0.825656, 0.560565,
		-0.987109, 0.134773, -0.086328,
		-0.146827, -0.547839, 0.823598,
		16.528467, 20.897011, 20.680702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.065643, 21.636885, 20.574465>,  <16.631247, 21.280499, 20.104183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.065643, 21.636885, 20.574465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.277149, 21.389963, 20.807478>,  <16.404053, 21.241810, 20.947287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.277149, 21.389963, 20.807478>,  <16.065643, 21.636885, 20.574465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.277149, 21.389963, 20.807478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009537, 0.690605, 0.723169,
		-0.848716, -0.376829, 0.371053,
		0.528763, -0.617304, 0.582533,
		16.435778, 21.204771, 20.982239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.885508, 21.781471, 21.220324>,  <16.065643, 21.636885, 20.574465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.885508, 21.781471, 21.220324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.205606, 21.560307, 21.313187>,  <16.397665, 21.427608, 21.368904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.205606, 21.560307, 21.313187>,  <15.885508, 21.781471, 21.220324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.205606, 21.560307, 21.313187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211352, 0.622347, 0.753668,
		-0.561192, -0.554053, 0.614889,
		0.800246, -0.552911, 0.232156,
		16.445681, 21.394434, 21.382833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.794753, 21.775858, 21.908249>,  <15.885508, 21.781471, 21.220324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.794753, 21.775858, 21.908249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.175779, 21.672831, 21.843407>,  <16.404394, 21.611013, 21.804501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.175779, 21.672831, 21.843407>,  <15.794753, 21.775858, 21.908249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.175779, 21.672831, 21.843407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285809, 0.574093, 0.767288,
		-0.104566, -0.777223, 0.620477,
		0.952565, -0.257570, -0.162107,
		16.461548, 21.595560, 21.794775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.136904, 21.441580, 22.581470>,  <15.794753, 21.775858, 21.908249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.136904, 21.441580, 22.581470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.420700, 21.609783, 22.355267>,  <16.590977, 21.710705, 22.219545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.420700, 21.609783, 22.355267>,  <16.136904, 21.441580, 22.581470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.420700, 21.609783, 22.355267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391935, 0.431453, 0.812549,
		0.585673, -0.798137, 0.141299,
		0.709489, 0.420508, -0.565508,
		16.633547, 21.735935, 22.185614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.768333, 21.503883, 22.911757>,  <16.136904, 21.441580, 22.581470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.768333, 21.503883, 22.911757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.841866, 21.774336, 22.626364>,  <16.885984, 21.936607, 22.455128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.841866, 21.774336, 22.626364>,  <16.768333, 21.503883, 22.911757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.841866, 21.774336, 22.626364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553765, 0.528466, 0.643480,
		0.812127, -0.513393, -0.277268,
		0.183832, 0.676129, -0.713481,
		16.897015, 21.977175, 22.412319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.445017, 21.611244, 23.052017>,  <16.768333, 21.503883, 22.911757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.445017, 21.611244, 23.052017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.354420, 21.893911, 22.783892>,  <17.300062, 22.063511, 22.623016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.354420, 21.893911, 22.783892>,  <17.445017, 21.611244, 23.052017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.354420, 21.893911, 22.783892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673436, 0.610818, 0.416395,
		0.703693, -0.357105, -0.614241,
		-0.226493, 0.706666, -0.670316,
		17.286472, 22.105911, 22.582796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.110483, 21.780989, 22.701523>,  <17.445017, 21.611244, 23.052017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.110483, 21.780989, 22.701523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.853844, 22.087399, 22.685719>,  <17.699860, 22.271244, 22.676235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.853844, 22.087399, 22.685719>,  <18.110483, 21.780989, 22.701523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.853844, 22.087399, 22.685719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693864, 0.601575, 0.395804,
		0.326965, 0.226530, -0.917485,
		-0.641597, 0.766024, -0.039513,
		17.661366, 22.317205, 22.673864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.515772, 22.280100, 22.485958>,  <18.110483, 21.780989, 22.701523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.515772, 22.280100, 22.485958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.202263, 22.448139, 22.668921>,  <18.014158, 22.548962, 22.778698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.202263, 22.448139, 22.668921>,  <18.515772, 22.280100, 22.485958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.202263, 22.448139, 22.668921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620933, 0.544305, 0.564070,
		-0.012005, 0.726121, -0.687463,
		-0.783772, 0.420097, 0.457407,
		17.967131, 22.574169, 22.806143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.613766, 22.756601, 21.940845>,  <18.515772, 22.280100, 22.485958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.613766, 22.756601, 21.940845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.959538, 22.811272, 21.747318>,  <19.167000, 22.844074, 21.631201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.959538, 22.811272, 21.747318>,  <18.613766, 22.756601, 21.940845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.959538, 22.811272, 21.747318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293797, -0.643596, -0.706730,
		-0.407975, 0.753063, -0.516189,
		0.864430, 0.136674, -0.483819,
		19.218866, 22.852274, 21.602173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.374630, 22.744247, 21.335875>,  <18.613766, 22.756601, 21.940845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.374630, 22.744247, 21.335875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.766153, 22.671507, 21.298223>,  <19.001068, 22.627863, 21.275633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.766153, 22.671507, 21.298223>,  <18.374630, 22.744247, 21.335875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.766153, 22.671507, 21.298223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197177, -0.713015, -0.672853,
		0.055244, 0.677155, -0.733764,
		0.978810, -0.181852, -0.094129,
		19.059797, 22.616951, 21.269985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.572756, 22.720316, 20.559271>,  <18.374630, 22.744247, 21.335875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.572756, 22.720316, 20.559271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.855225, 22.512480, 20.751663>,  <19.024706, 22.387777, 20.867098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.855225, 22.512480, 20.751663>,  <18.572756, 22.720316, 20.559271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.855225, 22.512480, 20.751663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128911, -0.762313, -0.634240,
		0.696204, 0.385880, -0.605307,
		0.706174, -0.519591, 0.480981,
		19.067078, 22.356602, 20.895958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.009302, 22.353315, 20.006220>,  <18.572756, 22.720316, 20.559271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.009302, 22.353315, 20.006220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.095209, 22.182444, 20.357534>,  <19.146753, 22.079920, 20.568323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.095209, 22.182444, 20.357534>,  <19.009302, 22.353315, 20.006220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.095209, 22.182444, 20.357534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150247, -0.874117, -0.461892,
		0.965039, 0.231160, -0.123550,
		0.214769, -0.427181, 0.878288,
		19.159639, 22.054289, 20.621021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.566433, 21.936043, 19.897543>,  <19.009302, 22.353315, 20.006220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.566433, 21.936043, 19.897543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.411741, 21.763597, 20.223631>,  <19.318926, 21.660131, 20.419283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.411741, 21.763597, 20.223631>,  <19.566433, 21.936043, 19.897543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.411741, 21.763597, 20.223631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044691, -0.874201, -0.483504,
		0.921110, -0.223418, 0.318812,
		-0.386729, -0.431112, 0.815220,
		19.295723, 21.634264, 20.468197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.964472, 21.470221, 20.019476>,  <19.566433, 21.936043, 19.897543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.964472, 21.470221, 20.019476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.616899, 21.360649, 20.184362>,  <19.408356, 21.294907, 20.283295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.616899, 21.360649, 20.184362>,  <19.964472, 21.470221, 20.019476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.616899, 21.360649, 20.184362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107165, -0.917246, -0.383635,
		0.483191, -0.289177, 0.826379,
		-0.868932, -0.273928, 0.412215,
		19.356220, 21.278471, 20.308027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.147726, 20.877724, 20.376656>,  <19.964472, 21.470221, 20.019476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.147726, 20.877724, 20.376656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.750355, 20.845314, 20.344324>,  <19.511932, 20.825869, 20.324924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.750355, 20.845314, 20.344324>,  <20.147726, 20.877724, 20.376656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.750355, 20.845314, 20.344324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108237, -0.894639, -0.433480,
		-0.037189, -0.439380, 0.897531,
		-0.993429, -0.081025, -0.080828,
		19.452326, 20.821007, 20.320076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.972559, 20.199587, 20.496063>,  <20.147726, 20.877724, 20.376656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.972559, 20.199587, 20.496063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.633043, 20.304066, 20.312178>,  <19.429335, 20.366753, 20.201847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.633043, 20.304066, 20.312178>,  <19.972559, 20.199587, 20.496063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.633043, 20.304066, 20.312178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020541, -0.885094, -0.464959,
		-0.528336, -0.385208, 0.756621,
		-0.848787, 0.261196, -0.459715,
		19.378407, 20.382425, 20.174263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.557318, 19.566828, 20.600042>,  <19.972559, 20.199587, 20.496063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.557318, 19.566828, 20.600042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.470459, 19.798220, 20.285538>,  <19.418344, 19.937054, 20.096834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.470459, 19.798220, 20.285538>,  <19.557318, 19.566828, 20.600042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.470459, 19.798220, 20.285538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010393, -0.804067, -0.594447,
		-0.976084, -0.137253, 0.168589,
		-0.217146, 0.578478, -0.786263,
		19.405315, 19.971764, 20.049658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.950104, 19.350296, 20.323179>,  <19.557318, 19.566828, 20.600042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.950104, 19.350296, 20.323179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.142269, 19.555649, 20.038744>,  <19.257568, 19.678860, 19.868084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.142269, 19.555649, 20.038744>,  <18.950104, 19.350296, 20.323179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.142269, 19.555649, 20.038744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075143, -0.783703, -0.616573,
		-0.873818, 0.349643, -0.337924,
		0.480413, 0.513380, -0.711087,
		19.286392, 19.709663, 19.825418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.542797, 19.233133, 19.825806>,  <18.950104, 19.350296, 20.323179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.542797, 19.233133, 19.825806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.872919, 19.349361, 19.632132>,  <19.070993, 19.419098, 19.515926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.872919, 19.349361, 19.632132>,  <18.542797, 19.233133, 19.825806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.872919, 19.349361, 19.632132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225773, -0.616135, -0.754589,
		-0.517585, 0.732084, -0.442898,
		0.825307, 0.290569, -0.484187,
		19.120512, 19.436533, 19.486876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.331715, 19.431320, 19.169313>,  <18.542797, 19.233133, 19.825806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.331715, 19.431320, 19.169313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.721598, 19.345251, 19.145170>,  <18.955528, 19.293610, 19.130684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.721598, 19.345251, 19.145170>,  <18.331715, 19.431320, 19.169313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.721598, 19.345251, 19.145170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195261, -0.688639, -0.698319,
		0.108695, 0.692444, -0.713237,
		0.974710, -0.215171, -0.060356,
		19.014011, 19.280701, 19.127064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.347691, 19.324993, 18.482767>,  <18.331715, 19.431320, 19.169313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.347691, 19.324993, 18.482767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.692463, 19.156010, 18.594913>,  <18.899326, 19.054619, 18.662201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.692463, 19.156010, 18.594913>,  <18.347691, 19.324993, 18.482767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.692463, 19.156010, 18.594913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112319, -0.698314, -0.706925,
		0.494429, 0.577830, -0.649348,
		0.861931, -0.422458, 0.280366,
		18.951042, 19.029272, 18.679024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.525169, 19.196634, 17.882547>,  <18.347691, 19.324993, 18.482767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.525169, 19.196634, 17.882547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.709600, 18.962505, 18.149321>,  <18.820259, 18.822027, 18.309385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.709600, 18.962505, 18.149321>,  <18.525169, 19.196634, 17.882547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.709600, 18.962505, 18.149321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061917, -0.728541, -0.682198,
		0.885196, 0.355842, -0.299674,
		0.461079, -0.585324, 0.666934,
		18.847923, 18.786907, 18.349401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<6.594024, 13.738810, 4.285435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.308811, 14.015699, 4.329997>,  <6.137683, 14.181833, 4.356734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.308811, 14.015699, 4.329997>,  <6.594024, 13.738810, 4.285435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.308811, 14.015699, 4.329997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652585, -0.597135, -0.466437,
		-0.256355, -0.405286, 0.877511,
		-0.713032, 0.692224, 0.111405,
		6.094902, 14.223367, 4.363418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.968379, 13.498826, 4.662371>,  <6.594024, 13.738810, 4.285435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.968379, 13.498826, 4.662371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.849275, 13.772916, 4.396496>,  <5.777812, 13.937369, 4.236972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.849275, 13.772916, 4.396496>,  <5.968379, 13.498826, 4.662371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.849275, 13.772916, 4.396496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546544, -0.693229, -0.469812,
		-0.782706, 0.223388, 0.580921,
		-0.297761, 0.685224, -0.664686,
		5.759947, 13.978483, 4.197091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.449490, 14.141051, 4.819696>,  <5.968379, 13.498826, 4.662371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.449490, 14.141051, 4.819696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.745981, 14.366404, 4.965672>,  <5.923876, 14.501616, 5.053258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.745981, 14.366404, 4.965672>,  <5.449490, 14.141051, 4.819696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.745981, 14.366404, 4.965672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488805, 0.080407, 0.868679,
		0.460054, -0.822275, 0.334984,
		0.741228, 0.563382, 0.364941,
		5.968350, 14.535418, 5.075155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.675184, 13.851068, 5.518460>,  <5.449490, 14.141051, 4.819696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.675184, 13.851068, 5.518460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.747431, 14.242601, 5.479962>,  <5.790779, 14.477521, 5.456863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.747431, 14.242601, 5.479962>,  <5.675184, 13.851068, 5.518460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.747431, 14.242601, 5.479962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278180, 0.144697, 0.949567,
		0.943395, -0.144734, 0.298427,
		0.180616, 0.978833, -0.096244,
		5.801616, 14.536251, 5.451088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.204724, 14.012971, 5.968273>,  <5.675184, 13.851068, 5.518460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.204724, 14.012971, 5.968273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.993408, 14.342627, 5.886588>,  <5.866619, 14.540420, 5.837576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.993408, 14.342627, 5.886588>,  <6.204724, 14.012971, 5.968273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.993408, 14.342627, 5.886588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195025, 0.116303, 0.973878,
		0.826362, 0.554317, 0.099285,
		-0.528291, 0.824139, -0.204214,
		5.834921, 14.589869, 5.825323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.442970, 14.738824, 6.213623>,  <6.204724, 14.012971, 5.968273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.442970, 14.738824, 6.213623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.047363, 14.679757, 6.211175>,  <5.809999, 14.644317, 6.209706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.047363, 14.679757, 6.211175>,  <6.442970, 14.738824, 6.213623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.047363, 14.679757, 6.211175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025174, 0.127514, 0.991517,
		-0.145634, 0.980783, -0.129831,
		-0.989018, -0.147667, -0.006120,
		5.750658, 14.635457, 6.209339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.146092, 15.284253, 6.443592>,  <6.442970, 14.738824, 6.213623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.146092, 15.284253, 6.443592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.927705, 14.959133, 6.524858>,  <5.796673, 14.764061, 6.573617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.927705, 14.959133, 6.524858>,  <6.146092, 15.284253, 6.443592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.927705, 14.959133, 6.524858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071577, 0.196357, 0.977917,
		-0.834743, 0.548452, -0.049027,
		-0.545967, -0.812800, 0.203164,
		5.763915, 14.715293, 6.585807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.166142, 15.905624, 6.810065>,  <6.146092, 15.284253, 6.443592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.166142, 15.905624, 6.810065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.980190, 15.923705, 6.456377>,  <5.868619, 15.934554, 6.244164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.980190, 15.923705, 6.456377>,  <6.166142, 15.905624, 6.810065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.980190, 15.923705, 6.456377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451220, 0.871363, -0.192684,
		0.761766, -0.488552, -0.425476,
		-0.464880, 0.045203, -0.884219,
		5.840726, 15.937266, 6.191112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.658646, 16.393211, 7.118175>,  <6.166142, 15.905624, 6.810065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.658646, 16.393211, 7.118175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.752676, 16.740534, 6.943461>,  <5.809095, 16.948927, 6.838633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.752676, 16.740534, 6.943461>,  <5.658646, 16.393211, 7.118175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.752676, 16.740534, 6.943461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226547, 0.388054, 0.893359,
		0.945207, -0.308960, -0.105491,
		0.235076, 0.868308, -0.436785,
		5.823199, 17.001026, 6.812426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.218555, 16.531729, 7.476182>,  <5.658646, 16.393211, 7.118175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.218555, 16.531729, 7.476182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.987093, 16.833632, 7.352571>,  <5.848216, 17.014772, 7.278403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.987093, 16.833632, 7.352571>,  <6.218555, 16.531729, 7.476182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.987093, 16.833632, 7.352571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102313, 0.308739, 0.945628,
		0.809128, 0.578811, -0.101432,
		-0.578656, 0.754757, -0.309029,
		5.813496, 17.060059, 7.259862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.536252, 17.225868, 7.398867>,  <6.218555, 16.531729, 7.476182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.536252, 17.225868, 7.398867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.162756, 17.146284, 7.517892>,  <5.938659, 17.098534, 7.589308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.162756, 17.146284, 7.517892>,  <6.536252, 17.225868, 7.398867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.162756, 17.146284, 7.517892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275477, 0.131392, 0.952286,
		-0.228563, 0.971160, -0.067878,
		-0.933741, -0.198958, 0.297564,
		5.882634, 17.086597, 7.607162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.347639, 17.747423, 7.943898>,  <6.536252, 17.225868, 7.398867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.347639, 17.747423, 7.943898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.081516, 17.450502, 7.975784>,  <5.921843, 17.272350, 7.994915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.081516, 17.450502, 7.975784>,  <6.347639, 17.747423, 7.943898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.081516, 17.450502, 7.975784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034027, 0.136815, 0.990012,
		-0.745794, 0.655949, -0.116282,
		-0.665307, -0.742302, 0.079716,
		5.881924, 17.227812, 7.999699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.713829, 17.992739, 8.340481>,  <6.347639, 17.747423, 7.943898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.713829, 17.992739, 8.340481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.757731, 17.595842, 8.363832>,  <5.784073, 17.357704, 8.377844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.757731, 17.595842, 8.363832>,  <5.713829, 17.992739, 8.340481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.757731, 17.595842, 8.363832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034289, 0.062479, 0.997457,
		-0.993367, -0.107476, 0.040881,
		0.109757, -0.992243, 0.058379,
		5.790658, 17.298170, 8.381346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.263434, 17.714432, 8.953040>,  <5.713829, 17.992739, 8.340481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.263434, 17.714432, 8.953040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.527702, 17.422876, 8.881223>,  <5.686263, 17.247942, 8.838132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.527702, 17.422876, 8.881223>,  <5.263434, 17.714432, 8.953040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.527702, 17.422876, 8.881223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013824, -0.250949, 0.967902,
		-0.750550, -0.636981, -0.175871,
		0.660669, -0.728890, -0.179544,
		5.725903, 17.204210, 8.827359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.013951, 16.996185, 9.266149>,  <5.263434, 17.714432, 8.953040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.013951, 16.996185, 9.266149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.409569, 16.963163, 9.217196>,  <5.646939, 16.943350, 9.187825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.409569, 16.963163, 9.217196>,  <5.013951, 16.996185, 9.266149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.409569, 16.963163, 9.217196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086438, -0.348173, 0.933437,
		-0.119669, -0.933788, -0.337223,
		0.989044, -0.082554, -0.122380,
		5.706282, 16.938396, 9.180483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.156676, 16.405428, 9.665047>,  <5.013951, 16.996185, 9.266149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.156676, 16.405428, 9.665047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.531971, 16.527733, 9.600280>,  <5.757149, 16.601116, 9.561419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.531971, 16.527733, 9.600280>,  <5.156676, 16.405428, 9.665047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.531971, 16.527733, 9.600280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259150, -0.310981, 0.914403,
		0.229237, -0.899889, -0.371013,
		0.938239, 0.305763, -0.161918,
		5.813443, 16.619461, 9.551704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.508964, 15.832131, 9.939884>,  <5.156676, 16.405428, 9.665047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.508964, 15.832131, 9.939884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.778041, 16.127636, 9.923319>,  <5.939488, 16.304939, 9.913380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.778041, 16.127636, 9.923319>,  <5.508964, 15.832131, 9.939884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.778041, 16.127636, 9.923319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334449, -0.253661, 0.907634,
		0.660020, -0.624411, -0.417715,
		0.672694, 0.738761, -0.041412,
		5.979850, 16.349264, 9.910895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.149093, 15.565953, 10.137402>,  <5.508964, 15.832131, 9.939884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.149093, 15.565953, 10.137402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.209875, 15.958255, 10.186441>,  <6.246344, 16.193636, 10.215865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.209875, 15.958255, 10.186441>,  <6.149093, 15.565953, 10.137402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.209875, 15.958255, 10.186441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309966, -0.165069, 0.936309,
		0.938526, -0.104274, -0.329083,
		0.151954, 0.980754, 0.122600,
		6.255461, 16.252481, 10.223222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.799126, 15.664176, 10.425084>,  <6.149093, 15.565953, 10.137402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.799126, 15.664176, 10.425084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.585691, 15.989819, 10.516749>,  <6.457631, 16.185204, 10.571749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.585691, 15.989819, 10.516749>,  <6.799126, 15.664176, 10.425084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.585691, 15.989819, 10.516749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368997, -0.019718, 0.929221,
		0.761004, 0.580381, -0.289882,
		-0.533586, 0.814107, 0.229164,
		6.425616, 16.234051, 10.585499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.232841, 16.067453, 10.840842>,  <6.799126, 15.664176, 10.425084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.232841, 16.067453, 10.840842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.886299, 16.240889, 10.939982>,  <6.678374, 16.344950, 10.999466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.886299, 16.240889, 10.939982>,  <7.232841, 16.067453, 10.840842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.886299, 16.240889, 10.939982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316067, 0.091757, 0.944290,
		0.386690, 0.896428, -0.216536,
		-0.866356, 0.433587, 0.247850,
		6.626392, 16.370964, 11.014338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.336519, 16.696222, 11.177377>,  <7.232841, 16.067453, 10.840842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.336519, 16.696222, 11.177377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.980566, 16.583151, 11.320598>,  <6.766994, 16.515308, 11.406530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.980566, 16.583151, 11.320598>,  <7.336519, 16.696222, 11.177377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.980566, 16.583151, 11.320598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296599, 0.237831, 0.924914,
		-0.346608, 0.929263, -0.127800,
		-0.889883, -0.282678, 0.358053,
		6.713601, 16.498348, 11.428014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.138211, 17.204201, 11.559911>,  <7.336519, 16.696222, 11.177377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.138211, 17.204201, 11.559911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.889976, 16.916603, 11.685078>,  <6.741035, 16.744045, 11.760178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.889976, 16.916603, 11.685078>,  <7.138211, 17.204201, 11.559911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.889976, 16.916603, 11.685078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284659, 0.165264, 0.944276,
		-0.730643, 0.675081, 0.102107,
		-0.620589, -0.718994, 0.312917,
		6.703799, 16.700905, 11.778953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.740799, 17.529163, 12.049390>,  <7.138211, 17.204201, 11.559911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.740799, 17.529163, 12.049390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.745673, 17.138918, 12.137056>,  <6.748598, 16.904772, 12.189656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.745673, 17.138918, 12.137056>,  <6.740799, 17.529163, 12.049390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.745673, 17.138918, 12.137056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197912, 0.217199, 0.955853,
		-0.980144, 0.031729, 0.195732,
		0.012184, -0.975612, 0.219166,
		6.749329, 16.846235, 12.202806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.387795, 17.542799, 12.791784>,  <6.740799, 17.529163, 12.049390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.387795, 17.542799, 12.791784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.533309, 17.170708, 12.772457>,  <6.620616, 16.947453, 12.760860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.533309, 17.170708, 12.772457>,  <6.387795, 17.542799, 12.791784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.533309, 17.170708, 12.772457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260510, 0.051800, 0.964080,
		-0.894314, -0.363303, 0.261178,
		0.363782, -0.930230, -0.048318,
		6.642443, 16.891638, 12.757961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.989968, 17.054132, 13.203467>,  <6.387795, 17.542799, 12.791784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.989968, 17.054132, 13.203467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.336335, 16.858192, 13.163005>,  <6.544156, 16.740629, 13.138727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.336335, 16.858192, 13.163005>,  <5.989968, 17.054132, 13.203467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.336335, 16.858192, 13.163005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060617, -0.097976, 0.993341,
		-0.496499, -0.866284, -0.055147,
		0.865918, -0.489849, -0.101156,
		6.596111, 16.711237, 13.132658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.945556, 16.418055, 13.634893>,  <5.989968, 17.054132, 13.203467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.945556, 16.418055, 13.634893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.337644, 16.445190, 13.560526>,  <6.572897, 16.461472, 13.515905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.337644, 16.445190, 13.560526>,  <5.945556, 16.418055, 13.634893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.337644, 16.445190, 13.560526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196032, -0.203757, 0.959195,
		0.027190, -0.976668, -0.213025,
		0.980221, 0.067840, -0.185918,
		6.631710, 16.465542, 13.504750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.308307, 15.742678, 13.890556>,  <5.945556, 16.418055, 13.634893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.308307, 15.742678, 13.890556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.570924, 16.043047, 13.862084>,  <6.728494, 16.223269, 13.845001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.570924, 16.043047, 13.862084>,  <6.308307, 15.742678, 13.890556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.570924, 16.043047, 13.862084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374910, -0.242985, 0.894651,
		0.654519, -0.614062, -0.441058,
		0.656542, 0.750924, -0.071180,
		6.767886, 16.268324, 13.840731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.945407, 15.437882, 14.161118>,  <6.308307, 15.742678, 13.890556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.945407, 15.437882, 14.161118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.939074, 15.835596, 14.203348>,  <6.935274, 16.074224, 14.228686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.939074, 15.835596, 14.203348>,  <6.945407, 15.437882, 14.161118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.939074, 15.835596, 14.203348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231630, -0.099071, 0.967746,
		0.972675, 0.039777, -0.228738,
		-0.015833, 0.994285, 0.105577,
		6.934324, 16.133883, 14.235022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.268817, 15.480789, 14.893593>,  <6.945407, 15.437882, 14.161118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.268817, 15.480789, 14.893593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.151361, 15.850253, 14.795101>,  <7.080887, 16.071932, 14.736006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.151361, 15.850253, 14.795101>,  <7.268817, 15.480789, 14.893593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.151361, 15.850253, 14.795101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098674, 0.285497, 0.953286,
		0.950810, 0.255626, -0.174974,
		-0.293639, 0.923659, -0.246230,
		7.063269, 16.127352, 14.721232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.766254, 15.884176, 15.089128>,  <7.268817, 15.480789, 14.893593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.766254, 15.884176, 15.089128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.425568, 16.093414, 15.101477>,  <7.221156, 16.218956, 15.108886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.425568, 16.093414, 15.101477>,  <7.766254, 15.884176, 15.089128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.425568, 16.093414, 15.101477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109909, 0.120730, 0.986582,
		0.512348, 0.843681, -0.160321,
		-0.851716, 0.523094, 0.030873,
		7.170053, 16.250343, 15.110739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.903811, 16.412951, 15.454281>,  <7.766254, 15.884176, 15.089128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.903811, 16.412951, 15.454281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.505901, 16.374157, 15.467037>,  <7.267155, 16.350880, 15.474691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.505901, 16.374157, 15.467037>,  <7.903811, 16.412951, 15.454281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.505901, 16.374157, 15.467037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025783, 0.063594, 0.997643,
		-0.098786, 0.993252, -0.060762,
		-0.994775, -0.096986, 0.031891,
		7.207469, 16.345060, 15.476604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.534717, 16.646858, 15.847494>,  <7.903811, 16.412951, 15.454281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.534717, 16.646858, 15.847494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.915784, 16.615002, 15.964851>,  <9.144424, 16.595888, 16.035265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.915784, 16.615002, 15.964851>,  <8.534717, 16.646858, 15.847494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.915784, 16.615002, 15.964851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280465, 0.602640, -0.747104,
		-0.117311, 0.794030, 0.596452,
		0.952669, -0.079641, 0.293394,
		9.201585, 16.591110, 16.052870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.878040, 17.330725, 16.040581>,  <8.534717, 16.646858, 15.847494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.878040, 17.330725, 16.040581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.126744, 17.048445, 15.904696>,  <9.275967, 16.879076, 15.823167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.126744, 17.048445, 15.904696>,  <8.878040, 17.330725, 16.040581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.126744, 17.048445, 15.904696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232918, 0.580723, -0.780071,
		0.747772, 0.405893, 0.525441,
		0.621760, -0.705700, -0.339708,
		9.313272, 16.836735, 15.802784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.324578, 17.687817, 15.694145>,  <8.878040, 17.330725, 16.040581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.324578, 17.687817, 15.694145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.436693, 17.318584, 15.588800>,  <9.503963, 17.097044, 15.525594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.436693, 17.318584, 15.588800>,  <9.324578, 17.687817, 15.694145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.436693, 17.318584, 15.588800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443363, 0.367832, -0.817392,
		0.851392, 0.112340, 0.512358,
		0.280288, -0.923082, -0.263362,
		9.520780, 17.041660, 15.509792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.043707, 17.871819, 15.292604>,  <9.324578, 17.687817, 15.694145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.043707, 17.871819, 15.292604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.902748, 17.512939, 15.186135>,  <9.818172, 17.297611, 15.122253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.902748, 17.512939, 15.186135>,  <10.043707, 17.871819, 15.292604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.902748, 17.512939, 15.186135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249671, 0.183978, -0.950693,
		0.901931, -0.401478, 0.159171,
		-0.352398, -0.897200, -0.266173,
		9.797029, 17.243780, 15.106283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.559733, 17.630680, 14.846130>,  <10.043707, 17.871819, 15.292604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.559733, 17.630680, 14.846130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.231167, 17.427893, 14.741625>,  <10.034027, 17.306221, 14.678922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.231167, 17.427893, 14.741625>,  <10.559733, 17.630680, 14.846130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.231167, 17.427893, 14.741625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170496, 0.218867, -0.960744,
		0.544247, -0.833716, -0.093345,
		-0.821417, -0.506967, -0.261263,
		9.984741, 17.275803, 14.663246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.801455, 17.353809, 14.203668>,  <10.559733, 17.630680, 14.846130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.801455, 17.353809, 14.203668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.402397, 17.332573, 14.221040>,  <10.162962, 17.319830, 14.231463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.402397, 17.332573, 14.221040>,  <10.801455, 17.353809, 14.203668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.402397, 17.332573, 14.221040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059574, 0.356815, -0.932274,
		0.033999, -0.932665, -0.359137,
		-0.997645, -0.053092, 0.043431,
		10.103104, 17.316645, 14.234069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.577048, 17.021482, 13.576259>,  <10.801455, 17.353809, 14.203668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.577048, 17.021482, 13.576259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.246052, 17.209366, 13.699309>,  <10.047454, 17.322096, 13.773140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.246052, 17.209366, 13.699309>,  <10.577048, 17.021482, 13.576259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.246052, 17.209366, 13.699309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249105, 0.183897, -0.950857,
		-0.503196, -0.863456, -0.035166,
		-0.827490, 0.469708, 0.307628,
		9.997805, 17.350279, 13.791597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.085581, 16.774275, 13.099205>,  <10.577048, 17.021482, 13.576259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.085581, 16.774275, 13.099205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.907352, 17.096880, 13.254642>,  <9.800415, 17.290443, 13.347903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.907352, 17.096880, 13.254642>,  <10.085581, 16.774275, 13.099205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.907352, 17.096880, 13.254642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212082, 0.326613, -0.921057,
		-0.869763, -0.492810, 0.025517,
		-0.445572, 0.806512, 0.388592,
		9.773681, 17.338833, 13.371219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.441233, 16.781567, 12.740724>,  <10.085581, 16.774275, 13.099205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.441233, 16.781567, 12.740724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.472922, 17.147882, 12.898232>,  <9.491936, 17.367672, 12.992736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.472922, 17.147882, 12.898232>,  <9.441233, 16.781567, 12.740724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.472922, 17.147882, 12.898232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439830, 0.386595, -0.810613,
		-0.894580, -0.108973, 0.433419,
		0.079223, 0.915789, 0.393769,
		9.496689, 17.422619, 13.016362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.854702, 17.045368, 12.674898>,  <9.441233, 16.781567, 12.740724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.854702, 17.045368, 12.674898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.114275, 17.349529, 12.685296>,  <9.270019, 17.532026, 12.691535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.114275, 17.349529, 12.685296>,  <8.854702, 17.045368, 12.674898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.114275, 17.349529, 12.685296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419448, 0.386045, -0.821604,
		-0.634784, 0.522262, 0.569466,
		0.648932, 0.760403, 0.025994,
		9.308954, 17.577650, 12.693094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.429176, 17.698786, 12.600542>,  <8.854702, 17.045368, 12.674898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.429176, 17.698786, 12.600542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.813006, 17.772669, 12.515598>,  <9.043304, 17.816999, 12.464632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.813006, 17.772669, 12.515598>,  <8.429176, 17.698786, 12.600542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.813006, 17.772669, 12.515598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268499, 0.374533, -0.887487,
		-0.084391, 0.908630, 0.408986,
		0.959576, 0.184708, -0.212359,
		9.100880, 17.828081, 12.451891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.431043, 18.333950, 12.376504>,  <8.429176, 17.698786, 12.600542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.431043, 18.333950, 12.376504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.754174, 18.158852, 12.218624>,  <8.948053, 18.053793, 12.123896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.754174, 18.158852, 12.218624>,  <8.431043, 18.333950, 12.376504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.754174, 18.158852, 12.218624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264338, 0.329462, -0.906411,
		0.526817, 0.836560, 0.150436,
		0.807830, -0.437747, -0.394701,
		8.996523, 18.027527, 12.100214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.681691, 18.745693, 12.003282>,  <8.431043, 18.333950, 12.376504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.681691, 18.745693, 12.003282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.825780, 18.411207, 11.837879>,  <8.912233, 18.210516, 11.738638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.825780, 18.411207, 11.837879>,  <8.681691, 18.745693, 12.003282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.825780, 18.411207, 11.837879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455901, 0.228920, -0.860087,
		0.813876, 0.498340, -0.298768,
		0.360222, -0.836213, -0.413506,
		8.933846, 18.160343, 11.713827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.977153, 19.064127, 11.333327>,  <8.681691, 18.745693, 12.003282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.977153, 19.064127, 11.333327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.962222, 18.667330, 11.285061>,  <8.953263, 18.429253, 11.256101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.962222, 18.667330, 11.285061>,  <8.977153, 19.064127, 11.333327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.962222, 18.667330, 11.285061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172640, 0.125336, -0.976978,
		0.984277, -0.015636, -0.175936,
		-0.037328, -0.991991, -0.120666,
		8.951024, 18.369732, 11.248861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.394072, 18.944181, 10.737221>,  <8.977153, 19.064127, 11.333327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.394072, 18.944181, 10.737221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.177854, 18.610264, 10.779041>,  <9.048123, 18.409914, 10.804133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.177854, 18.610264, 10.779041>,  <9.394072, 18.944181, 10.737221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.177854, 18.610264, 10.779041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179532, -0.006953, -0.983728,
		0.821937, -0.550518, -0.146114,
		-0.540544, -0.834794, 0.104550,
		9.015690, 18.359825, 10.810407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.460488, 18.663101, 10.171127>,  <9.394072, 18.944181, 10.737221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.460488, 18.663101, 10.171127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.124681, 18.476206, 10.282047>,  <8.923196, 18.364069, 10.348599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.124681, 18.476206, 10.282047>,  <9.460488, 18.663101, 10.171127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.124681, 18.476206, 10.282047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226505, -0.162940, -0.960285,
		0.493867, -0.868986, 0.030959,
		-0.839518, -0.467240, 0.277300,
		8.872825, 18.336035, 10.365237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.323384, 18.252335, 9.702380>,  <9.460488, 18.663101, 10.171127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.323384, 18.252335, 9.702380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.958835, 18.231249, 9.865656>,  <8.740105, 18.218597, 9.963621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.958835, 18.231249, 9.865656>,  <9.323384, 18.252335, 9.702380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.958835, 18.231249, 9.865656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405680, -0.052257, -0.912520,
		0.069438, -0.997241, 0.026238,
		-0.911374, -0.052719, 0.408189,
		8.685423, 18.215435, 9.988112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.954676, 17.705822, 9.277727>,  <9.323384, 18.252335, 9.702380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.954676, 17.705822, 9.277727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.687446, 17.936596, 9.465694>,  <8.527108, 18.075060, 9.578475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.687446, 17.936596, 9.465694>,  <8.954676, 17.705822, 9.277727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.687446, 17.936596, 9.465694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592945, -0.031229, -0.804637,
		-0.449548, -0.816194, 0.362953,
		-0.668074, 0.576934, 0.469919,
		8.487023, 18.109676, 9.606670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.407152, 17.356653, 9.217153>,  <8.954676, 17.705822, 9.277727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.407152, 17.356653, 9.217153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.257007, 17.723021, 9.273994>,  <8.166919, 17.942841, 9.308100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.257007, 17.723021, 9.273994>,  <8.407152, 17.356653, 9.217153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.257007, 17.723021, 9.273994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609787, -0.128567, -0.782068,
		-0.698041, -0.380215, 0.606775,
		-0.375365, 0.915919, 0.142105,
		8.144397, 17.997797, 9.316626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.666854, 17.234028, 9.082891>,  <8.407152, 17.356653, 9.217153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.666854, 17.234028, 9.082891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.767276, 17.618179, 9.034482>,  <7.827528, 17.848669, 9.005436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.767276, 17.618179, 9.034482>,  <7.666854, 17.234028, 9.082891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.767276, 17.618179, 9.034482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692781, 0.090949, -0.715390,
		-0.676037, 0.263444, 0.688165,
		0.251053, 0.960378, -0.121024,
		7.842592, 17.906292, 8.998175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.070920, 17.418537, 8.817478>,  <7.666854, 17.234028, 9.082891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.070920, 17.418537, 8.817478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.322826, 17.719490, 8.740212>,  <7.473970, 17.900063, 8.693852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.322826, 17.719490, 8.740212>,  <7.070920, 17.418537, 8.817478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.322826, 17.719490, 8.740212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588247, 0.299528, -0.751165,
		-0.507305, 0.586688, 0.631220,
		0.629768, 0.752383, -0.193165,
		7.511757, 17.945206, 8.682262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<22.817331, 21.316645, 22.693916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.515392, 21.278505, 22.953489>,  <22.334229, 21.255621, 23.109232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.515392, 21.278505, 22.953489>,  <22.817331, 21.316645, 22.693916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.515392, 21.278505, 22.953489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116610, 0.954107, 0.275830,
		-0.645449, 0.283882, -0.709088,
		-0.754849, -0.095348, 0.648931,
		22.288937, 21.249901, 23.148169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.565325, 21.887688, 22.657515>,  <22.817331, 21.316645, 22.693916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.565325, 21.887688, 22.657515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.367519, 21.779238, 22.987835>,  <22.248837, 21.714169, 23.186028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.367519, 21.779238, 22.987835>,  <22.565325, 21.887688, 22.657515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.367519, 21.779238, 22.987835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053123, 0.938899, 0.340068,
		-0.867545, 0.212037, -0.449895,
		-0.494513, -0.271124, 0.825802,
		22.219166, 21.697901, 23.235575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.026249, 22.396868, 22.768553>,  <22.565325, 21.887688, 22.657515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.026249, 22.396868, 22.768553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.109529, 22.232115, 23.123405>,  <22.159498, 22.133263, 23.336317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.109529, 22.232115, 23.123405>,  <22.026249, 22.396868, 22.768553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.109529, 22.232115, 23.123405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156334, 0.909362, 0.385512,
		-0.965511, 0.058425, 0.253721,
		0.208201, -0.411881, 0.887134,
		22.171989, 22.108551, 23.389545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.628471, 22.757727, 23.294083>,  <22.026249, 22.396868, 22.768553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.628471, 22.757727, 23.294083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.959608, 22.614906, 23.467146>,  <22.158291, 22.529215, 23.570984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.959608, 22.614906, 23.467146>,  <21.628471, 22.757727, 23.294083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.959608, 22.614906, 23.467146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240093, 0.922588, 0.301970,
		-0.506985, -0.146105, 0.849482,
		0.827842, -0.357049, 0.432659,
		22.207960, 22.507792, 23.596943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.666122, 23.217564, 23.835268>,  <21.628471, 22.757727, 23.294083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.666122, 23.217564, 23.835268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.025705, 23.042353, 23.834135>,  <22.241455, 22.937225, 23.833456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.025705, 23.042353, 23.834135>,  <21.666122, 23.217564, 23.835268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.025705, 23.042353, 23.834135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423597, 0.867655, 0.260270,
		-0.111550, -0.235171, 0.965532,
		0.898956, -0.438029, -0.002831,
		22.295393, 22.910944, 23.833286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.937798, 23.363176, 24.479391>,  <21.666122, 23.217564, 23.835268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.937798, 23.363176, 24.479391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.250023, 23.288134, 24.240887>,  <22.437357, 23.243109, 24.097784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.250023, 23.288134, 24.240887>,  <21.937798, 23.363176, 24.479391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.250023, 23.288134, 24.240887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441939, 0.840229, 0.314173,
		0.442056, -0.508742, 0.738761,
		0.780562, -0.187605, -0.596262,
		22.484192, 23.231852, 24.062008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.469213, 23.259703, 24.929626>,  <21.937798, 23.363176, 24.479391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.469213, 23.259703, 24.929626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.639177, 23.363014, 24.582584>,  <22.741156, 23.425001, 24.374359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.639177, 23.363014, 24.582584>,  <22.469213, 23.259703, 24.929626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.639177, 23.363014, 24.582584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382734, 0.817295, 0.430747,
		0.820350, -0.515089, 0.248415,
		0.424901, 0.258286, -0.867610,
		22.766651, 23.440498, 24.322302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.117550, 23.460835, 25.032732>,  <22.469213, 23.259703, 24.929626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.117550, 23.460835, 25.032732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.065266, 23.631275, 24.674660>,  <23.033895, 23.733540, 24.459816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.065266, 23.631275, 24.674660>,  <23.117550, 23.460835, 25.032732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.065266, 23.631275, 24.674660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409077, 0.845663, 0.342798,
		0.903089, -0.321391, -0.284846,
		-0.130711, 0.426101, -0.895183,
		23.026052, 23.759106, 24.406105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.727571, 23.912622, 24.967577>,  <23.117550, 23.460835, 25.032732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.727571, 23.912622, 24.967577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.448084, 24.028704, 24.706020>,  <23.280392, 24.098352, 24.549086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.448084, 24.028704, 24.706020>,  <23.727571, 23.912622, 24.967577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.448084, 24.028704, 24.706020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162683, 0.954535, 0.249795,
		0.696655, 0.068158, -0.714161,
		-0.698717, 0.290203, -0.653893,
		23.238468, 24.115765, 24.509851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.087973, 24.407436, 24.478735>,  <23.727571, 23.912622, 24.967577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.087973, 24.407436, 24.478735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.698313, 24.495268, 24.457512>,  <23.464516, 24.547968, 24.444778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.698313, 24.495268, 24.457512>,  <24.087973, 24.407436, 24.478735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.698313, 24.495268, 24.457512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199636, 0.946725, 0.252701,
		0.105718, 0.235577, -0.966089,
		-0.974151, 0.219581, -0.053056,
		23.406067, 24.561142, 24.441595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.018454, 24.991207, 24.152561>,  <24.087973, 24.407436, 24.478735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.018454, 24.991207, 24.152561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.658846, 24.988323, 24.327702>,  <23.443081, 24.986593, 24.432787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.658846, 24.988323, 24.327702>,  <24.018454, 24.991207, 24.152561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.658846, 24.988323, 24.327702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083520, 0.978688, 0.187603,
		-0.429873, 0.205228, -0.879256,
		-0.899018, -0.007210, 0.437852,
		23.389141, 24.986160, 24.459057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.685801, 25.684748, 24.059038>,  <24.018454, 24.991207, 24.152561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.685801, 25.684748, 24.059038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.501543, 25.527052, 24.377129>,  <23.390989, 25.432434, 24.567984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.501543, 25.527052, 24.377129>,  <23.685801, 25.684748, 24.059038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.501543, 25.527052, 24.377129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006583, 0.897435, 0.441098,
		-0.887561, 0.197954, -0.415992,
		-0.460642, -0.394240, 0.795225,
		23.363350, 25.408779, 24.615696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.145647, 26.044769, 24.250605>,  <23.685801, 25.684748, 24.059038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.145647, 26.044769, 24.250605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.227837, 25.847673, 24.588833>,  <23.277149, 25.729416, 24.791769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.227837, 25.847673, 24.588833>,  <23.145647, 26.044769, 24.250605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.227837, 25.847673, 24.588833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163665, 0.869137, 0.466706,
		-0.964881, 0.042495, 0.259228,
		0.205473, -0.492742, 0.845569,
		23.289478, 25.699850, 24.842503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.091986, 26.708942, 24.587805>,  <23.145647, 26.044769, 24.250605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.091986, 26.708942, 24.587805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.821865, 26.921452, 24.792439>,  <22.659794, 27.048958, 24.915218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.821865, 26.921452, 24.792439>,  <23.091986, 26.708942, 24.587805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.821865, 26.921452, 24.792439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713227, 0.647041, 0.269528,
		-0.187821, 0.546887, -0.815866,
		-0.675300, 0.531275, 0.511582,
		22.619274, 27.080833, 24.945913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.631248, 26.462914, 23.984961>,  <23.091986, 26.708942, 24.587805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.631248, 26.462914, 23.984961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.283810, 26.638582, 24.076756>,  <22.075346, 26.743984, 24.131832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.283810, 26.638582, 24.076756>,  <22.631248, 26.462914, 23.984961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.283810, 26.638582, 24.076756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494882, -0.745413, -0.446600,
		-0.025071, -0.501485, 0.864803,
		-0.868598, 0.439172, 0.229488,
		22.023230, 26.770334, 24.145601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.157038, 25.958735, 24.308077>,  <22.631248, 26.462914, 23.984961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.157038, 25.958735, 24.308077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.919357, 26.249861, 24.171135>,  <21.776749, 26.424538, 24.088970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.919357, 26.249861, 24.171135>,  <22.157038, 25.958735, 24.308077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.919357, 26.249861, 24.171135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674081, -0.682835, -0.281694,
		-0.438794, 0.063393, 0.896349,
		-0.594200, 0.727818, -0.342356,
		21.741096, 26.468206, 24.068428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.515177, 25.751905, 24.497351>,  <22.157038, 25.958735, 24.308077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.515177, 25.751905, 24.497351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.502092, 26.006870, 24.189419>,  <21.494242, 26.159849, 24.004660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.502092, 26.006870, 24.189419>,  <21.515177, 25.751905, 24.497351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.502092, 26.006870, 24.189419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720251, -0.549052, -0.424006,
		-0.692942, 0.540602, 0.477055,
		-0.032709, 0.637410, -0.769830,
		21.492279, 26.198093, 23.958469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.781418, 25.646931, 24.297478>,  <21.515177, 25.751905, 24.497351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.781418, 25.646931, 24.297478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.932665, 25.858051, 23.993254>,  <21.023413, 25.984724, 23.810719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.932665, 25.858051, 23.993254>,  <20.781418, 25.646931, 24.297478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.932665, 25.858051, 23.993254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618767, -0.466993, -0.631700,
		-0.688589, 0.709467, 0.150007,
		0.378118, 0.527801, -0.760561,
		21.046101, 26.016392, 23.765085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.183226, 25.820866, 23.897160>,  <20.781418, 25.646931, 24.297478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.183226, 25.820866, 23.897160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.494516, 25.897551, 23.657957>,  <20.681290, 25.943562, 23.514435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.494516, 25.897551, 23.657957>,  <20.183226, 25.820866, 23.897160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.494516, 25.897551, 23.657957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479897, -0.432652, -0.763225,
		-0.405050, 0.880942, -0.244697,
		0.778225, 0.191715, -0.598006,
		20.727983, 25.955065, 23.478556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.954079, 26.239052, 23.296375>,  <20.183226, 25.820866, 23.897160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.954079, 26.239052, 23.296375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.275843, 26.023165, 23.197073>,  <20.468901, 25.893633, 23.137491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.275843, 26.023165, 23.197073>,  <19.954079, 26.239052, 23.296375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.275843, 26.023165, 23.197073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500461, -0.390478, -0.772700,
		0.320101, 0.745810, -0.584212,
		0.804409, -0.539717, -0.248256,
		20.517166, 25.861250, 23.122597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.916065, 26.168093, 22.527065>,  <19.954079, 26.239052, 23.296375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.916065, 26.168093, 22.527065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.176352, 25.886440, 22.640741>,  <20.332523, 25.717449, 22.708948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.176352, 25.886440, 22.640741>,  <19.916065, 26.168093, 22.527065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.176352, 25.886440, 22.640741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370153, -0.620946, -0.690951,
		0.662988, 0.344420, -0.664696,
		0.650717, -0.704132, 0.284192,
		20.371567, 25.675201, 22.726000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.211172, 25.873041, 21.938839>,  <19.916065, 26.168093, 22.527065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.211172, 25.873041, 21.938839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.242458, 25.588629, 22.218359>,  <20.261230, 25.417982, 22.386070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.242458, 25.588629, 22.218359>,  <20.211172, 25.873041, 21.938839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.242458, 25.588629, 22.218359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326113, -0.680631, -0.656043,
		0.942089, -0.176573, -0.285114,
		0.078218, -0.711030, 0.698798,
		20.265924, 25.375320, 22.427998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.351191, 25.306778, 21.503468>,  <20.211172, 25.873041, 21.938839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.351191, 25.306778, 21.503468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.294121, 25.126575, 21.855988>,  <20.259878, 25.018454, 22.067499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.294121, 25.126575, 21.855988>,  <20.351191, 25.306778, 21.503468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.294121, 25.126575, 21.855988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071910, -0.883337, -0.463190,
		0.987154, -0.129459, 0.093633,
		-0.142674, -0.450506, 0.881299,
		20.251318, 24.991423, 22.120377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.787193, 24.614628, 21.561813>,  <20.351191, 25.306778, 21.503468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.787193, 24.614628, 21.561813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.477221, 24.591043, 21.813528>,  <20.291237, 24.576893, 21.964558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.477221, 24.591043, 21.813528>,  <20.787193, 24.614628, 21.561813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.477221, 24.591043, 21.813528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162541, -0.943562, -0.288568,
		0.610785, -0.325906, 0.721614,
		-0.774934, -0.058961, 0.629286,
		20.244740, 24.573355, 22.002314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.817530, 23.877850, 21.874847>,  <20.787193, 24.614628, 21.561813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.817530, 23.877850, 21.874847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.454739, 23.986998, 22.003178>,  <20.237064, 24.052486, 22.080175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.454739, 23.986998, 22.003178>,  <20.817530, 23.877850, 21.874847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.454739, 23.986998, 22.003178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342403, -0.921279, -0.184407,
		0.245251, -0.277106, 0.929013,
		-0.906980, 0.272871, 0.320827,
		20.182644, 24.068859, 22.099426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.533775, 23.328547, 22.365896>,  <20.817530, 23.877850, 21.874847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.533775, 23.328547, 22.365896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.218224, 23.516592, 22.207573>,  <20.028893, 23.629419, 22.112579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.218224, 23.516592, 22.207573>,  <20.533775, 23.328547, 22.365896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.218224, 23.516592, 22.207573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428774, -0.882441, -0.193521,
		-0.440255, 0.017049, 0.897711,
		-0.788878, 0.470114, -0.395809,
		19.981560, 23.657627, 22.088831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.908669, 22.946510, 22.619967>,  <20.533775, 23.328547, 22.365896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.908669, 22.946510, 22.619967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.825560, 23.152618, 22.287382>,  <19.775694, 23.276283, 22.087831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.825560, 23.152618, 22.287382>,  <19.908669, 22.946510, 22.619967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.825560, 23.152618, 22.287382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439305, -0.808619, -0.391340,
		-0.873981, 0.283955, 0.394368,
		-0.207771, 0.515272, -0.831461,
		19.763227, 23.307199, 22.037945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.121983, 22.899090, 22.445631>,  <19.908669, 22.946510, 22.619967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.121983, 22.899090, 22.445631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.335047, 22.988214, 22.119041>,  <19.462885, 23.041689, 21.923088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.335047, 22.988214, 22.119041>,  <19.121983, 22.899090, 22.445631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.335047, 22.988214, 22.119041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419809, -0.768111, -0.483494,
		-0.734870, 0.600301, -0.315603,
		0.532659, 0.222812, -0.816473,
		19.494844, 23.055058, 21.874100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.608246, 23.474554, 22.523605>,  <19.121983, 22.899090, 22.445631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.608246, 23.474554, 22.523605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.299458, 23.373379, 22.756872>,  <18.114185, 23.312674, 22.896832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.299458, 23.373379, 22.756872>,  <18.608246, 23.474554, 22.523605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.299458, 23.373379, 22.756872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238245, 0.735417, 0.634352,
		-0.589323, 0.628637, -0.507458,
		-0.771970, -0.252938, 0.583167,
		18.067867, 23.297497, 22.931822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.381975, 24.035122, 22.717106>,  <18.608246, 23.474554, 22.523605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.381975, 24.035122, 22.717106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.242123, 23.788925, 22.999645>,  <18.158211, 23.641207, 23.169168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.242123, 23.788925, 22.999645>,  <18.381975, 24.035122, 22.717106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.242123, 23.788925, 22.999645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355679, 0.610289, 0.707842,
		-0.866747, 0.498717, 0.005541,
		-0.349631, -0.615491, 0.706349,
		18.137234, 23.604279, 23.211550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.077545, 24.465759, 23.192423>,  <18.381975, 24.035122, 22.717106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.077545, 24.465759, 23.192423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.117887, 24.122812, 23.394316>,  <18.142092, 23.917044, 23.515451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.117887, 24.122812, 23.394316>,  <18.077545, 24.465759, 23.192423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.117887, 24.122812, 23.394316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336072, 0.506855, 0.793822,
		-0.936421, 0.089566, 0.339255,
		0.100853, -0.857366, 0.504730,
		18.148144, 23.865602, 23.545734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.701710, 24.588575, 23.824533>,  <18.077545, 24.465759, 23.192423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.701710, 24.588575, 23.824533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.968676, 24.296329, 23.882164>,  <18.128855, 24.120981, 23.916742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.968676, 24.296329, 23.882164>,  <17.701710, 24.588575, 23.824533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.968676, 24.296329, 23.882164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356280, 0.483169, 0.799758,
		-0.653928, -0.482440, 0.582778,
		0.667415, -0.730616, 0.144074,
		18.168900, 24.077145, 23.925386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.647614, 24.427954, 24.505014>,  <17.701710, 24.588575, 23.824533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.647614, 24.427954, 24.505014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.021338, 24.333172, 24.398493>,  <18.245571, 24.276302, 24.334579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.021338, 24.333172, 24.398493>,  <17.647614, 24.427954, 24.505014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.021338, 24.333172, 24.398493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341505, 0.380876, 0.859248,
		-0.102176, -0.893748, 0.436778,
		0.934310, -0.236956, -0.266304,
		18.301630, 24.262085, 24.318602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.984646, 24.062304, 25.044561>,  <17.647614, 24.427954, 24.505014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.984646, 24.062304, 25.044561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.293770, 24.201410, 24.832214>,  <18.479244, 24.284874, 24.704805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.293770, 24.201410, 24.832214>,  <17.984646, 24.062304, 25.044561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.293770, 24.201410, 24.832214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386487, 0.405591, 0.828326,
		0.503382, -0.845312, 0.179036,
		0.772810, 0.347769, -0.530869,
		18.525612, 24.305740, 24.672955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.593431, 24.058907, 25.535894>,  <17.984646, 24.062304, 25.044561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.593431, 24.058907, 25.535894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.696363, 24.297112, 25.231487>,  <18.758123, 24.440035, 25.048843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.696363, 24.297112, 25.231487>,  <18.593431, 24.058907, 25.535894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.696363, 24.297112, 25.231487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402065, 0.650148, 0.644710,
		0.878706, -0.471883, -0.072131,
		0.257332, 0.595512, -0.761016,
		18.773563, 24.475765, 25.003181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.053503, 23.886621, 26.121973>,  <18.593431, 24.058907, 25.535894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.053503, 23.886621, 26.121973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.730566, 23.875521, 26.357744>,  <18.536804, 23.868860, 26.499207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.730566, 23.875521, 26.357744>,  <19.053503, 23.886621, 26.121973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.730566, 23.875521, 26.357744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350381, -0.781187, -0.516701,
		0.474792, -0.623680, 0.620964,
		-0.807345, -0.027752, 0.589427,
		18.488363, 23.867195, 26.534573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.963335, 23.230024, 26.360149>,  <19.053503, 23.886621, 26.121973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.963335, 23.230024, 26.360149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.597494, 23.390509, 26.380291>,  <18.377991, 23.486799, 26.392376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.597494, 23.390509, 26.380291>,  <18.963335, 23.230024, 26.360149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.597494, 23.390509, 26.380291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376641, -0.799967, -0.467113,
		-0.147128, -0.446188, 0.882763,
		-0.914602, 0.401210, 0.050355,
		18.323114, 23.510872, 26.395397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.591661, 22.677309, 26.409410>,  <18.963335, 23.230024, 26.360149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.591661, 22.677309, 26.409410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.291819, 22.932144, 26.337624>,  <18.111912, 23.085045, 26.294552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.291819, 22.932144, 26.337624>,  <18.591661, 22.677309, 26.409410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.291819, 22.932144, 26.337624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562304, -0.756006, -0.335065,
		-0.349143, -0.150254, 0.924945,
		-0.749609, 0.637086, -0.179466,
		18.066936, 23.123270, 26.283783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.010113, 22.375067, 26.773386>,  <18.591661, 22.677309, 26.409410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.010113, 22.375067, 26.773386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.857466, 22.638836, 26.514301>,  <17.765879, 22.797098, 26.358850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.857466, 22.638836, 26.514301>,  <18.010113, 22.375067, 26.773386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.857466, 22.638836, 26.514301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661740, -0.684155, -0.306646,
		-0.645343, 0.311594, 0.697453,
		-0.381617, 0.659425, -0.647709,
		17.742981, 22.836662, 26.319988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.266552, 22.260712, 26.784035>,  <18.010113, 22.375067, 26.773386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.266552, 22.260712, 26.784035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.371595, 22.428753, 26.436575>,  <17.434622, 22.529577, 26.228100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.371595, 22.428753, 26.436575>,  <17.266552, 22.260712, 26.784035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.371595, 22.428753, 26.436575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472178, -0.729140, -0.495381,
		-0.841477, 0.540249, 0.006884,
		0.262610, 0.420102, -0.868649,
		17.450378, 22.554783, 26.175980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.727795, 22.189684, 26.408804>,  <17.266552, 22.260712, 26.784035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.727795, 22.189684, 26.408804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.997274, 22.259085, 26.121464>,  <17.158962, 22.300726, 25.949059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.997274, 22.259085, 26.121464>,  <16.727795, 22.189684, 26.408804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.997274, 22.259085, 26.121464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357549, -0.774179, -0.522309,
		-0.646754, 0.608724, -0.459527,
		0.673697, 0.173502, -0.718351,
		17.199383, 22.311136, 25.905958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.359867, 22.151421, 25.857910>,  <16.727795, 22.189684, 26.408804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.359867, 22.151421, 25.857910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.736338, 22.112535, 25.728458>,  <16.962221, 22.089205, 25.650787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.736338, 22.112535, 25.728458>,  <16.359867, 22.151421, 25.857910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.736338, 22.112535, 25.728458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296449, -0.697197, -0.652713,
		-0.162181, 0.710258, -0.685004,
		0.941178, -0.097211, -0.323627,
		17.018690, 22.083372, 25.631371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.512562, 20.212166, 24.911034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.684605, 20.391729, 24.597733>,  <25.787830, 20.499468, 24.409752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.684605, 20.391729, 24.597733>,  <25.512562, 20.212166, 24.911034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684605, 20.391729, 24.597733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742435, 0.669489, -0.023986,
		0.513612, 0.591832, 0.621239,
		0.430108, 0.448910, -0.783254,
		25.813637, 20.526402, 24.362757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558237, 20.069838, 25.556894>,  <25.512562, 20.212166, 24.911034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.558237, 20.069838, 25.556894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.395969, 20.434082, 25.588448>,  <25.298609, 20.652628, 25.607380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.395969, 20.434082, 25.588448>,  <25.558237, 20.069838, 25.556894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.395969, 20.434082, 25.588448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813654, -0.399096, 0.422717,
		0.416412, 0.107299, 0.902822,
		-0.405670, 0.910609, 0.078884,
		25.274269, 20.707264, 25.612112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247957, 20.222624, 26.242428>,  <25.558237, 20.069838, 25.556894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247957, 20.222624, 26.242428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.999481, 20.420393, 25.999226>,  <24.850395, 20.539055, 25.853304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.999481, 20.420393, 25.999226>,  <25.247957, 20.222624, 26.242428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.999481, 20.420393, 25.999226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783398, -0.371748, 0.498086,
		0.020242, 0.785715, 0.618257,
		-0.621190, 0.494424, -0.608003,
		24.813124, 20.568720, 25.816824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.854668, 20.752071, 26.581533>,  <25.247957, 20.222624, 26.242428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.854668, 20.752071, 26.581533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.648411, 20.584269, 26.282701>,  <24.524656, 20.483587, 26.103403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.648411, 20.584269, 26.282701>,  <24.854668, 20.752071, 26.581533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.648411, 20.584269, 26.282701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757684, -0.183840, 0.626193,
		-0.400036, 0.888941, -0.223059,
		-0.515641, -0.419508, -0.747079,
		24.493719, 20.458416, 26.058578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.347733, 21.161821, 26.639666>,  <24.854668, 20.752071, 26.581533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.347733, 21.161821, 26.639666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.227261, 20.800842, 26.516457>,  <24.154978, 20.584255, 26.442532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.227261, 20.800842, 26.516457>,  <24.347733, 21.161821, 26.639666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.227261, 20.800842, 26.516457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860304, 0.117830, 0.495977,
		-0.411300, 0.414370, -0.811868,
		-0.301181, -0.902449, -0.308021,
		24.136906, 20.530107, 26.424051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.626720, 20.985773, 26.222147>,  <24.347733, 21.161821, 26.639666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.626720, 20.985773, 26.222147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.738134, 20.726574, 26.505701>,  <23.804983, 20.571054, 26.675833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.738134, 20.726574, 26.505701>,  <23.626720, 20.985773, 26.222147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.738134, 20.726574, 26.505701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830842, 0.207688, 0.516302,
		-0.481790, -0.732777, -0.480537,
		0.278533, -0.648000, 0.708884,
		23.821693, 20.532175, 26.718367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.914841, 21.005445, 26.074938>,  <23.626720, 20.985773, 26.222147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.914841, 21.005445, 26.074938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.058125, 21.064259, 26.443733>,  <23.144094, 21.099546, 26.665010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.058125, 21.064259, 26.443733>,  <22.914841, 21.005445, 26.074938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.058125, 21.064259, 26.443733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573006, 0.814284, 0.092769,
		-0.737122, -0.561537, 0.375935,
		0.358212, 0.147031, 0.921990,
		23.165588, 21.108368, 26.720331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.400352, 21.582468, 26.050243>,  <22.914841, 21.005445, 26.074938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.400352, 21.582468, 26.050243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.006859, 21.645000, 26.014854>,  <21.770763, 21.682520, 25.993620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.006859, 21.645000, 26.014854>,  <22.400352, 21.582468, 26.050243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.006859, 21.645000, 26.014854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153917, -0.987515, -0.033527,
		-0.092611, -0.019364, 0.995514,
		-0.983734, 0.156332, -0.088474,
		21.711739, 21.691900, 25.988312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.056898, 21.144611, 26.538918>,  <22.400352, 21.582468, 26.050243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.056898, 21.144611, 26.538918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.793245, 21.217983, 26.247192>,  <21.635054, 21.262007, 26.072157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.793245, 21.217983, 26.247192>,  <22.056898, 21.144611, 26.538918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.793245, 21.217983, 26.247192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180054, -0.980083, -0.083775,
		-0.730154, 0.076097, 0.679033,
		-0.659133, 0.183431, -0.729312,
		21.595505, 21.273012, 26.028399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.551571, 20.574741, 26.694769>,  <22.056898, 21.144611, 26.538918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.551571, 20.574741, 26.694769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.438135, 20.718464, 26.339134>,  <21.370073, 20.804697, 26.125753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.438135, 20.718464, 26.339134>,  <21.551571, 20.574741, 26.694769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.438135, 20.718464, 26.339134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231958, -0.925320, -0.299964,
		-0.930468, 0.121162, 0.345760,
		-0.283595, 0.359308, -0.889085,
		21.353058, 20.826256, 26.072409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.864689, 20.334181, 26.601128>,  <21.551571, 20.574741, 26.694769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.864689, 20.334181, 26.601128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.010805, 20.423037, 26.239527>,  <21.098475, 20.476349, 26.022566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.010805, 20.423037, 26.239527>,  <20.864689, 20.334181, 26.601128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.010805, 20.423037, 26.239527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266422, -0.905542, -0.330172,
		-0.891953, 0.361455, -0.271605,
		0.365292, 0.222137, -0.904000,
		21.120392, 20.489677, 25.968327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.336987, 20.213577, 26.179485>,  <20.864689, 20.334181, 26.601128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.336987, 20.213577, 26.179485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.641375, 20.219479, 25.920036>,  <20.824007, 20.223019, 25.764368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.641375, 20.219479, 25.920036>,  <20.336987, 20.213577, 26.179485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.641375, 20.219479, 25.920036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333070, -0.849061, -0.410073,
		-0.556768, 0.528089, -0.641196,
		0.760969, 0.014752, -0.648620,
		20.869665, 20.223904, 25.725451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.236361, 19.568525, 26.648300>,  <20.336987, 20.213577, 26.179485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.236361, 19.568525, 26.648300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.049589, 19.476322, 26.989790>,  <19.937527, 19.421001, 27.194683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.049589, 19.476322, 26.989790>,  <20.236361, 19.568525, 26.648300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.049589, 19.476322, 26.989790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309310, 0.861872, 0.401876,
		-0.828437, 0.451712, -0.331133,
		-0.466926, -0.230506, 0.853725,
		19.909512, 19.407169, 27.245907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.858747, 20.058895, 26.877640>,  <20.236361, 19.568525, 26.648300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.858747, 20.058895, 26.877640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.891932, 19.868019, 27.227591>,  <19.911842, 19.753494, 27.437561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.891932, 19.868019, 27.227591>,  <19.858747, 20.058895, 26.877640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.891932, 19.868019, 27.227591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229810, 0.863401, 0.449140,
		-0.969693, 0.163795, 0.181290,
		0.082959, -0.477190, 0.874876,
		19.916819, 19.724863, 27.490053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.542887, 20.552404, 27.347406>,  <19.858747, 20.058895, 26.877640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.542887, 20.552404, 27.347406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.746168, 20.297243, 27.578857>,  <19.868137, 20.144146, 27.717728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.746168, 20.297243, 27.578857>,  <19.542887, 20.552404, 27.347406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.746168, 20.297243, 27.578857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236213, 0.749334, 0.618629,
		-0.828211, -0.177709, 0.531494,
		0.508202, -0.637902, 0.578629,
		19.898628, 20.105873, 27.752447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.383890, 20.753548, 28.088654>,  <19.542887, 20.552404, 27.347406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.383890, 20.753548, 28.088654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.723177, 20.542572, 28.107992>,  <19.926748, 20.415987, 28.119596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.723177, 20.542572, 28.107992>,  <19.383890, 20.753548, 28.088654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.723177, 20.542572, 28.107992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371594, 0.657654, 0.655293,
		-0.377425, -0.537863, 0.753826,
		0.848215, -0.527441, 0.048348,
		19.977642, 20.384340, 28.122498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.584623, 20.774075, 28.777924>,  <19.383890, 20.753548, 28.088654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.584623, 20.774075, 28.777924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.929869, 20.672596, 28.603260>,  <20.137016, 20.611710, 28.498463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.929869, 20.672596, 28.603260>,  <19.584623, 20.774075, 28.777924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.929869, 20.672596, 28.603260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499236, 0.558985, 0.662042,
		0.076130, -0.789414, 0.609122,
		0.863115, -0.253695, -0.436659,
		20.188803, 20.596487, 28.472261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.055923, 20.693045, 29.340033>,  <19.584623, 20.774075, 28.777924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.055923, 20.693045, 29.340033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.283978, 20.734816, 29.014078>,  <20.420811, 20.759878, 28.818506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.283978, 20.734816, 29.014078>,  <20.055923, 20.693045, 29.340033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.283978, 20.734816, 29.014078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543881, 0.695433, 0.469646,
		0.615740, -0.710963, 0.339698,
		0.570138, 0.104425, -0.814885,
		20.455019, 20.766144, 28.769613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.736248, 20.669710, 29.543871>,  <20.055923, 20.693045, 29.340033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.736248, 20.669710, 29.543871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.730885, 20.879387, 29.203274>,  <20.727667, 21.005194, 28.998915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.730885, 20.879387, 29.203274>,  <20.736248, 20.669710, 29.543871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.730885, 20.879387, 29.203274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554444, 0.712565, 0.429933,
		0.832113, -0.466342, -0.300189,
		-0.013408, 0.524191, -0.851495,
		20.726862, 21.036644, 28.947824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.349781, 21.036020, 29.585129>,  <20.736248, 20.669710, 29.543871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.349781, 21.036020, 29.585129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.134747, 21.213596, 29.298376>,  <21.005726, 21.320143, 29.126326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.134747, 21.213596, 29.298376>,  <21.349781, 21.036020, 29.585129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.134747, 21.213596, 29.298376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291328, 0.895615, 0.336157,
		0.791282, -0.028134, -0.610804,
		-0.537588, 0.443939, -0.716880,
		20.973471, 21.346779, 29.083313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.777473, 21.469170, 29.250181>,  <21.349781, 21.036020, 29.585129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.777473, 21.469170, 29.250181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.404222, 21.599430, 29.189228>,  <21.180271, 21.677588, 29.152657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.404222, 21.599430, 29.189228>,  <21.777473, 21.469170, 29.250181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.404222, 21.599430, 29.189228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295614, 0.936143, 0.190390,
		0.204651, 0.132612, -0.969810,
		-0.933129, 0.325652, -0.152381,
		21.124283, 21.697126, 29.143515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.861969, 22.088326, 28.891399>,  <21.777473, 21.469170, 29.250181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.861969, 22.088326, 28.891399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.481838, 22.120153, 29.011761>,  <21.253759, 22.139250, 29.083979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.481838, 22.120153, 29.011761>,  <21.861969, 22.088326, 28.891399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.481838, 22.120153, 29.011761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112940, 0.989035, 0.095154,
		-0.290034, 0.124412, -0.948895,
		-0.950329, 0.079570, 0.300905,
		21.196739, 22.144024, 29.102032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.553118, 22.536392, 28.509699>,  <21.861969, 22.088326, 28.891399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.553118, 22.536392, 28.509699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.305490, 22.559383, 28.822990>,  <21.156914, 22.573177, 29.010965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.305490, 22.559383, 28.822990>,  <21.553118, 22.536392, 28.509699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.305490, 22.559383, 28.822990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085410, 0.996330, -0.005608,
		-0.780678, 0.063424, -0.621707,
		-0.619069, 0.057478, 0.783230,
		21.119770, 22.576626, 29.057959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.023754, 23.097044, 28.355124>,  <21.553118, 22.536392, 28.509699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.023754, 23.097044, 28.355124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.033237, 23.059530, 28.753248>,  <21.038927, 23.037022, 28.992123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.033237, 23.059530, 28.753248>,  <21.023754, 23.097044, 28.355124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.033237, 23.059530, 28.753248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178583, 0.979974, 0.088084,
		-0.983639, 0.175657, 0.039983,
		0.023710, -0.093783, 0.995310,
		21.040350, 23.031395, 29.051842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.607218, 23.685402, 28.505262>,  <21.023754, 23.097044, 28.355124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.607218, 23.685402, 28.505262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.776520, 23.579237, 28.851767>,  <20.878101, 23.515537, 29.059669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.776520, 23.579237, 28.851767>,  <20.607218, 23.685402, 28.505262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.776520, 23.579237, 28.851767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185355, 0.961272, 0.203958,
		-0.886847, 0.074240, 0.456060,
		0.423256, -0.265412, 0.866262,
		20.903496, 23.499613, 29.111645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.232233, 23.997360, 28.983622>,  <20.607218, 23.685402, 28.505262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.232233, 23.997360, 28.983622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.576355, 23.917536, 29.171261>,  <20.782827, 23.869642, 29.283844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.576355, 23.917536, 29.171261>,  <20.232233, 23.997360, 28.983622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.576355, 23.917536, 29.171261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131459, 0.975918, 0.174078,
		-0.492542, -0.088093, 0.865819,
		0.860303, -0.199560, 0.469100,
		20.834446, 23.857668, 29.311991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.655001, 24.425406, 28.996696>,  <20.232233, 23.997360, 28.983622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.655001, 24.425406, 28.996696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.632135, 24.808422, 28.883669>,  <19.618416, 25.038233, 28.815853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.632135, 24.808422, 28.883669>,  <19.655001, 24.425406, 28.996696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.632135, 24.808422, 28.883669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571364, -0.263475, -0.777254,
		-0.818703, 0.117019, 0.562167,
		-0.057163, 0.957543, -0.282568,
		19.614986, 25.095684, 28.798899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.959511, 24.717451, 28.954483>,  <19.655001, 24.425406, 28.996696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.959511, 24.717451, 28.954483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.188011, 24.898451, 28.680574>,  <19.325111, 25.007051, 28.516230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.188011, 24.898451, 28.680574>,  <18.959511, 24.717451, 28.954483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.188011, 24.898451, 28.680574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581140, -0.366174, -0.726769,
		-0.579609, 0.813118, 0.053788,
		0.571253, 0.452500, -0.684773,
		19.359386, 25.034201, 28.475143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.584929, 25.091141, 28.433235>,  <18.959511, 24.717451, 28.954483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.584929, 25.091141, 28.433235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.917509, 24.970407, 28.246653>,  <19.117058, 24.897966, 28.134703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.917509, 24.970407, 28.246653>,  <18.584929, 25.091141, 28.433235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.917509, 24.970407, 28.246653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550934, -0.339386, -0.762423,
		0.071817, 0.890906, -0.448474,
		0.831453, -0.301834, -0.466457,
		19.166945, 24.879858, 28.106716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.264467, 25.229967, 27.854855>,  <18.584929, 25.091141, 28.433235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.264467, 25.229967, 27.854855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.614975, 25.049128, 27.788208>,  <18.825279, 24.940624, 27.748220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.614975, 25.049128, 27.788208>,  <18.264467, 25.229967, 27.854855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.614975, 25.049128, 27.788208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355890, -0.374206, -0.856336,
		0.324800, 0.809677, -0.488802,
		0.876269, -0.452098, -0.166614,
		18.877855, 24.913498, 27.738224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.384396, 25.449848, 27.172424>,  <18.264467, 25.229967, 27.854855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.384396, 25.449848, 27.172424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.577833, 25.116648, 27.279940>,  <18.693895, 24.916727, 27.344450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.577833, 25.116648, 27.279940>,  <18.384396, 25.449848, 27.172424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.577833, 25.116648, 27.279940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345645, -0.463869, -0.815693,
		0.804155, 0.301559, -0.512246,
		0.483595, -0.832999, 0.268790,
		18.722912, 24.866749, 27.360577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.700464, 25.158154, 26.546474>,  <18.384396, 25.449848, 27.172424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.700464, 25.158154, 26.546474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.660057, 24.857430, 26.807114>,  <18.635813, 24.676996, 26.963497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.660057, 24.857430, 26.807114>,  <18.700464, 25.158154, 26.546474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.660057, 24.857430, 26.807114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386025, -0.574018, -0.722141,
		0.916941, -0.324481, -0.232232,
		-0.101016, -0.751808, 0.651598,
		18.629753, 24.631887, 27.002594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.915186, 24.621214, 26.159830>,  <18.700464, 25.158154, 26.546474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.915186, 24.621214, 26.159830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.728281, 24.432827, 26.459126>,  <18.616138, 24.319796, 26.638702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.728281, 24.432827, 26.459126>,  <18.915186, 24.621214, 26.159830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.728281, 24.432827, 26.459126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252983, -0.739698, -0.623576,
		0.847151, -0.480665, 0.226486,
		-0.467262, -0.470966, 0.748236,
		18.588102, 24.291538, 26.683596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.481379, 24.383429, 25.775686>,  <18.915186, 24.621214, 26.159830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.481379, 24.383429, 25.775686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.330881, 24.588882, 25.467241>,  <19.240582, 24.712154, 25.282173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.330881, 24.588882, 25.467241>,  <19.481379, 24.383429, 25.775686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.330881, 24.588882, 25.467241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491973, 0.816001, 0.303491,
		0.785114, -0.265180, -0.559711,
		-0.376245, 0.513637, -0.771114,
		19.218008, 24.742973, 25.235907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.027313, 24.571173, 25.358236>,  <19.481379, 24.383429, 25.775686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.027313, 24.571173, 25.358236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.755527, 24.857450, 25.293602>,  <19.592457, 25.029217, 25.254822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.755527, 24.857450, 25.293602>,  <20.027313, 24.571173, 25.358236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.755527, 24.857450, 25.293602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692459, 0.698321, 0.181242,
		0.242554, 0.011255, -0.970073,
		-0.679462, 0.715696, -0.161587,
		19.551689, 25.072159, 25.245125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.377018, 25.165245, 24.990925>,  <20.027313, 24.571173, 25.358236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.377018, 25.165245, 24.990925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.047951, 25.298935, 25.174887>,  <19.850510, 25.379148, 25.285263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.047951, 25.298935, 25.174887>,  <20.377018, 25.165245, 24.990925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.047951, 25.298935, 25.174887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538396, 0.717845, 0.441393,
		-0.182614, 0.610730, -0.770494,
		-0.822667, 0.334226, 0.459903,
		19.801151, 25.399202, 25.312859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.283752, 25.914003, 24.769451>,  <20.377018, 25.165245, 24.990925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.283752, 25.914003, 24.769451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.087898, 25.904577, 25.118093>,  <19.970385, 25.898922, 25.327280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.087898, 25.904577, 25.118093>,  <20.283752, 25.914003, 24.769451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.087898, 25.904577, 25.118093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316609, 0.926599, 0.202912,
		-0.812413, 0.375312, -0.446236,
		-0.489637, -0.023566, 0.871608,
		19.941008, 25.897507, 25.379576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.095465, 26.609163, 24.921698>,  <20.283752, 25.914003, 24.769451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.095465, 26.609163, 24.921698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.046850, 26.438162, 25.280020>,  <20.017681, 26.335560, 25.495012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.046850, 26.438162, 25.280020>,  <20.095465, 26.609163, 24.921698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.046850, 26.438162, 25.280020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384314, 0.811836, 0.439573,
		-0.915168, 0.397694, 0.065630,
		-0.121535, -0.427506, 0.895806,
		20.010389, 26.309910, 25.548761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.844370, 27.161581, 25.345007>,  <20.095465, 26.609163, 24.921698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.844370, 27.161581, 25.345007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.969099, 26.870312, 25.589148>,  <20.043938, 26.695551, 25.735632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.969099, 26.870312, 25.589148>,  <19.844370, 27.161581, 25.345007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.969099, 26.870312, 25.589148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614630, 0.644463, 0.454859,
		-0.724566, 0.233305, 0.648516,
		0.311824, -0.728173, 0.610353,
		20.062647, 26.651859, 25.772253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.068457, 27.521057, 26.016775>,  <19.844370, 27.161581, 25.345007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.068457, 27.521057, 26.016775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.245687, 27.168423, 26.081873>,  <20.352026, 26.956841, 26.120932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.245687, 27.168423, 26.081873>,  <20.068457, 27.521057, 26.016775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.245687, 27.168423, 26.081873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622395, 0.433156, 0.651921,
		-0.645220, -0.187557, 0.740617,
		0.443075, -0.881588, 0.162746,
		20.378611, 26.903946, 26.130697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.965334, 27.368341, 26.681530>,  <20.068457, 27.521057, 26.016775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.965334, 27.368341, 26.681530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.300247, 27.179962, 26.570417>,  <20.501196, 27.066935, 26.503750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.300247, 27.179962, 26.570417>,  <19.965334, 27.368341, 26.681530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.300247, 27.179962, 26.570417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470484, 0.361726, 0.804860,
		-0.278564, -0.804590, 0.524440,
		0.837285, -0.470946, -0.277783,
		20.551434, 27.038679, 26.487083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.194233, 27.120258, 27.300632>,  <19.965334, 27.368341, 26.681530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.194233, 27.120258, 27.300632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.516626, 27.129742, 27.064049>,  <20.710062, 27.135431, 26.922098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.516626, 27.129742, 27.064049>,  <20.194233, 27.120258, 27.300632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.516626, 27.129742, 27.064049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545491, 0.358233, 0.757700,
		0.229843, -0.933331, 0.275799,
		0.805985, 0.023707, -0.591461,
		20.758423, 27.136854, 26.886610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<15.736852, 14.131042, 18.625185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.077070, 14.247791, 18.450197>,  <16.281202, 14.317841, 18.345203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.077070, 14.247791, 18.450197>,  <15.736852, 14.131042, 18.625185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.077070, 14.247791, 18.450197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081196, 0.894761, 0.439102,
		0.519594, -0.337956, 0.784734,
		0.850547, 0.291872, -0.437471,
		16.332233, 14.335353, 18.318956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.274361, 14.518839, 19.160633>,  <15.736852, 14.131042, 18.625185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.274361, 14.518839, 19.160633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.319857, 14.631444, 18.779516>,  <16.347155, 14.699007, 18.550846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.319857, 14.631444, 18.779516>,  <16.274361, 14.518839, 19.160633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.319857, 14.631444, 18.779516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086380, 0.958186, 0.272796,
		0.989748, 0.051274, 0.133303,
		0.113741, 0.281514, -0.952792,
		16.353979, 14.715899, 18.493679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.817152, 14.947542, 19.260397>,  <16.274361, 14.518839, 19.160633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.817152, 14.947542, 19.260397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.666708, 15.040223, 18.901543>,  <16.576443, 15.095832, 18.686230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.666708, 15.040223, 18.901543>,  <16.817152, 14.947542, 19.260397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.666708, 15.040223, 18.901543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073279, 0.957759, 0.278079,
		0.923673, 0.170329, -0.343243,
		-0.376109, 0.231702, -0.897138,
		16.553875, 15.109734, 18.632401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.268961, 15.536905, 19.015097>,  <16.817152, 14.947542, 19.260397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.268961, 15.536905, 19.015097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.919304, 15.556179, 18.821789>,  <16.709509, 15.567743, 18.705805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.919304, 15.556179, 18.821789>,  <17.268961, 15.536905, 19.015097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.919304, 15.556179, 18.821789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083408, 0.965388, 0.247121,
		0.478450, 0.256329, -0.839870,
		-0.874144, 0.048183, -0.483270,
		16.657061, 15.570634, 18.676807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.256502, 16.078875, 18.634249>,  <17.268961, 15.536905, 19.015097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.256502, 16.078875, 18.634249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.861071, 16.024851, 18.607510>,  <16.623812, 15.992436, 18.591467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.861071, 16.024851, 18.607510>,  <17.256502, 16.078875, 18.634249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.861071, 16.024851, 18.607510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144899, 0.973769, 0.175435,
		0.041400, 0.183118, -0.982219,
		-0.988580, -0.135060, -0.066848,
		16.564497, 15.984333, 18.587456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.031298, 16.673712, 18.303524>,  <17.256502, 16.078875, 18.634249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.031298, 16.673712, 18.303524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.687662, 16.545841, 18.463411>,  <16.481482, 16.469118, 18.559343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.687662, 16.545841, 18.463411>,  <17.031298, 16.673712, 18.303524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.687662, 16.545841, 18.463411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188030, 0.923471, 0.334435,
		-0.476039, 0.212150, -0.853451,
		-0.859088, -0.319678, 0.399718,
		16.429935, 16.449938, 18.583326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.627571, 17.236328, 18.159363>,  <17.031298, 16.673712, 18.303524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.627571, 17.236328, 18.159363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.451170, 17.038694, 18.459068>,  <16.345329, 16.920115, 18.638891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.451170, 17.038694, 18.459068>,  <16.627571, 17.236328, 18.159363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.451170, 17.038694, 18.459068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279270, 0.868929, 0.408621,
		-0.852949, -0.029043, -0.521185,
		-0.441005, -0.494084, 0.749263,
		16.318869, 16.890469, 18.683847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.040905, 17.668741, 18.249832>,  <16.627571, 17.236328, 18.159363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.040905, 17.668741, 18.249832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.090950, 17.438789, 18.573278>,  <16.120977, 17.300817, 18.767345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.090950, 17.438789, 18.573278>,  <16.040905, 17.668741, 18.249832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.090950, 17.438789, 18.573278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186084, 0.786960, 0.588274,
		-0.974536, -0.224071, -0.008518,
		0.125112, -0.574879, 0.808616,
		16.128483, 17.266325, 18.815863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.438979, 17.767057, 18.695068>,  <16.040905, 17.668741, 18.249832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.438979, 17.767057, 18.695068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.729707, 17.635422, 18.936211>,  <15.904143, 17.556440, 19.080896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.729707, 17.635422, 18.936211>,  <15.438979, 17.767057, 18.695068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.729707, 17.635422, 18.936211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003688, 0.879595, 0.475709,
		-0.686819, -0.343531, 0.640520,
		0.726819, -0.329088, 0.602856,
		15.947752, 17.536695, 19.117067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.192218, 18.125469, 19.268265>,  <15.438979, 17.767057, 18.695068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.192218, 18.125469, 19.268265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.567210, 18.029331, 19.368952>,  <15.792206, 17.971649, 19.429365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.567210, 18.029331, 19.368952>,  <15.192218, 18.125469, 19.268265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.567210, 18.029331, 19.368952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033776, 0.782676, 0.621512,
		-0.346392, -0.574154, 0.741862,
		0.937482, -0.240343, 0.251720,
		15.848454, 17.957228, 19.444468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.272530, 18.173931, 19.958624>,  <15.192218, 18.125469, 19.268265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.272530, 18.173931, 19.958624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.650640, 18.225300, 19.838652>,  <15.877507, 18.256121, 19.766668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.650640, 18.225300, 19.838652>,  <15.272530, 18.173931, 19.958624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.650640, 18.225300, 19.838652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104465, 0.751757, 0.651114,
		0.309093, -0.646815, 0.697203,
		0.945277, 0.128422, -0.299933,
		15.934223, 18.263826, 19.748672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.704574, 18.254562, 20.589224>,  <15.272530, 18.173931, 19.958624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.704574, 18.254562, 20.589224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.898133, 18.429745, 20.286163>,  <16.014269, 18.534853, 20.104326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.898133, 18.429745, 20.286163>,  <15.704574, 18.254562, 20.589224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.898133, 18.429745, 20.286163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114270, 0.826732, 0.550869,
		0.867632, -0.353141, 0.350008,
		0.483897, 0.437956, -0.757653,
		16.043303, 18.561131, 20.058868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.898079, 18.025539, 21.248001>,  <15.704574, 18.254562, 20.589224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.898079, 18.025539, 21.248001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.599949, 18.015261, 21.514484>,  <15.421071, 18.009092, 21.674374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.599949, 18.015261, 21.514484>,  <15.898079, 18.025539, 21.248001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.599949, 18.015261, 21.514484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565712, -0.504389, -0.652351,
		0.352791, -0.863094, 0.361396,
		-0.745325, -0.025698, 0.666206,
		15.376351, 18.007551, 21.714346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.692335, 17.345093, 21.216274>,  <15.898079, 18.025539, 21.248001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.692335, 17.345093, 21.216274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.377028, 17.526367, 21.382769>,  <15.187842, 17.635132, 21.482666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.377028, 17.526367, 21.382769>,  <15.692335, 17.345093, 21.216274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.377028, 17.526367, 21.382769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601878, -0.708531, -0.368411,
		0.127959, -0.540932, 0.831276,
		-0.788270, 0.453185, 0.416238,
		15.140547, 17.662323, 21.507641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.215778, 16.779100, 21.478662>,  <15.692335, 17.345093, 21.216274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.215778, 16.779100, 21.478662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.978868, 17.100155, 21.450422>,  <14.836722, 17.292788, 21.433479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.978868, 17.100155, 21.450422>,  <15.215778, 16.779100, 21.478662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.978868, 17.100155, 21.450422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751635, -0.581947, -0.310454,
		-0.290267, -0.130809, 0.947963,
		-0.592274, 0.802637, -0.070599,
		14.801187, 17.340946, 21.429243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.557927, 16.588194, 21.768476>,  <15.215778, 16.779100, 21.478662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.557927, 16.588194, 21.768476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.497797, 16.912373, 21.541996>,  <14.461720, 17.106880, 21.406109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.497797, 16.912373, 21.541996>,  <14.557927, 16.588194, 21.768476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.497797, 16.912373, 21.541996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793675, -0.440407, -0.419669,
		-0.589477, 0.386292, 0.709433,
		-0.150325, 0.810444, -0.566200,
		14.452700, 17.155506, 21.372135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.856936, 16.744423, 21.723042>,  <14.557927, 16.588194, 21.768476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.856936, 16.744423, 21.723042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.977626, 16.972136, 21.417131>,  <14.050040, 17.108763, 21.233585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.977626, 16.972136, 21.417131>,  <13.856936, 16.744423, 21.723042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.977626, 16.972136, 21.417131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776328, -0.318929, -0.543690,
		-0.553422, 0.757761, 0.345721,
		0.301727, 0.569283, -0.764773,
		14.068144, 17.142920, 21.187700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.256039, 17.061121, 21.536739>,  <13.856936, 16.744423, 21.723042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.256039, 17.061121, 21.536739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.499935, 17.039751, 21.220421>,  <13.646273, 17.026928, 21.030628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.499935, 17.039751, 21.220421>,  <13.256039, 17.061121, 21.536739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.499935, 17.039751, 21.220421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649482, -0.605553, -0.459868,
		-0.454301, 0.794010, -0.403929,
		0.609740, -0.053427, -0.790799,
		13.682858, 17.023724, 20.983181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.808825, 17.281698, 20.936806>,  <13.256039, 17.061121, 21.536739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.808825, 17.281698, 20.936806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.133003, 17.103975, 20.784088>,  <13.327511, 16.997341, 20.692457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.133003, 17.103975, 20.784088>,  <12.808825, 17.281698, 20.936806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.133003, 17.103975, 20.784088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583736, -0.557675, -0.590128,
		0.049282, 0.701134, -0.711324,
		0.810446, -0.444308, -0.381794,
		13.376137, 16.970682, 20.669550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.653410, 17.293934, 20.234758>,  <12.808825, 17.281698, 20.936806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.653410, 17.293934, 20.234758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.912222, 16.994093, 20.290539>,  <13.067510, 16.814188, 20.324007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.912222, 16.994093, 20.290539>,  <12.653410, 17.293934, 20.234758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.912222, 16.994093, 20.290539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493120, -0.550899, -0.673307,
		0.581536, 0.366885, -0.726093,
		0.647031, -0.749604, 0.139449,
		13.106331, 16.769213, 20.332373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.633379, 16.826344, 19.552126>,  <12.653410, 17.293934, 20.234758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.633379, 16.826344, 19.552126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.816821, 16.563177, 19.791065>,  <12.926887, 16.405277, 19.934429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.816821, 16.563177, 19.791065>,  <12.633379, 16.826344, 19.552126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.816821, 16.563177, 19.791065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651558, -0.706053, -0.277420,
		0.604278, -0.261980, -0.752472,
		0.458606, -0.657918, 0.597348,
		12.954403, 16.365801, 19.970270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.676991, 16.226479, 19.155497>,  <12.633379, 16.826344, 19.552126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.676991, 16.226479, 19.155497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.711248, 16.075811, 19.524448>,  <12.731803, 15.985411, 19.745819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.711248, 16.075811, 19.524448>,  <12.676991, 16.226479, 19.155497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.711248, 16.075811, 19.524448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646866, -0.725147, -0.236062,
		0.757779, -0.576439, -0.305760,
		0.085646, -0.376669, 0.922380,
		12.736942, 15.962811, 19.801163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.665337, 15.568002, 19.013124>,  <12.676991, 16.226479, 19.155497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.665337, 15.568002, 19.013124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.559530, 15.601737, 19.397400>,  <12.496047, 15.621978, 19.627964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.559530, 15.601737, 19.397400>,  <12.665337, 15.568002, 19.013124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.559530, 15.601737, 19.397400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584446, -0.806412, -0.090126,
		0.767108, -0.585310, 0.262599,
		-0.264515, 0.084338, 0.960687,
		12.480176, 15.627039, 19.685606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.738280, 14.907130, 19.352545>,  <12.665337, 15.568002, 19.013124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.738280, 14.907130, 19.352545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.507275, 15.095767, 19.619101>,  <12.368671, 15.208949, 19.779034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.507275, 15.095767, 19.619101>,  <12.738280, 14.907130, 19.352545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.507275, 15.095767, 19.619101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528856, -0.837957, 0.134684,
		0.621924, -0.274643, 0.733336,
		-0.577514, 0.471592, 0.666392,
		12.334021, 15.237245, 19.819017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.645061, 14.422205, 20.050421>,  <12.738280, 14.907130, 19.352545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.645061, 14.422205, 20.050421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.331549, 14.669868, 20.031111>,  <12.143441, 14.818466, 20.019524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.331549, 14.669868, 20.031111>,  <12.645061, 14.422205, 20.050421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.331549, 14.669868, 20.031111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611999, -0.756819, 0.229526,
		0.105576, 0.209443, 0.972105,
		-0.783780, 0.619159, -0.048277,
		12.096415, 14.855617, 20.016628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.245663, 14.278334, 20.660921>,  <12.645061, 14.422205, 20.050421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.245663, 14.278334, 20.660921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.001853, 14.452536, 20.395948>,  <11.855567, 14.557056, 20.236965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.001853, 14.452536, 20.395948>,  <12.245663, 14.278334, 20.660921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.001853, 14.452536, 20.395948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726232, -0.641822, 0.246274,
		-0.317910, 0.631189, 0.707484,
		-0.609525, 0.435504, -0.662432,
		11.818995, 14.583187, 20.197218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.063327, 13.496423, 20.720860>,  <12.245663, 14.278334, 20.660921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.063327, 13.496423, 20.720860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.924663, 13.176514, 20.916897>,  <11.841464, 12.984569, 21.034519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.924663, 13.176514, 20.916897>,  <12.063327, 13.496423, 20.720860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.924663, 13.176514, 20.916897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804070, 0.522430, 0.283793,
		-0.483009, -0.295689, -0.824179,
		-0.346661, -0.799772, 0.490093,
		11.820664, 12.936583, 21.063925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.697445, 13.410073, 21.060673>,  <12.063327, 13.496423, 20.720860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.697445, 13.410073, 21.060673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.080462, 13.310193, 21.118307>,  <13.310273, 13.250265, 21.152887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.080462, 13.310193, 21.118307>,  <12.697445, 13.410073, 21.060673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.080462, 13.310193, 21.118307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011749, 0.533183, 0.845918,
		-0.288051, -0.808310, 0.513479,
		0.957543, -0.249700, 0.144087,
		13.367725, 13.235283, 21.161533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.879464, 13.066934, 21.707895>,  <12.697445, 13.410073, 21.060673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.879464, 13.066934, 21.707895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.200388, 13.271448, 21.584681>,  <13.392942, 13.394157, 21.510752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.200388, 13.271448, 21.584681>,  <12.879464, 13.066934, 21.707895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.200388, 13.271448, 21.584681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041295, 0.467272, 0.883148,
		0.595480, -0.721277, 0.353783,
		0.802308, 0.511288, -0.308036,
		13.441081, 13.424834, 21.492270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.327114, 13.055818, 22.306723>,  <12.879464, 13.066934, 21.707895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.327114, 13.055818, 22.306723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.500887, 13.359604, 22.113029>,  <13.605150, 13.541876, 21.996813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.500887, 13.359604, 22.113029>,  <13.327114, 13.055818, 22.306723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.500887, 13.359604, 22.113029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251219, 0.414112, 0.874871,
		0.864961, -0.501721, -0.010889,
		0.434432, 0.759465, -0.484233,
		13.631216, 13.587443, 21.967760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.840125, 13.258912, 22.722088>,  <13.327114, 13.055818, 22.306723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.840125, 13.258912, 22.722088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.839443, 13.590233, 22.497976>,  <13.839034, 13.789025, 22.363510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.839443, 13.590233, 22.497976>,  <13.840125, 13.258912, 22.722088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.839443, 13.590233, 22.497976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413852, 0.510632, 0.753645,
		0.910343, -0.230588, -0.343665,
		-0.001705, 0.828302, -0.560280,
		13.838932, 13.838723, 22.329893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.454324, 13.515627, 22.738708>,  <13.840125, 13.258912, 22.722088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.454324, 13.515627, 22.738708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.206997, 13.817780, 22.651918>,  <14.058600, 13.999072, 22.599844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.206997, 13.817780, 22.651918>,  <14.454324, 13.515627, 22.738708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.206997, 13.817780, 22.651918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484570, 0.583771, 0.651462,
		0.618768, 0.297671, -0.726992,
		-0.618318, 0.755383, -0.216976,
		14.021502, 14.044395, 22.586826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.876698, 14.103035, 22.557589>,  <14.454324, 13.515627, 22.738708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.876698, 14.103035, 22.557589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.525071, 14.226126, 22.703215>,  <14.314095, 14.299980, 22.790590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.525071, 14.226126, 22.703215>,  <14.876698, 14.103035, 22.557589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.525071, 14.226126, 22.703215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473611, 0.650537, 0.593712,
		-0.054137, 0.694339, -0.717609,
		-0.879069, 0.307726, 0.364064,
		14.261351, 14.318443, 22.812433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.928726, 14.827040, 22.534445>,  <14.876698, 14.103035, 22.557589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.928726, 14.827040, 22.534445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.637483, 14.767016, 22.801979>,  <14.462736, 14.731003, 22.962500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.637483, 14.767016, 22.801979>,  <14.928726, 14.827040, 22.534445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.637483, 14.767016, 22.801979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441232, 0.644111, 0.624848,
		-0.524567, 0.750069, -0.402773,
		-0.728110, -0.150058, 0.668834,
		14.419049, 14.721999, 23.002628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.897701, 15.474953, 22.711176>,  <14.928726, 14.827040, 22.534445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.897701, 15.474953, 22.711176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.701458, 15.270080, 22.993160>,  <14.583713, 15.147156, 23.162352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.701458, 15.270080, 22.993160>,  <14.897701, 15.474953, 22.711176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.701458, 15.270080, 22.993160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581371, 0.410236, 0.702648,
		-0.649086, 0.754569, 0.096504,
		-0.490607, -0.512183, 0.704963,
		14.554276, 15.116425, 23.204649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.546049, 15.939522, 23.122887>,  <14.897701, 15.474953, 22.711176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.546049, 15.939522, 23.122887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.599645, 15.609519, 23.342489>,  <14.631802, 15.411517, 23.474251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.599645, 15.609519, 23.342489>,  <14.546049, 15.939522, 23.122887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.599645, 15.609519, 23.342489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631042, 0.498191, 0.594635,
		-0.764089, 0.266772, 0.587367,
		0.133989, -0.825008, 0.549007,
		14.639841, 15.362017, 23.507191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.597219, 16.212286, 23.853298>,  <14.546049, 15.939522, 23.122887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.597219, 16.212286, 23.853298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.730015, 15.837429, 23.896275>,  <14.809692, 15.612514, 23.922060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.730015, 15.837429, 23.896275>,  <14.597219, 16.212286, 23.853298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.730015, 15.837429, 23.896275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704532, 0.322088, 0.632372,
		-0.627230, -0.134245, 0.767177,
		0.331991, -0.937143, 0.107443,
		14.829612, 15.556286, 23.928507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.573893, 16.172539, 24.620771>,  <14.597219, 16.212286, 23.853298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.573893, 16.172539, 24.620771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.819423, 15.887159, 24.485592>,  <14.966741, 15.715932, 24.404484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.819423, 15.887159, 24.485592>,  <14.573893, 16.172539, 24.620771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.819423, 15.887159, 24.485592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651450, 0.215971, 0.727303,
		-0.445906, -0.666594, 0.597345,
		0.613825, -0.713449, -0.337949,
		15.003571, 15.673124, 24.384207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.929333, 15.825435, 25.244074>,  <14.573893, 16.172539, 24.620771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.929333, 15.825435, 25.244074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.145518, 15.765388, 24.912928>,  <15.275229, 15.729361, 24.714239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.145518, 15.765388, 24.912928>,  <14.929333, 15.825435, 25.244074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.145518, 15.765388, 24.912928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822660, 0.300619, 0.482555,
		0.176433, -0.941856, 0.285969,
		0.540465, -0.150116, -0.827866,
		15.307658, 15.720353, 24.664568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.522412, 15.573523, 25.487347>,  <14.929333, 15.825435, 25.244074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.522412, 15.573523, 25.487347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.656370, 15.648823, 25.118044>,  <15.736745, 15.694003, 24.896461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.656370, 15.648823, 25.118044>,  <15.522412, 15.573523, 25.487347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.656370, 15.648823, 25.118044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873134, 0.306366, 0.379179,
		0.354236, -0.933114, -0.061770,
		0.334893, 0.188252, -0.923259,
		15.756838, 15.705298, 24.841066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.251200, 15.312730, 25.562496>,  <15.522412, 15.573523, 25.487347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.251200, 15.312730, 25.562496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.270184, 15.530889, 25.227762>,  <16.281574, 15.661784, 25.026922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.270184, 15.530889, 25.227762>,  <16.251200, 15.312730, 25.562496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.270184, 15.530889, 25.227762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737075, 0.546296, 0.397845,
		0.674142, -0.635690, -0.376073,
		0.047459, 0.545398, -0.836833,
		16.284422, 15.694508, 24.976713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.966928, 15.252419, 25.283150>,  <16.251200, 15.312730, 25.562496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.966928, 15.252419, 25.283150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.807684, 15.596011, 25.154366>,  <16.712137, 15.802167, 25.077095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.807684, 15.596011, 25.154366>,  <16.966928, 15.252419, 25.283150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.807684, 15.596011, 25.154366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791197, 0.499140, 0.353364,
		0.464237, -0.114057, -0.878336,
		-0.398109, 0.858982, -0.321961,
		16.688251, 15.853705, 25.057777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.458445, 15.627679, 24.985786>,  <16.966928, 15.252419, 25.283150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.458445, 15.627679, 24.985786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.214361, 15.929593, 25.082075>,  <17.067911, 16.110741, 25.139849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.214361, 15.929593, 25.082075>,  <17.458445, 15.627679, 24.985786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.214361, 15.929593, 25.082075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777903, 0.513292, 0.362488,
		0.150041, 0.408450, -0.900365,
		-0.610208, 0.754785, 0.240720,
		17.031300, 16.156029, 25.154291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.969358, 16.195980, 24.847473>,  <17.458445, 15.627679, 24.985786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.969358, 16.195980, 24.847473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.642618, 16.320791, 25.041542>,  <17.446575, 16.395678, 25.157984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.642618, 16.320791, 25.041542>,  <17.969358, 16.195980, 24.847473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.642618, 16.320791, 25.041542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557365, 0.643681, 0.524422,
		-0.148663, 0.698794, -0.699705,
		-0.816850, 0.312029, 0.485175,
		17.397564, 16.414400, 25.187094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.015463, 16.957457, 24.795094>,  <17.969358, 16.195980, 24.847473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.015463, 16.957457, 24.795094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.785694, 16.891809, 25.115868>,  <17.647833, 16.852421, 25.308332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.785694, 16.891809, 25.115868>,  <18.015463, 16.957457, 24.795094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.785694, 16.891809, 25.115868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490893, 0.714906, 0.497929,
		-0.655028, 0.679687, -0.330096,
		-0.574424, -0.164116, 0.801937,
		17.613367, 16.842575, 25.356449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.859760, 17.644602, 25.037016>,  <18.015463, 16.957457, 24.795094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.859760, 17.644602, 25.037016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.803535, 17.382677, 25.334059>,  <17.769800, 17.225521, 25.512283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.803535, 17.382677, 25.334059>,  <17.859760, 17.644602, 25.037016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.803535, 17.382677, 25.334059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635628, 0.515384, 0.574766,
		-0.759091, 0.552810, 0.343775,
		-0.140560, -0.654813, 0.742605,
		17.761368, 17.186234, 25.556841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620058, 18.064775, 25.581644>,  <17.859760, 17.644602, 25.037016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.620058, 18.064775, 25.581644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.772879, 17.721355, 25.718422>,  <17.864571, 17.515303, 25.800489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.772879, 17.721355, 25.718422>,  <17.620058, 18.064775, 25.581644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.772879, 17.721355, 25.718422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564128, 0.509741, 0.649557,
		-0.731982, -0.055262, 0.679079,
		0.382051, -0.858551, 0.341947,
		17.887493, 17.463791, 25.821007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.550585, 18.115026, 26.331905>,  <17.620058, 18.064775, 25.581644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.550585, 18.115026, 26.331905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.832846, 17.839010, 26.267534>,  <18.002203, 17.673401, 26.228912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.832846, 17.839010, 26.267534>,  <17.550585, 18.115026, 26.331905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.832846, 17.839010, 26.267534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542502, 0.380060, 0.749164,
		-0.455791, -0.615953, 0.642539,
		0.705653, -0.690041, -0.160928,
		18.044542, 17.631998, 26.219255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.777006, 17.885588, 27.063568>,  <17.550585, 18.115026, 26.331905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.777006, 17.885588, 27.063568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.048588, 17.808573, 26.780174>,  <18.211536, 17.762363, 26.610138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.048588, 17.808573, 26.780174>,  <17.777006, 17.885588, 27.063568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.048588, 17.808573, 26.780174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698379, 0.467044, 0.542343,
		0.226473, -0.863018, 0.451565,
		0.678952, -0.192537, -0.708487,
		18.252274, 17.750813, 26.567629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.355110, 17.535849, 27.387115>,  <17.777006, 17.885588, 27.063568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.355110, 17.535849, 27.387115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.501751, 17.684877, 27.046106>,  <18.589735, 17.774294, 26.841501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.501751, 17.684877, 27.046106>,  <18.355110, 17.535849, 27.387115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.501751, 17.684877, 27.046106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747898, 0.427022, 0.508233,
		0.553399, -0.823918, -0.122098,
		0.366604, 0.372572, -0.852521,
		18.611732, 17.796650, 26.790350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.091827, 17.455671, 27.498245>,  <18.355110, 17.535849, 27.387115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.091827, 17.455671, 27.498245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.044884, 17.715940, 27.198153>,  <19.016718, 17.872103, 27.018097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.044884, 17.715940, 27.198153>,  <19.091827, 17.455671, 27.498245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.044884, 17.715940, 27.198153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662518, 0.614069, 0.428939,
		0.739794, -0.446703, -0.503151,
		-0.117361, 0.650674, -0.750234,
		19.009676, 17.911142, 26.973082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.768923, 17.638821, 27.315268>,  <19.091827, 17.455671, 27.498245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.768923, 17.638821, 27.315268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.517410, 17.914091, 27.170465>,  <19.366503, 18.079254, 27.083584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.517410, 17.914091, 27.170465>,  <19.768923, 17.638821, 27.315268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.517410, 17.914091, 27.170465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647243, 0.721218, 0.246823,
		0.430944, -0.079109, -0.898904,
		-0.628780, 0.688176, -0.362007,
		19.328777, 18.120544, 27.061863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.177095, 18.066410, 27.093109>,  <19.768923, 17.638821, 27.315268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.177095, 18.066410, 27.093109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.856287, 18.304108, 27.068993>,  <19.663801, 18.446726, 27.054523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.856287, 18.304108, 27.068993>,  <20.177095, 18.066410, 27.093109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.856287, 18.304108, 27.068993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560892, 0.783993, 0.266000,
		0.205335, 0.179522, -0.962086,
		-0.802021, 0.594245, -0.060289,
		19.615681, 18.482382, 27.050905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.461586, 18.800219, 26.806303>,  <20.177095, 18.066410, 27.093109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.461586, 18.800219, 26.806303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.105181, 18.872198, 26.973021>,  <19.891338, 18.915386, 27.073051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.105181, 18.872198, 26.973021>,  <20.461586, 18.800219, 26.806303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.105181, 18.872198, 26.973021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380386, 0.797048, 0.469063,
		-0.247796, 0.576483, -0.778630,
		-0.891013, 0.179948, 0.416791,
		19.837877, 18.926182, 27.098059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
