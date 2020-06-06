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
	<24.196239, 35.295803, 35.201508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.209003, 34.896965, 35.173859>,  <24.216661, 34.657661, 35.157269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.209003, 34.896965, 35.173859>,  <24.196239, 35.295803, 35.201508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.209003, 34.896965, 35.173859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955844, 0.050658, -0.289476,
		0.292137, -0.056829, 0.954687,
		0.031912, -0.997098, -0.069119,
		24.218576, 34.597836, 35.153122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.782993, 35.000996, 35.737850>,  <24.196239, 35.295803, 35.201508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.782993, 35.000996, 35.737850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.689625, 34.788284, 35.412220>,  <24.633604, 34.660656, 35.216843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.689625, 34.788284, 35.412220>,  <24.782993, 35.000996, 35.737850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.689625, 34.788284, 35.412220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965524, -0.225964, -0.129242,
		-0.115224, -0.816181, 0.566191,
		-0.233423, -0.531780, -0.814079,
		24.619598, 34.628750, 35.167995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.022888, 34.337162, 35.775661>,  <24.782993, 35.000996, 35.737850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.022888, 34.337162, 35.775661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.988457, 34.472599, 35.400867>,  <24.967798, 34.553864, 35.175991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.988457, 34.472599, 35.400867>,  <25.022888, 34.337162, 35.775661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.988457, 34.472599, 35.400867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938512, -0.288054, -0.190314,
		-0.334342, -0.895755, -0.292981,
		-0.086081, 0.338597, -0.936986,
		24.962633, 34.574177, 35.119770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.028101, 33.755276, 35.281250>,  <25.022888, 34.337162, 35.775661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.028101, 33.755276, 35.281250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166710, 34.086300, 35.104584>,  <25.249874, 34.284912, 34.998585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166710, 34.086300, 35.104584>,  <25.028101, 33.755276, 35.281250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.166710, 34.086300, 35.104584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867438, -0.461908, -0.184911,
		-0.357035, -0.319045, -0.877916,
		0.346521, 0.827558, -0.441669,
		25.270666, 34.334568, 34.972084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.289890, 33.665222, 34.497787>,  <25.028101, 33.755276, 35.281250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.289890, 33.665222, 34.497787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482075, 33.981415, 34.649738>,  <25.597385, 34.171131, 34.740910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482075, 33.981415, 34.649738>,  <25.289890, 33.665222, 34.497787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.482075, 33.981415, 34.649738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873787, -0.394316, -0.284626,
		-0.075200, 0.468680, -0.880161,
		0.480460, 0.790477, 0.379874,
		25.626213, 34.218559, 34.763699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761002, 33.624493, 34.139282>,  <25.289890, 33.665222, 34.497787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761002, 33.624493, 34.139282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882698, 33.890736, 34.411873>,  <25.955715, 34.050480, 34.575428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882698, 33.890736, 34.411873>,  <25.761002, 33.624493, 34.139282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.882698, 33.890736, 34.411873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950713, -0.257109, -0.173319,
		0.059852, 0.700618, -0.711021,
		0.304241, 0.665604, 0.681476,
		25.973970, 34.090416, 34.616314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130644, 34.153194, 33.794159>,  <25.761002, 33.624493, 34.139282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130644, 34.153194, 33.794159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215961, 34.058571, 34.173325>,  <26.267151, 34.001797, 34.400826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215961, 34.058571, 34.173325>,  <26.130644, 34.153194, 33.794159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215961, 34.058571, 34.173325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952590, -0.165125, -0.255550,
		0.216977, 0.957484, 0.190120,
		0.213292, -0.236555, 0.947918,
		26.279949, 33.987606, 34.457699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344666, 34.329742, 33.101612>,  <26.130644, 34.153194, 33.794159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.344666, 34.329742, 33.101612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566210, 34.377773, 33.431175>,  <26.699137, 34.406590, 33.628914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566210, 34.377773, 33.431175>,  <26.344666, 34.329742, 33.101612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566210, 34.377773, 33.431175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372003, 0.849598, -0.373895,
		-0.744883, 0.513581, 0.425892,
		0.553862, 0.120075, 0.823904,
		26.732368, 34.413795, 33.678345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.208166, 35.128899, 33.240940>,  <26.344666, 34.329742, 33.101612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.208166, 35.128899, 33.240940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539679, 35.002193, 33.425453>,  <26.738586, 34.926170, 33.536160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539679, 35.002193, 33.425453>,  <26.208166, 35.128899, 33.240940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.539679, 35.002193, 33.425453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414231, 0.901526, -0.125157,
		-0.376214, 0.294806, 0.878381,
		0.828780, -0.316767, 0.461284,
		26.788313, 34.907162, 33.563839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352278, 35.618900, 33.610760>,  <26.208166, 35.128899, 33.240940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.352278, 35.618900, 33.610760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694290, 35.411602, 33.603401>,  <26.899498, 35.287224, 33.598984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694290, 35.411602, 33.603401>,  <26.352278, 35.618900, 33.610760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694290, 35.411602, 33.603401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495414, 0.826817, -0.266344,
		0.153245, 0.218617, 0.963702,
		0.855033, -0.518248, -0.018399,
		26.950800, 35.256126, 33.597881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902458, 36.152813, 33.819965>,  <26.352278, 35.618900, 33.610760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902458, 36.152813, 33.819965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105383, 35.864895, 33.630428>,  <27.227139, 35.692142, 33.516705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105383, 35.864895, 33.630428>,  <26.902458, 36.152813, 33.819965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105383, 35.864895, 33.630428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644704, 0.681869, -0.345560,
		0.571831, -0.130181, 0.809977,
		0.507313, -0.719797, -0.473841,
		27.257576, 35.648956, 33.488277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581264, 36.164124, 33.961163>,  <26.902458, 36.152813, 33.819965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581264, 36.164124, 33.961163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541315, 36.012177, 33.593307>,  <27.517345, 35.921009, 33.372597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541315, 36.012177, 33.593307>,  <27.581264, 36.164124, 33.961163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541315, 36.012177, 33.593307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569994, 0.735727, -0.365804,
		0.815556, -0.560720, 0.143043,
		-0.099873, -0.379867, -0.919634,
		27.511353, 35.898216, 33.317417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255035, 36.062248, 33.559589>,  <27.581264, 36.164124, 33.961163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255035, 36.062248, 33.559589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958252, 36.124069, 33.298634>,  <27.780182, 36.161160, 33.142059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958252, 36.124069, 33.298634>,  <28.255035, 36.062248, 33.559589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958252, 36.124069, 33.298634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440545, 0.845894, -0.300637,
		0.505390, -0.510468, -0.695703,
		-0.741957, 0.154549, -0.652391,
		27.735664, 36.170433, 33.102917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499617, 36.092876, 32.839729>,  <28.255035, 36.062248, 33.559589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499617, 36.092876, 32.839729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170553, 36.307217, 32.915718>,  <27.973114, 36.435822, 32.961311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170553, 36.307217, 32.915718>,  <28.499617, 36.092876, 32.839729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170553, 36.307217, 32.915718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453974, 0.820292, -0.347890,
		-0.342253, -0.199952, -0.918086,
		-0.822661, 0.535854, 0.189974,
		27.923756, 36.467972, 32.972710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370800, 35.561905, 32.295986>,  <28.499617, 36.092876, 32.839729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370800, 35.561905, 32.295986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430334, 35.415550, 32.663460>,  <28.466055, 35.327736, 32.883942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430334, 35.415550, 32.663460>,  <28.370800, 35.561905, 32.295986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430334, 35.415550, 32.663460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015555, 0.928048, 0.372136,
		-0.988740, -0.069676, 0.132433,
		0.148833, -0.365886, 0.918682,
		28.474983, 35.305786, 32.939064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816673, 35.131618, 32.286880>,  <28.370800, 35.561905, 32.295986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816673, 35.131618, 32.286880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825274, 35.324596, 32.637146>,  <27.830433, 35.440384, 32.847305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825274, 35.324596, 32.637146>,  <27.816673, 35.131618, 32.286880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825274, 35.324596, 32.637146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604730, -0.691199, 0.395659,
		0.796141, -0.538046, 0.276888,
		0.021498, 0.482443, 0.875664,
		27.831722, 35.469330, 32.899845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878199, 34.676838, 32.879562>,  <27.816673, 35.131618, 32.286880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878199, 34.676838, 32.879562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701912, 34.985001, 33.063843>,  <27.596140, 35.169899, 33.174412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701912, 34.985001, 33.063843>,  <27.878199, 34.676838, 32.879562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701912, 34.985001, 33.063843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529014, -0.637549, 0.560068,
		0.725199, 0.003113, 0.688532,
		-0.440716, 0.770404, 0.460703,
		27.569696, 35.216122, 33.202053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044243, 34.630760, 33.494938>,  <27.878199, 34.676838, 32.879562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044243, 34.630760, 33.494938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698496, 34.829739, 33.524395>,  <27.491049, 34.949123, 33.542068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698496, 34.829739, 33.524395>,  <28.044243, 34.630760, 33.494938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698496, 34.829739, 33.524395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364473, -0.720630, 0.589790,
		0.346454, 0.482955, 0.804192,
		-0.864366, 0.497441, 0.073641,
		27.439186, 34.978970, 33.546486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864523, 34.592503, 34.232800>,  <28.044243, 34.630760, 33.494938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864523, 34.592503, 34.232800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540735, 34.666618, 34.009933>,  <27.346462, 34.711086, 33.876213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540735, 34.666618, 34.009933>,  <27.864523, 34.592503, 34.232800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540735, 34.666618, 34.009933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524736, -0.654055, 0.544852,
		-0.263462, 0.733404, 0.626662,
		-0.809469, 0.185285, -0.557163,
		27.297895, 34.722202, 33.842785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420444, 34.552227, 34.781918>,  <27.864523, 34.592503, 34.232800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420444, 34.552227, 34.781918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245073, 34.490559, 34.427738>,  <27.139851, 34.453556, 34.215233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245073, 34.490559, 34.427738>,  <27.420444, 34.552227, 34.781918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245073, 34.490559, 34.427738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585033, -0.698932, 0.411376,
		-0.682289, 0.698373, 0.216235,
		-0.438427, -0.154172, -0.885445,
		27.113544, 34.444305, 34.162106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.535582, 34.088398, 35.396500>,  <27.420444, 34.552227, 34.781918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.535582, 34.088398, 35.396500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934675, 34.102531, 35.419403>,  <28.174131, 34.111012, 35.433144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934675, 34.102531, 35.419403>,  <27.535582, 34.088398, 35.396500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934675, 34.102531, 35.419403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066348, 0.657823, 0.750245,
		-0.011156, -0.752344, 0.658677,
		0.997734, 0.035333, 0.057255,
		28.233995, 34.113132, 35.436581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769512, 33.964092, 36.101284>,  <27.535582, 34.088398, 35.396500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769512, 33.964092, 36.101284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.021406, 34.196365, 35.894890>,  <28.172543, 34.335728, 35.771053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.021406, 34.196365, 35.894890>,  <27.769512, 33.964092, 36.101284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.021406, 34.196365, 35.894890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038305, 0.686644, 0.725984,
		0.775867, -0.437411, 0.454645,
		0.629733, 0.580682, -0.515989,
		28.210327, 34.370571, 35.740093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236076, 34.277489, 36.455307>,  <27.769512, 33.964092, 36.101284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236076, 34.277489, 36.455307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221367, 34.564602, 36.177189>,  <28.212542, 34.736870, 36.010319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221367, 34.564602, 36.177189>,  <28.236076, 34.277489, 36.455307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221367, 34.564602, 36.177189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391454, 0.629819, 0.670889,
		0.919463, 0.296847, 0.257818,
		-0.036773, 0.717781, -0.695297,
		28.210335, 34.779938, 35.968601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485294, 35.058540, 36.676651>,  <28.236076, 34.277489, 36.455307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485294, 35.058540, 36.676651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206038, 35.023869, 36.392372>,  <28.038485, 35.003067, 36.221806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206038, 35.023869, 36.392372>,  <28.485294, 35.058540, 36.676651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206038, 35.023869, 36.392372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546856, 0.705252, 0.451184,
		0.462112, 0.703638, -0.539765,
		-0.698141, -0.086676, -0.710694,
		27.996595, 34.997868, 36.179165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210680, 35.753819, 36.680889>,  <28.485294, 35.058540, 36.676651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210680, 35.753819, 36.680889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918867, 35.509018, 36.558750>,  <27.743780, 35.362137, 36.485466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918867, 35.509018, 36.558750>,  <28.210680, 35.753819, 36.680889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918867, 35.509018, 36.558750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681451, 0.612293, 0.400901,
		-0.058394, 0.500546, -0.863738,
		-0.729531, -0.612005, -0.305344,
		27.700008, 35.325417, 36.467148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872963, 36.105743, 37.163109>,  <28.210680, 35.753819, 36.680889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872963, 36.105743, 37.163109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053377, 36.183437, 37.511555>,  <28.161627, 36.230053, 37.720623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053377, 36.183437, 37.511555>,  <27.872963, 36.105743, 37.163109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.053377, 36.183437, 37.511555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387151, 0.836844, -0.387048,
		-0.804164, 0.511825, 0.302250,
		0.451037, 0.194234, 0.871114,
		28.188688, 36.241707, 37.772888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623238, 36.236439, 37.076866>,  <27.872963, 36.105743, 37.163109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623238, 36.236439, 37.076866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901247, 36.430443, 36.864563>,  <29.068052, 36.546844, 36.737179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901247, 36.430443, 36.864563>,  <28.623238, 36.236439, 37.076866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901247, 36.430443, 36.864563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718557, -0.443074, 0.536062,
		0.024827, -0.753959, -0.656453,
		0.695025, 0.485007, -0.530762,
		29.109755, 36.575943, 36.705334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044085, 35.720047, 36.852283>,  <28.623238, 36.236439, 37.076866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044085, 35.720047, 36.852283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226538, 36.073860, 36.891361>,  <29.336010, 36.286148, 36.914806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226538, 36.073860, 36.891361>,  <29.044085, 35.720047, 36.852283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226538, 36.073860, 36.891361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712724, -0.428844, 0.555082,
		0.532884, -0.183564, -0.826038,
		0.456135, 0.884532, 0.097694,
		29.363379, 36.339218, 36.920670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749601, 35.730816, 36.624050>,  <29.044085, 35.720047, 36.852283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749601, 35.730816, 36.624050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651382, 35.964520, 36.933460>,  <29.592451, 36.104744, 37.119106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651382, 35.964520, 36.933460>,  <29.749601, 35.730816, 36.624050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651382, 35.964520, 36.933460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639139, -0.502373, 0.582343,
		0.728840, 0.637383, -0.250068,
		-0.245548, 0.584263, 0.773526,
		29.577719, 36.139797, 37.165520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413609, 36.034336, 36.904705>,  <29.749601, 35.730816, 36.624050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413609, 36.034336, 36.904705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106083, 35.982162, 37.155117>,  <29.921568, 35.950859, 37.305363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106083, 35.982162, 37.155117>,  <30.413609, 36.034336, 36.904705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106083, 35.982162, 37.155117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616865, -0.409285, 0.672283,
		0.168534, 0.903035, 0.395125,
		-0.768814, -0.130437, 0.626029,
		29.875439, 35.943031, 37.342926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736946, 36.214539, 36.291069>,  <30.413609, 36.034336, 36.904705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736946, 36.214539, 36.291069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437868, 36.376034, 36.501953>,  <30.258421, 36.472931, 36.628483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437868, 36.376034, 36.501953>,  <30.736946, 36.214539, 36.291069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437868, 36.376034, 36.501953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549492, 0.069597, -0.832595,
		-0.372844, -0.912223, 0.169815,
		-0.747693, 0.403740, 0.527208,
		30.213560, 36.497154, 36.660114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008169, 36.949757, 36.414982>,  <30.736946, 36.214539, 36.291069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008169, 36.949757, 36.414982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281872, 36.806217, 36.161045>,  <31.446093, 36.720093, 36.008682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281872, 36.806217, 36.161045>,  <31.008169, 36.949757, 36.414982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281872, 36.806217, 36.161045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650026, 0.694729, 0.307925,
		0.330545, -0.623362, 0.708632,
		0.684256, -0.358846, -0.634841,
		31.487148, 36.698563, 35.970592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680277, 36.988785, 36.815525>,  <31.008169, 36.949757, 36.414982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680277, 36.988785, 36.815525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720963, 36.947155, 36.419785>,  <31.745375, 36.922176, 36.182339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720963, 36.947155, 36.419785>,  <31.680277, 36.988785, 36.815525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720963, 36.947155, 36.419785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723432, 0.690393, 0.001748,
		0.682861, -0.715909, 0.145517,
		0.101715, -0.104078, -0.989354,
		31.751478, 36.915932, 36.122978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407681, 36.790623, 36.654522>,  <31.680277, 36.988785, 36.815525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407681, 36.790623, 36.654522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228905, 36.962624, 36.340748>,  <32.121639, 37.065823, 36.152481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228905, 36.962624, 36.340748>,  <32.407681, 36.790623, 36.654522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228905, 36.962624, 36.340748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683884, 0.729518, 0.010251,
		0.576670, -0.531883, -0.620123,
		-0.446939, 0.430004, -0.784438,
		32.094822, 37.091625, 36.105415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802094, 36.962399, 36.124722>,  <32.407681, 36.790623, 36.654522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802094, 36.962399, 36.124722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511440, 37.237194, 36.127762>,  <32.337048, 37.402073, 36.129585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511440, 37.237194, 36.127762>,  <32.802094, 36.962399, 36.124722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511440, 37.237194, 36.127762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686312, 0.726330, -0.037679,
		-0.031409, -0.022159, -0.999261,
		-0.726628, 0.686989, 0.007605,
		32.293453, 37.443291, 36.130043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909092, 37.571243, 35.621059>,  <32.802094, 36.962399, 36.124722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909092, 37.571243, 35.621059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666615, 37.723366, 35.900459>,  <32.521130, 37.814640, 36.068100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666615, 37.723366, 35.900459>,  <32.909092, 37.571243, 35.621059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666615, 37.723366, 35.900459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659973, 0.730636, 0.174949,
		-0.443812, 0.567041, -0.693898,
		-0.606190, 0.380309, 0.698497,
		32.484756, 37.837460, 36.110008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302761, 38.085831, 36.032917>,  <32.909092, 37.571243, 35.621059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302761, 38.085831, 36.032917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617828, 38.332249, 36.036270>,  <33.806870, 38.480099, 36.038284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617828, 38.332249, 36.036270>,  <33.302761, 38.085831, 36.032917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617828, 38.332249, 36.036270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443950, 0.558082, 0.701037,
		0.427192, -0.555905, 0.713075,
		0.787664, 0.616048, 0.008386,
		33.854126, 38.517063, 36.038784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422043, 38.170937, 36.823143>,  <33.302761, 38.085831, 36.032917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422043, 38.170937, 36.823143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619514, 38.460789, 36.630810>,  <33.737995, 38.634701, 36.515411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619514, 38.460789, 36.630810>,  <33.422043, 38.170937, 36.823143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619514, 38.460789, 36.630810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376137, 0.676430, 0.633217,
		0.784095, -0.131746, 0.606497,
		0.493676, 0.724628, -0.480831,
		33.767616, 38.678177, 36.486561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709522, 38.591049, 37.322483>,  <33.422043, 38.170937, 36.823143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709522, 38.591049, 37.322483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675365, 38.847496, 37.017410>,  <33.654869, 39.001362, 36.834366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675365, 38.847496, 37.017410>,  <33.709522, 38.591049, 37.322483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675365, 38.847496, 37.017410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404028, 0.677433, 0.614692,
		0.910752, 0.360635, 0.201180,
		-0.085394, 0.641114, -0.762680,
		33.649746, 39.039829, 36.788605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012108, 39.340675, 37.429123>,  <33.709522, 38.591049, 37.322483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012108, 39.340675, 37.429123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709602, 39.331039, 37.167595>,  <33.528099, 39.325260, 37.010677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709602, 39.331039, 37.167595>,  <34.012108, 39.340675, 37.429123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709602, 39.331039, 37.167595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517214, 0.634026, 0.574893,
		0.400694, 0.772937, -0.491948,
		-0.756263, -0.024087, -0.653824,
		33.482723, 39.323814, 36.971447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642731, 39.953259, 37.454411>,  <34.012108, 39.340675, 37.429123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642731, 39.953259, 37.454411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387737, 39.719490, 37.253582>,  <33.234741, 39.579231, 37.133083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387737, 39.719490, 37.253582>,  <33.642731, 39.953259, 37.454411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387737, 39.719490, 37.253582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770114, 0.503054, 0.392251,
		0.023331, 0.636705, -0.770755,
		-0.637480, -0.584417, -0.502072,
		33.196495, 39.544167, 37.102959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235294, 40.290649, 36.898380>,  <33.642731, 39.953259, 37.454411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235294, 40.290649, 36.898380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029369, 39.984364, 37.052597>,  <32.905815, 39.800591, 37.145126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029369, 39.984364, 37.052597>,  <33.235294, 40.290649, 36.898380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029369, 39.984364, 37.052597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763774, 0.613909, 0.199409,
		-0.389378, -0.191806, -0.900886,
		-0.514814, -0.765719, 0.385539,
		32.874924, 39.754646, 37.168259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091953, 40.038914, 36.222092>,  <33.235294, 40.290649, 36.898380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091953, 40.038914, 36.222092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357502, 39.852394, 36.455956>,  <33.516830, 39.740482, 36.596275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357502, 39.852394, 36.455956>,  <33.091953, 40.038914, 36.222092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357502, 39.852394, 36.455956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108276, -0.713628, -0.692106,
		0.739963, 0.522778, -0.423271,
		0.663876, -0.466302, 0.584663,
		33.556664, 39.712502, 36.631355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674843, 39.868065, 35.689911>,  <33.091953, 40.038914, 36.222092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674843, 39.868065, 35.689911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677341, 39.618008, 36.002102>,  <33.678841, 39.467972, 36.189419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677341, 39.618008, 36.002102>,  <33.674843, 39.868065, 35.689911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677341, 39.618008, 36.002102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322347, -0.737574, -0.593360,
		0.946601, 0.255294, 0.196906,
		0.006249, -0.625147, 0.780482,
		33.679214, 39.430462, 36.236248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338005, 39.635437, 35.751236>,  <33.674843, 39.868065, 35.689911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338005, 39.635437, 35.751236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140888, 39.355927, 35.958645>,  <34.022617, 39.188221, 36.083092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140888, 39.355927, 35.958645>,  <34.338005, 39.635437, 35.751236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140888, 39.355927, 35.958645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617077, -0.700782, -0.357939,
		0.613490, 0.143577, 0.776541,
		-0.492794, -0.698778, 0.518521,
		33.993050, 39.146294, 36.114201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840450, 39.285027, 36.102783>,  <34.338005, 39.635437, 35.751236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840450, 39.285027, 36.102783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510151, 39.066128, 36.048157>,  <34.311970, 38.934788, 36.015381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510151, 39.066128, 36.048157>,  <34.840450, 39.285027, 36.102783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510151, 39.066128, 36.048157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559393, -0.763590, -0.322505,
		0.072209, -0.342705, 0.936664,
		-0.825751, -0.547251, -0.136569,
		34.262424, 38.901951, 36.007187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915321, 38.556458, 36.498657>,  <34.840450, 39.285027, 36.102783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915321, 38.556458, 36.498657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759052, 38.643700, 36.140930>,  <34.665291, 38.696045, 35.926292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759052, 38.643700, 36.140930>,  <34.915321, 38.556458, 36.498657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759052, 38.643700, 36.140930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693695, -0.568882, -0.441770,
		-0.605112, -0.792972, 0.070950,
		-0.390674, 0.218103, -0.894318,
		34.641850, 38.709129, 35.872635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766788, 37.966522, 36.089676>,  <34.915321, 38.556458, 36.498657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766788, 37.966522, 36.089676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941586, 38.232891, 35.847824>,  <35.046463, 38.392712, 35.702713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941586, 38.232891, 35.847824>,  <34.766788, 37.966522, 36.089676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941586, 38.232891, 35.847824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685049, -0.682018, -0.256046,
		-0.582877, -0.302312, -0.754229,
		0.436993, 0.665927, -0.604631,
		35.072685, 38.432671, 35.666435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381245, 37.633415, 35.923599>,  <34.766788, 37.966522, 36.089676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381245, 37.633415, 35.923599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623863, 37.385345, 35.724606>,  <35.769432, 37.236504, 35.605209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623863, 37.385345, 35.724606>,  <35.381245, 37.633415, 35.923599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623863, 37.385345, 35.724606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475122, -0.218961, 0.852241,
		-0.637468, -0.753286, 0.161850,
		0.606542, -0.620175, -0.497483,
		35.805824, 37.199291, 35.575359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438004, 37.029972, 36.296516>,  <35.381245, 37.633415, 35.923599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438004, 37.029972, 36.296516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771988, 37.042274, 36.076736>,  <35.972378, 37.049656, 35.944870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771988, 37.042274, 36.076736>,  <35.438004, 37.029972, 36.296516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771988, 37.042274, 36.076736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547594, -0.145484, 0.824000,
		-0.054594, -0.988883, -0.138315,
		0.834961, 0.030755, -0.549448,
		36.022476, 37.051502, 35.911903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889488, 36.402176, 36.506702>,  <35.438004, 37.029972, 36.296516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889488, 36.402176, 36.506702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147156, 36.669273, 36.357483>,  <36.301758, 36.829533, 36.267952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147156, 36.669273, 36.357483>,  <35.889488, 36.402176, 36.506702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147156, 36.669273, 36.357483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593526, -0.128741, 0.794451,
		0.482463, -0.733174, -0.479255,
		0.644171, 0.667744, -0.373045,
		36.340408, 36.869595, 36.245571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507771, 36.137318, 36.379414>,  <35.889488, 36.402176, 36.506702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507771, 36.137318, 36.379414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587093, 36.525295, 36.435802>,  <36.634686, 36.758083, 36.469635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587093, 36.525295, 36.435802>,  <36.507771, 36.137318, 36.379414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587093, 36.525295, 36.435802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635461, -0.236739, 0.734945,
		0.746233, -0.056160, -0.663312,
		0.198307, 0.969949, 0.140975,
		36.646584, 36.816280, 36.478096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208698, 36.146431, 36.505066>,  <36.507771, 36.137318, 36.379414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208698, 36.146431, 36.505066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028721, 36.458778, 36.678410>,  <36.920734, 36.646187, 36.782413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028721, 36.458778, 36.678410>,  <37.208698, 36.146431, 36.505066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028721, 36.458778, 36.678410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593059, -0.101542, 0.798731,
		0.667704, 0.616392, -0.417410,
		-0.449947, 0.780865, 0.433357,
		36.893738, 36.693039, 36.808418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647285, 36.641277, 36.760120>,  <37.208698, 36.146431, 36.505066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647285, 36.641277, 36.760120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327301, 36.652275, 36.999886>,  <37.135311, 36.658875, 37.143745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327301, 36.652275, 36.999886>,  <37.647285, 36.641277, 36.760120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327301, 36.652275, 36.999886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587886, -0.164185, 0.792107,
		0.120191, 0.986046, 0.115180,
		-0.799965, 0.027491, 0.599416,
		37.087311, 36.660522, 37.179710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958668, 36.712490, 37.400845>,  <37.647285, 36.641277, 36.760120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958668, 36.712490, 37.400845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586323, 36.652733, 37.534222>,  <37.362915, 36.616879, 37.614246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586323, 36.652733, 37.534222>,  <37.958668, 36.712490, 37.400845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586323, 36.652733, 37.534222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364875, -0.332345, 0.869720,
		-0.019113, 0.931251, 0.363876,
		-0.930860, -0.149393, 0.333439,
		37.307064, 36.607914, 37.634254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827801, 37.108330, 38.000729>,  <37.958668, 36.712490, 37.400845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827801, 37.108330, 38.000729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644455, 36.752888, 38.007515>,  <37.534447, 36.539623, 38.011585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644455, 36.752888, 38.007515>,  <37.827801, 37.108330, 38.000729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644455, 36.752888, 38.007515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462465, -0.222164, 0.858353,
		-0.758965, 0.401284, 0.512779,
		-0.458365, -0.888602, 0.016965,
		37.506947, 36.486305, 38.012604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426991, 36.957123, 38.612850>,  <37.827801, 37.108330, 38.000729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426991, 36.957123, 38.612850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586689, 36.623047, 38.461559>,  <37.682507, 36.422600, 38.370785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586689, 36.623047, 38.461559>,  <37.426991, 36.957123, 38.612850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586689, 36.623047, 38.461559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391009, -0.218036, 0.894188,
		-0.829286, -0.504892, 0.239518,
		0.399245, -0.835191, -0.378231,
		37.706463, 36.372490, 38.348091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672318, 37.091721, 38.687038>,  <37.426991, 36.957123, 38.612850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672318, 37.091721, 38.687038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787605, 37.039810, 38.307545>,  <36.856777, 37.008663, 38.079849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787605, 37.039810, 38.307545>,  <36.672318, 37.091721, 38.687038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787605, 37.039810, 38.307545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847330, 0.496084, 0.189558,
		0.446050, -0.858522, 0.252943,
		0.288220, -0.129774, -0.948730,
		36.874073, 37.000877, 38.022926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680946, 37.784321, 38.147598>,  <36.672318, 37.091721, 38.687038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680946, 37.784321, 38.147598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912331, 37.985332, 38.404613>,  <37.051163, 38.105938, 38.558823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912331, 37.985332, 38.404613>,  <36.680946, 37.784321, 38.147598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912331, 37.985332, 38.404613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346122, -0.864485, 0.364507,
		0.738636, 0.011543, -0.674005,
		0.578460, 0.502526, 0.642535,
		37.085869, 38.136089, 38.597374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300800, 37.578712, 38.085114>,  <36.680946, 37.784321, 38.147598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300800, 37.578712, 38.085114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221569, 37.669388, 38.466560>,  <37.174030, 37.723793, 38.695427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221569, 37.669388, 38.466560>,  <37.300800, 37.578712, 38.085114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221569, 37.669388, 38.466560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353763, -0.890782, 0.285236,
		0.914122, 0.393851, 0.096245,
		-0.198074, 0.226693, 0.953613,
		37.162148, 37.737396, 38.752644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782623, 37.337109, 37.460262>,  <37.300800, 37.578712, 38.085114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782623, 37.337109, 37.460262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102287, 37.243752, 37.238678>,  <37.294086, 37.187737, 37.105728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102287, 37.243752, 37.238678>,  <36.782623, 37.337109, 37.460262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102287, 37.243752, 37.238678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528800, 0.165293, -0.832496,
		0.285862, 0.958232, 0.008679,
		0.799158, -0.233389, -0.553964,
		37.342033, 37.173737, 37.072491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794613, 37.794147, 36.966431>,  <36.782623, 37.337109, 37.460262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794613, 37.794147, 36.966431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961433, 37.465919, 36.810101>,  <37.061527, 37.268982, 36.716305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961433, 37.465919, 36.810101>,  <36.794613, 37.794147, 36.966431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961433, 37.465919, 36.810101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512462, 0.142833, -0.846748,
		0.750634, 0.553417, -0.360940,
		0.417051, -0.820566, -0.390821,
		37.086548, 37.219749, 36.692856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099396, 37.895950, 36.306015>,  <36.794613, 37.794147, 36.966431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099396, 37.895950, 36.306015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010941, 37.506519, 36.328785>,  <36.957867, 37.272861, 36.342445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010941, 37.506519, 36.328785>,  <37.099396, 37.895950, 36.306015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010941, 37.506519, 36.328785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512308, 0.066302, -0.856238,
		0.829843, -0.218508, -0.513435,
		-0.221136, -0.973580, 0.056923,
		36.944599, 37.214447, 36.345863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232738, 37.564220, 35.670181>,  <37.099396, 37.895950, 36.306015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232738, 37.564220, 35.670181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953300, 37.342636, 35.851330>,  <36.785637, 37.209686, 35.960018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953300, 37.342636, 35.851330>,  <37.232738, 37.564220, 35.670181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953300, 37.342636, 35.851330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483192, -0.101558, -0.869604,
		0.527723, -0.826322, -0.196723,
		-0.698595, -0.553965, 0.452867,
		36.743721, 37.176445, 35.987190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179314, 36.920605, 35.289318>,  <37.232738, 37.564220, 35.670181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179314, 36.920605, 35.289318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832531, 36.988911, 35.476608>,  <36.624462, 37.029896, 35.588982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832531, 36.988911, 35.476608>,  <37.179314, 36.920605, 35.289318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832531, 36.988911, 35.476608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489842, -0.118714, -0.863691,
		-0.091890, -0.978137, 0.186560,
		-0.866955, 0.170750, 0.468224,
		36.572445, 37.040142, 35.617073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635490, 36.451740, 35.080666>,  <37.179314, 36.920605, 35.289318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635490, 36.451740, 35.080666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464050, 36.791977, 35.202515>,  <36.361187, 36.996120, 35.275623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464050, 36.791977, 35.202515>,  <36.635490, 36.451740, 35.080666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464050, 36.791977, 35.202515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553478, 0.019300, -0.832640,
		-0.714115, -0.525474, 0.462512,
		-0.428604, 0.850591, 0.304621,
		36.335468, 37.047153, 35.293900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862362, 36.277378, 35.187359>,  <36.635490, 36.451740, 35.080666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862362, 36.277378, 35.187359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982983, 36.640999, 35.072338>,  <36.055355, 36.859173, 35.003326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982983, 36.640999, 35.072338>,  <35.862362, 36.277378, 35.187359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982983, 36.640999, 35.072338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593104, -0.057284, -0.803086,
		-0.746521, 0.412718, 0.521890,
		0.301552, 0.909055, -0.287548,
		36.073448, 36.913715, 34.986073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659794, 36.391075, 34.573082>,  <35.862362, 36.277378, 35.187359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659794, 36.391075, 34.573082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783394, 36.771416, 34.565022>,  <35.857552, 36.999619, 34.560184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783394, 36.771416, 34.565022>,  <35.659794, 36.391075, 34.573082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783394, 36.771416, 34.565022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402196, 0.111444, -0.908745,
		-0.861835, 0.288902, 0.416864,
		0.308996, 0.950850, -0.020148,
		35.876091, 37.056671, 34.558975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092430, 36.630978, 34.152122>,  <35.659794, 36.391075, 34.573082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092430, 36.630978, 34.152122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398373, 36.887463, 34.176910>,  <35.581940, 37.041355, 34.191784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398373, 36.887463, 34.176910>,  <35.092430, 36.630978, 34.152122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398373, 36.887463, 34.176910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116398, 0.232171, -0.965685,
		-0.633596, 0.731399, 0.252213,
		0.764858, 0.641211, 0.061969,
		35.627831, 37.079826, 34.195499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832211, 37.240662, 33.917164>,  <35.092430, 36.630978, 34.152122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832211, 37.240662, 33.917164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228546, 37.273487, 33.874279>,  <35.466347, 37.293182, 33.848549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228546, 37.273487, 33.874279>,  <34.832211, 37.240662, 33.917164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228546, 37.273487, 33.874279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125945, 0.275611, -0.952983,
		-0.048653, 0.957760, 0.283422,
		0.990843, 0.082061, -0.107216,
		35.525799, 37.298107, 33.842113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823673, 37.786114, 33.574596>,  <34.832211, 37.240662, 33.917164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823673, 37.786114, 33.574596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166199, 37.601089, 33.482712>,  <35.371712, 37.490074, 33.427582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166199, 37.601089, 33.482712>,  <34.823673, 37.786114, 33.574596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166199, 37.601089, 33.482712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141676, 0.217337, -0.965760,
		0.496648, 0.859536, 0.120574,
		0.856311, -0.462560, -0.229716,
		35.423092, 37.462322, 33.413795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288528, 38.275299, 33.255890>,  <34.823673, 37.786114, 33.574596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288528, 38.275299, 33.255890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389439, 37.910740, 33.125835>,  <35.449986, 37.692005, 33.047802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389439, 37.910740, 33.125835>,  <35.288528, 38.275299, 33.255890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389439, 37.910740, 33.125835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054119, 0.322185, -0.945128,
		0.966141, 0.256030, 0.031956,
		0.252277, -0.911398, -0.325132,
		35.465122, 37.637321, 33.028297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523006, 38.315269, 32.491196>,  <35.288528, 38.275299, 33.255890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523006, 38.315269, 32.491196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518215, 37.916466, 32.521751>,  <35.515339, 37.677185, 32.540085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518215, 37.916466, 32.521751>,  <35.523006, 38.315269, 32.491196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518215, 37.916466, 32.521751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000241, -0.076396, -0.997078,
		0.999928, -0.011924, 0.001156,
		-0.011977, -0.997006, 0.076387,
		35.514622, 37.617363, 32.544666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040340, 38.054379, 32.108070>,  <35.523006, 38.315269, 32.491196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040340, 38.054379, 32.108070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781681, 37.749378, 32.116341>,  <35.626484, 37.566376, 32.121304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781681, 37.749378, 32.116341>,  <36.040340, 38.054379, 32.108070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781681, 37.749378, 32.116341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058919, -0.076960, -0.995292,
		0.760507, -0.642388, 0.094692,
		-0.646651, -0.762506, 0.020680,
		35.587685, 37.520626, 32.122543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347427, 37.590321, 31.732410>,  <36.040340, 38.054379, 32.108070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347427, 37.590321, 31.732410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953583, 37.520607, 31.727274>,  <35.717278, 37.478779, 31.724192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953583, 37.520607, 31.727274>,  <36.347427, 37.590321, 31.732410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953583, 37.520607, 31.727274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039820, -0.152184, -0.987550,
		0.170161, -0.972864, 0.156782,
		-0.984611, -0.174285, -0.012844,
		35.658199, 37.468323, 31.723421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365688, 36.986801, 31.317564>,  <36.347427, 37.590321, 31.732410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365688, 36.986801, 31.317564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978611, 37.087452, 31.311121>,  <35.746365, 37.147842, 31.307255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978611, 37.087452, 31.311121>,  <36.365688, 36.986801, 31.317564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978611, 37.087452, 31.311121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010597, -0.104416, -0.994477,
		-0.251922, -0.962175, 0.103709,
		-0.967689, 0.251630, -0.016109,
		35.688305, 37.162941, 31.306288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971905, 36.518963, 30.842365>,  <36.365688, 36.986801, 31.317564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971905, 36.518963, 30.842365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766487, 36.861115, 30.869482>,  <35.643234, 37.066406, 30.885752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766487, 36.861115, 30.869482>,  <35.971905, 36.518963, 30.842365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766487, 36.861115, 30.869482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025780, 0.063588, -0.997643,
		-0.857674, -0.514085, -0.010604,
		-0.513548, 0.855379, 0.067791,
		35.612423, 37.117729, 30.889820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492752, 36.450008, 30.292253>,  <35.971905, 36.518963, 30.842365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492752, 36.450008, 30.292253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493446, 36.844654, 30.357487>,  <35.493862, 37.081440, 30.396627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493446, 36.844654, 30.357487>,  <35.492752, 36.450008, 30.292253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493446, 36.844654, 30.357487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034506, 0.162929, -0.986034,
		-0.999403, 0.007336, -0.033761,
		0.001733, 0.986611, 0.163085,
		35.493965, 37.140636, 30.406412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841839, 36.704288, 29.895824>,  <35.492752, 36.450008, 30.292253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841839, 36.704288, 29.895824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071602, 37.025463, 29.959511>,  <35.209461, 37.218166, 29.997723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071602, 37.025463, 29.959511>,  <34.841839, 36.704288, 29.895824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071602, 37.025463, 29.959511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096520, 0.259585, -0.960885,
		-0.812856, 0.536576, 0.226608,
		0.574411, 0.802933, 0.159215,
		35.243927, 37.266342, 30.007275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485489, 37.327835, 29.585688>,  <34.841839, 36.704288, 29.895824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485489, 37.327835, 29.585688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866253, 37.441456, 29.631599>,  <35.094711, 37.509628, 29.659145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866253, 37.441456, 29.631599>,  <34.485489, 37.327835, 29.585688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866253, 37.441456, 29.631599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013928, 0.334136, -0.942422,
		-0.306047, 0.898704, 0.314113,
		0.951915, 0.284050, 0.114778,
		35.151829, 37.526672, 29.666033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437836, 37.954254, 29.408169>,  <34.485489, 37.327835, 29.585688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437836, 37.954254, 29.408169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831165, 37.896477, 29.363977>,  <35.067165, 37.861809, 29.337463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831165, 37.896477, 29.363977>,  <34.437836, 37.954254, 29.408169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831165, 37.896477, 29.363977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002367, 0.597301, -0.802014,
		0.181834, 0.788903, 0.587000,
		0.983326, -0.144444, -0.110477,
		35.126163, 37.853142, 29.330835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808502, 38.545769, 29.474712>,  <34.437836, 37.954254, 29.408169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808502, 38.545769, 29.474712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048962, 38.311516, 29.257219>,  <35.193237, 38.170963, 29.126722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048962, 38.311516, 29.257219>,  <34.808502, 38.545769, 29.474712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048962, 38.311516, 29.257219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011412, 0.686626, -0.726922,
		0.799054, 0.430784, 0.419449,
		0.601151, -0.585637, -0.543735,
		35.229305, 38.135826, 29.094099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221664, 38.948376, 29.247374>,  <34.808502, 38.545769, 29.474712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221664, 38.948376, 29.247374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242500, 38.644997, 28.987514>,  <35.255001, 38.462967, 28.831600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242500, 38.644997, 28.987514>,  <35.221664, 38.948376, 29.247374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242500, 38.644997, 28.987514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083617, 0.651558, -0.753976,
		0.995135, -0.015044, 0.097361,
		0.052094, -0.758449, -0.649647,
		35.258129, 38.417461, 28.792620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787270, 39.102467, 28.915129>,  <35.221664, 38.948376, 29.247374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787270, 39.102467, 28.915129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592598, 38.863579, 28.660107>,  <35.475796, 38.720245, 28.507093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592598, 38.863579, 28.660107>,  <35.787270, 39.102467, 28.915129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592598, 38.863579, 28.660107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101827, 0.686061, -0.720383,
		0.867628, -0.415513, -0.273077,
		-0.486676, -0.597217, -0.637556,
		35.446594, 38.684414, 28.468840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160183, 39.190659, 28.233240>,  <35.787270, 39.102467, 28.915129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160183, 39.190659, 28.233240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791756, 39.048634, 28.169283>,  <35.570698, 38.963417, 28.130909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791756, 39.048634, 28.169283>,  <36.160183, 39.190659, 28.233240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791756, 39.048634, 28.169283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074087, 0.562892, -0.823203,
		0.382291, -0.746379, -0.544767,
		-0.921067, -0.355064, -0.159891,
		35.515434, 38.942116, 28.121315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237171, 38.933548, 27.621975>,  <36.160183, 39.190659, 28.233240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237171, 38.933548, 27.621975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842487, 38.979759, 27.667700>,  <35.605679, 39.007484, 27.695135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842487, 38.979759, 27.667700>,  <36.237171, 38.933548, 27.621975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842487, 38.979759, 27.667700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053817, 0.431428, -0.900541,
		-0.153351, -0.894720, -0.419475,
		-0.986705, 0.115524, 0.114311,
		35.546474, 39.014416, 27.701994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063606, 39.061672, 26.954508>,  <36.237171, 38.933548, 27.621975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063606, 39.061672, 26.954508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726219, 39.148205, 27.151188>,  <35.523788, 39.200123, 27.269196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726219, 39.148205, 27.151188>,  <36.063606, 39.061672, 26.954508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726219, 39.148205, 27.151188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333684, 0.506326, -0.795166,
		-0.420980, -0.834767, -0.354881,
		-0.843463, 0.216330, 0.491702,
		35.473179, 39.213104, 27.298698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399178, 38.825562, 26.643520>,  <36.063606, 39.061672, 26.954508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399178, 38.825562, 26.643520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352543, 39.159195, 26.859192>,  <35.324562, 39.359375, 26.988596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352543, 39.159195, 26.859192>,  <35.399178, 38.825562, 26.643520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352543, 39.159195, 26.859192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198698, 0.512319, -0.835493,
		-0.973101, -0.204543, 0.105999,
		-0.116589, 0.834081, 0.539180,
		35.317566, 39.409420, 27.020947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897419, 39.067455, 26.263176>,  <35.399178, 38.825562, 26.643520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897419, 39.067455, 26.263176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018948, 39.377083, 26.485350>,  <35.091866, 39.562859, 26.618654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018948, 39.377083, 26.485350>,  <34.897419, 39.067455, 26.263176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018948, 39.377083, 26.485350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361910, 0.633066, -0.684287,
		-0.881312, 0.006887, 0.472485,
		0.303826, 0.774067, 0.555436,
		35.110096, 39.609303, 26.651981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308517, 39.585144, 26.217180>,  <34.897419, 39.067455, 26.263176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308517, 39.585144, 26.217180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646908, 39.767300, 26.328138>,  <34.849941, 39.876595, 26.394712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646908, 39.767300, 26.328138>,  <34.308517, 39.585144, 26.217180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646908, 39.767300, 26.328138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153021, 0.705674, -0.691815,
		-0.510798, 0.542810, 0.666666,
		0.845973, 0.455391, 0.277396,
		34.900700, 39.903915, 26.411358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182236, 40.389530, 26.314220>,  <34.308517, 39.585144, 26.217180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182236, 40.389530, 26.314220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570187, 40.331158, 26.236206>,  <34.802959, 40.296135, 26.189398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570187, 40.331158, 26.236206>,  <34.182236, 40.389530, 26.314220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570187, 40.331158, 26.236206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035775, 0.877341, -0.478533,
		0.240946, 0.457141, 0.856135,
		0.969879, -0.145929, -0.195037,
		34.861149, 40.287380, 26.177694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442436, 41.051727, 26.155392>,  <34.182236, 40.389530, 26.314220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442436, 41.051727, 26.155392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740086, 40.825058, 26.013878>,  <34.918674, 40.689056, 25.928970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740086, 40.825058, 26.013878>,  <34.442436, 41.051727, 26.155392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740086, 40.825058, 26.013878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008602, 0.521411, -0.853263,
		0.667986, 0.637977, 0.383119,
		0.744124, -0.566672, -0.353783,
		34.963322, 40.655056, 25.907743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873615, 41.528999, 25.764824>,  <34.442436, 41.051727, 26.155392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873615, 41.528999, 25.764824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966591, 41.157471, 25.649399>,  <35.022377, 40.934555, 25.580145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966591, 41.157471, 25.649399>,  <34.873615, 41.528999, 25.764824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966591, 41.157471, 25.649399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033523, 0.304161, -0.952031,
		0.972034, 0.211614, 0.101835,
		0.232437, -0.928820, -0.288560,
		35.036324, 40.878826, 25.562830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328381, 41.717857, 25.247517>,  <34.873615, 41.528999, 25.764824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328381, 41.717857, 25.247517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237682, 41.333500, 25.183926>,  <35.183262, 41.102886, 25.145771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237682, 41.333500, 25.183926>,  <35.328381, 41.717857, 25.247517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237682, 41.333500, 25.183926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026819, 0.169325, -0.985195,
		0.973584, -0.219127, -0.064164,
		-0.226748, -0.960891, -0.158975,
		35.169659, 41.045231, 25.136232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653778, 41.584389, 24.734755>,  <35.328381, 41.717857, 25.247517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653778, 41.584389, 24.734755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385170, 41.288994, 24.710455>,  <35.224003, 41.111755, 24.695875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385170, 41.288994, 24.710455>,  <35.653778, 41.584389, 24.734755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385170, 41.288994, 24.710455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115580, 0.185375, -0.975847,
		0.731914, -0.648283, -0.209838,
		-0.671524, -0.738489, -0.060750,
		35.183712, 41.067448, 24.692230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726547, 41.233704, 24.109249>,  <35.653778, 41.584389, 24.734755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726547, 41.233704, 24.109249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346565, 41.130497, 24.179689>,  <35.118576, 41.068573, 24.221954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346565, 41.130497, 24.179689>,  <35.726547, 41.233704, 24.109249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346565, 41.130497, 24.179689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253990, 0.309760, -0.916263,
		0.181860, -0.915138, -0.359792,
		-0.949956, -0.258015, 0.176103,
		35.061577, 41.053093, 24.232519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571625, 41.037056, 23.533266>,  <35.726547, 41.233704, 24.109249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571625, 41.037056, 23.533266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202412, 41.074142, 23.682615>,  <34.980885, 41.096394, 23.772224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202412, 41.074142, 23.682615>,  <35.571625, 41.037056, 23.533266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202412, 41.074142, 23.682615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364548, 0.099305, -0.925874,
		-0.122917, -0.990729, -0.057864,
		-0.923036, 0.092712, 0.373374,
		34.925499, 41.101955, 23.794628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035175, 40.613865, 23.146057>,  <35.571625, 41.037056, 23.533266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035175, 40.613865, 23.146057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850597, 40.924084, 23.318378>,  <34.739849, 41.110214, 23.421770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850597, 40.924084, 23.318378>,  <35.035175, 40.613865, 23.146057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850597, 40.924084, 23.318378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253108, 0.350323, -0.901782,
		-0.850296, -0.525163, 0.034642,
		-0.461446, 0.775550, 0.430801,
		34.712162, 41.156750, 23.447618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410740, 40.698265, 22.783737>,  <35.035175, 40.613865, 23.146057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410740, 40.698265, 22.783737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413277, 41.059986, 22.954473>,  <34.414799, 41.277020, 23.056915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413277, 41.059986, 22.954473>,  <34.410740, 40.698265, 22.783737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413277, 41.059986, 22.954473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320690, 0.406141, -0.855691,
		-0.947163, -0.131461, 0.292575,
		0.006337, 0.904305, 0.426840,
		34.415176, 41.331276, 23.082525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864136, 41.113094, 22.521343>,  <34.410740, 40.698265, 22.783737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864136, 41.113094, 22.521343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096008, 41.390568, 22.692348>,  <34.235130, 41.557053, 22.794952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096008, 41.390568, 22.692348>,  <33.864136, 41.113094, 22.521343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096008, 41.390568, 22.692348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207791, 0.633154, -0.745613,
		-0.787904, 0.343384, 0.511170,
		0.579681, 0.693688, 0.427512,
		34.269913, 41.598675, 22.820602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574722, 41.666000, 22.273220>,  <33.864136, 41.113094, 22.521343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574722, 41.666000, 22.273220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928192, 41.797260, 22.406746>,  <34.140274, 41.876019, 22.486860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928192, 41.797260, 22.406746>,  <33.574722, 41.666000, 22.273220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928192, 41.797260, 22.406746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118442, 0.846668, -0.518772,
		-0.452866, 0.418889, 0.787048,
		0.883676, 0.328154, 0.333813,
		34.193295, 41.895706, 22.506889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486122, 42.306038, 22.530479>,  <33.574722, 41.666000, 22.273220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486122, 42.306038, 22.530479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864590, 42.247009, 22.415243>,  <34.091671, 42.211594, 22.346102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864590, 42.247009, 22.415243>,  <33.486122, 42.306038, 22.530479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864590, 42.247009, 22.415243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022356, 0.858112, -0.512975,
		0.322912, 0.491800, 0.808616,
		0.946165, -0.147568, -0.288090,
		34.148438, 42.202740, 22.328815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899872, 42.948814, 22.571577>,  <33.486122, 42.306038, 22.530479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899872, 42.948814, 22.571577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131008, 42.759434, 22.305660>,  <34.269688, 42.645805, 22.146111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131008, 42.759434, 22.305660>,  <33.899872, 42.948814, 22.571577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131008, 42.759434, 22.305660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004432, 0.812713, -0.582648,
		0.816140, 0.339622, 0.467517,
		0.577837, -0.473450, -0.664792,
		34.304359, 42.617397, 22.106222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231907, 43.457691, 22.374659>,  <33.899872, 42.948814, 22.571577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231907, 43.457691, 22.374659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383926, 43.176476, 22.134224>,  <34.475136, 43.007748, 21.989964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383926, 43.176476, 22.134224>,  <34.231907, 43.457691, 22.374659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383926, 43.176476, 22.134224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251377, 0.703892, -0.664339,
		0.890154, 0.101380, 0.444239,
		0.380047, -0.703035, -0.601087,
		34.497940, 42.965565, 21.953897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839558, 43.768311, 22.125446>,  <34.231907, 43.457691, 22.374659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839558, 43.768311, 22.125446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704597, 43.497200, 21.864132>,  <34.623619, 43.334534, 21.707344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704597, 43.497200, 21.864132>,  <34.839558, 43.768311, 22.125446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704597, 43.497200, 21.864132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179768, 0.634816, -0.751460,
		0.924036, -0.370985, -0.092347,
		-0.337404, -0.677775, -0.653284,
		34.603374, 43.293869, 21.668146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342571, 43.681644, 21.668486>,  <34.839558, 43.768311, 22.125446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342571, 43.681644, 21.668486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988060, 43.609676, 21.497774>,  <34.775352, 43.566494, 21.395348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988060, 43.609676, 21.497774>,  <35.342571, 43.681644, 21.668486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988060, 43.609676, 21.497774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234031, 0.621196, -0.747894,
		0.399677, -0.762721, -0.508444,
		-0.886277, -0.179924, -0.426777,
		34.722176, 43.555698, 21.369741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622334, 43.620777, 21.013260>,  <35.342571, 43.681644, 21.668486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622334, 43.620777, 21.013260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224911, 43.640770, 20.972570>,  <34.986458, 43.652767, 20.948156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224911, 43.640770, 20.972570>,  <35.622334, 43.620777, 21.013260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224911, 43.640770, 20.972570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112183, 0.561507, -0.819832,
		0.016140, -0.825961, -0.563496,
		-0.993556, 0.049982, -0.101722,
		34.926846, 43.655766, 20.942055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475147, 43.472076, 20.271885>,  <35.622334, 43.620777, 21.013260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475147, 43.472076, 20.271885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171982, 43.682774, 20.425827>,  <34.990082, 43.809193, 20.518192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171982, 43.682774, 20.425827>,  <35.475147, 43.472076, 20.271885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171982, 43.682774, 20.425827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011079, 0.600255, -0.799732,
		-0.652261, -0.601864, -0.460777,
		-0.757913, 0.526739, 0.384854,
		34.944607, 43.840794, 20.541283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045315, 43.676826, 19.691454>,  <35.475147, 43.472076, 20.271885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045315, 43.676826, 19.691454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924694, 43.933319, 19.973701>,  <34.852322, 44.087215, 20.143049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924694, 43.933319, 19.973701>,  <35.045315, 43.676826, 19.691454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924694, 43.933319, 19.973701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125724, 0.706863, -0.696088,
		-0.945125, -0.298618, -0.132536,
		-0.301550, 0.641227, 0.705617,
		34.834229, 44.125687, 20.185387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579159, 43.991261, 19.331972>,  <35.045315, 43.676826, 19.691454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579159, 43.991261, 19.331972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654343, 44.239349, 19.636602>,  <34.699451, 44.388203, 19.819380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654343, 44.239349, 19.636602>,  <34.579159, 43.991261, 19.331972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654343, 44.239349, 19.636602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107565, 0.783731, -0.611716,
		-0.976269, 0.033057, 0.214022,
		0.187957, 0.620221, 0.761576,
		34.710732, 44.425415, 19.865076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030563, 44.473740, 19.502449>,  <34.579159, 43.991261, 19.331972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030563, 44.473740, 19.502449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367786, 44.660885, 19.608549>,  <34.570122, 44.773170, 19.672209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367786, 44.660885, 19.608549>,  <34.030563, 44.473740, 19.502449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367786, 44.660885, 19.608549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193360, 0.723893, -0.662262,
		-0.501857, 0.507039, 0.700751,
		0.843061, 0.467859, 0.265250,
		34.620705, 44.801243, 19.688124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000221, 45.158413, 19.183062>,  <34.030563, 44.473740, 19.502449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000221, 45.158413, 19.183062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331425, 45.194386, 19.404444>,  <34.530148, 45.215969, 19.537273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331425, 45.194386, 19.404444>,  <34.000221, 45.158413, 19.183062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331425, 45.194386, 19.404444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095189, 0.950184, -0.296798,
		-0.552576, 0.298434, 0.778201,
		0.828009, 0.089928, 0.553457,
		34.579826, 45.221363, 19.570480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056149, 45.634041, 19.867899>,  <34.000221, 45.158413, 19.183062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056149, 45.634041, 19.867899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409203, 45.610889, 19.681305>,  <34.621037, 45.597000, 19.569349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409203, 45.610889, 19.681305>,  <34.056149, 45.634041, 19.867899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409203, 45.610889, 19.681305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028561, 0.983954, -0.176121,
		0.469191, 0.168774, 0.866819,
		0.882634, -0.057877, -0.466483,
		34.673992, 45.593525, 19.541361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412689, 46.343708, 19.991497>,  <34.056149, 45.634041, 19.867899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412689, 46.343708, 19.991497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580196, 46.143169, 19.688633>,  <34.680702, 46.022846, 19.506914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580196, 46.143169, 19.688633>,  <34.412689, 46.343708, 19.991497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580196, 46.143169, 19.688633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112276, 0.855977, -0.504676,
		0.901126, 0.126331, 0.414744,
		0.418767, -0.501342, -0.757159,
		34.705826, 45.992767, 19.461485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178406, 47.057137, 20.408485>,  <34.412689, 46.343708, 19.991497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178406, 47.057137, 20.408485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367355, 46.771805, 20.615568>,  <34.480724, 46.600605, 20.739819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367355, 46.771805, 20.615568>,  <34.178406, 47.057137, 20.408485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367355, 46.771805, 20.615568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575686, -0.195074, -0.794060,
		0.667420, 0.673130, 0.318507,
		0.472373, -0.713332, 0.517707,
		34.509068, 46.557804, 20.770880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820000, 47.162834, 20.422586>,  <34.178406, 47.057137, 20.408485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820000, 47.162834, 20.422586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796322, 46.764786, 20.454142>,  <34.782116, 46.525955, 20.473076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796322, 46.764786, 20.454142>,  <34.820000, 47.162834, 20.422586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796322, 46.764786, 20.454142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562281, -0.098536, -0.821055,
		0.824825, -0.004242, 0.565372,
		-0.059192, -0.995124, 0.078890,
		34.778564, 46.466248, 20.477808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153324, 47.093849, 19.667751>,  <34.820000, 47.162834, 20.422586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153324, 47.093849, 19.667751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216858, 47.398197, 19.919418>,  <35.254978, 47.580807, 20.070419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216858, 47.398197, 19.919418>,  <35.153324, 47.093849, 19.667751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216858, 47.398197, 19.919418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483762, -0.615496, 0.622205,
		0.860666, 0.205540, -0.465840,
		0.158834, 0.760866, 0.629169,
		35.264507, 47.626457, 20.108170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839695, 46.968761, 19.959858>,  <35.153324, 47.093849, 19.667751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839695, 46.968761, 19.959858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646503, 47.189293, 20.231966>,  <35.530590, 47.321613, 20.395231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646503, 47.189293, 20.231966>,  <35.839695, 46.968761, 19.959858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646503, 47.189293, 20.231966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514765, -0.449694, 0.729927,
		0.708343, 0.702719, -0.066612,
		-0.482978, 0.551328, 0.680272,
		35.501610, 47.354691, 20.436049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301762, 47.331665, 20.454321>,  <35.839695, 46.968761, 19.959858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301762, 47.331665, 20.454321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942272, 47.236809, 20.601866>,  <35.726578, 47.179893, 20.690392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942272, 47.236809, 20.601866>,  <36.301762, 47.331665, 20.454321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942272, 47.236809, 20.601866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433871, -0.358804, 0.826447,
		-0.063636, 0.902787, 0.425355,
		-0.898725, -0.237141, 0.368861,
		35.672653, 47.165665, 20.712524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240936, 47.497761, 21.176281>,  <36.301762, 47.331665, 20.454321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240936, 47.497761, 21.176281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916912, 47.263222, 21.176529>,  <35.722500, 47.122498, 21.176678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916912, 47.263222, 21.176529>,  <36.240936, 47.497761, 21.176281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916912, 47.263222, 21.176529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262551, -0.361778, 0.894530,
		-0.524284, 0.724784, 0.447007,
		-0.810058, -0.586350, 0.000618,
		35.673893, 47.087318, 21.176714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887222, 47.575623, 21.903912>,  <36.240936, 47.497761, 21.176281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887222, 47.575623, 21.903912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812416, 47.228134, 21.720455>,  <35.767532, 47.019642, 21.610382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812416, 47.228134, 21.720455>,  <35.887222, 47.575623, 21.903912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812416, 47.228134, 21.720455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232393, -0.492747, 0.838567,
		-0.954474, 0.050238, 0.294034,
		-0.187013, -0.868721, -0.458639,
		35.756313, 46.967518, 21.582863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339584, 47.275249, 22.385118>,  <35.887222, 47.575623, 21.903912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339584, 47.275249, 22.385118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517239, 47.000668, 22.154806>,  <35.623833, 46.835918, 22.016619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517239, 47.000668, 22.154806>,  <35.339584, 47.275249, 22.385118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517239, 47.000668, 22.154806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123689, -0.589512, 0.798234,
		-0.887381, -0.425742, -0.176916,
		0.444136, -0.686455, -0.575781,
		35.650478, 46.794731, 21.982071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050663, 46.640884, 22.637506>,  <35.339584, 47.275249, 22.385118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050663, 46.640884, 22.637506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375950, 46.532597, 22.431444>,  <35.571121, 46.467625, 22.307806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375950, 46.532597, 22.431444>,  <35.050663, 46.640884, 22.637506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375950, 46.532597, 22.431444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139624, -0.768592, 0.624316,
		-0.564961, -0.579633, -0.587234,
		0.813218, -0.270722, -0.515155,
		35.619915, 46.451382, 22.276897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950886, 45.961269, 22.624449>,  <35.050663, 46.640884, 22.637506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950886, 45.961269, 22.624449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338940, 46.045887, 22.576960>,  <35.571770, 46.096657, 22.548466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338940, 46.045887, 22.576960>,  <34.950886, 45.961269, 22.624449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338940, 46.045887, 22.576960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233591, -0.682644, 0.692411,
		0.065429, -0.699462, -0.711668,
		0.970131, 0.211543, -0.118723,
		35.629978, 46.109348, 22.541342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186356, 45.326023, 22.634327>,  <34.950886, 45.961269, 22.624449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186356, 45.326023, 22.634327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494587, 45.569271, 22.710653>,  <35.679523, 45.715218, 22.756449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494587, 45.569271, 22.710653>,  <35.186356, 45.326023, 22.634327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494587, 45.569271, 22.710653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317409, -0.625774, 0.712502,
		0.552691, -0.488469, -0.675227,
		0.770575, 0.608116, 0.190815,
		35.725758, 45.751705, 22.767899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771805, 44.911015, 22.547453>,  <35.186356, 45.326023, 22.634327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771805, 44.911015, 22.547453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866745, 45.226212, 22.774691>,  <35.923710, 45.415329, 22.911034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866745, 45.226212, 22.774691>,  <35.771805, 44.911015, 22.547453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866745, 45.226212, 22.774691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291581, -0.615630, 0.732107,
		0.926631, -0.008122, -0.375885,
		0.237352, 0.787994, 0.568093,
		35.937950, 45.462608, 22.945118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394009, 44.745228, 22.883930>,  <35.771805, 44.911015, 22.547453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394009, 44.745228, 22.883930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249966, 45.051968, 23.096445>,  <36.163540, 45.236012, 23.223953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249966, 45.051968, 23.096445>,  <36.394009, 44.745228, 22.883930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249966, 45.051968, 23.096445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306976, -0.440377, 0.843703,
		0.880959, 0.466915, -0.076821,
		-0.360108, 0.766850, 0.531285,
		36.141933, 45.282024, 23.255831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921078, 44.994244, 23.321953>,  <36.394009, 44.745228, 22.883930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921078, 44.994244, 23.321953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585384, 45.129765, 23.492081>,  <36.383968, 45.211075, 23.594158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585384, 45.129765, 23.492081>,  <36.921078, 44.994244, 23.321953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585384, 45.129765, 23.492081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296504, -0.370537, 0.880220,
		0.455816, 0.864822, 0.210513,
		-0.839236, 0.338800, 0.425320,
		36.333614, 45.231403, 23.619677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069073, 45.089191, 23.989965>,  <36.921078, 44.994244, 23.321953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069073, 45.089191, 23.989965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669598, 45.095287, 24.009518>,  <36.429913, 45.098946, 24.021250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669598, 45.095287, 24.009518>,  <37.069073, 45.089191, 23.989965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669598, 45.095287, 24.009518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038702, -0.400369, 0.915536,
		0.033525, 0.916227, 0.399254,
		-0.998688, 0.015241, 0.048882,
		36.369991, 45.099861, 24.024183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871864, 45.288490, 24.710390>,  <37.069073, 45.089191, 23.989965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871864, 45.288490, 24.710390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538597, 45.103687, 24.588816>,  <36.338638, 44.992805, 24.515871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538597, 45.103687, 24.588816>,  <36.871864, 45.288490, 24.710390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538597, 45.103687, 24.588816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040324, -0.497375, 0.866598,
		-0.551548, 0.734278, 0.395767,
		-0.833168, -0.462011, -0.303935,
		36.288647, 44.965084, 24.497635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499214, 45.132378, 25.340912>,  <36.871864, 45.288490, 24.710390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499214, 45.132378, 25.340912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341751, 44.883381, 25.070345>,  <36.247272, 44.733982, 24.908005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341751, 44.883381, 25.070345>,  <36.499214, 45.132378, 25.340912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341751, 44.883381, 25.070345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150706, -0.682170, 0.715494,
		-0.906818, 0.383601, 0.174731,
		-0.393660, -0.622490, -0.676415,
		36.223652, 44.696632, 24.867420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831444, 44.851379, 25.688120>,  <36.499214, 45.132378, 25.340912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831444, 44.851379, 25.688120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916981, 44.594936, 25.393295>,  <35.968304, 44.441071, 25.216400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916981, 44.594936, 25.393295>,  <35.831444, 44.851379, 25.688120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916981, 44.594936, 25.393295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156699, -0.767255, 0.621904,
		-0.964218, -0.017492, -0.264531,
		0.213841, -0.641103, -0.737061,
		35.981133, 44.402607, 25.172176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371555, 44.327133, 25.716845>,  <35.831444, 44.851379, 25.688120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371555, 44.327133, 25.716845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669388, 44.141491, 25.524927>,  <35.848087, 44.030106, 25.409777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669388, 44.141491, 25.524927>,  <35.371555, 44.327133, 25.716845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669388, 44.141491, 25.524927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113967, -0.796587, 0.593684,
		-0.657731, -0.387365, -0.646017,
		0.744581, -0.464109, -0.479793,
		35.892761, 44.002258, 25.380989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159081, 43.652489, 25.559889>,  <35.371555, 44.327133, 25.716845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159081, 43.652489, 25.559889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558201, 43.627468, 25.551170>,  <35.797672, 43.612457, 25.545938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558201, 43.627468, 25.551170>,  <35.159081, 43.652489, 25.559889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558201, 43.627468, 25.551170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030238, -0.722894, 0.690297,
		-0.058934, -0.688122, -0.723197,
		0.997804, -0.062550, -0.021796,
		35.857540, 43.608704, 25.544632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415485, 43.024529, 25.331661>,  <35.159081, 43.652489, 25.559889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415485, 43.024529, 25.331661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698444, 43.178745, 25.568624>,  <35.868217, 43.271275, 25.710802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698444, 43.178745, 25.568624>,  <35.415485, 43.024529, 25.331661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698444, 43.178745, 25.568624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077715, -0.790630, 0.607343,
		0.702533, -0.475670, -0.529325,
		0.707395, 0.385542, 0.592410,
		35.910664, 43.294407, 25.746347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529133, 42.410553, 25.709047>,  <35.415485, 43.024529, 25.331661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529133, 42.410553, 25.709047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743866, 42.676727, 25.916513>,  <35.872707, 42.836430, 26.040993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743866, 42.676727, 25.916513>,  <35.529133, 42.410553, 25.709047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743866, 42.676727, 25.916513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013800, -0.607750, 0.794009,
		0.843576, -0.433407, -0.317077,
		0.536832, 0.665431, 0.518664,
		35.904915, 42.876358, 26.072113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233162, 42.076805, 25.970264>,  <35.529133, 42.410553, 25.709047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233162, 42.076805, 25.970264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138142, 42.382019, 26.210714>,  <36.081131, 42.565147, 26.354984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138142, 42.382019, 26.210714>,  <36.233162, 42.076805, 25.970264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138142, 42.382019, 26.210714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171796, -0.576083, 0.799134,
		0.956062, 0.293107, 0.005764,
		-0.237552, 0.763032, 0.601125,
		36.066875, 42.610928, 26.391052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647285, 41.937962, 26.535700>,  <36.233162, 42.076805, 25.970264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647285, 41.937962, 26.535700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388073, 42.206825, 26.678953>,  <36.232544, 42.368145, 26.764906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388073, 42.206825, 26.678953>,  <36.647285, 41.937962, 26.535700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388073, 42.206825, 26.678953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126483, -0.368720, 0.920895,
		0.751038, 0.642066, 0.153925,
		-0.648030, 0.672159, 0.358133,
		36.193665, 42.408474, 26.786392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942665, 42.169422, 27.127834>,  <36.647285, 41.937962, 26.535700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942665, 42.169422, 27.127834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549789, 42.240437, 27.152468>,  <36.314064, 42.283047, 27.167248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549789, 42.240437, 27.152468>,  <36.942665, 42.169422, 27.127834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549789, 42.240437, 27.152468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004293, -0.306440, 0.951880,
		0.187869, 0.935187, 0.300218,
		-0.982185, 0.177540, 0.061585,
		36.255135, 42.293697, 27.170942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773186, 42.534233, 27.791164>,  <36.942665, 42.169422, 27.127834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773186, 42.534233, 27.791164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410778, 42.394329, 27.695833>,  <36.193333, 42.310387, 27.638634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410778, 42.394329, 27.695833>,  <36.773186, 42.534233, 27.791164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410778, 42.394329, 27.695833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117583, -0.332935, 0.935590,
		-0.406578, 0.875685, 0.260519,
		-0.906018, -0.349758, -0.238330,
		36.138973, 42.289402, 27.624334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239662, 42.821285, 28.298494>,  <36.773186, 42.534233, 27.791164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239662, 42.821285, 28.298494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035393, 42.501148, 28.172852>,  <35.912830, 42.309067, 28.097466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035393, 42.501148, 28.172852>,  <36.239662, 42.821285, 28.298494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035393, 42.501148, 28.172852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064089, -0.328884, 0.942193,
		-0.857382, 0.501286, 0.116660,
		-0.510676, -0.800342, -0.314106,
		35.882191, 42.261047, 28.078619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649273, 42.834270, 28.640030>,  <36.239662, 42.821285, 28.298494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649273, 42.834270, 28.640030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687294, 42.449009, 28.539396>,  <35.710106, 42.217850, 28.479015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687294, 42.449009, 28.539396>,  <35.649273, 42.834270, 28.640030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687294, 42.449009, 28.539396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162672, -0.264361, 0.950605,
		-0.982091, -0.049435, -0.181808,
		0.095056, -0.963156, -0.251585,
		35.715813, 42.160061, 28.463921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132423, 42.550377, 28.958586>,  <35.649273, 42.834270, 28.640030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132423, 42.550377, 28.958586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386528, 42.252541, 28.876585>,  <35.538990, 42.073837, 28.827385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386528, 42.252541, 28.876585>,  <35.132423, 42.550377, 28.958586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386528, 42.252541, 28.876585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054637, -0.308110, 0.949780,
		-0.770362, -0.592158, -0.236413,
		0.635261, -0.744591, -0.205002,
		35.577106, 42.029163, 28.815084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788910, 41.981709, 29.286673>,  <35.132423, 42.550377, 28.958586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788910, 41.981709, 29.286673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163902, 41.865734, 29.209661>,  <35.388897, 41.796150, 29.163454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163902, 41.865734, 29.209661>,  <34.788910, 41.981709, 29.286673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163902, 41.865734, 29.209661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023945, -0.498137, 0.866767,
		-0.347216, -0.817187, -0.460051,
		0.937479, -0.289940, -0.192529,
		35.445145, 41.778751, 29.151903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823177, 41.112419, 29.289537>,  <34.788910, 41.981709, 29.286673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823177, 41.112419, 29.289537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183411, 41.267330, 29.368500>,  <35.399551, 41.360275, 29.415876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183411, 41.267330, 29.368500>,  <34.823177, 41.112419, 29.289537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183411, 41.267330, 29.368500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014013, -0.479764, 0.877286,
		0.434459, -0.787302, -0.437494,
		0.900583, 0.387275, 0.197406,
		35.453587, 41.383514, 29.427721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211918, 40.553745, 29.661978>,  <34.823177, 41.112419, 29.289537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211918, 40.553745, 29.661978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439793, 40.874153, 29.735538>,  <35.576519, 41.066399, 29.779675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439793, 40.874153, 29.735538>,  <35.211918, 40.553745, 29.661978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439793, 40.874153, 29.735538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270167, -0.393849, 0.878574,
		0.776187, -0.450828, -0.440781,
		0.569687, 0.801023, 0.183901,
		35.610699, 41.114460, 29.790709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756832, 40.274517, 30.015652>,  <35.211918, 40.553745, 29.661978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756832, 40.274517, 30.015652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797649, 40.657932, 30.122086>,  <35.822140, 40.887981, 30.185946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797649, 40.657932, 30.122086>,  <35.756832, 40.274517, 30.015652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797649, 40.657932, 30.122086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190737, -0.281370, 0.940452,
		0.976323, -0.045212, -0.211539,
		0.102041, 0.958534, 0.266084,
		35.828262, 40.945492, 30.201910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340626, 40.341820, 30.391987>,  <35.756832, 40.274517, 30.015652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340626, 40.341820, 30.391987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138363, 40.661137, 30.522860>,  <36.017006, 40.852726, 30.601383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138363, 40.661137, 30.522860>,  <36.340626, 40.341820, 30.391987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138363, 40.661137, 30.522860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400407, -0.118769, 0.908608,
		0.764190, 0.590449, -0.259584,
		-0.505656, 0.798288, 0.327182,
		35.986668, 40.900623, 30.621014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770966, 40.713425, 30.790096>,  <36.340626, 40.341820, 30.391987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770966, 40.713425, 30.790096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410885, 40.854187, 30.892696>,  <36.194836, 40.938644, 30.954256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410885, 40.854187, 30.892696>,  <36.770966, 40.713425, 30.790096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410885, 40.854187, 30.892696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330188, 0.167561, 0.928923,
		0.283917, 0.920914, -0.267036,
		-0.900204, 0.351910, 0.256502,
		36.140823, 40.959759, 30.969646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819374, 41.287354, 31.305313>,  <36.770966, 40.713425, 30.790096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819374, 41.287354, 31.305313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439663, 41.194843, 31.390535>,  <36.211838, 41.139339, 31.441669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439663, 41.194843, 31.390535>,  <36.819374, 41.287354, 31.305313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439663, 41.194843, 31.390535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248710, -0.137610, 0.958753,
		-0.192416, 0.963108, 0.188149,
		-0.949273, -0.231274, 0.213056,
		36.154881, 41.125462, 31.454453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739941, 41.657520, 31.967987>,  <36.819374, 41.287354, 31.305313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739941, 41.657520, 31.967987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450260, 41.383331, 31.998049>,  <36.276451, 41.218819, 32.016087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450260, 41.383331, 31.998049>,  <36.739941, 41.657520, 31.967987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450260, 41.383331, 31.998049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237980, -0.146150, 0.960211,
		-0.647219, 0.713275, 0.268973,
		-0.724205, -0.685477, 0.075154,
		36.232998, 41.177689, 32.020596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337605, 41.797421, 32.622314>,  <36.739941, 41.657520, 31.967987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337605, 41.797421, 32.622314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253014, 41.415226, 32.540016>,  <36.202259, 41.185909, 32.490639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253014, 41.415226, 32.540016>,  <36.337605, 41.797421, 32.622314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253014, 41.415226, 32.540016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226317, -0.252656, 0.940716,
		-0.950820, 0.152374, 0.269672,
		-0.211475, -0.955483, -0.205745,
		36.189571, 41.128582, 32.478294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873661, 41.516491, 33.136677>,  <36.337605, 41.797421, 32.622314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873661, 41.516491, 33.136677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052402, 41.189167, 32.992069>,  <36.159645, 40.992775, 32.905304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052402, 41.189167, 32.992069>,  <35.873661, 41.516491, 33.136677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052402, 41.189167, 32.992069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003237, -0.405589, 0.914050,
		-0.894603, -0.407272, -0.183886,
		0.446849, -0.818307, -0.361523,
		36.186459, 40.943676, 32.883614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504234, 40.922779, 33.396816>,  <35.873661, 41.516491, 33.136677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504234, 40.922779, 33.396816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864532, 40.781639, 33.295502>,  <36.080711, 40.696957, 33.234715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864532, 40.781639, 33.295502>,  <35.504234, 40.922779, 33.396816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864532, 40.781639, 33.295502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050579, -0.664385, 0.745677,
		-0.431391, -0.658854, -0.616289,
		0.900746, -0.352850, -0.253286,
		36.134758, 40.675785, 33.219517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493782, 40.096783, 33.382141>,  <35.504234, 40.922779, 33.396816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493782, 40.096783, 33.382141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874565, 40.212742, 33.421600>,  <36.103035, 40.282318, 33.445278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874565, 40.212742, 33.421600>,  <35.493782, 40.096783, 33.382141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874565, 40.212742, 33.421600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131412, -0.677732, 0.723471,
		0.276589, -0.675752, -0.683270,
		0.951961, 0.289894, 0.098652,
		36.160152, 40.299709, 33.451195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833233, 39.552513, 33.344002>,  <35.493782, 40.096783, 33.382141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833233, 39.552513, 33.344002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096169, 39.797108, 33.520180>,  <36.253929, 39.943863, 33.625889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096169, 39.797108, 33.520180>,  <35.833233, 39.552513, 33.344002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096169, 39.797108, 33.520180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253257, -0.729718, 0.635117,
		0.709768, -0.305939, -0.634532,
		0.657336, 0.611485, 0.440449,
		36.293369, 39.980553, 33.652313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444305, 39.148006, 33.325378>,  <35.833233, 39.552513, 33.344002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444305, 39.148006, 33.325378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508533, 39.437191, 33.594166>,  <36.547070, 39.610703, 33.755440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508533, 39.437191, 33.594166>,  <36.444305, 39.148006, 33.325378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508533, 39.437191, 33.594166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423738, -0.665363, 0.614604,
		0.891439, 0.186053, -0.413183,
		0.160568, 0.722964, 0.671968,
		36.556705, 39.654079, 33.795757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118862, 39.168949, 33.539875>,  <36.444305, 39.148006, 33.325378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118862, 39.168949, 33.539875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937519, 39.340038, 33.852673>,  <36.828712, 39.442692, 34.040352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937519, 39.340038, 33.852673>,  <37.118862, 39.168949, 33.539875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937519, 39.340038, 33.852673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437162, -0.657863, 0.613274,
		0.776758, 0.619893, 0.111265,
		-0.453362, 0.427724, 0.781994,
		36.801510, 39.468357, 34.087273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639214, 39.215847, 34.136055>,  <37.118862, 39.168949, 33.539875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639214, 39.215847, 34.136055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269360, 39.244415, 34.285698>,  <37.047447, 39.261559, 34.375484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269360, 39.244415, 34.285698>,  <37.639214, 39.215847, 34.136055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269360, 39.244415, 34.285698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169817, -0.801901, 0.572816,
		0.340905, 0.593173, 0.729335,
		-0.924633, 0.071423, 0.374103,
		36.991970, 39.265842, 34.397930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042816, 39.874569, 34.268169>,  <37.639214, 39.215847, 34.136055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042816, 39.874569, 34.268169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351772, 39.627369, 34.209522>,  <38.537144, 39.479050, 34.174335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351772, 39.627369, 34.209522>,  <38.042816, 39.874569, 34.268169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351772, 39.627369, 34.209522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215186, 0.471800, -0.855044,
		0.597590, 0.628875, 0.497396,
		0.772387, -0.617999, -0.146618,
		38.583488, 39.441971, 34.165539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659252, 40.157753, 34.130753>,  <38.042816, 39.874569, 34.268169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659252, 40.157753, 34.130753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667973, 39.810341, 33.932690>,  <38.673203, 39.601894, 33.813854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667973, 39.810341, 33.932690>,  <38.659252, 40.157753, 34.130753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667973, 39.810341, 33.932690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235435, 0.485801, -0.841765,
		0.971646, -0.098227, 0.215073,
		0.021798, -0.868533, -0.495152,
		38.674511, 39.549782, 33.784145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234451, 40.247490, 33.673496>,  <38.659252, 40.157753, 34.130753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234451, 40.247490, 33.673496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039963, 39.939060, 33.509045>,  <38.923267, 39.754002, 33.410374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039963, 39.939060, 33.509045>,  <39.234451, 40.247490, 33.673496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039963, 39.939060, 33.509045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192390, 0.364478, -0.911121,
		0.852392, -0.522105, -0.028870,
		-0.486223, -0.771079, -0.411127,
		38.894096, 39.707737, 33.385708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710354, 39.950405, 33.242592>,  <39.234451, 40.247490, 33.673496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710354, 39.950405, 33.242592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356293, 39.829758, 33.100872>,  <39.143856, 39.757370, 33.015839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356293, 39.829758, 33.100872>,  <39.710354, 39.950405, 33.242592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356293, 39.829758, 33.100872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284427, 0.251885, -0.925016,
		0.368246, -0.919554, -0.137168,
		-0.885153, -0.301619, -0.354302,
		39.090748, 39.739273, 32.994583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822899, 39.549961, 32.640491>,  <39.710354, 39.950405, 33.242592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822899, 39.549961, 32.640491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444569, 39.673763, 32.601257>,  <39.217571, 39.748043, 32.577717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444569, 39.673763, 32.601257>,  <39.822899, 39.549961, 32.640491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444569, 39.673763, 32.601257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162960, 0.191260, -0.967917,
		-0.280816, -0.931464, -0.231336,
		-0.945826, 0.309505, -0.098083,
		39.160820, 39.766613, 32.571831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645596, 39.272518, 31.981567>,  <39.822899, 39.549961, 32.640491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645596, 39.272518, 31.981567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397869, 39.577919, 32.054794>,  <39.249233, 39.761162, 32.098728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397869, 39.577919, 32.054794>,  <39.645596, 39.272518, 31.981567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397869, 39.577919, 32.054794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109207, 0.314662, -0.942901,
		-0.777513, -0.563957, -0.278254,
		-0.619312, 0.763505, 0.183065,
		39.212074, 39.806969, 32.109715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361401, 39.372616, 31.344435>,  <39.645596, 39.272518, 31.981567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361401, 39.372616, 31.344435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266186, 39.705948, 31.543993>,  <39.209057, 39.905949, 31.663729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266186, 39.705948, 31.543993>,  <39.361401, 39.372616, 31.344435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266186, 39.705948, 31.543993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090859, 0.492303, -0.865669,
		-0.966997, -0.251391, -0.041471,
		-0.238038, 0.833331, 0.498896,
		39.194775, 39.955948, 31.693663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768669, 39.530308, 30.962971>,  <39.361401, 39.372616, 31.344435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768669, 39.530308, 30.962971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893211, 39.870712, 31.132126>,  <38.967937, 40.074955, 31.233620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893211, 39.870712, 31.132126>,  <38.768669, 39.530308, 30.962971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893211, 39.870712, 31.132126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166447, 0.486969, -0.857413,
		-0.935602, 0.196575, 0.293271,
		0.311360, 0.851011, 0.422890,
		38.986618, 40.126015, 31.258993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263016, 39.992413, 30.762175>,  <38.768669, 39.530308, 30.962971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263016, 39.992413, 30.762175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569672, 40.221607, 30.878073>,  <38.753666, 40.359123, 30.947611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569672, 40.221607, 30.878073>,  <38.263016, 39.992413, 30.762175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569672, 40.221607, 30.878073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081277, 0.534229, -0.841424,
		-0.636917, 0.621516, 0.456130,
		0.766636, 0.572990, 0.289744,
		38.799664, 40.393505, 30.964996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109173, 40.666412, 30.632412>,  <38.263016, 39.992413, 30.762175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109173, 40.666412, 30.632412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508167, 40.686146, 30.652796>,  <38.747562, 40.697987, 30.665026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508167, 40.686146, 30.652796>,  <38.109173, 40.666412, 30.632412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508167, 40.686146, 30.652796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006915, 0.647453, -0.762074,
		-0.070587, 0.760507, 0.645482,
		0.997482, 0.049329, 0.050961,
		38.807411, 40.700943, 30.668083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237091, 41.289009, 30.218044>,  <38.109173, 40.666412, 30.632412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237091, 41.289009, 30.218044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608231, 41.143795, 30.252226>,  <38.830914, 41.056667, 30.272736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608231, 41.143795, 30.252226>,  <38.237091, 41.289009, 30.218044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608231, 41.143795, 30.252226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283306, 0.537058, -0.794548,
		0.242551, 0.761431, 0.601158,
		0.927851, -0.363030, 0.085454,
		38.886585, 41.034885, 30.277863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755737, 41.887169, 30.246195>,  <38.237091, 41.289009, 30.218044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755737, 41.887169, 30.246195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922318, 41.554283, 30.099781>,  <39.022266, 41.354549, 30.011932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922318, 41.554283, 30.099781>,  <38.755737, 41.887169, 30.246195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922318, 41.554283, 30.099781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278861, 0.500127, -0.819824,
		0.865335, 0.239344, 0.440351,
		0.416451, -0.832219, -0.366034,
		39.047253, 41.304619, 29.989971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444405, 42.008083, 30.028971>,  <38.755737, 41.887169, 30.246195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444405, 42.008083, 30.028971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335178, 41.679371, 29.828928>,  <39.269642, 41.482143, 29.708902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335178, 41.679371, 29.828928>,  <39.444405, 42.008083, 30.028971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335178, 41.679371, 29.828928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085873, 0.496964, -0.863511,
		0.958155, -0.278740, -0.065134,
		-0.273065, -0.821785, -0.500105,
		39.253258, 41.432835, 29.678896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903996, 41.927834, 29.466742>,  <39.444405, 42.008083, 30.028971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903996, 41.927834, 29.466742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611755, 41.675781, 29.361544>,  <39.436413, 41.524551, 29.298426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611755, 41.675781, 29.361544>,  <39.903996, 41.927834, 29.466742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611755, 41.675781, 29.361544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012946, 0.372313, -0.928017,
		0.682687, -0.681410, -0.263853,
		-0.730596, -0.630129, -0.262995,
		39.392578, 41.486744, 29.282646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149536, 41.761326, 28.830126>,  <39.903996, 41.927834, 29.466742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149536, 41.761326, 28.830126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759674, 41.672440, 28.840437>,  <39.525757, 41.619106, 28.846624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759674, 41.672440, 28.840437>,  <40.149536, 41.761326, 28.830126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759674, 41.672440, 28.840437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043864, 0.076843, -0.996078,
		0.219361, -0.971965, -0.084642,
		-0.974657, -0.222214, 0.025778,
		39.467278, 41.605774, 28.848171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147064, 41.348507, 28.261606>,  <40.149536, 41.761326, 28.830126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147064, 41.348507, 28.261606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776997, 41.464317, 28.359783>,  <39.554958, 41.533802, 28.418690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776997, 41.464317, 28.359783>,  <40.147064, 41.348507, 28.261606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776997, 41.464317, 28.359783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147059, 0.322723, -0.934999,
		-0.349914, -0.901125, -0.255996,
		-0.925167, 0.289523, 0.245444,
		39.499447, 41.551174, 28.433416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793144, 41.178337, 27.767231>,  <40.147064, 41.348507, 28.261606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793144, 41.178337, 27.767231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571354, 41.466038, 27.934673>,  <39.438282, 41.638660, 28.035139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571354, 41.466038, 27.934673>,  <39.793144, 41.178337, 27.767231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571354, 41.466038, 27.934673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254222, 0.332575, -0.908166,
		-0.792421, -0.609973, -0.001554,
		-0.554473, 0.719254, 0.418608,
		39.405010, 41.681812, 28.060255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201557, 41.243244, 27.308989>,  <39.793144, 41.178337, 27.767231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201557, 41.243244, 27.308989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204529, 41.595860, 27.497810>,  <39.206310, 41.807430, 27.611103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204529, 41.595860, 27.497810>,  <39.201557, 41.243244, 27.308989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204529, 41.595860, 27.497810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376529, 0.439790, -0.815359,
		-0.926375, -0.171684, 0.335192,
		0.007430, 0.881538, 0.472055,
		39.206757, 41.860321, 27.639427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511501, 41.537991, 27.243782>,  <39.201557, 41.243244, 27.308989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511501, 41.537991, 27.243782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785099, 41.824383, 27.299669>,  <38.949257, 41.996220, 27.333202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785099, 41.824383, 27.299669>,  <38.511501, 41.537991, 27.243782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785099, 41.824383, 27.299669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485964, 0.590064, -0.644720,
		-0.544052, 0.373085, 0.751542,
		0.683993, 0.715984, 0.139720,
		38.990295, 42.039177, 27.341585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078110, 42.112881, 27.077894>,  <38.511501, 41.537991, 27.243782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078110, 42.112881, 27.077894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444702, 42.272743, 27.070482>,  <38.664658, 42.368660, 27.066034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444702, 42.272743, 27.070482>,  <38.078110, 42.112881, 27.077894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444702, 42.272743, 27.070482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191824, 0.398294, -0.896976,
		-0.351099, 0.825614, 0.441691,
		0.916479, 0.399654, -0.018532,
		38.719646, 42.392639, 27.064922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055157, 42.795872, 26.953485>,  <38.078110, 42.112881, 27.077894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055157, 42.795872, 26.953485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428402, 42.703247, 26.843449>,  <38.652351, 42.647671, 26.777426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428402, 42.703247, 26.843449>,  <38.055157, 42.795872, 26.953485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428402, 42.703247, 26.843449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124001, 0.510884, -0.850659,
		0.337521, 0.827875, 0.447999,
		0.933115, -0.231563, -0.275092,
		38.708336, 42.633778, 26.760921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304852, 43.415043, 26.639221>,  <38.055157, 42.795872, 26.953485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304852, 43.415043, 26.639221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560268, 43.136555, 26.508049>,  <38.713520, 42.969460, 26.429346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560268, 43.136555, 26.508049>,  <38.304852, 43.415043, 26.639221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560268, 43.136555, 26.508049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074595, 0.368114, -0.926784,
		0.765964, 0.616251, 0.183121,
		0.638541, -0.696223, -0.327931,
		38.751831, 42.927689, 26.409670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696648, 43.800705, 26.200470>,  <38.304852, 43.415043, 26.639221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696648, 43.800705, 26.200470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738575, 43.411648, 26.117540>,  <38.763733, 43.178215, 26.067783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738575, 43.411648, 26.117540>,  <38.696648, 43.800705, 26.200470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738575, 43.411648, 26.117540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284933, 0.170357, -0.943287,
		0.952799, 0.157951, -0.259280,
		0.104823, -0.972641, -0.207322,
		38.770023, 43.119854, 26.055344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080353, 43.804958, 25.576189>,  <38.696648, 43.800705, 26.200470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080353, 43.804958, 25.576189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896297, 43.449818, 25.576197>,  <38.785866, 43.236732, 25.576200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896297, 43.449818, 25.576197>,  <39.080353, 43.804958, 25.576189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896297, 43.449818, 25.576197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285008, 0.147690, -0.947079,
		0.840858, -0.435793, -0.321001,
		-0.460139, -0.887847, 0.000018,
		38.758255, 43.183464, 25.576202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234936, 43.559647, 24.873348>,  <39.080353, 43.804958, 25.576189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234936, 43.559647, 24.873348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942875, 43.323620, 25.011160>,  <38.767639, 43.182003, 25.093847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942875, 43.323620, 25.011160>,  <39.234936, 43.559647, 24.873348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942875, 43.323620, 25.011160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382887, -0.064292, -0.921555,
		0.565927, -0.804793, -0.178985,
		-0.730153, -0.590064, 0.344529,
		38.723827, 43.146603, 25.114519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290031, 42.862698, 24.591356>,  <39.234936, 43.559647, 24.873348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290031, 42.862698, 24.591356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924725, 42.996666, 24.684114>,  <38.705540, 43.077045, 24.739769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924725, 42.996666, 24.684114>,  <39.290031, 42.862698, 24.591356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924725, 42.996666, 24.684114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293445, -0.146036, -0.944756,
		-0.282556, -0.930860, 0.231651,
		-0.913265, 0.334923, 0.231893,
		38.650745, 43.097141, 24.753683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911171, 42.313789, 24.262486>,  <39.290031, 42.862698, 24.591356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911171, 42.313789, 24.262486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657452, 42.616455, 24.325880>,  <38.505219, 42.798054, 24.363916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657452, 42.616455, 24.325880>,  <38.911171, 42.313789, 24.262486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657452, 42.616455, 24.325880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355644, -0.103574, -0.928865,
		-0.686428, -0.645542, 0.334802,
		-0.634298, 0.756668, 0.158487,
		38.467163, 42.843456, 24.373426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164871, 42.092407, 23.976269>,  <38.911171, 42.313789, 24.262486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164871, 42.092407, 23.976269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165539, 42.491638, 24.001026>,  <38.165939, 42.731178, 24.015881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165539, 42.491638, 24.001026>,  <38.164871, 42.092407, 23.976269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165539, 42.491638, 24.001026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288279, 0.059745, -0.955681,
		-0.957545, -0.016246, 0.287825,
		0.001671, 0.998081, 0.061892,
		38.166039, 42.791061, 24.019594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525227, 42.376682, 23.699881>,  <38.164871, 42.092407, 23.976269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525227, 42.376682, 23.699881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775810, 42.688160, 23.686123>,  <37.926159, 42.875046, 23.677868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775810, 42.688160, 23.686123>,  <37.525227, 42.376682, 23.699881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775810, 42.688160, 23.686123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316512, 0.213812, -0.924178,
		-0.712301, 0.589843, 0.380411,
		0.626456, 0.778697, -0.034394,
		37.963749, 42.921768, 23.675804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110504, 42.986019, 23.355257>,  <37.525227, 42.376682, 23.699881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110504, 42.986019, 23.355257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496201, 43.091259, 23.342449>,  <37.727619, 43.154404, 23.334764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496201, 43.091259, 23.342449>,  <37.110504, 42.986019, 23.355257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496201, 43.091259, 23.342449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136435, 0.389152, -0.911014,
		-0.227225, 0.882803, 0.411131,
		0.964238, 0.263098, -0.032020,
		37.785473, 43.170189, 23.332844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094101, 43.662594, 23.003784>,  <37.110504, 42.986019, 23.355257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094101, 43.662594, 23.003784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478630, 43.558002, 22.969172>,  <37.709347, 43.495247, 22.948404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478630, 43.558002, 22.969172>,  <37.094101, 43.662594, 23.003784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478630, 43.558002, 22.969172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078696, 0.561838, -0.823496,
		0.263944, 0.784836, 0.560685,
		0.961322, -0.261480, -0.086530,
		37.767025, 43.479557, 22.943213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380184, 44.171028, 22.662964>,  <37.094101, 43.662594, 23.003784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380184, 44.171028, 22.662964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628960, 43.865002, 22.596199>,  <37.778225, 43.681385, 22.556139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628960, 43.865002, 22.596199>,  <37.380184, 44.171028, 22.662964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628960, 43.865002, 22.596199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344782, 0.458925, -0.818848,
		0.703078, 0.451724, 0.549206,
		0.621938, -0.765070, -0.166914,
		37.815540, 43.635479, 22.546125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950882, 44.480423, 22.424894>,  <37.380184, 44.171028, 22.662964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950882, 44.480423, 22.424894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999313, 44.101471, 22.306358>,  <38.028370, 43.874100, 22.235237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999313, 44.101471, 22.306358>,  <37.950882, 44.480423, 22.424894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999313, 44.101471, 22.306358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374111, 0.320071, -0.870399,
		0.919446, -0.005479, 0.393178,
		0.121076, -0.947378, -0.296338,
		38.035637, 43.817257, 22.217457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593498, 44.487713, 22.137487>,  <37.950882, 44.480423, 22.424894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593498, 44.487713, 22.137487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420383, 44.158844, 21.989576>,  <38.316517, 43.961521, 21.900829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420383, 44.158844, 21.989576>,  <38.593498, 44.487713, 22.137487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420383, 44.158844, 21.989576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431470, 0.171238, -0.885726,
		0.791538, -0.542874, 0.280633,
		-0.432782, -0.822171, -0.369776,
		38.290550, 43.912193, 21.878643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061104, 44.175453, 21.764172>,  <38.593498, 44.487713, 22.137487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061104, 44.175453, 21.764172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716644, 44.040947, 21.611670>,  <38.509968, 43.960243, 21.520168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716644, 44.040947, 21.611670>,  <39.061104, 44.175453, 21.764172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716644, 44.040947, 21.611670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349803, 0.152228, -0.924372,
		0.368874, -0.929382, -0.013462,
		-0.861144, -0.336268, -0.381254,
		38.458302, 43.940067, 21.497293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294395, 43.744869, 21.248991>,  <39.061104, 44.175453, 21.764172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294395, 43.744869, 21.248991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914703, 43.818775, 21.147150>,  <38.686890, 43.863121, 21.086046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914703, 43.818775, 21.147150>,  <39.294395, 43.744869, 21.248991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914703, 43.818775, 21.147150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277240, 0.108886, -0.954611,
		-0.148659, -0.976732, -0.154583,
		-0.949231, 0.184768, -0.254602,
		38.629932, 43.874207, 21.070770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266972, 43.451313, 20.593271>,  <39.294395, 43.744869, 21.248991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266972, 43.451313, 20.593271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971390, 43.718109, 20.631353>,  <38.794041, 43.878189, 20.654203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971390, 43.718109, 20.631353>,  <39.266972, 43.451313, 20.593271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971390, 43.718109, 20.631353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067824, 0.214229, -0.974426,
		-0.670333, -0.713599, -0.203543,
		-0.738954, 0.666995, 0.095206,
		38.749702, 43.918209, 20.659916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907097, 43.475891, 19.941360>,  <39.266972, 43.451313, 20.593271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907097, 43.475891, 19.941360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137783, 43.242260, 19.712885>,  <39.276196, 43.102081, 19.575800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137783, 43.242260, 19.712885>,  <38.907097, 43.475891, 19.941360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137783, 43.242260, 19.712885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173252, -0.595829, 0.784202,
		-0.798361, -0.551222, -0.242432,
		0.576717, -0.584074, -0.571187,
		39.310799, 43.067039, 19.541529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667831, 42.874626, 20.107761>,  <38.907097, 43.475891, 19.941360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667831, 42.874626, 20.107761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038933, 42.835087, 19.963816>,  <39.261593, 42.811363, 19.877449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038933, 42.835087, 19.963816>,  <38.667831, 42.874626, 20.107761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038933, 42.835087, 19.963816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230433, -0.606764, 0.760748,
		-0.293553, -0.788711, -0.540149,
		0.927754, -0.098851, -0.359862,
		39.317261, 42.805431, 19.855856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783085, 42.354652, 20.375513>,  <38.667831, 42.874626, 20.107761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783085, 42.354652, 20.375513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152153, 42.447811, 20.252588>,  <39.373592, 42.503708, 20.178833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152153, 42.447811, 20.252588>,  <38.783085, 42.354652, 20.375513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152153, 42.447811, 20.252588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383265, -0.466507, 0.797169,
		0.042298, -0.853305, -0.519694,
		0.922669, 0.232899, -0.307309,
		39.428955, 42.517681, 20.160395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225853, 41.702412, 20.351309>,  <38.783085, 42.354652, 20.375513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225853, 41.702412, 20.351309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494484, 41.998573, 20.362560>,  <39.655663, 42.176270, 20.369310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494484, 41.998573, 20.362560>,  <39.225853, 41.702412, 20.351309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494484, 41.998573, 20.362560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498049, -0.479207, 0.722709,
		0.548574, -0.471344, -0.690580,
		0.671575, 0.740402, 0.028128,
		39.695957, 42.220695, 20.370998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999180, 41.402832, 20.420300>,  <39.225853, 41.702412, 20.351309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999180, 41.402832, 20.420300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005596, 41.781803, 20.548126>,  <40.009445, 42.009186, 20.624823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005596, 41.781803, 20.548126>,  <39.999180, 41.402832, 20.420300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005596, 41.781803, 20.548126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457961, -0.291074, 0.839969,
		0.888828, 0.132871, -0.438555,
		0.016044, 0.947429, 0.319564,
		40.010410, 42.066032, 20.643995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711010, 41.503189, 20.677046>,  <39.999180, 41.402832, 20.420300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711010, 41.503189, 20.677046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490337, 41.798065, 20.833097>,  <40.357933, 41.974991, 20.926729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490337, 41.798065, 20.833097>,  <40.711010, 41.503189, 20.677046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490337, 41.798065, 20.833097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474516, -0.107258, 0.873688,
		0.685915, 0.667123, -0.290633,
		-0.551684, 0.737186, 0.390131,
		40.324833, 42.019222, 20.950136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238640, 41.947800, 21.006130>,  <40.711010, 41.503189, 20.677046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238640, 41.947800, 21.006130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892830, 42.015141, 21.195553>,  <40.685345, 42.055546, 21.309206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892830, 42.015141, 21.195553>,  <41.238640, 41.947800, 21.006130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892830, 42.015141, 21.195553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441481, -0.195918, 0.875620,
		0.240190, 0.966061, 0.095051,
		-0.864525, 0.168352, 0.473555,
		40.633472, 42.065647, 21.337620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336418, 42.391613, 21.664183>,  <41.238640, 41.947800, 21.006130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336418, 42.391613, 21.664183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982212, 42.221596, 21.739229>,  <40.769688, 42.119587, 21.784256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982212, 42.221596, 21.739229>,  <41.336418, 42.391613, 21.664183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982212, 42.221596, 21.739229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278993, -0.163565, 0.946261,
		-0.371511, 0.890274, 0.263423,
		-0.885518, -0.425040, 0.187614,
		40.716557, 42.094086, 21.795513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149929, 42.755787, 22.193094>,  <41.336418, 42.391613, 21.664183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149929, 42.755787, 22.193094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937756, 42.416698, 22.193607>,  <40.810452, 42.213245, 22.193916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937756, 42.416698, 22.193607>,  <41.149929, 42.755787, 22.193094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937756, 42.416698, 22.193607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145611, -0.089618, 0.985275,
		-0.835127, 0.522810, 0.170975,
		-0.530434, -0.847726, 0.001284,
		40.778625, 42.162380, 22.193993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761124, 42.836491, 22.829420>,  <41.149929, 42.755787, 22.193094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761124, 42.836491, 22.829420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749954, 42.457664, 22.701492>,  <40.743252, 42.230370, 22.624737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749954, 42.457664, 22.701492>,  <40.761124, 42.836491, 22.829420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749954, 42.457664, 22.701492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017231, -0.319438, 0.947450,
		-0.999461, 0.031972, -0.007398,
		-0.027928, -0.947067, -0.319817,
		40.741577, 42.173546, 22.605547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120663, 42.576859, 23.123680>,  <40.761124, 42.836491, 22.829420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120663, 42.576859, 23.123680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337894, 42.253193, 23.033951>,  <40.468235, 42.058994, 22.980114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337894, 42.253193, 23.033951>,  <40.120663, 42.576859, 23.123680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337894, 42.253193, 23.033951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230229, -0.400408, 0.886943,
		-0.807502, -0.430034, -0.403746,
		0.543079, -0.809162, -0.224324,
		40.500816, 42.010445, 22.966654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704891, 41.988087, 23.326260>,  <40.120663, 42.576859, 23.123680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704891, 41.988087, 23.326260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073971, 41.837231, 23.294294>,  <40.295418, 41.746716, 23.275116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073971, 41.837231, 23.294294>,  <39.704891, 41.988087, 23.326260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073971, 41.837231, 23.294294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111614, -0.459746, 0.881009,
		-0.369001, -0.803990, -0.466303,
		0.922703, -0.377139, -0.079911,
		40.350780, 41.724087, 23.270321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606575, 41.370037, 23.555424>,  <39.704891, 41.988087, 23.326260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606575, 41.370037, 23.555424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993961, 41.444313, 23.621870>,  <40.226395, 41.488880, 23.661737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993961, 41.444313, 23.621870>,  <39.606575, 41.370037, 23.555424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993961, 41.444313, 23.621870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047794, -0.515889, 0.855321,
		0.244522, -0.836288, -0.490745,
		0.968465, 0.185690, 0.166115,
		40.284500, 41.500019, 23.671705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895260, 40.703049, 23.917654>,  <39.606575, 41.370037, 23.555424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895260, 40.703049, 23.917654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189995, 40.966534, 23.978535>,  <40.366837, 41.124626, 24.015062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189995, 40.966534, 23.978535>,  <39.895260, 40.703049, 23.917654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189995, 40.966534, 23.978535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126245, -0.355227, 0.926216,
		0.664180, -0.663254, -0.344903,
		0.736836, 0.658717, 0.152202,
		40.411045, 41.164150, 24.024195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441277, 40.300854, 24.263447>,  <39.895260, 40.703049, 23.917654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441277, 40.300854, 24.263447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508835, 40.689476, 24.329853>,  <40.549370, 40.922649, 24.369698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508835, 40.689476, 24.329853>,  <40.441277, 40.300854, 24.263447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508835, 40.689476, 24.329853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296453, -0.210708, 0.931514,
		0.939995, -0.108111, -0.323607,
		0.168894, 0.971552, 0.166015,
		40.559502, 40.980942, 24.379658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173912, 40.360455, 24.478348>,  <40.441277, 40.300854, 24.263447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173912, 40.360455, 24.478348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964687, 40.671028, 24.618952>,  <40.839153, 40.857372, 24.703314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964687, 40.671028, 24.618952>,  <41.173912, 40.360455, 24.478348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964687, 40.671028, 24.618952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241820, -0.260284, 0.934759,
		0.817272, 0.573936, -0.051614,
		-0.523058, 0.776434, 0.351512,
		40.807770, 40.903957, 24.724405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561035, 40.567207, 25.052721>,  <41.173912, 40.360455, 24.478348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561035, 40.567207, 25.052721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209824, 40.750175, 25.109043>,  <40.999096, 40.859959, 25.142838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209824, 40.750175, 25.109043>,  <41.561035, 40.567207, 25.052721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209824, 40.750175, 25.109043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155408, -0.005775, 0.987833,
		0.452671, 0.889230, -0.066017,
		-0.878030, 0.457423, 0.140808,
		40.946415, 40.887402, 25.151285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654514, 40.976761, 25.603252>,  <41.561035, 40.567207, 25.052721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654514, 40.976761, 25.603252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255455, 40.962368, 25.579912>,  <41.016018, 40.953732, 25.565908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255455, 40.962368, 25.579912>,  <41.654514, 40.976761, 25.603252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255455, 40.962368, 25.579912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049302, -0.214825, 0.975407,
		-0.047636, 0.975989, 0.212545,
		-0.997647, -0.035985, -0.058352,
		40.956161, 40.951572, 25.562407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418243, 41.415539, 26.157173>,  <41.654514, 40.976761, 25.603252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418243, 41.415539, 26.157173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156780, 41.131302, 26.053028>,  <40.999901, 40.960762, 25.990541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156780, 41.131302, 26.053028>,  <41.418243, 41.415539, 26.157173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156780, 41.131302, 26.053028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202214, -0.167529, 0.964906,
		-0.729270, 0.683371, -0.034184,
		-0.653662, -0.710589, -0.260361,
		40.960682, 40.918125, 25.974920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938160, 41.357670, 26.720701>,  <41.418243, 41.415539, 26.157173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938160, 41.357670, 26.720701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827435, 41.023224, 26.531267>,  <40.760998, 40.822556, 26.417606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827435, 41.023224, 26.531267>,  <40.938160, 41.357670, 26.720701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827435, 41.023224, 26.531267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195382, -0.433577, 0.879680,
		-0.940851, 0.336037, -0.043343,
		-0.276813, -0.836116, -0.473586,
		40.744392, 40.772388, 26.389191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330238, 41.189964, 26.956394>,  <40.938160, 41.357670, 26.720701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330238, 41.189964, 26.956394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479549, 40.844620, 26.820581>,  <40.569134, 40.637413, 26.739094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479549, 40.844620, 26.820581>,  <40.330238, 41.189964, 26.956394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479549, 40.844620, 26.820581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318538, -0.463008, 0.827138,
		-0.871320, -0.200596, -0.447842,
		0.373275, -0.863357, -0.339531,
		40.591534, 40.585613, 26.718721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797543, 40.764057, 27.116806>,  <40.330238, 41.189964, 26.956394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797543, 40.764057, 27.116806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145477, 40.569263, 27.085222>,  <40.354237, 40.452389, 27.066271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145477, 40.569263, 27.085222>,  <39.797543, 40.764057, 27.116806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145477, 40.569263, 27.085222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154793, -0.421378, 0.893577,
		-0.468430, -0.765041, -0.441911,
		0.869835, -0.486983, -0.078963,
		40.406429, 40.423168, 27.061533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684483, 40.091545, 27.069195>,  <39.797543, 40.764057, 27.116806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684483, 40.091545, 27.069195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054749, 40.116199, 27.218508>,  <40.276909, 40.130993, 27.308096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054749, 40.116199, 27.218508>,  <39.684483, 40.091545, 27.069195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054749, 40.116199, 27.218508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322689, -0.386460, 0.864014,
		0.197511, -0.920244, -0.337845,
		0.925668, 0.061633, 0.373283,
		40.332447, 40.134689, 27.330492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827492, 39.508476, 27.489389>,  <39.684483, 40.091545, 27.069195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827492, 39.508476, 27.489389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106373, 39.753231, 27.638788>,  <40.273701, 39.900085, 27.728428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106373, 39.753231, 27.638788>,  <39.827492, 39.508476, 27.489389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106373, 39.753231, 27.638788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095594, -0.436999, 0.894368,
		0.710472, -0.659260, -0.246183,
		0.697203, 0.611890, 0.373497,
		40.315533, 39.936798, 27.750837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189587, 39.109558, 27.917501>,  <39.827492, 39.508476, 27.489389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189587, 39.109558, 27.917501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307541, 39.470161, 28.044197>,  <40.378315, 39.686523, 28.120214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307541, 39.470161, 28.044197>,  <40.189587, 39.109558, 27.917501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307541, 39.470161, 28.044197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064288, -0.349444, 0.934749,
		0.953368, -0.255281, -0.161002,
		0.294885, 0.901510, 0.316738,
		40.396008, 39.740616, 28.139219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869507, 38.983227, 28.192270>,  <40.189587, 39.109558, 27.917501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869507, 38.983227, 28.192270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714951, 39.323570, 28.334671>,  <40.622219, 39.527779, 28.420111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714951, 39.323570, 28.334671>,  <40.869507, 38.983227, 28.192270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714951, 39.323570, 28.334671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112885, -0.339449, 0.933826,
		0.915402, 0.401006, 0.035110,
		-0.386388, 0.850863, 0.356000,
		40.599033, 39.578831, 28.441471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362827, 39.279854, 28.703981>,  <40.869507, 38.983227, 28.192270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362827, 39.279854, 28.703981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017666, 39.458611, 28.798372>,  <40.810570, 39.565865, 28.855007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017666, 39.458611, 28.798372>,  <41.362827, 39.279854, 28.703981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017666, 39.458611, 28.798372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218919, -0.090313, 0.971554,
		0.455493, 0.890017, -0.019902,
		-0.862902, 0.446893, 0.235978,
		40.758797, 39.592678, 28.869165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584328, 39.626621, 29.287029>,  <41.362827, 39.279854, 28.703981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584328, 39.626621, 29.287029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186558, 39.587063, 29.301645>,  <40.947895, 39.563328, 29.310415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186558, 39.587063, 29.301645>,  <41.584328, 39.626621, 29.287029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186558, 39.587063, 29.301645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066417, -0.318463, 0.945606,
		-0.081884, 0.942762, 0.323256,
		-0.994426, -0.098899, 0.036538,
		40.888229, 39.557392, 29.312607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400803, 39.983330, 29.932219>,  <41.584328, 39.626621, 29.287029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400803, 39.983330, 29.932219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117050, 39.724129, 29.821316>,  <40.946800, 39.568607, 29.754774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117050, 39.724129, 29.821316>,  <41.400803, 39.983330, 29.932219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117050, 39.724129, 29.821316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017335, -0.409291, 0.912239,
		-0.704616, 0.642315, 0.301575,
		-0.709377, -0.648006, -0.277259,
		40.904236, 39.529728, 29.738138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826221, 40.097664, 30.366734>,  <41.400803, 39.983330, 29.932219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826221, 40.097664, 30.366734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789806, 39.724865, 30.226398>,  <40.767956, 39.501186, 30.142197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789806, 39.724865, 30.226398>,  <40.826221, 40.097664, 30.366734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789806, 39.724865, 30.226398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070234, -0.345416, 0.935818,
		-0.993367, 0.109839, -0.034011,
		-0.091042, -0.932000, -0.350840,
		40.762493, 39.445267, 30.121147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556789, 39.678680, 30.897587>,  <40.826221, 40.097664, 30.366734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556789, 39.678680, 30.897587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666206, 39.375706, 30.660448>,  <40.731857, 39.193920, 30.518166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666206, 39.375706, 30.660448>,  <40.556789, 39.678680, 30.897587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666206, 39.375706, 30.660448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083278, -0.595389, 0.799110,
		-0.958248, -0.267961, -0.099786,
		0.273542, -0.757436, -0.592845,
		40.748268, 39.148476, 30.482594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137268, 39.132721, 31.081678>,  <40.556789, 39.678680, 30.897587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137268, 39.132721, 31.081678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475338, 39.009541, 30.906931>,  <40.678181, 38.935635, 30.802082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475338, 39.009541, 30.906931>,  <40.137268, 39.132721, 31.081678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475338, 39.009541, 30.906931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131086, -0.672962, 0.727969,
		-0.518172, -0.672525, -0.528401,
		0.845171, -0.307947, -0.436868,
		40.728889, 38.917156, 30.775871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056725, 38.450096, 31.059345>,  <40.137268, 39.132721, 31.081678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056725, 38.450096, 31.059345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454964, 38.486744, 31.051481>,  <40.693909, 38.508732, 31.046762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454964, 38.486744, 31.051481>,  <40.056725, 38.450096, 31.059345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454964, 38.486744, 31.051481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081191, -0.738629, 0.669205,
		0.046793, -0.667857, -0.742818,
		0.995600, 0.091624, -0.019661,
		40.753643, 38.514233, 31.045582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287338, 37.814049, 31.092365>,  <40.056725, 38.450096, 31.059345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287338, 37.814049, 31.092365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632343, 37.990444, 31.191641>,  <40.839348, 38.096279, 31.251205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632343, 37.990444, 31.191641>,  <40.287338, 37.814049, 31.092365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632343, 37.990444, 31.191641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116807, -0.650719, 0.750281,
		0.492363, -0.618140, -0.612766,
		0.862517, 0.440986, 0.248187,
		40.891098, 38.122742, 31.266096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751492, 37.302540, 31.229334>,  <40.287338, 37.814049, 31.092365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751492, 37.302540, 31.229334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889912, 37.622570, 31.425344>,  <40.972965, 37.814590, 31.542950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889912, 37.622570, 31.425344>,  <40.751492, 37.302540, 31.229334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889912, 37.622570, 31.425344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251748, -0.582324, 0.772995,
		0.903809, -0.144133, -0.402932,
		0.346051, 0.800078, 0.490025,
		40.993729, 37.862595, 31.572351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354900, 37.072662, 31.387646>,  <40.751492, 37.302540, 31.229334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354900, 37.072662, 31.387646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.291325, 37.375824, 31.640730>,  <41.253181, 37.557720, 31.792582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.291325, 37.375824, 31.640730>,  <41.354900, 37.072662, 31.387646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291325, 37.375824, 31.640730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261942, -0.585521, 0.767171,
		0.951907, 0.287665, -0.105466,
		-0.158936, 0.757901, 0.632713,
		41.243645, 37.603195, 31.830544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936012, 37.106083, 31.852226>,  <41.354900, 37.072662, 31.387646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936012, 37.106083, 31.852226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654797, 37.332729, 32.024124>,  <41.486065, 37.468716, 32.127262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654797, 37.332729, 32.024124>,  <41.936012, 37.106083, 31.852226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654797, 37.332729, 32.024124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218996, -0.402430, 0.888871,
		0.676589, 0.719025, 0.158839,
		-0.703042, 0.566615, 0.429743,
		41.443886, 37.502712, 32.153046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204536, 37.388695, 32.441288>,  <41.936012, 37.106083, 31.852226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204536, 37.388695, 32.441288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809612, 37.403431, 32.503082>,  <41.572659, 37.412273, 32.540161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809612, 37.403431, 32.503082>,  <42.204536, 37.388695, 32.441288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809612, 37.403431, 32.503082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127736, -0.393862, 0.910251,
		0.094380, 0.918431, 0.384157,
		-0.987307, 0.036839, 0.154489,
		41.513420, 37.414482, 32.549431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160496, 37.660164, 33.114460>,  <42.204536, 37.388695, 32.441288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160496, 37.660164, 33.114460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814297, 37.465588, 33.066662>,  <41.606575, 37.348843, 33.037983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814297, 37.465588, 33.066662>,  <42.160496, 37.660164, 33.114460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814297, 37.465588, 33.066662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133447, -0.453854, 0.881027,
		-0.482803, 0.746585, 0.457726,
		-0.865502, -0.486444, -0.119492,
		41.554646, 37.319653, 33.030815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706726, 37.792431, 33.738365>,  <42.160496, 37.660164, 33.114460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706726, 37.792431, 33.738365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549049, 37.459301, 33.582920>,  <41.454445, 37.259422, 33.489655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549049, 37.459301, 33.582920>,  <41.706726, 37.792431, 33.738365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549049, 37.459301, 33.582920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018270, -0.429868, 0.902707,
		-0.918848, 0.348737, 0.184665,
		-0.394189, -0.832824, -0.388612,
		41.430794, 37.209454, 33.466335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131531, 37.663765, 34.095398>,  <41.706726, 37.792431, 33.738365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131531, 37.663765, 34.095398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234066, 37.310593, 33.938057>,  <41.295586, 37.098690, 33.843651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234066, 37.310593, 33.938057>,  <41.131531, 37.663765, 34.095398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234066, 37.310593, 33.938057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229236, -0.450869, 0.862652,
		-0.939012, -0.130956, -0.317973,
		0.256334, -0.882931, -0.393352,
		41.310966, 37.045712, 33.820053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737633, 37.185898, 34.403324>,  <41.131531, 37.663765, 34.095398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737633, 37.185898, 34.403324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018597, 36.948639, 34.245941>,  <41.187176, 36.806286, 34.151512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018597, 36.948639, 34.245941>,  <40.737633, 37.185898, 34.403324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018597, 36.948639, 34.245941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167617, -0.399392, 0.901327,
		-0.691760, -0.699047, -0.181114,
		0.702405, -0.593144, -0.393455,
		41.229317, 36.770695, 34.127903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626671, 36.584656, 34.661114>,  <40.737633, 37.185898, 34.403324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626671, 36.584656, 34.661114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003761, 36.552155, 34.531712>,  <41.230015, 36.532654, 34.454071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003761, 36.552155, 34.531712>,  <40.626671, 36.584656, 34.661114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003761, 36.552155, 34.531712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226976, -0.554424, 0.800685,
		-0.244419, -0.828258, -0.504230,
		0.942731, -0.081254, -0.323506,
		41.286579, 36.527779, 34.434658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755646, 35.887531, 34.683304>,  <40.626671, 36.584656, 34.661114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755646, 35.887531, 34.683304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114174, 36.062851, 34.710155>,  <41.329292, 36.168041, 34.726265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114174, 36.062851, 34.710155>,  <40.755646, 35.887531, 34.683304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114174, 36.062851, 34.710155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225528, -0.580985, 0.782044,
		0.381770, -0.685822, -0.619597,
		0.896319, 0.438298, 0.067130,
		41.383068, 36.194340, 34.730293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280300, 35.364223, 34.624016>,  <40.755646, 35.887531, 34.683304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280300, 35.364223, 34.624016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403244, 35.680195, 34.836262>,  <41.477013, 35.869778, 34.963608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403244, 35.680195, 34.836262>,  <41.280300, 35.364223, 34.624016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403244, 35.680195, 34.836262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209041, -0.600032, 0.772181,
		0.928348, -0.126421, -0.349554,
		0.307363, 0.789924, 0.530611,
		41.495453, 35.917171, 34.995445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643520, 35.070759, 35.050999>,  <41.280300, 35.364223, 34.624016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643520, 35.070759, 35.050999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691921, 35.431942, 35.215939>,  <41.720963, 35.648651, 35.314903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691921, 35.431942, 35.215939>,  <41.643520, 35.070759, 35.050999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691921, 35.431942, 35.215939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289835, -0.429436, 0.855325,
		0.949397, 0.016021, -0.313669,
		0.120998, 0.902955, 0.412348,
		41.728222, 35.702827, 35.339642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305202, 34.991997, 35.469627>,  <41.643520, 35.070759, 35.050999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305202, 34.991997, 35.469627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157909, 35.322891, 35.639374>,  <42.069534, 35.521427, 35.741222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157909, 35.322891, 35.639374>,  <42.305202, 34.991997, 35.469627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157909, 35.322891, 35.639374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035473, -0.468606, 0.882695,
		0.929058, 0.309979, 0.201899,
		-0.368228, 0.827237, 0.424367,
		42.047440, 35.571064, 35.766685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679348, 35.092812, 36.005730>,  <42.305202, 34.991997, 35.469627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679348, 35.092812, 36.005730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336529, 35.280415, 36.091045>,  <42.130836, 35.392975, 36.142235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336529, 35.280415, 36.091045>,  <42.679348, 35.092812, 36.005730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336529, 35.280415, 36.091045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011209, -0.430842, 0.902358,
		0.515107, 0.770977, 0.374511,
		-0.857053, 0.469009, 0.213288,
		42.079414, 35.421116, 36.155033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812927, 35.106285, 36.697731>,  <42.679348, 35.092812, 36.005730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.812927, 35.106285, 36.697731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427544, 35.198044, 36.642414>,  <42.196312, 35.253098, 36.609226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427544, 35.198044, 36.642414>,  <42.812927, 35.106285, 36.697731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427544, 35.198044, 36.642414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231837, -0.455590, 0.859470,
		0.134155, 0.860125, 0.492125,
		-0.963459, 0.229395, -0.138290,
		42.138504, 35.266861, 36.600925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690784, 35.450085, 37.356358>,  <42.812927, 35.106285, 36.697731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690784, 35.450085, 37.356358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350765, 35.310886, 37.198208>,  <42.146755, 35.227367, 37.103317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350765, 35.310886, 37.198208>,  <42.690784, 35.450085, 37.356358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350765, 35.310886, 37.198208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213535, -0.458505, 0.862657,
		-0.481485, 0.817723, 0.315440,
		-0.850044, -0.347999, -0.395375,
		42.095753, 35.206486, 37.079594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262188, 35.421890, 37.964153>,  <42.690784, 35.450085, 37.356358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262188, 35.421890, 37.964153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098145, 35.185459, 37.686321>,  <41.999718, 35.043602, 37.519623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098145, 35.185459, 37.686321>,  <42.262188, 35.421890, 37.964153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098145, 35.185459, 37.686321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388911, -0.575520, 0.719392,
		-0.824959, 0.565159, 0.006152,
		-0.410111, -0.591076, -0.694577,
		41.975113, 35.008137, 37.477947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531982, 35.249043, 38.191330>,  <42.262188, 35.421890, 37.964153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531982, 35.249043, 38.191330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670315, 34.968430, 37.942089>,  <41.753315, 34.800064, 37.792545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670315, 34.968430, 37.942089>,  <41.531982, 35.249043, 38.191330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670315, 34.968430, 37.942089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341542, -0.712640, 0.612776,
		-0.873927, 0.000896, -0.486057,
		0.345834, -0.701530, -0.623101,
		41.774067, 34.757969, 37.755157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007957, 34.816727, 38.151932>,  <41.531982, 35.249043, 38.191330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007957, 34.816727, 38.151932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331379, 34.609581, 38.040173>,  <41.525433, 34.485294, 37.973118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331379, 34.609581, 38.040173>,  <41.007957, 34.816727, 38.151932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331379, 34.609581, 38.040173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287760, -0.762166, 0.579912,
		-0.513261, -0.388490, -0.765270,
		0.808553, -0.517860, -0.279398,
		41.573944, 34.454224, 37.956352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661835, 34.169174, 38.060890>,  <41.007957, 34.816727, 38.151932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661835, 34.169174, 38.060890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056896, 34.106682, 38.065483>,  <41.293934, 34.069187, 38.068237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056896, 34.106682, 38.065483>,  <40.661835, 34.169174, 38.060890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056896, 34.106682, 38.065483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120213, -0.708877, 0.695012,
		-0.100442, -0.687812, -0.718906,
		0.987654, -0.156230, 0.011483,
		41.353191, 34.059814, 38.068928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664440, 33.529831, 38.095566>,  <40.661835, 34.169174, 38.060890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664440, 33.529831, 38.095566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042397, 33.589317, 38.212231>,  <41.269169, 33.625008, 38.282230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042397, 33.589317, 38.212231>,  <40.664440, 33.529831, 38.095566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042397, 33.589317, 38.212231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043425, -0.826077, 0.561881,
		0.324498, -0.543581, -0.774094,
		0.944889, 0.148714, 0.291666,
		41.325863, 33.633930, 38.299732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091110, 32.910809, 37.947887>,  <40.664440, 33.529831, 38.095566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091110, 32.910809, 37.947887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310329, 33.105499, 38.219986>,  <41.441860, 33.222313, 38.383247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310329, 33.105499, 38.219986>,  <41.091110, 32.910809, 37.947887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310329, 33.105499, 38.219986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059007, -0.833731, 0.549009,
		0.834365, -0.260742, -0.485642,
		0.548044, 0.486730, 0.680251,
		41.474743, 33.251518, 38.424061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616692, 32.520004, 38.124901>,  <41.091110, 32.910809, 37.947887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616692, 32.520004, 38.124901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621796, 32.769615, 38.437420>,  <41.624859, 32.919380, 38.624931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621796, 32.769615, 38.437420>,  <41.616692, 32.520004, 38.124901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621796, 32.769615, 38.437420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107885, -0.777662, 0.619357,
		0.994081, 0.076387, -0.077248,
		0.012762, 0.624026, 0.781300,
		41.625626, 32.956821, 38.671810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240807, 32.451263, 38.670532>,  <41.616692, 32.520004, 38.124901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240807, 32.451263, 38.670532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942463, 32.615475, 38.880352>,  <41.763454, 32.714001, 39.006245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942463, 32.615475, 38.880352>,  <42.240807, 32.451263, 38.670532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942463, 32.615475, 38.880352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060846, -0.826200, 0.560082,
		0.663314, 0.385828, 0.641211,
		-0.745863, 0.410525, 0.524554,
		41.718704, 32.738632, 39.037720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427292, 32.268188, 39.380875>,  <42.240807, 32.451263, 38.670532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427292, 32.268188, 39.380875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032303, 32.330994, 39.374641>,  <41.795311, 32.368675, 39.370903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032303, 32.330994, 39.374641>,  <42.427292, 32.268188, 39.380875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032303, 32.330994, 39.374641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141945, -0.840897, 0.522248,
		0.068898, 0.517918, 0.852651,
		-0.987474, 0.157012, -0.015580,
		41.736061, 32.378098, 39.369968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279629, 32.074673, 40.032246>,  <42.427292, 32.268188, 39.380875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279629, 32.074673, 40.032246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929886, 32.058376, 39.838818>,  <41.720039, 32.048599, 39.722759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929886, 32.058376, 39.838818>,  <42.279629, 32.074673, 40.032246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929886, 32.058376, 39.838818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211748, -0.864578, 0.455706,
		-0.436653, 0.500845, 0.747321,
		-0.874355, -0.040741, -0.483573,
		41.667580, 32.046154, 39.693745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760448, 32.007435, 40.508640>,  <42.279629, 32.074673, 40.032246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760448, 32.007435, 40.508640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632092, 31.825838, 40.176155>,  <41.555077, 31.716881, 39.976662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632092, 31.825838, 40.176155>,  <41.760448, 32.007435, 40.508640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632092, 31.825838, 40.176155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323002, -0.772558, 0.546648,
		-0.890336, 0.443899, 0.101266,
		-0.320890, -0.453991, -0.831217,
		41.535824, 31.689640, 39.926788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021561, 31.800072, 40.532448>,  <41.760448, 32.007435, 40.508640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021561, 31.800072, 40.532448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199474, 31.553566, 40.272484>,  <41.306221, 31.405663, 40.116505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199474, 31.553566, 40.272484>,  <41.021561, 31.800072, 40.532448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199474, 31.553566, 40.272484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375465, -0.787098, 0.489390,
		-0.813139, 0.026347, -0.581473,
		0.444782, -0.616265, -0.649913,
		41.332909, 31.368687, 40.077511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549309, 31.342712, 40.432655>,  <41.021561, 31.800072, 40.532448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549309, 31.342712, 40.432655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871758, 31.128288, 40.332413>,  <41.065228, 30.999634, 40.272266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871758, 31.128288, 40.332413>,  <40.549309, 31.342712, 40.432655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871758, 31.128288, 40.332413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418186, -0.815712, 0.399668,
		-0.418666, -0.217384, -0.881739,
		0.806126, -0.536058, -0.250604,
		41.113594, 30.967470, 40.257233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288715, 30.804661, 40.040272>,  <40.549309, 31.342712, 40.432655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288715, 30.804661, 40.040272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640728, 30.734552, 40.216824>,  <40.851936, 30.692488, 40.322754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640728, 30.734552, 40.216824>,  <40.288715, 30.804661, 40.040272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640728, 30.734552, 40.216824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399076, -0.776747, 0.487238,
		0.257443, -0.604932, -0.753512,
		0.880035, -0.175273, 0.441382,
		40.904739, 30.681971, 40.349239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419315, 30.635103, 39.308960>,  <40.288715, 30.804661, 40.040272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419315, 30.635103, 39.308960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373089, 30.364088, 39.599503>,  <40.345352, 30.201479, 39.773827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373089, 30.364088, 39.599503>,  <40.419315, 30.635103, 39.308960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373089, 30.364088, 39.599503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113079, -0.735471, -0.668054,
		0.986843, 0.004933, 0.161608,
		-0.115563, -0.677538, 0.726352,
		40.338421, 30.160826, 39.817410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537632, 30.866493, 38.538673>,  <40.419315, 30.635103, 39.308960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537632, 30.866493, 38.538673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384731, 31.218805, 38.650467>,  <40.292992, 31.430193, 38.717545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384731, 31.218805, 38.650467>,  <40.537632, 30.866493, 38.538673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384731, 31.218805, 38.650467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620941, 0.020838, 0.783580,
		0.684337, 0.473070, -0.554877,
		-0.382250, 0.880779, 0.279488,
		40.270058, 31.483040, 38.734314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809814, 31.296696, 39.097843>,  <40.537632, 30.866493, 38.538673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809814, 31.296696, 39.097843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975868, 31.471785, 39.416855>,  <41.075500, 31.576838, 39.608261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975868, 31.471785, 39.416855>,  <40.809814, 31.296696, 39.097843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975868, 31.471785, 39.416855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060582, 0.887998, -0.455839,
		-0.907739, 0.140920, 0.395160,
		0.415138, 0.437722, 0.797533,
		41.100410, 31.603102, 39.656116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506992, 31.944138, 39.150616>,  <40.809814, 31.296696, 39.097843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506992, 31.944138, 39.150616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873791, 31.981482, 39.305740>,  <41.093872, 32.003887, 39.398815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873791, 31.981482, 39.305740>,  <40.506992, 31.944138, 39.150616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873791, 31.981482, 39.305740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059176, 0.929625, -0.363725,
		-0.394474, 0.356484, 0.846941,
		0.917000, 0.093362, 0.387808,
		41.148891, 32.009491, 39.422081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485878, 32.663456, 39.361938>,  <40.506992, 31.944138, 39.150616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485878, 32.663456, 39.361938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872684, 32.561600, 39.359795>,  <41.104771, 32.500484, 39.358509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872684, 32.561600, 39.359795>,  <40.485878, 32.663456, 39.361938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872684, 32.561600, 39.359795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248984, 0.949547, -0.190706,
		0.053655, 0.183081, 0.981633,
		0.967020, -0.254643, -0.005364,
		41.162792, 32.485207, 39.358185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799404, 33.317677, 39.710255>,  <40.485878, 32.663456, 39.361938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799404, 33.317677, 39.710255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063431, 33.116764, 39.486816>,  <41.221848, 32.996216, 39.352753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063431, 33.116764, 39.486816>,  <40.799404, 33.317677, 39.710255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063431, 33.116764, 39.486816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212163, 0.837965, -0.502794,
		0.720627, 0.213364, 0.659676,
		0.660064, -0.502286, -0.558592,
		41.261452, 32.966080, 39.319241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397503, 33.752750, 39.598568>,  <40.799404, 33.317677, 39.710255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397503, 33.752750, 39.598568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495975, 33.476864, 39.326191>,  <41.555058, 33.311333, 39.162766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495975, 33.476864, 39.326191>,  <41.397503, 33.752750, 39.598568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495975, 33.476864, 39.326191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268680, 0.723594, -0.635785,
		0.931240, -0.026441, 0.363446,
		0.246177, -0.689719, -0.680944,
		41.569828, 33.269947, 39.121906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076859, 33.919239, 39.374233>,  <41.397503, 33.752750, 39.598568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076859, 33.919239, 39.374233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902351, 33.704273, 39.085552>,  <41.797649, 33.575294, 38.912342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902351, 33.704273, 39.085552>,  <42.076859, 33.919239, 39.374233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902351, 33.704273, 39.085552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240328, 0.703328, -0.669009,
		0.867131, -0.465310, -0.177681,
		-0.436264, -0.537417, -0.721704,
		41.771473, 33.543049, 38.869041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489449, 34.021008, 38.754139>,  <42.076859, 33.919239, 39.374233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489449, 34.021008, 38.754139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135830, 33.887489, 38.623272>,  <41.923656, 33.807381, 38.544750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135830, 33.887489, 38.623272>,  <42.489449, 34.021008, 38.754139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135830, 33.887489, 38.623272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017233, 0.676232, -0.736487,
		0.467074, -0.656730, -0.592070,
		-0.884050, -0.333791, -0.327168,
		41.870613, 33.787354, 38.525120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568420, 33.842705, 38.049110>,  <42.489449, 34.021008, 38.754139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568420, 33.842705, 38.049110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180515, 33.933006, 38.086193>,  <41.947773, 33.987186, 38.108444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180515, 33.933006, 38.086193>,  <42.568420, 33.842705, 38.049110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180515, 33.933006, 38.086193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040864, 0.524729, -0.850288,
		-0.240604, -0.820789, -0.518088,
		-0.969763, 0.225754, 0.092711,
		41.889587, 34.000732, 38.114006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343880, 33.651890, 37.361504>,  <42.568420, 33.842705, 38.049110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343880, 33.651890, 37.361504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080528, 33.892914, 37.541931>,  <41.922516, 34.037529, 37.650188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080528, 33.892914, 37.541931>,  <42.343880, 33.651890, 37.361504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080528, 33.892914, 37.541931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193955, 0.443226, -0.875175,
		-0.727269, -0.663683, -0.174942,
		-0.658378, 0.602557, 0.451069,
		41.883015, 34.073681, 37.677254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890102, 33.762817, 36.845104>,  <42.343880, 33.651890, 37.361504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890102, 33.762817, 36.845104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838631, 34.068523, 37.097878>,  <41.807747, 34.251945, 37.249542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838631, 34.068523, 37.097878>,  <41.890102, 33.762817, 36.845104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838631, 34.068523, 37.097878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099181, 0.624121, -0.775007,
		-0.986714, -0.162404, -0.004512,
		-0.128680, 0.764263, 0.631937,
		41.800026, 34.297802, 37.287460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692757, 34.227673, 36.490910>,  <41.890102, 33.762817, 36.845104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692757, 34.227673, 36.490910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718704, 34.459949, 36.815521>,  <41.734272, 34.599316, 37.010288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718704, 34.459949, 36.815521>,  <41.692757, 34.227673, 36.490910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718704, 34.459949, 36.815521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132705, 0.811041, -0.569739,
		-0.989031, -0.070736, 0.129672,
		0.064868, 0.580697, 0.811531,
		41.738163, 34.634159, 37.058979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056610, 34.676945, 36.527199>,  <41.692757, 34.227673, 36.490910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056610, 34.676945, 36.527199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371906, 34.851276, 36.700974>,  <41.561085, 34.955875, 36.805237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371906, 34.851276, 36.700974>,  <41.056610, 34.676945, 36.527199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371906, 34.851276, 36.700974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077937, 0.770991, -0.632060,
		-0.610415, 0.464355, 0.641691,
		0.788238, 0.435830, 0.434434,
		41.608379, 34.982025, 36.831303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279236, 34.866299, 36.452988>,  <41.056610, 34.676945, 36.527199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279236, 34.866299, 36.452988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509003, 34.541809, 36.409233>,  <40.646862, 34.347115, 36.382980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509003, 34.541809, 36.409233>,  <40.279236, 34.866299, 36.452988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509003, 34.541809, 36.409233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227906, -0.030143, -0.973216,
		0.786197, 0.583961, -0.202197,
		0.574415, -0.811222, -0.109390,
		40.681328, 34.298443, 36.376415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896626, 35.342472, 36.320984>,  <40.279236, 34.866299, 36.452988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896626, 35.342472, 36.320984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273029, 35.361584, 36.454979>,  <41.498871, 35.373051, 36.535378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273029, 35.361584, 36.454979>,  <40.896626, 35.342472, 36.320984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273029, 35.361584, 36.454979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236120, 0.616409, -0.751191,
		-0.242378, 0.785976, 0.568766,
		0.941010, 0.047774, 0.334989,
		41.555332, 35.375916, 36.555477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000366, 36.071201, 36.405468>,  <40.896626, 35.342472, 36.320984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000366, 36.071201, 36.405468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324665, 35.850647, 36.326813>,  <41.519245, 35.718315, 36.279621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324665, 35.850647, 36.326813>,  <41.000366, 36.071201, 36.405468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324665, 35.850647, 36.326813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226566, 0.605273, -0.763094,
		0.539778, 0.574123, 0.615648,
		0.810745, -0.551386, -0.196636,
		41.567890, 35.685230, 36.267822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727489, 36.449970, 36.461170>,  <41.000366, 36.071201, 36.405468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727489, 36.449970, 36.461170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714851, 36.156044, 36.190155>,  <41.707268, 35.979691, 36.027546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714851, 36.156044, 36.190155>,  <41.727489, 36.449970, 36.461170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714851, 36.156044, 36.190155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110533, 0.671145, -0.733039,
		0.993370, -0.098050, 0.060016,
		-0.031595, -0.734813, -0.677534,
		41.705372, 35.935600, 35.986897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014198, 36.886383, 35.864506>,  <41.727489, 36.449970, 36.461170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014198, 36.886383, 35.864506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929176, 36.532791, 35.697941>,  <41.878162, 36.320637, 35.598003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929176, 36.532791, 35.697941>,  <42.014198, 36.886383, 35.864506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929176, 36.532791, 35.697941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169781, 0.386259, -0.906630,
		0.962286, -0.263408, 0.067982,
		-0.212555, -0.883979, -0.416414,
		41.865410, 36.267597, 35.573017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506035, 36.814022, 35.352665>,  <42.014198, 36.886383, 35.864506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.506035, 36.814022, 35.352665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241890, 36.540089, 35.229424>,  <42.083405, 36.375729, 35.155479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241890, 36.540089, 35.229424>,  <42.506035, 36.814022, 35.352665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241890, 36.540089, 35.229424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106137, 0.491281, -0.864510,
		0.743412, -0.538186, -0.397108,
		-0.660359, -0.684835, -0.308102,
		42.043781, 36.334637, 35.136993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579834, 36.692600, 34.725750>,  <42.506035, 36.814022, 35.352665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579834, 36.692600, 34.725750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.213642, 36.531651, 34.724918>,  <41.993927, 36.435081, 34.724419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.213642, 36.531651, 34.724918>,  <42.579834, 36.692600, 34.725750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213642, 36.531651, 34.724918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120184, 0.278358, -0.952929,
		0.384008, -0.872132, -0.303188,
		-0.915475, -0.402371, -0.002075,
		41.938999, 36.410938, 34.724297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505161, 36.415607, 34.079994>,  <42.579834, 36.692600, 34.725750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505161, 36.415607, 34.079994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122578, 36.453224, 34.190514>,  <41.893028, 36.475792, 34.256824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122578, 36.453224, 34.190514>,  <42.505161, 36.415607, 34.079994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122578, 36.453224, 34.190514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247743, 0.238875, -0.938915,
		-0.154296, -0.966486, -0.205177,
		-0.956460, 0.094040, 0.276297,
		41.835640, 36.481438, 34.273403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197601, 36.036613, 33.589291>,  <42.505161, 36.415607, 34.079994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197601, 36.036613, 33.589291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917332, 36.258728, 33.768497>,  <41.749172, 36.391994, 33.876022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917332, 36.258728, 33.768497>,  <42.197601, 36.036613, 33.589291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917332, 36.258728, 33.768497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393202, 0.223446, -0.891888,
		-0.595359, -0.801082, 0.061777,
		-0.700671, 0.555284, 0.448018,
		41.707130, 36.425312, 33.902905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416451, 35.412834, 33.449497>,  <42.197601, 36.036613, 33.589291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416451, 35.412834, 33.449497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267818, 35.050774, 33.366913>,  <42.178638, 34.833538, 33.317360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267818, 35.050774, 33.366913>,  <42.416451, 35.412834, 33.449497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267818, 35.050774, 33.366913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611757, -0.405992, 0.678913,
		-0.698344, 0.125962, 0.704592,
		-0.371576, -0.905154, -0.206464,
		42.156345, 34.779228, 33.304974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159382, 35.061913, 34.060982>,  <42.416451, 35.412834, 33.449497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159382, 35.061913, 34.060982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247334, 34.775665, 33.795792>,  <42.300106, 34.603916, 33.636677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247334, 34.775665, 33.795792>,  <42.159382, 35.061913, 34.060982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247334, 34.775665, 33.795792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538570, -0.477602, 0.694145,
		-0.813386, -0.509687, 0.280399,
		0.219878, -0.715622, -0.662977,
		42.313297, 34.560978, 33.596897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781040, 34.334023, 34.058445>,  <42.159382, 35.061913, 34.060982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781040, 34.334023, 34.058445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164722, 34.329147, 33.945469>,  <42.394932, 34.326221, 33.877686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164722, 34.329147, 33.945469>,  <41.781040, 34.334023, 34.058445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164722, 34.329147, 33.945469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241177, -0.485962, 0.840045,
		-0.147490, -0.873895, -0.463199,
		0.959208, -0.012185, -0.282438,
		42.452484, 34.325493, 33.860737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130859, 33.652096, 34.421146>,  <41.781040, 34.334023, 34.058445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130859, 33.652096, 34.421146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417160, 33.898678, 34.289890>,  <42.588940, 34.046627, 34.211136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417160, 33.898678, 34.289890>,  <42.130859, 33.652096, 34.421146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417160, 33.898678, 34.289890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629976, -0.367179, 0.684331,
		0.301375, -0.696533, -0.651164,
		0.715753, 0.616458, -0.328141,
		42.631886, 34.083614, 34.191448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845547, 33.325348, 34.150665>,  <42.130859, 33.652096, 34.421146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845547, 33.325348, 34.150665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877319, 33.697689, 34.293324>,  <42.896385, 33.921093, 34.378918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877319, 33.697689, 34.293324>,  <42.845547, 33.325348, 34.150665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877319, 33.697689, 34.293324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694818, -0.308245, 0.649779,
		0.714786, 0.196189, -0.671261,
		0.079433, 0.930857, 0.356645,
		42.901150, 33.976948, 34.400318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.554428, 33.470177, 34.106930>,  <42.845547, 33.325348, 34.150665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.554428, 33.470177, 34.106930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356453, 33.680149, 34.383911>,  <43.237667, 33.806133, 34.550098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356453, 33.680149, 34.383911>,  <43.554428, 33.470177, 34.106930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356453, 33.680149, 34.383911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644252, -0.313057, 0.697807,
		0.583074, 0.791484, -0.183242,
		-0.494938, 0.524927, 0.692450,
		43.207970, 33.837627, 34.591648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.975292, 33.951900, 34.512455>,  <43.554428, 33.470177, 34.106930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.975292, 33.951900, 34.512455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657494, 33.882915, 34.745358>,  <43.466812, 33.841522, 34.885101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657494, 33.882915, 34.745358>,  <43.975292, 33.951900, 34.512455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657494, 33.882915, 34.745358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607129, -0.205421, 0.767591,
		-0.012775, 0.963358, 0.267916,
		-0.794500, -0.172466, 0.582258,
		43.419144, 33.831177, 34.920036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961178, 34.528137, 35.124748>,  <43.975292, 33.951900, 34.512455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961178, 34.528137, 35.124748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788010, 34.179222, 35.215702>,  <43.684109, 33.969875, 35.270275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788010, 34.179222, 35.215702>,  <43.961178, 34.528137, 35.124748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788010, 34.179222, 35.215702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530979, -0.042919, 0.846297,
		-0.728453, 0.487112, 0.481745,
		-0.432918, -0.872284, 0.227381,
		43.658134, 33.917538, 35.283916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384109, 34.759991, 35.474033>,  <43.961178, 34.528137, 35.124748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384109, 34.759991, 35.474033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394978, 34.945694, 35.828148>,  <43.401497, 35.057114, 36.040615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394978, 34.945694, 35.828148>,  <43.384109, 34.759991, 35.474033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394978, 34.945694, 35.828148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882467, 0.404887, -0.239411,
		-0.469588, 0.787740, -0.398689,
		0.027169, 0.464255, 0.885285,
		43.403130, 35.084969, 36.093735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523178, 35.457085, 35.389965>,  <43.384109, 34.759991, 35.474033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523178, 35.457085, 35.389965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.672588, 35.312859, 35.731834>,  <43.762234, 35.226322, 35.936954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.672588, 35.312859, 35.731834>,  <43.523178, 35.457085, 35.389965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672588, 35.312859, 35.731834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914753, 0.296102, -0.274865,
		-0.153964, 0.884485, 0.440433,
		0.373527, -0.360568, 0.854674,
		43.784645, 35.204689, 35.988235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034500, 35.913643, 35.557014>,  <43.523178, 35.457085, 35.389965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034500, 35.913643, 35.557014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107605, 35.554329, 35.716858>,  <44.151466, 35.338741, 35.812763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107605, 35.554329, 35.716858>,  <44.034500, 35.913643, 35.557014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107605, 35.554329, 35.716858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962168, 0.079884, -0.260481,
		0.202064, 0.432095, 0.878899,
		0.182763, -0.898283, 0.399607,
		44.162434, 35.284843, 35.836739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.524761, 35.948952, 35.924088>,  <44.034500, 35.913643, 35.557014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.524761, 35.948952, 35.924088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.556458, 35.568169, 35.805771>,  <44.575474, 35.339699, 35.734779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.556458, 35.568169, 35.805771>,  <44.524761, 35.948952, 35.924088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.556458, 35.568169, 35.805771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929836, 0.177545, -0.322307,
		0.359340, -0.249501, 0.899235,
		0.079239, -0.951960, -0.295794,
		44.580231, 35.282581, 35.717033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.107929, 35.652439, 36.275101>,  <44.524761, 35.948952, 35.924088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.107929, 35.652439, 36.275101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008411, 35.515926, 35.912525>,  <44.948700, 35.434017, 35.694981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008411, 35.515926, 35.912525>,  <45.107929, 35.652439, 36.275101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.008411, 35.515926, 35.912525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889008, 0.290963, -0.353562,
		0.384404, -0.893793, 0.231015,
		-0.248795, -0.341285, -0.906436,
		44.933773, 35.413540, 35.640594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.609547, 35.194839, 36.040257>,  <45.107929, 35.652439, 36.275101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.609547, 35.194839, 36.040257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452454, 35.385307, 35.725544>,  <45.358196, 35.499588, 35.536716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452454, 35.385307, 35.725544>,  <45.609547, 35.194839, 36.040257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.452454, 35.385307, 35.725544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918354, 0.157607, -0.363024,
		-0.048860, -0.865113, -0.499192,
		-0.392732, 0.476172, -0.786779,
		45.334633, 35.528160, 35.489510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.830513, 34.907616, 35.398914>,  <45.609547, 35.194839, 36.040257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.830513, 34.907616, 35.398914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763680, 35.301022, 35.371246>,  <45.723579, 35.537064, 35.354645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763680, 35.301022, 35.371246>,  <45.830513, 34.907616, 35.398914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.763680, 35.301022, 35.371246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954001, 0.143559, -0.263197,
		-0.248928, -0.109965, -0.962259,
		-0.167084, 0.983513, -0.069170,
		45.713554, 35.596077, 35.350494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.872494, 35.235001, 34.731876>,  <45.830513, 34.907616, 35.398914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.872494, 35.235001, 34.731876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.974720, 35.470654, 35.038498>,  <46.036057, 35.612045, 35.222469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.974720, 35.470654, 35.038498>,  <45.872494, 35.235001, 34.731876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.974720, 35.470654, 35.038498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934312, 0.053285, -0.352451,
		-0.248487, 0.806275, -0.536819,
		0.255568, 0.589136, 0.766553,
		46.051392, 35.647396, 35.268463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.010956, 35.941685, 34.527557>,  <45.872494, 35.235001, 34.731876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.010956, 35.941685, 34.527557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.231174, 35.806606, 34.832939>,  <46.363304, 35.725559, 35.016167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.231174, 35.806606, 34.832939>,  <46.010956, 35.941685, 34.527557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.231174, 35.806606, 34.832939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820047, 0.047552, -0.570318,
		0.156291, 0.940053, 0.303107,
		0.550542, -0.337697, 0.763455,
		46.396336, 35.705296, 35.061977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.708126, 36.310944, 34.686893>,  <46.010956, 35.941685, 34.527557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.708126, 36.310944, 34.686893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.704781, 35.914547, 34.740356>,  <46.702774, 35.676708, 34.772434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.704781, 35.914547, 34.740356>,  <46.708126, 36.310944, 34.686893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.704781, 35.914547, 34.740356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749290, -0.094722, -0.655433,
		0.662189, 0.094669, 0.743333,
		-0.008361, -0.990992, 0.133658,
		46.702271, 35.617249, 34.780453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.360332, 36.094646, 34.772900>,  <46.708126, 36.310944, 34.686893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.360332, 36.094646, 34.772900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.195076, 35.744488, 34.672501>,  <47.095924, 35.534393, 34.612263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.195076, 35.744488, 34.672501>,  <47.360332, 36.094646, 34.772900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.195076, 35.744488, 34.672501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881991, -0.316009, -0.349614,
		0.226734, -0.365815, 0.902647,
		-0.413139, -0.875396, -0.250995,
		47.071133, 35.481869, 34.597202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.640781, 35.595825, 35.217159>,  <47.360332, 36.094646, 34.772900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.640781, 35.595825, 35.217159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.540230, 35.463436, 34.853344>,  <47.479900, 35.384003, 34.635056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.540230, 35.463436, 34.853344>,  <47.640781, 35.595825, 35.217159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.540230, 35.463436, 34.853344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935083, -0.325630, -0.139943,
		-0.249857, -0.885676, 0.391344,
		-0.251378, -0.330973, -0.909542,
		47.464817, 35.364143, 34.580482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.618393, 34.851463, 35.237000>,  <47.640781, 35.595825, 35.217159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.618393, 34.851463, 35.237000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.711014, 35.001152, 34.877811>,  <47.766586, 35.090965, 34.662300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.711014, 35.001152, 34.877811>,  <47.618393, 34.851463, 35.237000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.711014, 35.001152, 34.877811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901807, -0.428771, 0.053854,
		-0.364868, -0.822262, -0.436756,
		0.231551, 0.374220, -0.897966,
		47.780479, 35.113419, 34.608421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.624493, 37.245304, 24.225256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.321194, 37.463554, 24.368008>,  <36.139214, 37.594505, 24.453659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.321194, 37.463554, 24.368008>,  <36.624493, 37.245304, 24.225256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321194, 37.463554, 24.368008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157872, -0.377439, 0.912478,
		0.632567, 0.748223, 0.200053,
		-0.758245, 0.545621, 0.356879,
		36.093719, 37.627239, 24.475071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848717, 37.491146, 24.873074>,  <36.624493, 37.245304, 24.225256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848717, 37.491146, 24.873074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.456371, 37.551750, 24.921976>,  <36.220963, 37.588112, 24.951319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.456371, 37.551750, 24.921976>,  <36.848717, 37.491146, 24.873074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456371, 37.551750, 24.921976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076126, -0.279495, 0.957125,
		0.179188, 0.948117, 0.262613,
		-0.980865, 0.151513, 0.122258,
		36.162113, 37.597206, 24.958654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755596, 38.050926, 25.415682>,  <36.848717, 37.491146, 24.873074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755596, 38.050926, 25.415682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.438923, 37.810329, 25.372890>,  <36.248920, 37.665970, 25.347216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.438923, 37.810329, 25.372890>,  <36.755596, 38.050926, 25.415682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438923, 37.810329, 25.372890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060321, -0.251213, 0.966050,
		-0.607946, 0.758353, 0.235164,
		-0.791684, -0.601491, -0.106980,
		36.201416, 37.629883, 25.340797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292450, 38.241055, 25.907515>,  <36.755596, 38.050926, 25.415682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292450, 38.241055, 25.907515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.203537, 37.856663, 25.841658>,  <36.150188, 37.626026, 25.802143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.203537, 37.856663, 25.841658>,  <36.292450, 38.241055, 25.907515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203537, 37.856663, 25.841658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224695, -0.214816, 0.950456,
		-0.948736, 0.174279, 0.263678,
		-0.222287, -0.960979, -0.164644,
		36.136852, 37.568371, 25.792265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904755, 38.091389, 26.493074>,  <36.292450, 38.241055, 25.907515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904755, 38.091389, 26.493074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.981812, 37.724911, 26.352516>,  <36.028046, 37.505024, 26.268181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.981812, 37.724911, 26.352516>,  <35.904755, 38.091389, 26.493074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981812, 37.724911, 26.352516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160264, -0.323920, 0.932411,
		-0.968093, -0.235938, 0.084432,
		0.192642, -0.916193, -0.351397,
		36.039604, 37.450054, 26.247097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642673, 37.618008, 26.937098>,  <35.904755, 38.091389, 26.493074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642673, 37.618008, 26.937098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868427, 37.357224, 26.734547>,  <36.003880, 37.200752, 26.613016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868427, 37.357224, 26.734547>,  <35.642673, 37.618008, 26.937098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868427, 37.357224, 26.734547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078659, -0.568150, 0.819157,
		-0.821754, -0.502153, -0.269374,
		0.564387, -0.651957, -0.506379,
		36.037743, 37.161636, 26.582634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372463, 36.895695, 27.160738>,  <35.642673, 37.618008, 26.937098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372463, 36.895695, 27.160738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.744991, 36.869694, 27.017393>,  <35.968506, 36.854095, 26.931387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.744991, 36.869694, 27.017393>,  <35.372463, 36.895695, 27.160738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744991, 36.869694, 27.017393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251560, -0.596728, 0.761993,
		-0.263373, -0.799807, -0.539393,
		0.931318, -0.064998, -0.358361,
		36.024387, 36.850193, 26.909885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525883, 36.176823, 27.254505>,  <35.372463, 36.895695, 27.160738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525883, 36.176823, 27.254505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.890015, 36.338718, 27.219912>,  <36.108494, 36.435856, 27.199156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.890015, 36.338718, 27.219912>,  <35.525883, 36.176823, 27.254505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890015, 36.338718, 27.219912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320102, -0.556078, 0.767015,
		0.262349, -0.725923, -0.635774,
		0.910334, 0.404738, -0.086483,
		36.163116, 36.460140, 27.193966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067455, 35.657425, 27.198303>,  <35.525883, 36.176823, 27.254505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067455, 35.657425, 27.198303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.244129, 35.989300, 27.334848>,  <36.350136, 36.188423, 27.416775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.244129, 35.989300, 27.334848>,  <36.067455, 35.657425, 27.198303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244129, 35.989300, 27.334848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354229, -0.510852, 0.783296,
		0.824277, -0.225052, -0.519537,
		0.441688, 0.829688, 0.341364,
		36.376637, 36.238205, 27.437258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653641, 35.493393, 27.423965>,  <36.067455, 35.657425, 27.198303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653641, 35.493393, 27.423965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.646900, 35.846184, 27.612366>,  <36.642857, 36.057858, 27.725405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.646900, 35.846184, 27.612366>,  <36.653641, 35.493393, 27.423965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646900, 35.846184, 27.612366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553221, -0.384165, 0.739164,
		0.832864, 0.273023, -0.481452,
		-0.016852, 0.881973, 0.470999,
		36.641846, 36.110775, 27.753666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295376, 35.537151, 27.601292>,  <36.653641, 35.493393, 27.423965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295376, 35.537151, 27.601292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117645, 35.807392, 27.836624>,  <37.011005, 35.969536, 27.977823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117645, 35.807392, 27.836624>,  <37.295376, 35.537151, 27.601292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117645, 35.807392, 27.836624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462245, -0.389652, 0.796556,
		0.767399, 0.625886, -0.139160,
		-0.444329, 0.675602, 0.588331,
		36.984348, 36.010075, 28.013123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865574, 35.910221, 27.951361>,  <37.295376, 35.537151, 27.601292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865574, 35.910221, 27.951361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.523712, 35.945843, 28.155964>,  <37.318596, 35.967216, 28.278725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.523712, 35.945843, 28.155964>,  <37.865574, 35.910221, 27.951361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523712, 35.945843, 28.155964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464500, -0.309014, 0.829910,
		0.231971, 0.946879, 0.222734,
		-0.854652, 0.089055, 0.511507,
		37.267315, 35.972561, 28.309416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029339, 36.127724, 28.584549>,  <37.865574, 35.910221, 27.951361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029339, 36.127724, 28.584549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.664841, 35.999298, 28.687737>,  <37.446140, 35.922245, 28.749649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.664841, 35.999298, 28.687737>,  <38.029339, 36.127724, 28.584549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664841, 35.999298, 28.687737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353494, -0.288260, 0.889914,
		-0.211354, 0.902123, 0.376169,
		-0.911247, -0.321061, 0.257971,
		37.391468, 35.902981, 28.765127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861324, 36.321537, 29.232708>,  <38.029339, 36.127724, 28.584549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861324, 36.321537, 29.232708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.595081, 36.023537, 29.215097>,  <37.435337, 35.844738, 29.204531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.595081, 36.023537, 29.215097>,  <37.861324, 36.321537, 29.232708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595081, 36.023537, 29.215097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285527, -0.308718, 0.907286,
		-0.689521, 0.591326, 0.418204,
		-0.665609, -0.745001, -0.044028,
		37.395397, 35.800037, 29.201889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501999, 36.345352, 29.926430>,  <37.861324, 36.321537, 29.232708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501999, 36.345352, 29.926430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407040, 35.997200, 29.753883>,  <37.350063, 35.788307, 29.650356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407040, 35.997200, 29.753883>,  <37.501999, 36.345352, 29.926430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407040, 35.997200, 29.753883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087699, -0.461451, 0.882820,
		-0.967445, 0.171752, 0.185881,
		-0.237401, -0.870382, -0.431366,
		37.335819, 35.736084, 29.624474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964546, 36.040474, 30.281473>,  <37.501999, 36.345352, 29.926430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964546, 36.040474, 30.281473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.163063, 35.740662, 30.106247>,  <37.282173, 35.560776, 30.001112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.163063, 35.740662, 30.106247>,  <36.964546, 36.040474, 30.281473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163063, 35.740662, 30.106247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080912, -0.462461, 0.882940,
		-0.864379, -0.473638, -0.168868,
		0.496289, -0.749531, -0.438064,
		37.311951, 35.515800, 29.974827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677109, 35.412395, 30.564928>,  <36.964546, 36.040474, 30.281473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677109, 35.412395, 30.564928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.024323, 35.273716, 30.422766>,  <37.232651, 35.190510, 30.337469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.024323, 35.273716, 30.422766>,  <36.677109, 35.412395, 30.564928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024323, 35.273716, 30.422766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183703, -0.440752, 0.878630,
		-0.461274, -0.827968, -0.318896,
		0.868032, -0.346707, -0.355408,
		37.284733, 35.169708, 30.316145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758450, 34.707134, 30.715612>,  <36.677109, 35.412395, 30.564928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758450, 34.707134, 30.715612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138580, 34.811272, 30.647369>,  <37.366657, 34.873753, 30.606422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138580, 34.811272, 30.647369>,  <36.758450, 34.707134, 30.715612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138580, 34.811272, 30.647369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286291, -0.515973, 0.807347,
		0.122156, -0.816085, -0.564874,
		0.950324, 0.260341, -0.170609,
		37.423676, 34.889374, 30.596186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172760, 34.193699, 30.865850>,  <36.758450, 34.707134, 30.715612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172760, 34.193699, 30.865850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.434666, 34.493042, 30.908276>,  <37.591808, 34.672649, 30.933731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.434666, 34.493042, 30.908276>,  <37.172760, 34.193699, 30.865850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434666, 34.493042, 30.908276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423274, -0.479303, 0.768835,
		0.626199, -0.458510, -0.630589,
		0.654762, 0.748356, 0.106064,
		37.631096, 34.717548, 30.940094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851158, 33.924049, 30.965288>,  <37.172760, 34.193699, 30.865850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851158, 33.924049, 30.965288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.897820, 34.287888, 31.124805>,  <37.925816, 34.506191, 31.220516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.897820, 34.287888, 31.124805>,  <37.851158, 33.924049, 30.965288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897820, 34.287888, 31.124805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403169, -0.410328, 0.817977,
		0.907661, 0.065364, -0.414584,
		0.116649, 0.909592, 0.398791,
		37.932816, 34.560764, 31.244442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459480, 33.905483, 31.357979>,  <37.851158, 33.924049, 30.965288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459480, 33.905483, 31.357979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.320133, 34.248383, 31.509644>,  <38.236526, 34.454121, 31.600643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.320133, 34.248383, 31.509644>,  <38.459480, 33.905483, 31.357979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320133, 34.248383, 31.509644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350678, -0.255935, 0.900845,
		0.869290, 0.446790, -0.211459,
		-0.348369, 0.857249, 0.379161,
		38.215622, 34.505558, 31.623392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000389, 34.146362, 31.770712>,  <38.459480, 33.905483, 31.357979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000389, 34.146362, 31.770712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.659294, 34.315105, 31.893913>,  <38.454636, 34.416351, 31.967834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.659294, 34.315105, 31.893913>,  <39.000389, 34.146362, 31.770712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659294, 34.315105, 31.893913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337285, -0.005531, 0.941386,
		0.398837, 0.906644, -0.137571,
		-0.852741, 0.421860, 0.308004,
		38.403473, 34.441662, 31.986315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623768, 34.690022, 31.902370>,  <39.000389, 34.146362, 31.770712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623768, 34.690022, 31.902370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.022045, 34.713852, 31.873938>,  <40.261009, 34.728149, 31.856878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.022045, 34.713852, 31.873938>,  <39.623768, 34.690022, 31.902370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022045, 34.713852, 31.873938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085858, 0.302200, -0.949370,
		-0.035080, 0.951381, 0.306012,
		0.995690, 0.059578, -0.071083,
		40.320751, 34.731724, 31.852613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780941, 35.359322, 31.715464>,  <39.623768, 34.690022, 31.902370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780941, 35.359322, 31.715464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.115887, 35.165882, 31.613516>,  <40.316853, 35.049820, 31.552347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.115887, 35.165882, 31.613516>,  <39.780941, 35.359322, 31.715464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115887, 35.165882, 31.613516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021385, 0.436903, -0.899254,
		0.546232, 0.758451, 0.355504,
		0.837361, -0.483599, -0.254869,
		40.367096, 35.020802, 31.537056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331562, 35.855061, 31.487940>,  <39.780941, 35.359322, 31.715464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331562, 35.855061, 31.487940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.420582, 35.508102, 31.309904>,  <40.473995, 35.299927, 31.203083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.420582, 35.508102, 31.309904>,  <40.331562, 35.855061, 31.487940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420582, 35.508102, 31.309904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086307, 0.437215, -0.895206,
		0.971093, 0.237645, 0.022441,
		0.222553, -0.867392, -0.445087,
		40.487347, 35.247887, 31.176378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658249, 36.059464, 30.944414>,  <40.331562, 35.855061, 31.487940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658249, 36.059464, 30.944414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.626339, 35.678581, 30.826469>,  <40.607193, 35.450054, 30.755703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.626339, 35.678581, 30.826469>,  <40.658249, 36.059464, 30.944414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626339, 35.678581, 30.826469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032370, 0.298124, -0.953978,
		0.996287, -0.066559, -0.054606,
		-0.079775, -0.952204, -0.294862,
		40.602406, 35.392921, 30.738010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123047, 35.913544, 30.427683>,  <40.658249, 36.059464, 30.944414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123047, 35.913544, 30.427683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.823967, 35.656921, 30.359150>,  <40.644520, 35.502949, 30.318031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.823967, 35.656921, 30.359150>,  <41.123047, 35.913544, 30.427683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823967, 35.656921, 30.359150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141544, 0.098103, -0.985059,
		0.648781, -0.760775, 0.017458,
		-0.747695, -0.641559, -0.171331,
		40.599659, 35.464455, 30.307751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392662, 35.458019, 29.811691>,  <41.123047, 35.913544, 30.427683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392662, 35.458019, 29.811691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.993916, 35.427330, 29.819405>,  <40.754669, 35.408916, 29.824032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.993916, 35.427330, 29.819405>,  <41.392662, 35.458019, 29.811691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993916, 35.427330, 29.819405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029693, 0.136945, -0.990134,
		0.073325, -0.987603, -0.138794,
		-0.996866, -0.076722, 0.019284,
		40.694855, 35.404312, 29.825190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259232, 35.227139, 29.128925>,  <41.392662, 35.458019, 29.811691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259232, 35.227139, 29.128925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.898388, 35.354973, 29.244898>,  <40.681881, 35.431675, 29.314482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.898388, 35.354973, 29.244898>,  <41.259232, 35.227139, 29.128925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898388, 35.354973, 29.244898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179128, 0.333924, -0.925423,
		-0.392567, -0.886769, -0.243990,
		-0.902111, 0.319585, 0.289933,
		40.627754, 35.450848, 29.331879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806969, 35.083485, 28.599121>,  <41.259232, 35.227139, 29.128925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806969, 35.083485, 28.599121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.639500, 35.374752, 28.816187>,  <40.539021, 35.549511, 28.946426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.639500, 35.374752, 28.816187>,  <40.806969, 35.083485, 28.599121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639500, 35.374752, 28.816187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145673, 0.535970, -0.831574,
		-0.896379, -0.427206, -0.118320,
		-0.418669, 0.728170, 0.542664,
		40.513897, 35.593204, 28.978987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163246, 35.211117, 28.185621>,  <40.806969, 35.083485, 28.599121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163246, 35.211117, 28.185621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.195507, 35.515194, 28.443491>,  <40.214863, 35.697639, 28.598213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.195507, 35.515194, 28.443491>,  <40.163246, 35.211117, 28.185621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195507, 35.515194, 28.443491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235070, 0.643043, -0.728860,
		-0.968626, -0.092756, 0.230564,
		0.080657, 0.760192, 0.644673,
		40.219704, 35.743252, 28.636892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613304, 35.558559, 28.034019>,  <40.163246, 35.211117, 28.185621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613304, 35.558559, 28.034019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.877842, 35.801086, 28.210653>,  <40.036564, 35.946602, 28.316633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.877842, 35.801086, 28.210653>,  <39.613304, 35.558559, 28.034019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877842, 35.801086, 28.210653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179255, 0.699417, -0.691869,
		-0.728344, 0.378411, 0.571244,
		0.661349, 0.606317, 0.441584,
		40.076248, 35.982983, 28.343128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194733, 36.153843, 28.036135>,  <39.613304, 35.558559, 28.034019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194733, 36.153843, 28.036135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.574230, 36.272144, 28.080692>,  <39.801929, 36.343124, 28.107428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.574230, 36.272144, 28.080692>,  <39.194733, 36.153843, 28.036135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574230, 36.272144, 28.080692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099812, 0.614837, -0.782312,
		-0.299861, 0.731098, 0.612845,
		0.948747, 0.295754, 0.111394,
		39.858856, 36.360870, 28.114111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182034, 36.901833, 28.242840>,  <39.194733, 36.153843, 28.036135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182034, 36.901833, 28.242840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537743, 36.801315, 28.089975>,  <39.751167, 36.741005, 27.998257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537743, 36.801315, 28.089975>,  <39.182034, 36.901833, 28.242840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537743, 36.801315, 28.089975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156915, 0.617210, -0.770993,
		0.429619, 0.745589, 0.509435,
		0.889272, -0.251296, -0.382159,
		39.804523, 36.725925, 27.975328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211163, 37.423809, 27.818983>,  <39.182034, 36.901833, 28.242840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211163, 37.423809, 27.818983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.534275, 37.212349, 27.714663>,  <39.728142, 37.085472, 27.652069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.534275, 37.212349, 27.714663>,  <39.211163, 37.423809, 27.818983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534275, 37.212349, 27.714663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088253, 0.545894, -0.833193,
		0.582841, 0.650019, 0.487617,
		0.807779, -0.528653, -0.260803,
		39.776608, 37.053753, 27.636421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817421, 37.870640, 27.591742>,  <39.211163, 37.423809, 27.818983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817421, 37.870640, 27.591742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.887047, 37.512390, 27.428005>,  <39.928822, 37.297440, 27.329763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.887047, 37.512390, 27.428005>,  <39.817421, 37.870640, 27.591742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887047, 37.512390, 27.428005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100927, 0.429722, -0.897303,
		0.979549, 0.114872, 0.165191,
		0.174061, -0.895624, -0.409340,
		39.939266, 37.243702, 27.305202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554482, 37.735596, 27.300180>,  <39.817421, 37.870640, 27.591742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554482, 37.735596, 27.300180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.311337, 37.492245, 27.096073>,  <40.165447, 37.346233, 26.973608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.311337, 37.492245, 27.096073>,  <40.554482, 37.735596, 27.300180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311337, 37.492245, 27.096073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045814, 0.614684, -0.787442,
		0.792718, -0.502036, -0.345772,
		-0.607864, -0.608378, -0.510271,
		40.128979, 37.309731, 26.942991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813194, 37.620537, 26.560400>,  <40.554482, 37.735596, 27.300180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813194, 37.620537, 26.560400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.429436, 37.515980, 26.518003>,  <40.199181, 37.453247, 26.492565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.429436, 37.515980, 26.518003>,  <40.813194, 37.620537, 26.560400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429436, 37.515980, 26.518003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012379, 0.414430, -0.909997,
		0.281793, -0.871735, -0.400838,
		-0.959395, -0.261393, -0.105993,
		40.141617, 37.437561, 26.486206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697048, 37.526741, 25.798124>,  <40.813194, 37.620537, 26.560400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697048, 37.526741, 25.798124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.330826, 37.575836, 25.951323>,  <40.111092, 37.605293, 26.043242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.330826, 37.575836, 25.951323>,  <40.697048, 37.526741, 25.798124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330826, 37.575836, 25.951323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311912, 0.384466, -0.868848,
		-0.253893, -0.914943, -0.313717,
		-0.915559, 0.122742, 0.382995,
		40.056156, 37.612659, 26.066221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286465, 37.393898, 25.292412>,  <40.697048, 37.526741, 25.798124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286465, 37.393898, 25.292412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.047764, 37.615250, 25.524845>,  <39.904541, 37.748058, 25.664305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.047764, 37.615250, 25.524845>,  <40.286465, 37.393898, 25.292412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047764, 37.615250, 25.524845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423629, 0.397752, -0.813838,
		-0.681484, -0.731827, -0.002935,
		-0.596756, 0.553375, 0.581085,
		39.868736, 37.781261, 25.699171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.490768, 37.143284, 25.159124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.458725, 37.506035, 25.324612>,  <39.439499, 37.723686, 25.423904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.458725, 37.506035, 25.324612>,  <39.490768, 37.143284, 25.159124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458725, 37.506035, 25.324612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500783, 0.322254, -0.803349,
		-0.861858, -0.271539, 0.428331,
		-0.080109, 0.906873, 0.413719,
		39.434692, 37.778095, 25.448727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765278, 37.351501, 25.169325>,  <39.490768, 37.143284, 25.159124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765278, 37.351501, 25.169325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.968510, 37.695770, 25.182552>,  <39.090450, 37.902332, 25.190489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.968510, 37.695770, 25.182552>,  <38.765278, 37.351501, 25.169325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968510, 37.695770, 25.182552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585559, 0.373317, -0.719552,
		-0.631645, 0.346227, 0.693651,
		0.508080, 0.860675, 0.033068,
		39.120934, 37.953972, 25.192472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313377, 37.910690, 25.019360>,  <38.765278, 37.351501, 25.169325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313377, 37.910690, 25.019360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.672474, 38.070602, 24.945349>,  <38.887932, 38.166550, 24.900942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.672474, 38.070602, 24.945349>,  <38.313377, 37.910690, 25.019360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672474, 38.070602, 24.945349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396607, 0.550700, -0.734460,
		-0.191726, 0.732740, 0.652942,
		0.897744, 0.399777, -0.185026,
		38.941795, 38.190536, 24.889841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145985, 38.652142, 24.881466>,  <38.313377, 37.910690, 25.019360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145985, 38.652142, 24.881466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.524559, 38.613007, 24.758381>,  <38.751705, 38.589523, 24.684530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.524559, 38.613007, 24.758381>,  <38.145985, 38.652142, 24.881466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524559, 38.613007, 24.758381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231481, 0.458804, -0.857855,
		0.225114, 0.883134, 0.411580,
		0.946436, -0.097842, -0.307712,
		38.808491, 38.583652, 24.666067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447590, 39.352688, 24.777269>,  <38.145985, 38.652142, 24.881466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447590, 39.352688, 24.777269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.613621, 39.076775, 24.539982>,  <38.713238, 38.911228, 24.397610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.613621, 39.076775, 24.539982>,  <38.447590, 39.352688, 24.777269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613621, 39.076775, 24.539982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107597, 0.610249, -0.784869,
		0.903401, 0.389610, 0.179082,
		0.415077, -0.689783, -0.593220,
		38.738144, 38.869839, 24.362015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888309, 39.771446, 24.275118>,  <38.447590, 39.352688, 24.777269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888309, 39.771446, 24.275118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.878136, 39.409466, 24.105213>,  <38.872032, 39.192280, 24.003271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.878136, 39.409466, 24.105213>,  <38.888309, 39.771446, 24.275118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878136, 39.409466, 24.105213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010143, 0.425112, -0.905084,
		0.999625, -0.018714, -0.019993,
		-0.025437, -0.904947, -0.424762,
		38.870506, 39.137981, 23.977785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253777, 39.809036, 23.584255>,  <38.888309, 39.771446, 24.275118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253777, 39.809036, 23.584255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.039253, 39.474667, 23.537613>,  <38.910538, 39.274044, 23.509628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.039253, 39.474667, 23.537613>,  <39.253777, 39.809036, 23.584255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039253, 39.474667, 23.537613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123630, 0.214467, -0.968875,
		0.834916, -0.505204, -0.218367,
		-0.536312, -0.835926, -0.116604,
		38.878361, 39.223888, 23.502632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439739, 39.524059, 22.955698>,  <39.253777, 39.809036, 23.584255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439739, 39.524059, 22.955698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.083775, 39.349651, 23.009274>,  <38.870197, 39.245007, 23.041420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.083775, 39.349651, 23.009274>,  <39.439739, 39.524059, 22.955698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083775, 39.349651, 23.009274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195696, 0.099723, -0.975581,
		0.412021, -0.894392, -0.174073,
		-0.889911, -0.436025, 0.133941,
		38.816803, 39.218845, 23.049456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452446, 39.211014, 22.390478>,  <39.439739, 39.524059, 22.955698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452446, 39.211014, 22.390478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077610, 39.215534, 22.530043>,  <38.852711, 39.218246, 22.613781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077610, 39.215534, 22.530043>,  <39.452446, 39.211014, 22.390478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077610, 39.215534, 22.530043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341780, 0.173853, -0.923559,
		-0.071099, -0.984707, -0.159052,
		-0.937087, 0.011304, 0.348913,
		38.796482, 39.218925, 22.634716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089676, 38.728031, 21.969557>,  <39.452446, 39.211014, 22.390478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089676, 38.728031, 21.969557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.825920, 38.989841, 22.117506>,  <38.667667, 39.146927, 22.206276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.825920, 38.989841, 22.117506>,  <39.089676, 38.728031, 21.969557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825920, 38.989841, 22.117506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340929, 0.178160, -0.923053,
		-0.670055, -0.734752, 0.105668,
		-0.659389, 0.654521, 0.369875,
		38.628105, 39.186199, 22.228468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460846, 38.547878, 21.743614>,  <39.089676, 38.728031, 21.969557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460846, 38.547878, 21.743614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.428974, 38.940929, 21.810663>,  <38.409851, 39.176758, 21.850893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.428974, 38.940929, 21.810663>,  <38.460846, 38.547878, 21.743614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428974, 38.940929, 21.810663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243047, 0.143932, -0.959277,
		-0.966737, -0.117173, 0.227356,
		-0.079678, 0.982626, 0.167623,
		38.405071, 39.235718, 21.860950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884762, 38.697071, 21.289898>,  <38.460846, 38.547878, 21.743614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884762, 38.697071, 21.289898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.050770, 39.049255, 21.381590>,  <38.150375, 39.260567, 21.436605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.050770, 39.049255, 21.381590>,  <37.884762, 38.697071, 21.289898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050770, 39.049255, 21.381590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014953, 0.258523, -0.965890,
		-0.909688, 0.397438, 0.120459,
		0.415023, 0.880460, 0.229232,
		38.175278, 39.313393, 21.450359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489964, 39.223972, 20.776831>,  <37.884762, 38.697071, 21.289898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489964, 39.223972, 20.776831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.841511, 39.380119, 20.886530>,  <38.052437, 39.473808, 20.952349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.841511, 39.380119, 20.886530>,  <37.489964, 39.223972, 20.776831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841511, 39.380119, 20.886530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019312, 0.545277, -0.838033,
		-0.476679, 0.741814, 0.471687,
		0.878865, 0.390364, 0.274248,
		38.105171, 39.497227, 20.968805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395954, 40.019264, 20.705332>,  <37.489964, 39.223972, 20.776831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395954, 40.019264, 20.705332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783867, 39.929405, 20.667280>,  <38.016617, 39.875488, 20.644449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783867, 39.929405, 20.667280>,  <37.395954, 40.019264, 20.705332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783867, 39.929405, 20.667280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048950, 0.561183, -0.826243,
		0.239001, 0.796622, 0.555223,
		0.969785, -0.224651, -0.095129,
		38.074802, 39.862011, 20.638742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627480, 40.643307, 20.615505>,  <37.395954, 40.019264, 20.705332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627480, 40.643307, 20.615505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.893768, 40.374302, 20.486168>,  <38.053539, 40.212898, 20.408566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.893768, 40.374302, 20.486168>,  <37.627480, 40.643307, 20.615505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893768, 40.374302, 20.486168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220458, 0.591230, -0.775787,
		0.712894, 0.445172, 0.541852,
		0.665718, -0.672510, -0.323343,
		38.093483, 40.172550, 20.389166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244026, 41.014893, 20.327953>,  <37.627480, 40.643307, 20.615505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244026, 41.014893, 20.327953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.249363, 40.656639, 20.150118>,  <38.252567, 40.441685, 20.043417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.249363, 40.656639, 20.150118>,  <38.244026, 41.014893, 20.327953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249363, 40.656639, 20.150118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099580, 0.443606, -0.890673,
		0.994940, -0.032386, 0.095107,
		0.013345, -0.895636, -0.444587,
		38.253368, 40.387947, 20.016743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742912, 41.121403, 19.852926>,  <38.244026, 41.014893, 20.327953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742912, 41.121403, 19.852926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.525360, 40.804153, 19.743269>,  <38.394829, 40.613804, 19.677475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.525360, 40.804153, 19.743269>,  <38.742912, 41.121403, 19.852926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525360, 40.804153, 19.743269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150802, 0.228991, -0.961677,
		0.825502, -0.564378, -0.004939,
		-0.543880, -0.793121, -0.274142,
		38.362194, 40.566216, 19.661026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134285, 40.883923, 19.347467>,  <38.742912, 41.121403, 19.852926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134285, 40.883923, 19.347467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.767101, 40.733936, 19.295687>,  <38.546791, 40.643944, 19.264618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.767101, 40.733936, 19.295687>,  <39.134285, 40.883923, 19.347467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767101, 40.733936, 19.295687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039051, 0.239333, -0.970152,
		0.394752, -0.895613, -0.205055,
		-0.917957, -0.374962, -0.129452,
		38.491714, 40.621449, 19.256851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164146, 40.395287, 18.858561>,  <39.134285, 40.883923, 19.347467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164146, 40.395287, 18.858561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.773102, 40.479435, 18.860037>,  <38.538475, 40.529922, 18.860924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.773102, 40.479435, 18.860037>,  <39.164146, 40.395287, 18.858561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773102, 40.479435, 18.860037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000923, 0.021839, -0.999761,
		-0.210401, -0.977377, -0.021544,
		-0.977615, 0.210371, 0.003693,
		38.479816, 40.542545, 18.861145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888611, 39.904350, 18.335323>,  <39.164146, 40.395287, 18.858561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888611, 39.904350, 18.335323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.672649, 40.232697, 18.409815>,  <38.543072, 40.429707, 18.454510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.672649, 40.232697, 18.409815>,  <38.888611, 39.904350, 18.335323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672649, 40.232697, 18.409815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155652, 0.120067, -0.980488,
		-0.827213, -0.558352, 0.062945,
		-0.539899, 0.820870, 0.186229,
		38.510681, 40.478958, 18.465683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364258, 39.820999, 17.747099>,  <38.888611, 39.904350, 18.335323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364258, 39.820999, 17.747099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318760, 40.189800, 17.895138>,  <38.291462, 40.411079, 17.983961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318760, 40.189800, 17.895138>,  <38.364258, 39.820999, 17.747099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318760, 40.189800, 17.895138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260502, 0.331803, -0.906667,
		-0.958750, -0.199539, 0.202443,
		-0.113744, 0.922004, 0.370096,
		38.284637, 40.466400, 18.006166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685959, 40.112797, 17.480583>,  <38.364258, 39.820999, 17.747099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685959, 40.112797, 17.480583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.926266, 40.411560, 17.594566>,  <38.070450, 40.590820, 17.662956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.926266, 40.411560, 17.594566>,  <37.685959, 40.112797, 17.480583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926266, 40.411560, 17.594566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087439, 0.415711, -0.905284,
		-0.794629, 0.518947, 0.315055,
		0.600766, 0.746912, 0.284960,
		38.106495, 40.635635, 17.680054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314785, 40.834118, 17.412310>,  <37.685959, 40.112797, 17.480583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314785, 40.834118, 17.412310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.711288, 40.870495, 17.374079>,  <37.949192, 40.892319, 17.351141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.711288, 40.870495, 17.374079>,  <37.314785, 40.834118, 17.412310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711288, 40.870495, 17.374079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126217, 0.442874, -0.887655,
		-0.038393, 0.891960, 0.450481,
		0.991259, 0.090938, -0.095577,
		38.008667, 40.897778, 17.345406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621658, 41.236000, 17.446886>,  <37.314785, 40.834118, 17.412310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621658, 41.236000, 17.446886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535809, 41.620407, 17.516615>,  <36.484299, 41.851051, 17.558453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535809, 41.620407, 17.516615>,  <36.621658, 41.236000, 17.446886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535809, 41.620407, 17.516615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502282, -0.261672, 0.824161,
		0.837645, 0.089329, 0.538862,
		-0.214626, 0.961014, 0.174320,
		36.471420, 41.908710, 17.568911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886341, 41.564079, 18.084484>,  <36.621658, 41.236000, 17.446886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886341, 41.564079, 18.084484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.570694, 41.801231, 18.020256>,  <36.381306, 41.943523, 17.981718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.570694, 41.801231, 18.020256>,  <36.886341, 41.564079, 18.084484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570694, 41.801231, 18.020256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316774, -0.168842, 0.933352,
		0.526255, 0.787391, 0.321046,
		-0.789119, 0.592881, -0.160571,
		36.333958, 41.979095, 17.972084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902878, 42.046989, 18.565718>,  <36.886341, 41.564079, 18.084484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902878, 42.046989, 18.565718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.520195, 42.012112, 18.454641>,  <36.290585, 41.991184, 18.387997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.520195, 42.012112, 18.454641>,  <36.902878, 42.046989, 18.565718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520195, 42.012112, 18.454641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272950, -0.062482, 0.959997,
		-0.101062, 0.994229, 0.035976,
		-0.956705, -0.087199, -0.277689,
		36.233185, 41.985950, 18.371334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493183, 42.520679, 19.037687>,  <36.902878, 42.046989, 18.565718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493183, 42.520679, 19.037687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.247952, 42.239407, 18.893648>,  <36.100811, 42.070644, 18.807224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.247952, 42.239407, 18.893648>,  <36.493183, 42.520679, 19.037687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247952, 42.239407, 18.893648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296721, -0.217486, 0.929869,
		-0.732183, 0.676931, -0.075313,
		-0.613078, -0.703181, -0.360099,
		36.064030, 42.028454, 18.785618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823921, 42.677528, 19.406624>,  <36.493183, 42.520679, 19.037687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823921, 42.677528, 19.406624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.795406, 42.311085, 19.248804>,  <35.778297, 42.091221, 19.154112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.795406, 42.311085, 19.248804>,  <35.823921, 42.677528, 19.406624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795406, 42.311085, 19.248804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362643, -0.344685, 0.865842,
		-0.929198, 0.204804, -0.307647,
		-0.071286, -0.916105, -0.394551,
		35.774021, 42.036255, 19.130438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150211, 42.532928, 19.531998>,  <35.823921, 42.677528, 19.406624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150211, 42.532928, 19.531998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.365673, 42.198284, 19.492125>,  <35.494949, 41.997498, 19.468201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.365673, 42.198284, 19.492125>,  <35.150211, 42.532928, 19.531998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365673, 42.198284, 19.492125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397980, -0.356941, 0.845107,
		-0.742603, -0.415552, -0.525222,
		0.538658, -0.836606, -0.099684,
		35.527271, 41.947304, 19.462219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793583, 42.042694, 19.899618>,  <35.150211, 42.532928, 19.531998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793583, 42.042694, 19.899618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.147644, 41.860615, 19.861034>,  <35.360081, 41.751366, 19.837885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.147644, 41.860615, 19.861034>,  <34.793583, 42.042694, 19.899618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147644, 41.860615, 19.861034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170089, -0.509486, 0.843501,
		-0.433103, -0.730219, -0.528396,
		0.885151, -0.455197, -0.096458,
		35.413189, 41.724056, 19.832096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667686, 41.296745, 20.061943>,  <34.793583, 42.042694, 19.899618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667686, 41.296745, 20.061943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047874, 41.399498, 20.131939>,  <35.275986, 41.461147, 20.173937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047874, 41.399498, 20.131939>,  <34.667686, 41.296745, 20.061943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047874, 41.399498, 20.131939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031910, -0.479377, 0.877029,
		0.309176, -0.839173, -0.447436,
		0.950469, 0.256879, 0.174990,
		35.333015, 41.476562, 20.184437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960526, 40.666405, 20.310585>,  <34.667686, 41.296745, 20.061943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960526, 40.666405, 20.310585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277092, 40.893692, 20.400723>,  <35.467033, 41.030064, 20.454805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277092, 40.893692, 20.400723>,  <34.960526, 40.666405, 20.310585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277092, 40.893692, 20.400723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105157, -0.489711, 0.865520,
		0.602159, -0.661294, -0.447320,
		0.791420, 0.568220, 0.225344,
		35.514519, 41.064159, 20.468327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580242, 40.277081, 20.389534>,  <34.960526, 40.666405, 20.310585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580242, 40.277081, 20.389534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648735, 40.605591, 20.607224>,  <35.689831, 40.802696, 20.737837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648735, 40.605591, 20.607224>,  <35.580242, 40.277081, 20.389534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648735, 40.605591, 20.607224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442816, -0.557599, 0.702137,
		0.880110, 0.120763, -0.459155,
		0.171232, 0.821279, 0.544224,
		35.700104, 40.851974, 20.770491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365021, 40.281174, 20.737946>,  <35.580242, 40.277081, 20.389534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365021, 40.281174, 20.737946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.110817, 40.504353, 20.951422>,  <35.958294, 40.638260, 21.079508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.110817, 40.504353, 20.951422>,  <36.365021, 40.281174, 20.737946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110817, 40.504353, 20.951422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167353, -0.575251, 0.800674,
		0.753741, 0.598148, 0.272201,
		-0.635506, 0.557947, 0.533693,
		35.920166, 40.671738, 21.111530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767292, 40.381275, 21.338554>,  <36.365021, 40.281174, 20.737946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767292, 40.381275, 21.338554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.384415, 40.438858, 21.439003>,  <36.154690, 40.473408, 21.499271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.384415, 40.438858, 21.439003>,  <36.767292, 40.381275, 21.338554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384415, 40.438858, 21.439003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153489, -0.483117, 0.861997,
		0.245411, 0.863640, 0.440340,
		-0.957191, 0.143956, 0.251121,
		36.097256, 40.482044, 21.514339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825039, 40.549873, 22.041079>,  <36.767292, 40.381275, 21.338554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825039, 40.549873, 22.041079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.441807, 40.451000, 21.983122>,  <36.211868, 40.391678, 21.948347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.441807, 40.451000, 21.983122>,  <36.825039, 40.549873, 22.041079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441807, 40.451000, 21.983122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058953, -0.664950, 0.744557,
		-0.280385, 0.704800, 0.651645,
		-0.958076, -0.247179, -0.144892,
		36.154385, 40.376846, 21.939653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405243, 40.705994, 22.684650>,  <36.825039, 40.549873, 22.041079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405243, 40.705994, 22.684650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.211739, 40.418819, 22.484436>,  <36.095634, 40.246513, 22.364307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.211739, 40.418819, 22.484436>,  <36.405243, 40.705994, 22.684650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211739, 40.418819, 22.484436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140877, -0.628332, 0.765083,
		-0.863786, 0.299606, 0.405105,
		-0.483764, -0.717938, -0.500537,
		36.066608, 40.203438, 22.334274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055431, 40.339470, 23.130005>,  <36.405243, 40.705994, 22.684650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055431, 40.339470, 23.130005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.046169, 40.078419, 22.827074>,  <36.040611, 39.921787, 22.645315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.046169, 40.078419, 22.827074>,  <36.055431, 40.339470, 23.130005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046169, 40.078419, 22.827074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002195, -0.757560, 0.652762,
		-0.999730, 0.013450, 0.018971,
		-0.023152, -0.652627, -0.757326,
		36.039223, 39.882629, 22.599876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573139, 39.826744, 23.394154>,  <36.055431, 40.339470, 23.130005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573139, 39.826744, 23.394154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.756641, 39.637814, 23.093103>,  <35.866741, 39.524456, 22.912474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.756641, 39.637814, 23.093103>,  <35.573139, 39.826744, 23.394154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756641, 39.637814, 23.093103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020920, -0.852523, 0.522271,
		-0.888317, -0.223849, -0.400980,
		0.458755, -0.472330, -0.752627,
		35.894268, 39.496113, 22.867315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107479, 39.303989, 23.164133>,  <35.573139, 39.826744, 23.394154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107479, 39.303989, 23.164133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.488354, 39.201405, 23.097717>,  <35.716877, 39.139854, 23.057867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.488354, 39.201405, 23.097717>,  <35.107479, 39.303989, 23.164133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488354, 39.201405, 23.097717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142232, -0.853083, 0.502015,
		-0.270397, -0.454395, -0.848770,
		0.952185, -0.256465, -0.166041,
		35.774010, 39.124466, 23.047905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031197, 38.666252, 23.037548>,  <35.107479, 39.303989, 23.164133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031197, 38.666252, 23.037548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.417957, 38.699692, 23.133980>,  <35.650013, 38.719757, 23.191839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.417957, 38.699692, 23.133980>,  <35.031197, 38.666252, 23.037548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417957, 38.699692, 23.133980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100327, -0.744148, 0.660437,
		0.234609, -0.662763, -0.711129,
		0.966899, 0.083599, 0.241077,
		35.708027, 38.724773, 23.206303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312130, 37.956890, 22.917143>,  <35.031197, 38.666252, 23.037548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312130, 37.956890, 22.917143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.566818, 38.118298, 23.179976>,  <35.719631, 38.215141, 23.337675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.566818, 38.118298, 23.179976>,  <35.312130, 37.956890, 22.917143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566818, 38.118298, 23.179976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100310, -0.801554, 0.589448,
		0.764541, -0.441227, -0.469890,
		0.636722, 0.403522, 0.657080,
		35.757835, 38.239353, 23.377100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710728, 37.368401, 23.202503>,  <35.312130, 37.956890, 22.917143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710728, 37.368401, 23.202503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.779156, 37.652184, 23.475973>,  <35.820213, 37.822453, 23.640055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.779156, 37.652184, 23.475973>,  <35.710728, 37.368401, 23.202503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779156, 37.652184, 23.475973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037600, -0.698097, 0.715015,
		0.984541, -0.096611, -0.146098,
		0.171069, 0.709455, 0.683673,
		35.830475, 37.865021, 23.681074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064529, 37.044876, 23.812140>,  <35.710728, 37.368401, 23.202503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064529, 37.044876, 23.812140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995152, 37.401661, 23.979149>,  <35.953526, 37.615730, 24.079353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995152, 37.401661, 23.979149>,  <36.064529, 37.044876, 23.812140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995152, 37.401661, 23.979149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136276, -0.398133, 0.907149,
		0.975370, 0.214235, -0.052501,
		-0.173441, 0.891960, 0.417522,
		35.943119, 37.669250, 24.104406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.963203, 36.353489, 27.455612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.621735, 36.488590, 27.614193>,  <40.416855, 36.569653, 27.709341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.621735, 36.488590, 27.614193>,  <40.963203, 36.353489, 27.455612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621735, 36.488590, 27.614193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210237, -0.472962, 0.855633,
		0.476498, 0.813775, 0.332745,
		-0.853669, 0.337752, 0.396451,
		40.365635, 36.589916, 27.733128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151920, 36.726971, 28.095434>,  <40.963203, 36.353489, 27.455612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151920, 36.726971, 28.095434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.765362, 36.632858, 28.136860>,  <40.533428, 36.576393, 28.161715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.765362, 36.632858, 28.136860>,  <41.151920, 36.726971, 28.095434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765362, 36.632858, 28.136860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197575, -0.422078, 0.884768,
		-0.164454, 0.875497, 0.454379,
		-0.966395, -0.235278, 0.103564,
		40.475445, 36.562275, 28.167929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838161, 36.935081, 28.746181>,  <41.151920, 36.726971, 28.095434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838161, 36.935081, 28.746181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.620171, 36.620632, 28.629557>,  <40.489376, 36.431961, 28.559582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.620171, 36.620632, 28.629557>,  <40.838161, 36.935081, 28.746181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620171, 36.620632, 28.629557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020966, -0.360405, 0.932560,
		-0.838190, 0.502109, 0.212894,
		-0.544975, -0.786126, -0.291560,
		40.456676, 36.384792, 28.542088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411961, 36.819572, 29.324984>,  <40.838161, 36.935081, 28.746181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411961, 36.819572, 29.324984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.351383, 36.479992, 29.122459>,  <40.315037, 36.276245, 29.000944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.351383, 36.479992, 29.122459>,  <40.411961, 36.819572, 29.324984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351383, 36.479992, 29.122459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044715, -0.517578, 0.854467,
		-0.987455, 0.106761, 0.116343,
		-0.151441, -0.848949, -0.506311,
		40.305950, 36.225307, 28.970566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802620, 36.460308, 29.600300>,  <40.411961, 36.819572, 29.324984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802620, 36.460308, 29.600300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.011757, 36.175461, 29.412888>,  <40.137238, 36.004551, 29.300440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.011757, 36.175461, 29.412888>,  <39.802620, 36.460308, 29.600300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011757, 36.175461, 29.412888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131974, -0.610636, 0.780837,
		-0.842153, -0.346418, -0.413246,
		0.522839, -0.712122, -0.468531,
		40.168610, 35.961823, 29.272329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459358, 35.882698, 29.686226>,  <39.802620, 36.460308, 29.600300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459358, 35.882698, 29.686226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.811749, 35.726643, 29.579134>,  <40.023182, 35.633011, 29.514879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.811749, 35.726643, 29.579134>,  <39.459358, 35.882698, 29.686226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811749, 35.726643, 29.579134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052182, -0.642482, 0.764522,
		-0.470279, -0.659553, -0.586368,
		0.880974, -0.390137, -0.267729,
		40.076042, 35.609600, 29.498816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427116, 35.054428, 29.781065>,  <39.459358, 35.882698, 29.686226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427116, 35.054428, 29.781065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.807747, 35.170887, 29.820534>,  <40.036125, 35.240765, 29.844215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.807747, 35.170887, 29.820534>,  <39.427116, 35.054428, 29.781065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807747, 35.170887, 29.820534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087653, -0.564617, 0.820686,
		0.294656, -0.772295, -0.562795,
		0.951575, 0.291151, 0.098673,
		40.093220, 35.258232, 29.850136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783554, 34.500626, 30.011789>,  <39.427116, 35.054428, 29.781065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783554, 34.500626, 30.011789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.036163, 34.794327, 30.111427>,  <40.187729, 34.970547, 30.171209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.036163, 34.794327, 30.111427>,  <39.783554, 34.500626, 30.011789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036163, 34.794327, 30.111427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262396, -0.504701, 0.822450,
		0.729605, -0.454037, -0.511397,
		0.631526, 0.734253, 0.249095,
		40.225620, 35.014603, 30.186155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169773, 34.163467, 30.502213>,  <39.783554, 34.500626, 30.011789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169773, 34.163467, 30.502213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.312752, 34.530354, 30.572582>,  <40.398540, 34.750484, 30.614803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.312752, 34.530354, 30.572582>,  <40.169773, 34.163467, 30.502213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312752, 34.530354, 30.572582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424106, -0.327241, 0.844421,
		0.832084, -0.227229, -0.505968,
		0.357450, 0.917213, 0.175923,
		40.419987, 34.805519, 30.625359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868179, 34.063866, 30.683599>,  <40.169773, 34.163467, 30.502213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868179, 34.063866, 30.683599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.762154, 34.421764, 30.827358>,  <40.698536, 34.636505, 30.913614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.762154, 34.421764, 30.827358>,  <40.868179, 34.063866, 30.683599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762154, 34.421764, 30.827358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395039, -0.239241, 0.886965,
		0.879593, 0.377080, -0.290046,
		-0.265066, 0.894748, 0.359396,
		40.682632, 34.690189, 30.935177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424538, 34.333385, 31.132675>,  <40.868179, 34.063866, 30.683599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424538, 34.333385, 31.132675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.105518, 34.545624, 31.247480>,  <40.914104, 34.672966, 31.316364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.105518, 34.545624, 31.247480>,  <41.424538, 34.333385, 31.132675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105518, 34.545624, 31.247480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176701, -0.249431, 0.952135,
		0.576792, 0.810092, 0.105177,
		-0.797551, 0.530599, 0.287014,
		40.866253, 34.704803, 31.333584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627419, 34.666420, 31.762510>,  <41.424538, 34.333385, 31.132675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627419, 34.666420, 31.762510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.228729, 34.690380, 31.784250>,  <40.989517, 34.704754, 31.797295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.228729, 34.690380, 31.784250>,  <41.627419, 34.666420, 31.762510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228729, 34.690380, 31.784250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051631, -0.046036, 0.997605,
		0.062255, 0.997142, 0.042792,
		-0.996724, 0.059896, 0.054350,
		40.929710, 34.708347, 31.800554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448406, 35.178871, 32.246025>,  <41.627419, 34.666420, 31.762510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448406, 35.178871, 32.246025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.169426, 34.893074, 32.223896>,  <41.002037, 34.721596, 32.210617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.169426, 34.893074, 32.223896>,  <41.448406, 35.178871, 32.246025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169426, 34.893074, 32.223896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148674, -0.219785, 0.964153,
		-0.701039, 0.664225, 0.259516,
		-0.697453, -0.714492, -0.055325,
		40.960190, 34.678726, 32.207298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040382, 35.228901, 32.948410>,  <41.448406, 35.178871, 32.246025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040382, 35.228901, 32.948410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.971004, 34.861645, 32.805901>,  <40.929379, 34.641289, 32.720394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.971004, 34.861645, 32.805901>,  <41.040382, 35.228901, 32.948410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971004, 34.861645, 32.805901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034030, -0.367129, 0.929547,
		-0.984255, 0.149102, 0.094922,
		-0.173446, -0.918142, -0.356275,
		40.918972, 34.586201, 32.699017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388363, 35.906704, 33.257347>,  <41.040382, 35.228901, 32.948410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388363, 35.906704, 33.257347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.369434, 36.272469, 33.418152>,  <41.358078, 36.491928, 33.514633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.369434, 36.272469, 33.418152>,  <41.388363, 35.906704, 33.257347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369434, 36.272469, 33.418152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258704, 0.377511, -0.889133,
		-0.964797, -0.146074, 0.218699,
		-0.047318, 0.914411, 0.402012,
		41.355240, 36.546791, 33.538757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860027, 36.259151, 32.898422>,  <41.388363, 35.906704, 33.257347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860027, 36.259151, 32.898422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.019802, 36.573524, 33.087215>,  <41.115665, 36.762146, 33.200489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.019802, 36.573524, 33.087215>,  <40.860027, 36.259151, 32.898422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019802, 36.573524, 33.087215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284680, 0.595718, -0.751051,
		-0.871440, 0.165634, 0.461691,
		0.399437, 0.785930, 0.471980,
		41.139633, 36.809303, 33.228809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343575, 36.887016, 32.960373>,  <40.860027, 36.259151, 32.898422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343575, 36.887016, 32.960373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.722210, 37.015255, 32.974163>,  <40.949390, 37.092197, 32.982437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.722210, 37.015255, 32.974163>,  <40.343575, 36.887016, 32.960373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722210, 37.015255, 32.974163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174294, 0.598693, -0.781785,
		-0.271280, 0.734019, 0.622594,
		0.946588, 0.320597, 0.034478,
		41.006187, 37.111435, 32.984505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236118, 37.518929, 32.612415>,  <40.343575, 36.887016, 32.960373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236118, 37.518929, 32.612415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.634262, 37.489315, 32.637005>,  <40.873150, 37.471546, 32.651760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.634262, 37.489315, 32.637005>,  <40.236118, 37.518929, 32.612415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634262, 37.489315, 32.637005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094293, 0.622766, -0.776706,
		0.019215, 0.778898, 0.626856,
		0.995359, -0.074033, 0.061478,
		40.932869, 37.467106, 32.655449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586449, 38.252590, 32.736195>,  <40.236118, 37.518929, 32.612415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586449, 38.252590, 32.736195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.851509, 38.030792, 32.534832>,  <41.010548, 37.897713, 32.414013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.851509, 38.030792, 32.534832>,  <40.586449, 38.252590, 32.736195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851509, 38.030792, 32.534832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015103, 0.681933, -0.731259,
		0.748774, 0.476969, 0.460260,
		0.662654, -0.554499, -0.503409,
		41.050304, 37.864441, 32.383808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956455, 38.699265, 32.449089>,  <40.586449, 38.252590, 32.736195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956455, 38.699265, 32.449089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.077904, 38.370186, 32.256847>,  <41.150772, 38.172737, 32.141502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.077904, 38.370186, 32.256847>,  <40.956455, 38.699265, 32.449089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077904, 38.370186, 32.256847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133240, 0.536126, -0.833556,
		0.943430, 0.189052, 0.272397,
		0.303624, -0.822696, -0.480608,
		41.168991, 38.123379, 32.112663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562057, 38.895611, 32.135822>,  <40.956455, 38.699265, 32.449089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562057, 38.895611, 32.135822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.368828, 38.589840, 31.965042>,  <41.252892, 38.406376, 31.862574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.368828, 38.589840, 31.965042>,  <41.562057, 38.895611, 32.135822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368828, 38.589840, 31.965042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091836, 0.440699, -0.892945,
		0.870752, -0.470566, -0.142686,
		-0.483071, -0.764430, -0.426954,
		41.223907, 38.360512, 31.836956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951530, 38.715504, 31.486502>,  <41.562057, 38.895611, 32.135822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951530, 38.715504, 31.486502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.598171, 38.541775, 31.416107>,  <41.386154, 38.437538, 31.373871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.598171, 38.541775, 31.416107>,  <41.951530, 38.715504, 31.486502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598171, 38.541775, 31.416107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032762, 0.431864, -0.901343,
		0.467482, -0.790477, -0.395736,
		-0.883395, -0.434326, -0.175991,
		41.333153, 38.411480, 31.363310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021152, 38.459572, 30.864086>,  <41.951530, 38.715504, 31.486502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021152, 38.459572, 30.864086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.624714, 38.479961, 30.913275>,  <41.386848, 38.492195, 30.942787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.624714, 38.479961, 30.913275>,  <42.021152, 38.459572, 30.864086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624714, 38.479961, 30.913275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088813, 0.434914, -0.896082,
		-0.099161, -0.899028, -0.426515,
		-0.991100, 0.050976, 0.122972,
		41.327385, 38.495255, 30.950167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685646, 38.244751, 30.188171>,  <42.021152, 38.459572, 30.864086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685646, 38.244751, 30.188171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.429035, 38.474979, 30.391020>,  <41.275070, 38.613117, 30.512728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.429035, 38.474979, 30.391020>,  <41.685646, 38.244751, 30.188171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429035, 38.474979, 30.391020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225161, 0.490681, -0.841745,
		-0.733315, -0.654183, -0.185188,
		-0.641523, 0.575567, 0.507120,
		41.236580, 38.647648, 30.543156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113785, 38.166615, 29.756624>,  <41.685646, 38.244751, 30.188171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113785, 38.166615, 29.756624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.010319, 38.473133, 29.991869>,  <40.948238, 38.657043, 30.133017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.010319, 38.473133, 29.991869>,  <41.113785, 38.166615, 29.756624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010319, 38.473133, 29.991869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360035, 0.488483, -0.794833,
		-0.896363, -0.417338, 0.149540,
		-0.258667, 0.766298, 0.588114,
		40.932720, 38.703022, 30.168303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397537, 38.332226, 29.555487>,  <41.113785, 38.166615, 29.756624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397537, 38.332226, 29.555487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.517979, 38.662502, 29.746304>,  <40.590244, 38.860668, 29.860794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.517979, 38.662502, 29.746304>,  <40.397537, 38.332226, 29.555487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517979, 38.662502, 29.746304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323595, 0.559048, -0.763382,
		-0.897006, 0.075493, 0.435523,
		0.301108, 0.825692, 0.477040,
		40.608311, 38.910210, 29.889416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898033, 38.754993, 29.386585>,  <40.397537, 38.332226, 29.555487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898033, 38.754993, 29.386585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.193668, 38.999672, 29.499420>,  <40.371048, 39.146481, 29.567122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.193668, 38.999672, 29.499420>,  <39.898033, 38.754993, 29.386585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193668, 38.999672, 29.499420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178683, 0.581803, -0.793459,
		-0.649477, 0.536032, 0.539304,
		0.739088, 0.611698, 0.282088,
		40.415394, 39.183182, 29.584047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627014, 39.530102, 29.368610>,  <39.898033, 38.754993, 29.386585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627014, 39.530102, 29.368610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.025394, 39.529739, 29.332663>,  <40.264423, 39.529522, 29.311094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.025394, 39.529739, 29.332663>,  <39.627014, 39.530102, 29.368610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025394, 39.529739, 29.332663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061270, 0.724690, -0.686345,
		0.065753, 0.689074, 0.721702,
		0.995953, -0.000910, -0.089870,
		40.324181, 39.529465, 29.305702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370850, 40.076462, 29.716318>,  <39.627014, 39.530102, 29.368610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370850, 40.076462, 29.716318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.290554, 40.463459, 29.777845>,  <39.242374, 40.695656, 29.814762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.290554, 40.463459, 29.777845>,  <39.370850, 40.076462, 29.716318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290554, 40.463459, 29.777845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220965, -0.108253, 0.969255,
		0.954399, 0.228559, -0.192051,
		-0.200742, 0.967493, 0.153820,
		39.230331, 40.753708, 29.823992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984226, 40.442368, 30.043026>,  <39.370850, 40.076462, 29.716318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984226, 40.442368, 30.043026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.654636, 40.656090, 30.118479>,  <39.456882, 40.784321, 30.163752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.654636, 40.656090, 30.118479>,  <39.984226, 40.442368, 30.043026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654636, 40.656090, 30.118479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136014, -0.136666, 0.981235,
		0.550057, 0.834172, 0.039937,
		-0.823977, 0.534303, 0.188633,
		39.407444, 40.816380, 30.175068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092430, 40.581230, 30.638762>,  <39.984226, 40.442368, 30.043026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092430, 40.581230, 30.638762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.698864, 40.652279, 30.646425>,  <39.462727, 40.694908, 30.651024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.698864, 40.652279, 30.646425>,  <40.092430, 40.581230, 30.638762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698864, 40.652279, 30.646425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032527, -0.283562, 0.958402,
		0.175669, 0.942360, 0.284777,
		-0.983912, 0.177625, 0.019161,
		39.403690, 40.705566, 30.652174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997280, 40.880123, 31.309708>,  <40.092430, 40.581230, 30.638762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997280, 40.880123, 31.309708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.628765, 40.765156, 31.204929>,  <39.407654, 40.696175, 31.142063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.628765, 40.765156, 31.204929>,  <39.997280, 40.880123, 31.309708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628765, 40.765156, 31.204929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150012, -0.358779, 0.921289,
		-0.358779, 0.888069, 0.287422,
		-0.921289, -0.287422, -0.261943,
		39.352379, 40.678928, 31.126347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478287, 41.211391, 31.759336>,  <39.997280, 40.880123, 31.309708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478287, 41.211391, 31.759336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.321671, 40.871471, 31.618177>,  <39.227703, 40.667519, 31.533482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.321671, 40.871471, 31.618177>,  <39.478287, 41.211391, 31.759336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321671, 40.871471, 31.618177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183093, -0.303899, 0.934945,
		-0.901762, 0.430680, -0.036604,
		-0.391538, -0.849800, -0.352899,
		39.204208, 40.616531, 31.512308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970745, 41.043720, 32.208973>,  <39.478287, 41.211391, 31.759336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970745, 41.043720, 32.208973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.001633, 40.686951, 32.030758>,  <39.020164, 40.472889, 31.923828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.001633, 40.686951, 32.030758>,  <38.970745, 41.043720, 32.208973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001633, 40.686951, 32.030758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292105, -0.447505, 0.845230,
		-0.953263, 0.064873, -0.295094,
		0.077223, -0.891925, -0.445539,
		39.024799, 40.419373, 31.897097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277798, 40.656876, 32.228504>,  <38.970745, 41.043720, 32.208973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277798, 40.656876, 32.228504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.578259, 40.395599, 32.190331>,  <38.758537, 40.238834, 32.167427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.578259, 40.395599, 32.190331>,  <38.277798, 40.656876, 32.228504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578259, 40.395599, 32.190331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309313, -0.475987, 0.823263,
		-0.583173, -0.588879, -0.559581,
		0.751156, -0.653190, -0.095434,
		38.803604, 40.199642, 32.161701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932568, 40.057899, 32.395645>,  <38.277798, 40.656876, 32.228504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932568, 40.057899, 32.395645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.319187, 39.976074, 32.457539>,  <38.551159, 39.926979, 32.494675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.319187, 39.976074, 32.457539>,  <37.932568, 40.057899, 32.395645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319187, 39.976074, 32.457539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228757, -0.414618, 0.880774,
		-0.116022, -0.886704, -0.447543,
		0.966545, -0.204568, 0.154735,
		38.609150, 39.914703, 32.503960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912304, 39.352810, 32.608074>,  <37.932568, 40.057899, 32.395645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912304, 39.352810, 32.608074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.275642, 39.471088, 32.726383>,  <38.493645, 39.542053, 32.797367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.275642, 39.471088, 32.726383>,  <37.912304, 39.352810, 32.608074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275642, 39.471088, 32.726383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133257, -0.465718, 0.874843,
		0.396430, -0.834070, -0.383628,
		0.908342, 0.295693, 0.295770,
		38.548145, 39.559795, 32.815113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139324, 38.791218, 32.881054>,  <37.912304, 39.352810, 32.608074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139324, 38.791218, 32.881054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.372292, 39.074596, 33.040501>,  <38.512074, 39.244625, 33.136169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.372292, 39.074596, 33.040501>,  <38.139324, 38.791218, 32.881054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372292, 39.074596, 33.040501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133827, -0.400111, 0.906643,
		0.801798, -0.581390, -0.138222,
		0.582417, 0.708447, 0.398614,
		38.547016, 39.287132, 33.160084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723427, 38.419693, 33.224609>,  <38.139324, 38.791218, 32.881054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723427, 38.419693, 33.224609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.651749, 38.775455, 33.392822>,  <38.608742, 38.988914, 33.493752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.651749, 38.775455, 33.392822>,  <38.723427, 38.419693, 33.224609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651749, 38.775455, 33.392822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009929, -0.429065, 0.903219,
		0.983763, 0.157677, 0.085717,
		-0.179195, 0.889405, 0.420533,
		38.597992, 39.042278, 33.518982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214573, 38.495705, 33.842628>,  <38.723427, 38.419693, 33.224609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214573, 38.495705, 33.842628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.899605, 38.739399, 33.880154>,  <38.710625, 38.885616, 33.902668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.899605, 38.739399, 33.880154>,  <39.214573, 38.495705, 33.842628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899605, 38.739399, 33.880154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076642, -0.247773, 0.965782,
		0.611629, 0.753290, 0.241795,
		-0.787424, 0.609232, 0.093811,
		38.663376, 38.922169, 33.908298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.892811, 42.088665, 26.592752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562576, 42.309475, 26.639542>,  <39.364437, 42.441959, 26.667614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562576, 42.309475, 26.639542>,  <39.892811, 42.088665, 26.592752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562576, 42.309475, 26.639542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071910, -0.102678, 0.992112,
		0.559677, 0.827484, 0.045073,
		-0.825585, 0.552021, 0.116971,
		39.314899, 42.475082, 26.674633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006847, 42.619488, 27.055809>,  <39.892811, 42.088665, 26.592752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006847, 42.619488, 27.055809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615971, 42.535065, 27.046480>,  <39.381443, 42.484409, 27.040882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615971, 42.535065, 27.046480>,  <40.006847, 42.619488, 27.055809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615971, 42.535065, 27.046480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001188, -0.115265, 0.993334,
		-0.212339, 0.970654, 0.112887,
		-0.977195, -0.211058, -0.023322,
		39.322811, 42.471748, 27.039484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769962, 43.000973, 27.658974>,  <40.006847, 42.619488, 27.055809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769962, 43.000973, 27.658974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520473, 42.712044, 27.539497>,  <39.370781, 42.538685, 27.467812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520473, 42.712044, 27.539497>,  <39.769962, 43.000973, 27.658974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520473, 42.712044, 27.539497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181152, -0.238143, 0.954186,
		-0.760364, 0.649257, 0.017685,
		-0.623724, -0.722325, -0.298689,
		39.333355, 42.495346, 27.449890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161472, 43.045822, 28.071974>,  <39.769962, 43.000973, 27.658974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161472, 43.045822, 28.071974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158009, 42.667717, 27.941494>,  <39.155930, 42.440853, 27.863205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158009, 42.667717, 27.941494>,  <39.161472, 43.045822, 28.071974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158009, 42.667717, 27.941494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050681, -0.325379, 0.944224,
		-0.998677, 0.024705, -0.045090,
		-0.008656, -0.945261, -0.326201,
		39.155411, 42.384140, 27.843634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674526, 42.656990, 28.573614>,  <39.161472, 43.045822, 28.071974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674526, 42.656990, 28.573614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869835, 42.347641, 28.411884>,  <38.987022, 42.162029, 28.314846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869835, 42.347641, 28.411884>,  <38.674526, 42.656990, 28.573614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869835, 42.347641, 28.411884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038437, -0.481916, 0.875374,
		-0.871843, -0.411883, -0.265034,
		0.488276, -0.773375, -0.404324,
		39.016319, 42.115627, 28.290586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341106, 42.074703, 28.825159>,  <38.674526, 42.656990, 28.573614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341106, 42.074703, 28.825159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687458, 41.924839, 28.692564>,  <38.895267, 41.834919, 28.613007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687458, 41.924839, 28.692564>,  <38.341106, 42.074703, 28.825159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687458, 41.924839, 28.692564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057142, -0.584225, 0.809577,
		-0.496977, -0.719939, -0.484460,
		0.865880, -0.374658, -0.331486,
		38.947224, 41.812443, 28.593119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226486, 41.419651, 28.972967>,  <38.341106, 42.074703, 28.825159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226486, 41.419651, 28.972967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622517, 41.448006, 28.924429>,  <38.860134, 41.465019, 28.895306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622517, 41.448006, 28.924429>,  <38.226486, 41.419651, 28.972967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622517, 41.448006, 28.924429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139409, -0.604499, 0.784313,
		-0.017756, -0.793446, -0.608382,
		0.990076, 0.070888, -0.121347,
		38.919540, 41.469273, 28.888025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390202, 40.713245, 28.960417>,  <38.226486, 41.419651, 28.972967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390202, 40.713245, 28.960417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701111, 40.951141, 29.042515>,  <38.887657, 41.093880, 29.091774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701111, 40.951141, 29.042515>,  <38.390202, 40.713245, 28.960417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701111, 40.951141, 29.042515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127210, -0.468045, 0.874501,
		0.616165, -0.653619, -0.439457,
		0.777276, 0.594740, 0.205246,
		38.934292, 41.129562, 29.104088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983677, 40.265991, 29.129728>,  <38.390202, 40.713245, 28.960417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983677, 40.265991, 29.129728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033649, 40.628719, 29.290764>,  <39.063633, 40.846355, 29.387384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033649, 40.628719, 29.290764>,  <38.983677, 40.265991, 29.129728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033649, 40.628719, 29.290764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319129, -0.420930, 0.849102,
		0.939441, 0.022401, -0.341977,
		0.124928, 0.906816, 0.402588,
		39.071129, 40.900764, 29.411541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703545, 40.308399, 29.126461>,  <38.983677, 40.265991, 29.129728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703545, 40.308399, 29.126461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035824, 40.098381, 29.052425>,  <40.235191, 39.972370, 29.008003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035824, 40.098381, 29.052425>,  <39.703545, 40.308399, 29.126461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035824, 40.098381, 29.052425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033742, 0.284372, -0.958120,
		0.555693, 0.802158, 0.218512,
		0.830702, -0.525048, -0.185090,
		40.285034, 39.940868, 28.996899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183949, 40.745525, 28.887037>,  <39.703545, 40.308399, 29.126461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183949, 40.745525, 28.887037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338005, 40.395782, 28.768942>,  <40.430439, 40.185936, 28.698084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338005, 40.395782, 28.768942>,  <40.183949, 40.745525, 28.887037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338005, 40.395782, 28.768942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100270, 0.357673, -0.928448,
		0.917393, 0.327982, 0.225427,
		0.385143, -0.874356, -0.295240,
		40.453548, 40.133476, 28.680370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825462, 40.858044, 28.574835>,  <40.183949, 40.745525, 28.887037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825462, 40.858044, 28.574835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693020, 40.510799, 28.426914>,  <40.613552, 40.302452, 28.338161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693020, 40.510799, 28.426914>,  <40.825462, 40.858044, 28.574835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693020, 40.510799, 28.426914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237653, 0.302551, -0.923029,
		0.913174, -0.393508, 0.106132,
		-0.331110, -0.868109, -0.369801,
		40.593685, 40.250366, 28.315973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322174, 40.675297, 28.080013>,  <40.825462, 40.858044, 28.574835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322174, 40.675297, 28.080013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015476, 40.440449, 27.976173>,  <40.831455, 40.299541, 27.913870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015476, 40.440449, 27.976173>,  <41.322174, 40.675297, 28.080013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015476, 40.440449, 27.976173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251357, 0.097530, -0.962968,
		0.590693, -0.803606, 0.072795,
		-0.766747, -0.587116, -0.259602,
		40.785454, 40.264313, 27.898293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548611, 40.328983, 27.558193>,  <41.322174, 40.675297, 28.080013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548611, 40.328983, 27.558193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156960, 40.250465, 27.537146>,  <40.921967, 40.203354, 27.524517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156960, 40.250465, 27.537146>,  <41.548611, 40.328983, 27.558193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156960, 40.250465, 27.537146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070229, -0.083852, -0.994000,
		0.190705, -0.976953, 0.095888,
		-0.979132, -0.196295, -0.052619,
		40.863220, 40.191578, 27.521360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522343, 39.803883, 27.039700>,  <41.548611, 40.328983, 27.558193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522343, 39.803883, 27.039700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190212, 40.026741, 27.044392>,  <40.990932, 40.160458, 27.047207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190212, 40.026741, 27.044392>,  <41.522343, 39.803883, 27.039700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190212, 40.026741, 27.044392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037414, 0.076737, -0.996349,
		-0.556015, -0.826859, -0.084562,
		-0.830330, 0.557149, 0.011731,
		40.941113, 40.193886, 27.047911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202560, 39.540604, 26.382721>,  <41.522343, 39.803883, 27.039700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202560, 39.540604, 26.382721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002880, 39.867947, 26.496624>,  <40.883072, 40.064354, 26.564966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002880, 39.867947, 26.496624>,  <41.202560, 39.540604, 26.382721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002880, 39.867947, 26.496624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169467, 0.230078, -0.958303,
		-0.849754, -0.526641, 0.023830,
		-0.499199, 0.818360, 0.284757,
		40.853119, 40.113453, 26.582050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563087, 39.563389, 26.016392>,  <41.202560, 39.540604, 26.382721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563087, 39.563389, 26.016392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636063, 39.944550, 26.113302>,  <40.679848, 40.173244, 26.171448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636063, 39.944550, 26.113302>,  <40.563087, 39.563389, 26.016392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636063, 39.944550, 26.113302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144116, 0.269665, -0.952109,
		-0.972598, 0.138784, 0.186525,
		0.182437, 0.952901, 0.242275,
		40.690792, 40.230419, 26.185986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112480, 40.009602, 25.598038>,  <40.563087, 39.563389, 26.016392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112480, 40.009602, 25.598038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394142, 40.271492, 25.707951>,  <40.563137, 40.428627, 25.773897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394142, 40.271492, 25.707951>,  <40.112480, 40.009602, 25.598038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394142, 40.271492, 25.707951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109195, 0.482235, -0.869210,
		-0.701602, 0.582051, 0.411060,
		0.704152, 0.654726, 0.274780,
		40.605389, 40.467911, 25.790384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724701, 40.685322, 25.512070>,  <40.112480, 40.009602, 25.598038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724701, 40.685322, 25.512070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116219, 40.763596, 25.536320>,  <40.351128, 40.810558, 25.550871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116219, 40.763596, 25.536320>,  <39.724701, 40.685322, 25.512070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116219, 40.763596, 25.536320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069162, 0.594220, -0.801323,
		-0.192829, 0.780136, 0.595151,
		0.978792, 0.195680, 0.060627,
		40.409855, 40.822300, 25.554508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750153, 41.384579, 25.359434>,  <39.724701, 40.685322, 25.512070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750153, 41.384579, 25.359434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113235, 41.224651, 25.308506>,  <40.331085, 41.128696, 25.277948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113235, 41.224651, 25.308506>,  <39.750153, 41.384579, 25.359434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113235, 41.224651, 25.308506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101606, 0.503845, -0.857798,
		0.407109, 0.765695, 0.497969,
		0.907711, -0.399814, -0.127321,
		40.385548, 41.104706, 25.270309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220257, 42.020931, 25.254162>,  <39.750153, 41.384579, 25.359434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220257, 42.020931, 25.254162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379845, 41.688599, 25.098963>,  <40.475597, 41.489201, 25.005844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379845, 41.688599, 25.098963>,  <40.220257, 42.020931, 25.254162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379845, 41.688599, 25.098963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038841, 0.407440, -0.912406,
		0.916142, 0.379090, 0.130285,
		0.398967, -0.830833, -0.387997,
		40.499535, 41.439350, 24.982563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530903, 42.218803, 24.693850>,  <40.220257, 42.020931, 25.254162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530903, 42.218803, 24.693850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579849, 41.833378, 24.598709>,  <40.609219, 41.602123, 24.541624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579849, 41.833378, 24.598709>,  <40.530903, 42.218803, 24.693850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579849, 41.833378, 24.598709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380482, 0.266887, -0.885440,
		0.916656, 0.017852, 0.399277,
		0.122369, -0.963562, -0.237851,
		40.616562, 41.544308, 24.527353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162506, 42.119053, 24.352592>,  <40.530903, 42.218803, 24.693850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162506, 42.119053, 24.352592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935017, 41.813461, 24.230680>,  <40.798523, 41.630108, 24.157534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935017, 41.813461, 24.230680>,  <41.162506, 42.119053, 24.352592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935017, 41.813461, 24.230680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291294, 0.159454, -0.943251,
		0.769219, -0.625232, 0.131856,
		-0.568726, -0.763976, -0.304781,
		40.764400, 41.584267, 24.139246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.287636, 40.176888, 24.689230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.536835, 40.488991, 24.711378>,  <34.686356, 40.676254, 24.724667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.536835, 40.488991, 24.711378>,  <34.287636, 40.176888, 24.689230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536835, 40.488991, 24.711378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442388, -0.409830, 0.797704,
		0.645110, -0.472473, -0.600502,
		0.622998, 0.780261, 0.055369,
		34.723736, 40.723068, 24.727989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916134, 39.846325, 24.826408>,  <34.287636, 40.176888, 24.689230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916134, 39.846325, 24.826408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.993027, 40.219635, 24.947765>,  <35.039162, 40.443619, 25.020580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.993027, 40.219635, 24.947765>,  <34.916134, 39.846325, 24.826408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993027, 40.219635, 24.947765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279443, -0.348417, 0.894716,
		0.940723, -0.087210, -0.327773,
		0.192230, 0.933274, 0.303394,
		35.050697, 40.499619, 25.038784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619293, 39.902260, 24.983040>,  <34.916134, 39.846325, 24.826408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619293, 39.902260, 24.983040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.434826, 40.197979, 25.179314>,  <35.324146, 40.375408, 25.297079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.434826, 40.197979, 25.179314>,  <35.619293, 39.902260, 24.983040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434826, 40.197979, 25.179314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391617, -0.326645, 0.860197,
		0.796219, 0.588853, -0.138883,
		-0.461164, 0.739294, 0.490686,
		35.296478, 40.419765, 25.326519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022087, 40.035870, 25.533611>,  <35.619293, 39.902260, 24.983040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022087, 40.035870, 25.533611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.705421, 40.241867, 25.665092>,  <35.515423, 40.365467, 25.743982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.705421, 40.241867, 25.665092>,  <36.022087, 40.035870, 25.533611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705421, 40.241867, 25.665092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168808, -0.332689, 0.927805,
		0.587173, 0.789997, 0.176443,
		-0.791664, 0.514997, 0.328704,
		35.467922, 40.396366, 25.763704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205303, 40.270645, 26.157207>,  <36.022087, 40.035870, 25.533611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205303, 40.270645, 26.157207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.805325, 40.271679, 26.161098>,  <35.565338, 40.272301, 26.163433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.805325, 40.271679, 26.161098>,  <36.205303, 40.270645, 26.157207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805325, 40.271679, 26.161098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006774, -0.541920, 0.840403,
		0.007444, 0.840426, 0.541875,
		-0.999949, 0.002586, 0.009727,
		35.505341, 40.272453, 26.164017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998451, 40.567917, 26.805304>,  <36.205303, 40.270645, 26.157207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998451, 40.567917, 26.805304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.671738, 40.366982, 26.691797>,  <35.475712, 40.246418, 26.623693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.671738, 40.366982, 26.691797>,  <35.998451, 40.567917, 26.805304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671738, 40.366982, 26.691797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061075, -0.564358, 0.823268,
		-0.573706, 0.655098, 0.491637,
		-0.816781, -0.502340, -0.283766,
		35.426704, 40.216278, 26.606667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572952, 40.528618, 27.424719>,  <35.998451, 40.567917, 26.805304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572952, 40.528618, 27.424719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.430481, 40.245274, 27.180964>,  <35.344997, 40.075268, 27.034710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.430481, 40.245274, 27.180964>,  <35.572952, 40.528618, 27.424719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430481, 40.245274, 27.180964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186593, -0.585107, 0.789198,
		-0.915597, 0.394804, 0.076228,
		-0.356180, -0.708364, -0.609390,
		35.323627, 40.032764, 26.998146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964928, 40.363537, 27.782669>,  <35.572952, 40.528618, 27.424719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964928, 40.363537, 27.782669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.066227, 40.060539, 27.541979>,  <35.127007, 39.878742, 27.397566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.066227, 40.060539, 27.541979>,  <34.964928, 40.363537, 27.782669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066227, 40.060539, 27.541979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100493, -0.639236, 0.762417,
		-0.962167, -0.132613, -0.238009,
		0.253250, -0.757490, -0.601725,
		35.142200, 39.833294, 27.361462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471581, 39.735641, 27.975739>,  <34.964928, 40.363537, 27.782669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471581, 39.735641, 27.975739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.768303, 39.569298, 27.765297>,  <34.946335, 39.469494, 27.639032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.768303, 39.569298, 27.765297>,  <34.471581, 39.735641, 27.975739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768303, 39.569298, 27.765297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114110, -0.694798, 0.710095,
		-0.660833, -0.586787, -0.467953,
		0.741807, -0.415856, -0.526104,
		34.990845, 39.444542, 27.607466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264130, 38.986446, 27.895397>,  <34.471581, 39.735641, 27.975739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264130, 38.986446, 27.895397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.657543, 38.997837, 27.824017>,  <34.893593, 39.004669, 27.781189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.657543, 38.997837, 27.824017>,  <34.264130, 38.986446, 27.895397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657543, 38.997837, 27.824017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142446, -0.729799, 0.668658,
		-0.111194, -0.683069, -0.721840,
		0.983537, 0.028473, -0.178449,
		34.952606, 39.006378, 27.770481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445911, 38.395073, 27.690208>,  <34.264130, 38.986446, 27.895397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445911, 38.395073, 27.690208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.776703, 38.564156, 27.838493>,  <34.975178, 38.665607, 27.927465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.776703, 38.564156, 27.838493>,  <34.445911, 38.395073, 27.690208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776703, 38.564156, 27.838493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060921, -0.722840, 0.688325,
		0.558928, -0.546644, -0.623523,
		0.826975, 0.422709, 0.370714,
		35.024796, 38.690968, 27.949707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813404, 37.819664, 27.771259>,  <34.445911, 38.395073, 27.690208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813404, 37.819664, 27.771259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.997719, 38.101418, 27.987230>,  <35.108307, 38.270470, 28.116812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.997719, 38.101418, 27.987230>,  <34.813404, 37.819664, 27.771259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997719, 38.101418, 27.987230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184354, -0.671056, 0.718121,
		0.868152, -0.231365, -0.439071,
		0.460789, 0.704382, 0.539925,
		35.135956, 38.312733, 28.149208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440842, 37.475719, 27.955393>,  <34.813404, 37.819664, 27.771259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440842, 37.475719, 27.955393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.366203, 37.777264, 28.207384>,  <35.321419, 37.958191, 28.358578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.366203, 37.777264, 28.207384>,  <35.440842, 37.475719, 27.955393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366203, 37.777264, 28.207384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160304, -0.609281, 0.776582,
		0.969270, 0.245896, -0.007158,
		-0.186597, 0.753865, 0.629976,
		35.310223, 38.003422, 28.396378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026146, 37.449780, 28.384081>,  <35.440842, 37.475719, 27.955393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026146, 37.449780, 28.384081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.741669, 37.631943, 28.598299>,  <35.570984, 37.741241, 28.726830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.741669, 37.631943, 28.598299>,  <36.026146, 37.449780, 28.384081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741669, 37.631943, 28.598299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241928, -0.556720, 0.794690,
		0.660057, 0.694742, 0.285760,
		-0.711193, 0.455408, 0.535545,
		35.528309, 37.768566, 28.758963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728874, 37.266003, 28.282263>,  <36.026146, 37.449780, 28.384081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728874, 37.266003, 28.282263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.706932, 36.897373, 28.128540>,  <36.693768, 36.676197, 28.036306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.706932, 36.897373, 28.128540>,  <36.728874, 37.266003, 28.282263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706932, 36.897373, 28.128540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055647, 0.387112, -0.920352,
		0.996942, -0.029104, -0.072519,
		-0.054859, -0.921573, -0.384309,
		36.690475, 36.620903, 28.013247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080311, 37.316147, 27.694029>,  <36.728874, 37.266003, 28.282263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080311, 37.316147, 27.694029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.869518, 36.981052, 27.636782>,  <36.743042, 36.779995, 27.602432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.869518, 36.981052, 27.636782>,  <37.080311, 37.316147, 27.694029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869518, 36.981052, 27.636782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151177, 0.258118, -0.954212,
		0.836320, -0.481220, -0.262671,
		-0.526986, -0.837737, -0.143120,
		36.711422, 36.729733, 27.593845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398701, 36.926170, 27.195377>,  <37.080311, 37.316147, 27.694029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398701, 36.926170, 27.195377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.023983, 36.786388, 27.188583>,  <36.799152, 36.702518, 27.184507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.023983, 36.786388, 27.188583>,  <37.398701, 36.926170, 27.195377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023983, 36.786388, 27.188583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104287, 0.325241, -0.939863,
		0.333983, -0.878684, -0.341129,
		-0.936792, -0.349474, -0.016990,
		36.742943, 36.681549, 27.183489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274754, 36.757607, 26.592867>,  <37.398701, 36.926170, 27.195377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274754, 36.757607, 26.592867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.887886, 36.773594, 26.693256>,  <36.655766, 36.783188, 26.753490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.887886, 36.773594, 26.693256>,  <37.274754, 36.757607, 26.592867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887886, 36.773594, 26.693256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224244, 0.330459, -0.916794,
		-0.119583, -0.942973, -0.310646,
		-0.967168, 0.039973, 0.250973,
		36.597736, 36.785587, 26.768549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903202, 36.509666, 25.948839>,  <37.274754, 36.757607, 26.592867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903202, 36.509666, 25.948839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.592552, 36.669685, 26.143496>,  <36.406162, 36.765697, 26.260288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.592552, 36.669685, 26.143496>,  <36.903202, 36.509666, 25.948839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592552, 36.669685, 26.143496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378362, 0.321431, -0.868058,
		-0.503683, -0.858281, -0.098270,
		-0.776625, 0.400044, 0.486640,
		36.359566, 36.789700, 26.289488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297394, 36.298309, 25.630167>,  <36.903202, 36.509666, 25.948839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297394, 36.298309, 25.630167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.227421, 36.638805, 25.828072>,  <36.185436, 36.843102, 25.946815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.227421, 36.638805, 25.828072>,  <36.297394, 36.298309, 25.630167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227421, 36.638805, 25.828072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527568, 0.343241, -0.777082,
		-0.831306, -0.396961, 0.389042,
		-0.174936, 0.851239, 0.494763,
		36.174938, 36.894176, 25.976500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615715, 36.411930, 25.580763>,  <36.297394, 36.298309, 25.630167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615715, 36.411930, 25.580763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.773811, 36.775742, 25.632217>,  <35.868668, 36.994026, 25.663090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.773811, 36.775742, 25.632217>,  <35.615715, 36.411930, 25.580763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773811, 36.775742, 25.632217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391923, 0.293626, -0.871883,
		-0.830773, 0.294185, 0.472516,
		0.395238, 0.909527, 0.128638,
		35.892384, 37.048599, 25.670809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158302, 36.837318, 25.311335>,  <35.615715, 36.411930, 25.580763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158302, 36.837318, 25.311335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.461796, 37.096760, 25.335485>,  <35.643890, 37.252422, 25.349976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.461796, 37.096760, 25.335485>,  <35.158302, 36.837318, 25.311335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461796, 37.096760, 25.335485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365240, 0.500334, -0.785026,
		-0.539376, 0.573571, 0.616513,
		0.758731, 0.648600, 0.060377,
		35.689415, 37.291340, 25.353598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878017, 37.567165, 25.145565>,  <35.158302, 36.837318, 25.311335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878017, 37.567165, 25.145565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.267944, 37.560371, 25.056625>,  <35.501900, 37.556297, 25.003262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.267944, 37.560371, 25.056625>,  <34.878017, 37.567165, 25.145565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267944, 37.560371, 25.056625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180747, 0.523821, -0.832431,
		0.130607, 0.851659, 0.507562,
		0.974819, -0.016981, -0.222350,
		35.560390, 37.555279, 24.989920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001904, 38.147591, 24.862331>,  <34.878017, 37.567165, 25.145565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001904, 38.147591, 24.862331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.340225, 37.970306, 24.743551>,  <35.543217, 37.863937, 24.672283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.340225, 37.970306, 24.743551>,  <35.001904, 38.147591, 24.862331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340225, 37.970306, 24.743551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066858, 0.464164, -0.883222,
		0.529286, 0.766887, 0.362960,
		0.845805, -0.443210, -0.296949,
		35.593967, 37.837345, 24.654467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454552, 38.718792, 24.658852>,  <35.001904, 38.147591, 24.862331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454552, 38.718792, 24.658852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.597229, 38.399605, 24.464525>,  <35.682835, 38.208092, 24.347929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.597229, 38.399605, 24.464525>,  <35.454552, 38.718792, 24.658852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597229, 38.399605, 24.464525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109537, 0.552159, -0.826512,
		0.927778, 0.241596, 0.284357,
		0.356692, -0.797968, -0.485817,
		35.704235, 38.160213, 24.318781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054096, 38.801060, 24.468166>,  <35.454552, 38.718792, 24.658852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054096, 38.801060, 24.468166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.002670, 38.492786, 24.218519>,  <35.971817, 38.307823, 24.068731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.002670, 38.492786, 24.218519>,  <36.054096, 38.801060, 24.468166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002670, 38.492786, 24.218519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120354, 0.612564, -0.781204,
		0.984371, -0.175549, 0.014001,
		-0.128563, -0.770680, -0.624119,
		35.964100, 38.261581, 24.031284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614029, 38.825500, 24.086031>,  <36.054096, 38.801060, 24.468166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614029, 38.825500, 24.086031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.338417, 38.635788, 23.866831>,  <36.173050, 38.521961, 23.735312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.338417, 38.635788, 23.866831>,  <36.614029, 38.825500, 24.086031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338417, 38.635788, 23.866831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167724, 0.631256, -0.757221,
		0.705060, -0.613659, -0.355406,
		-0.689027, -0.474276, -0.547999,
		36.131710, 38.493504, 23.702431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971405, 38.733612, 23.474550>,  <36.614029, 38.825500, 24.086031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971405, 38.733612, 23.474550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.582706, 38.740700, 23.380407>,  <36.349487, 38.744953, 23.323921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.582706, 38.740700, 23.380407>,  <36.971405, 38.733612, 23.474550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582706, 38.740700, 23.380407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175164, 0.722500, -0.668813,
		0.158192, -0.691143, -0.705192,
		-0.971747, 0.017723, -0.235358,
		36.291183, 38.746017, 23.309799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662983, 38.594421, 23.174282>,  <36.971405, 38.733612, 23.474550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662983, 38.594421, 23.174282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.012520, 38.785919, 23.140339>,  <38.222244, 38.900818, 23.119974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.012520, 38.785919, 23.140339>,  <37.662983, 38.594421, 23.174282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012520, 38.785919, 23.140339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275187, -0.343113, 0.898079,
		0.400833, -0.808133, -0.431572,
		0.873845, 0.478742, -0.084857,
		38.274673, 38.929543, 23.114882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209488, 38.180672, 23.408945>,  <37.662983, 38.594421, 23.174282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209488, 38.180672, 23.408945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.429039, 38.512962, 23.446104>,  <38.560768, 38.712337, 23.468399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.429039, 38.512962, 23.446104>,  <38.209488, 38.180672, 23.408945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429039, 38.512962, 23.446104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361872, -0.336324, 0.869445,
		0.753515, -0.443599, -0.485216,
		0.548874, 0.830727, 0.092899,
		38.593700, 38.762180, 23.473974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815918, 37.919701, 23.430616>,  <38.209488, 38.180672, 23.408945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815918, 37.919701, 23.430616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.841805, 38.280945, 23.600416>,  <38.857334, 38.497692, 23.702297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.841805, 38.280945, 23.600416>,  <38.815918, 37.919701, 23.430616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841805, 38.280945, 23.600416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441558, -0.407396, 0.799410,
		0.894896, 0.135710, -0.425140,
		0.064712, 0.903112, 0.424500,
		38.861217, 38.551880, 23.727766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467709, 38.003872, 23.746838>,  <38.815918, 37.919701, 23.430616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467709, 38.003872, 23.746838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.241329, 38.276814, 23.931919>,  <39.105503, 38.440578, 24.042969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.241329, 38.276814, 23.931919>,  <39.467709, 38.003872, 23.746838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241329, 38.276814, 23.931919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400925, -0.262616, 0.877663,
		0.720393, 0.682218, -0.124948,
		-0.565945, 0.682357, 0.462705,
		39.071545, 38.481522, 24.070730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938721, 38.416992, 24.117010>,  <39.467709, 38.003872, 23.746838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938721, 38.416992, 24.117010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.592899, 38.479610, 24.308022>,  <39.385406, 38.517181, 24.422628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.592899, 38.479610, 24.308022>,  <39.938721, 38.416992, 24.117010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592899, 38.479610, 24.308022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424065, -0.282615, 0.860406,
		0.269648, 0.946374, 0.177953,
		-0.864557, 0.156543, 0.477530,
		39.333530, 38.526573, 24.451281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066925, 38.877522, 24.726667>,  <39.938721, 38.416992, 24.117010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066925, 38.877522, 24.726667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.726444, 38.675873, 24.785074>,  <39.522156, 38.554886, 24.820118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.726444, 38.675873, 24.785074>,  <40.066925, 38.877522, 24.726667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726444, 38.675873, 24.785074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267007, -0.176422, 0.947408,
		-0.451846, 0.845422, 0.284774,
		-0.851200, -0.504120, 0.146018,
		39.471085, 38.524635, 24.828880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774246, 39.054802, 25.382244>,  <40.066925, 38.877522, 24.726667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774246, 39.054802, 25.382244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.596027, 38.703583, 25.312368>,  <39.489098, 38.492851, 25.270443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.596027, 38.703583, 25.312368>,  <39.774246, 39.054802, 25.382244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596027, 38.703583, 25.312368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134239, -0.258445, 0.956653,
		-0.885138, 0.402781, 0.233018,
		-0.445544, -0.878051, -0.174690,
		39.462364, 38.440166, 25.259962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442940, 38.920570, 26.037600>,  <39.774246, 39.054802, 25.382244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442940, 38.920570, 26.037600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.450356, 38.570694, 25.843870>,  <39.454803, 38.360767, 25.727633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.450356, 38.570694, 25.843870>,  <39.442940, 38.920570, 26.037600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450356, 38.570694, 25.843870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117921, -0.479113, 0.869796,
		-0.992850, -0.073237, 0.094262,
		0.018539, -0.874693, -0.484323,
		39.455917, 38.308285, 25.698574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053471, 38.423538, 26.448359>,  <39.442940, 38.920570, 26.037600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053471, 38.423538, 26.448359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.305096, 38.214622, 26.218056>,  <39.456070, 38.089275, 26.079874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.305096, 38.214622, 26.218056>,  <39.053471, 38.423538, 26.448359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305096, 38.214622, 26.218056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140107, -0.652358, 0.744848,
		-0.764623, -0.549225, -0.337199,
		0.629063, -0.522285, -0.575759,
		39.493816, 38.057938, 26.045328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852222, 37.742081, 26.573204>,  <39.053471, 38.423538, 26.448359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852222, 37.742081, 26.573204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.212502, 37.683804, 26.409485>,  <39.428669, 37.648838, 26.311255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.212502, 37.683804, 26.409485>,  <38.852222, 37.742081, 26.573204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212502, 37.683804, 26.409485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168557, -0.751113, 0.638292,
		-0.400423, -0.643895, -0.651966,
		0.900694, -0.145694, -0.409296,
		39.482708, 37.640095, 26.286695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973526, 37.053371, 26.240829>,  <38.852222, 37.742081, 26.573204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973526, 37.053371, 26.240829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.328281, 37.198029, 26.355818>,  <39.541134, 37.284824, 26.424810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.328281, 37.198029, 26.355818>,  <38.973526, 37.053371, 26.240829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328281, 37.198029, 26.355818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145141, -0.808871, 0.569791,
		0.438590, -0.463617, -0.769869,
		0.886889, 0.361644, 0.287473,
		39.594349, 37.306522, 26.442060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368816, 36.470680, 26.360773>,  <38.973526, 37.053371, 26.240829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368816, 36.470680, 26.360773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.586319, 36.744228, 26.555361>,  <39.716820, 36.908356, 26.672113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.586319, 36.744228, 26.555361>,  <39.368816, 36.470680, 26.360773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586319, 36.744228, 26.555361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150366, -0.649663, 0.745204,
		0.825661, -0.332063, -0.456090,
		0.543760, 0.683866, 0.486470,
		39.749447, 36.949387, 26.701302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910774, 36.051971, 26.666248>,  <39.368816, 36.470680, 26.360773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910774, 36.051971, 26.666248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.926147, 36.405609, 26.852535>,  <39.935371, 36.617794, 26.964308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.926147, 36.405609, 26.852535>,  <39.910774, 36.051971, 26.666248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926147, 36.405609, 26.852535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052526, -0.467204, 0.882588,
		0.997880, -0.009457, -0.064394,
		0.038432, 0.884099, 0.465717,
		39.937675, 36.670837, 26.992250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442005, 36.043777, 27.082115>,  <39.910774, 36.051971, 26.666248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442005, 36.043777, 27.082115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.269894, 36.361122, 27.254368>,  <40.166626, 36.551529, 27.357719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.269894, 36.361122, 27.254368>,  <40.442005, 36.043777, 27.082115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269894, 36.361122, 27.254368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251473, -0.352815, 0.901267,
		0.866960, 0.496090, -0.047699,
		-0.430281, 0.793358, 0.430630,
		40.140808, 36.599129, 27.383556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.521286, 41.772991, 23.823393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.140789, 41.662369, 23.768768>,  <40.912491, 41.595997, 23.735994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.140789, 41.662369, 23.768768>,  <41.521286, 41.772991, 23.823393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140789, 41.662369, 23.768768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121890, 0.069646, -0.990097,
		0.283328, -0.958471, -0.032541,
		-0.951245, -0.276555, -0.136561,
		40.855415, 41.579403, 23.727800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570393, 41.400597, 23.224474>,  <41.521286, 41.772991, 23.823393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570393, 41.400597, 23.224474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.180080, 41.486462, 23.241276>,  <40.945892, 41.537979, 23.251356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.180080, 41.486462, 23.241276>,  <41.570393, 41.400597, 23.224474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180080, 41.486462, 23.241276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001804, 0.184125, -0.982901,
		-0.218724, -0.959176, -0.179279,
		-0.975785, 0.214661, 0.042003,
		40.887344, 41.550861, 23.253876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294884, 41.056282, 22.675978>,  <41.570393, 41.400597, 23.224474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294884, 41.056282, 22.675978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.036346, 41.349346, 22.761253>,  <40.881226, 41.525185, 22.812420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.036346, 41.349346, 22.761253>,  <41.294884, 41.056282, 22.675978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036346, 41.349346, 22.761253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152526, 0.149702, -0.976896,
		-0.747648, -0.663926, 0.014991,
		-0.646343, 0.732660, 0.213191,
		40.842445, 41.569145, 22.825211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603840, 40.851379, 22.380074>,  <41.294884, 41.056282, 22.675978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603840, 40.851379, 22.380074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.626965, 41.245220, 22.446075>,  <40.640839, 41.481525, 22.485676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.626965, 41.245220, 22.446075>,  <40.603840, 40.851379, 22.380074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626965, 41.245220, 22.446075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391982, 0.174393, -0.903292,
		-0.918155, -0.012458, 0.396027,
		0.057811, 0.984597, 0.165003,
		40.644306, 41.540600, 22.495577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926598, 41.167313, 22.226843>,  <40.603840, 40.851379, 22.380074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926598, 41.167313, 22.226843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.199993, 41.458866, 22.211000>,  <40.364029, 41.633797, 22.201496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.199993, 41.458866, 22.211000>,  <39.926598, 41.167313, 22.226843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199993, 41.458866, 22.211000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423017, 0.351286, -0.835257,
		-0.594894, 0.587643, 0.548431,
		0.683489, 0.728885, -0.039605,
		40.405041, 41.677532, 22.199120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485470, 41.704990, 21.933018>,  <39.926598, 41.167313, 22.226843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485470, 41.704990, 21.933018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.865730, 41.816181, 21.877895>,  <40.093887, 41.882896, 21.844822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.865730, 41.816181, 21.877895>,  <39.485470, 41.704990, 21.933018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865730, 41.816181, 21.877895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272459, 0.535474, -0.799396,
		-0.148425, 0.797493, 0.584787,
		0.950650, 0.277981, -0.137807,
		40.150925, 41.899574, 21.836554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395443, 42.382641, 21.680346>,  <39.485470, 41.704990, 21.933018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395443, 42.382641, 21.680346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.766445, 42.260406, 21.594229>,  <39.989048, 42.187065, 21.542559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.766445, 42.260406, 21.594229>,  <39.395443, 42.382641, 21.680346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766445, 42.260406, 21.594229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069248, 0.425517, -0.902297,
		0.367336, 0.851795, 0.373509,
		0.927507, -0.305581, -0.215293,
		40.044697, 42.168732, 21.529640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649872, 43.028336, 21.424816>,  <39.395443, 42.382641, 21.680346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649872, 43.028336, 21.424816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.867577, 42.728119, 21.274900>,  <39.998199, 42.547989, 21.184952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.867577, 42.728119, 21.274900>,  <39.649872, 43.028336, 21.424816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867577, 42.728119, 21.274900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208887, 0.311440, -0.927023,
		0.812494, 0.582830, 0.012726,
		0.544261, -0.750542, -0.374789,
		40.030853, 42.502956, 21.162464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076561, 43.278355, 21.044743>,  <39.649872, 43.028336, 21.424816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076561, 43.278355, 21.044743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.050793, 42.898693, 20.921478>,  <40.035332, 42.670898, 20.847521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.050793, 42.898693, 20.921478>,  <40.076561, 43.278355, 21.044743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050793, 42.898693, 20.921478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120415, 0.313938, -0.941777,
		0.990631, -0.023562, -0.134516,
		-0.064420, -0.949151, -0.308159,
		40.031467, 42.613949, 20.829031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525562, 43.258194, 20.423595>,  <40.076561, 43.278355, 21.044743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525562, 43.258194, 20.423595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.274536, 42.947670, 20.399887>,  <40.123920, 42.761356, 20.385662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.274536, 42.947670, 20.399887>,  <40.525562, 43.258194, 20.423595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274536, 42.947670, 20.399887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264278, 0.284009, -0.921681,
		0.732340, -0.562750, -0.383394,
		-0.627563, -0.776306, -0.059269,
		40.086266, 42.714779, 20.382107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647797, 42.853909, 19.735991>,  <40.525562, 43.258194, 20.423595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647797, 42.853909, 19.735991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.278572, 42.772141, 19.866323>,  <40.057037, 42.723080, 19.944523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.278572, 42.772141, 19.866323>,  <40.647797, 42.853909, 19.735991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278572, 42.772141, 19.866323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377035, 0.313136, -0.871660,
		0.076151, -0.927448, -0.366117,
		-0.923063, -0.204417, 0.325835,
		40.001652, 42.710815, 19.964073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413029, 42.373070, 19.335903>,  <40.647797, 42.853909, 19.735991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413029, 42.373070, 19.335903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.090286, 42.545620, 19.497343>,  <39.896641, 42.649151, 19.594208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.090286, 42.545620, 19.497343>,  <40.413029, 42.373070, 19.335903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090286, 42.545620, 19.497343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350893, 0.199657, -0.914883,
		-0.475238, -0.879803, -0.009730,
		-0.806860, 0.431373, 0.403601,
		39.848228, 42.675034, 19.618423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889412, 42.147938, 18.846827>,  <40.413029, 42.373070, 19.335903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889412, 42.147938, 18.846827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.711597, 42.439819, 19.054642>,  <39.604908, 42.614948, 19.179331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.711597, 42.439819, 19.054642>,  <39.889412, 42.147938, 18.846827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711597, 42.439819, 19.054642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346783, 0.394574, -0.850913,
		-0.825910, -0.558430, 0.077646,
		-0.444538, 0.729704, 0.519537,
		39.578236, 42.658730, 19.210503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251617, 42.209202, 18.547297>,  <39.889412, 42.147938, 18.846827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251617, 42.209202, 18.547297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.297138, 42.545273, 18.759390>,  <39.324451, 42.746918, 18.886646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.297138, 42.545273, 18.759390>,  <39.251617, 42.209202, 18.547297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297138, 42.545273, 18.759390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275920, 0.539433, -0.795537,
		-0.954420, -0.055770, 0.293210,
		0.113800, 0.840179, 0.530234,
		39.331280, 42.797325, 18.918461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711765, 41.704666, 18.093437>,  <39.251617, 42.209202, 18.547297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711765, 41.704666, 18.093437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.506649, 41.384804, 17.968470>,  <38.383579, 41.192886, 17.893488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.506649, 41.384804, 17.968470>,  <38.711765, 41.704666, 18.093437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506649, 41.384804, 17.968470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011304, -0.370166, 0.928897,
		-0.858442, 0.472794, 0.198855,
		-0.512786, -0.799652, -0.312421,
		38.352814, 41.144909, 17.874743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092796, 41.672924, 18.519333>,  <38.711765, 41.704666, 18.093437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092796, 41.672924, 18.519333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.143570, 41.305466, 18.369675>,  <38.174034, 41.084991, 18.279879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.143570, 41.305466, 18.369675>,  <38.092796, 41.672924, 18.519333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143570, 41.305466, 18.369675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072233, -0.384757, 0.920187,
		-0.989278, -0.089774, -0.115194,
		0.126931, -0.918642, -0.374147,
		38.181648, 41.029873, 18.257431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458076, 41.314407, 18.710289>,  <38.092796, 41.672924, 18.519333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458076, 41.314407, 18.710289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.764359, 41.067738, 18.637178>,  <37.948128, 40.919735, 18.593313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.764359, 41.067738, 18.637178>,  <37.458076, 41.314407, 18.710289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764359, 41.067738, 18.637178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057071, -0.348189, 0.935685,
		-0.640652, -0.706030, -0.301805,
		0.765708, -0.616673, -0.182775,
		37.994072, 40.882736, 18.582346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239342, 40.782986, 19.072918>,  <37.458076, 41.314407, 18.710289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239342, 40.782986, 19.072918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.620514, 40.704865, 18.980158>,  <37.849216, 40.657993, 18.924501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.620514, 40.704865, 18.980158>,  <37.239342, 40.782986, 19.072918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620514, 40.704865, 18.980158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074212, -0.591360, 0.802986,
		-0.293957, -0.782402, -0.549033,
		0.952933, -0.195298, -0.231898,
		37.906395, 40.646275, 18.910589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371227, 40.003590, 19.073191>,  <37.239342, 40.782986, 19.072918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371227, 40.003590, 19.073191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739304, 40.153961, 19.116879>,  <37.960148, 40.244186, 19.143091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739304, 40.153961, 19.116879>,  <37.371227, 40.003590, 19.073191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739304, 40.153961, 19.116879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144543, -0.585545, 0.797649,
		0.363812, -0.718201, -0.593150,
		0.920189, 0.375931, 0.109217,
		38.015362, 40.266739, 19.149643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885826, 39.439400, 19.181046>,  <37.371227, 40.003590, 19.073191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885826, 39.439400, 19.181046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.048752, 39.780075, 19.312937>,  <38.146507, 39.984482, 19.392071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.048752, 39.780075, 19.312937>,  <37.885826, 39.439400, 19.181046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048752, 39.780075, 19.312937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382121, -0.486838, 0.785476,
		0.829507, -0.193937, -0.523743,
		0.407311, 0.851691, 0.329728,
		38.170944, 40.035583, 19.411856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374908, 39.174286, 19.487951>,  <37.885826, 39.439400, 19.181046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374908, 39.174286, 19.487951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.338242, 39.546577, 19.629568>,  <38.316242, 39.769951, 19.714539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.338242, 39.546577, 19.629568>,  <38.374908, 39.174286, 19.487951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338242, 39.546577, 19.629568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109546, -0.343956, 0.932574,
		0.989746, 0.124266, -0.070429,
		-0.091663, 0.930727, 0.354042,
		38.310741, 39.825794, 19.735781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960453, 39.232456, 19.981047>,  <38.374908, 39.174286, 19.487951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960453, 39.232456, 19.981047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.704594, 39.519421, 20.091446>,  <38.551079, 39.691601, 20.157686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.704594, 39.519421, 20.091446>,  <38.960453, 39.232456, 19.981047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704594, 39.519421, 20.091446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106528, -0.272860, 0.956138,
		0.761253, 0.640990, 0.098109,
		-0.639644, 0.717412, 0.275999,
		38.512699, 39.734646, 20.174246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311890, 39.591061, 20.599777>,  <38.960453, 39.232456, 19.981047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311890, 39.591061, 20.599777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.923092, 39.681618, 20.624966>,  <38.689812, 39.735954, 20.640078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.923092, 39.681618, 20.624966>,  <39.311890, 39.591061, 20.599777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923092, 39.681618, 20.624966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025412, -0.367668, 0.929610,
		0.233611, 0.901979, 0.363126,
		-0.971998, 0.226395, 0.062970,
		38.631493, 39.749535, 20.643856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202099, 40.041882, 21.228910>,  <39.311890, 39.591061, 20.599777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202099, 40.041882, 21.228910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.862999, 39.853619, 21.131092>,  <38.659538, 39.740662, 21.072401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.862999, 39.853619, 21.131092>,  <39.202099, 40.041882, 21.228910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862999, 39.853619, 21.131092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111481, -0.292650, 0.949699,
		-0.518548, 0.832369, 0.195625,
		-0.847750, -0.470656, -0.244547,
		38.608673, 39.712421, 21.057728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698353, 40.447525, 21.801287>,  <39.202099, 40.041882, 21.228910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698353, 40.447525, 21.801287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.508110, 40.113174, 21.691662>,  <38.393963, 39.912563, 21.625887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.508110, 40.113174, 21.691662>,  <38.698353, 40.447525, 21.801287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508110, 40.113174, 21.691662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203013, -0.198842, 0.958774,
		-0.855911, 0.511638, -0.075123,
		-0.475607, -0.835876, -0.274060,
		38.365429, 39.862411, 21.609444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047890, 40.400196, 22.216885>,  <38.698353, 40.447525, 21.801287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047890, 40.400196, 22.216885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.178238, 40.040150, 22.101231>,  <38.256447, 39.824120, 22.031839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.178238, 40.040150, 22.101231>,  <38.047890, 40.400196, 22.216885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178238, 40.040150, 22.101231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169593, -0.356521, 0.918766,
		-0.930080, -0.250361, -0.268832,
		0.325868, -0.900118, -0.289133,
		38.275997, 39.770115, 22.014490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651443, 40.011822, 22.666798>,  <38.047890, 40.400196, 22.216885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651443, 40.011822, 22.666798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.942440, 39.767166, 22.542440>,  <38.117039, 39.620373, 22.467827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.942440, 39.767166, 22.542440>,  <37.651443, 40.011822, 22.666798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942440, 39.767166, 22.542440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033779, -0.484499, 0.874140,
		-0.685284, -0.625428, -0.373129,
		0.727492, -0.611639, -0.310893,
		38.160686, 39.583675, 22.449173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500755, 39.250195, 22.858242>,  <37.651443, 40.011822, 22.666798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500755, 39.250195, 22.858242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.896378, 39.248474, 22.799255>,  <38.133751, 39.247440, 22.763863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.896378, 39.248474, 22.799255>,  <37.500755, 39.250195, 22.858242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896378, 39.248474, 22.799255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128403, -0.467107, 0.874828,
		-0.072648, -0.884191, -0.461443,
		0.989058, -0.004304, -0.147467,
		38.193096, 39.247181, 22.755014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923252, 38.918148, 22.556742>,  <37.500755, 39.250195, 22.858242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923252, 38.918148, 22.556742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.545715, 38.938881, 22.687263>,  <36.319195, 38.951321, 22.765575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.545715, 38.938881, 22.687263>,  <36.923252, 38.918148, 22.556742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545715, 38.938881, 22.687263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161415, 0.789393, -0.592287,
		-0.288280, -0.611697, -0.736697,
		-0.943843, 0.051831, 0.326303,
		36.262562, 38.954430, 22.785154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590954, 39.011837, 21.886942>,  <36.923252, 38.918148, 22.556742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590954, 39.011837, 21.886942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.356937, 39.135815, 22.186718>,  <36.216526, 39.210201, 22.366583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.356937, 39.135815, 22.186718>,  <36.590954, 39.011837, 21.886942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356937, 39.135815, 22.186718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304079, 0.772845, -0.556998,
		-0.751837, -0.553758, -0.357902,
		-0.585045, 0.309942, 0.749439,
		36.181423, 39.228798, 22.411551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865017, 39.009933, 21.681128>,  <36.590954, 39.011837, 21.886942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865017, 39.009933, 21.681128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.905308, 39.297394, 21.956345>,  <35.929482, 39.469868, 22.121475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.905308, 39.297394, 21.956345>,  <35.865017, 39.009933, 21.681128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905308, 39.297394, 21.956345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419512, 0.657752, -0.625598,
		-0.902144, -0.225628, 0.367734,
		0.100725, 0.718648, 0.688040,
		35.935524, 39.512989, 22.162756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283218, 39.393108, 21.555857>,  <35.865017, 39.009933, 21.681128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283218, 39.393108, 21.555857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.519485, 39.616226, 21.789089>,  <35.661247, 39.750095, 21.929028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.519485, 39.616226, 21.789089>,  <35.283218, 39.393108, 21.555857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519485, 39.616226, 21.789089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252439, 0.814068, -0.523037,
		-0.766412, 0.161749, 0.621651,
		0.590668, 0.557791, 0.583079,
		35.696686, 39.783562, 21.964012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953503, 39.892208, 21.693693>,  <35.283218, 39.393108, 21.555857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953503, 39.892208, 21.693693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.316269, 40.040562, 21.773647>,  <35.533928, 40.129574, 21.821619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.316269, 40.040562, 21.773647>,  <34.953503, 39.892208, 21.693693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316269, 40.040562, 21.773647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181225, 0.771697, -0.609623,
		-0.380350, 0.516651, 0.767076,
		0.906913, 0.370884, 0.199885,
		35.588345, 40.151825, 21.833612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859432, 40.574108, 21.902744>,  <34.953503, 39.892208, 21.693693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859432, 40.574108, 21.902744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.239128, 40.567390, 21.777103>,  <35.466946, 40.563362, 21.701719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.239128, 40.567390, 21.777103>,  <34.859432, 40.574108, 21.902744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239128, 40.567390, 21.777103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187134, 0.772485, -0.606833,
		0.252828, 0.634810, 0.730133,
		0.949241, -0.016792, -0.314101,
		35.523899, 40.562351, 21.682873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144905, 41.291004, 21.918530>,  <34.859432, 40.574108, 21.902744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144905, 41.291004, 21.918530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.352749, 41.083622, 21.646881>,  <35.477455, 40.959190, 21.483892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.352749, 41.083622, 21.646881>,  <35.144905, 41.291004, 21.918530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352749, 41.083622, 21.646881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026247, 0.784788, -0.619208,
		0.853999, 0.339573, 0.394177,
		0.519611, -0.518457, -0.679122,
		35.508633, 40.928085, 21.443144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404476, 42.000431, 21.960443>,  <35.144905, 41.291004, 21.918530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404476, 42.000431, 21.960443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.033188, 42.082523, 22.084568>,  <34.810417, 42.131779, 22.159042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.033188, 42.082523, 22.084568>,  <35.404476, 42.000431, 21.960443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033188, 42.082523, 22.084568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075025, -0.713691, 0.696431,
		0.364399, 0.669720, 0.647062,
		-0.928216, 0.205233, 0.310313,
		34.754723, 42.144093, 22.177662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442768, 42.263088, 22.673491>,  <35.404476, 42.000431, 21.960443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442768, 42.263088, 22.673491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.058640, 42.162491, 22.625273>,  <34.828163, 42.102131, 22.596342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.058640, 42.162491, 22.625273>,  <35.442768, 42.263088, 22.673491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058640, 42.162491, 22.625273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018270, -0.488031, 0.872635,
		-0.278292, 0.835809, 0.473262,
		-0.960323, -0.251494, -0.120545,
		34.770542, 42.087044, 22.589109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064526, 42.484909, 23.228531>,  <35.442768, 42.263088, 22.673491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064526, 42.484909, 23.228531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.813171, 42.200630, 23.102015>,  <34.662361, 42.030064, 23.026104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.813171, 42.200630, 23.102015>,  <35.064526, 42.484909, 23.228531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813171, 42.200630, 23.102015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112065, -0.319648, 0.940886,
		-0.769789, 0.626683, 0.121217,
		-0.628384, -0.710700, -0.316291,
		34.624657, 41.987419, 23.007128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615211, 42.435181, 23.715818>,  <35.064526, 42.484909, 23.228531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615211, 42.435181, 23.715818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.560162, 42.086636, 23.527439>,  <34.527134, 41.877510, 23.414412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.560162, 42.086636, 23.527439>,  <34.615211, 42.435181, 23.715818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560162, 42.086636, 23.527439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131171, -0.455252, 0.880648,
		-0.981761, 0.182970, -0.051645,
		-0.137621, -0.871360, -0.470949,
		34.518875, 41.825226, 23.386154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117935, 42.030384, 24.155729>,  <34.615211, 42.435181, 23.715818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117935, 42.030384, 24.155729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.321808, 41.778385, 23.921352>,  <34.444134, 41.627186, 23.780725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.321808, 41.778385, 23.921352>,  <34.117935, 42.030384, 24.155729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321808, 41.778385, 23.921352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051205, -0.657625, 0.751603,
		-0.858836, -0.413085, -0.302923,
		0.509685, -0.629992, -0.585944,
		34.474712, 41.589386, 23.745569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718037, 41.331989, 24.133175>,  <34.117935, 42.030384, 24.155729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718037, 41.331989, 24.133175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.102116, 41.252247, 24.054907>,  <34.332561, 41.204403, 24.007946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.102116, 41.252247, 24.054907>,  <33.718037, 41.331989, 24.133175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102116, 41.252247, 24.054907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039217, -0.597341, 0.801028,
		-0.276568, -0.776815, -0.565745,
		0.960194, -0.199352, -0.195670,
		34.390175, 41.192440, 23.996206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833904, 40.756721, 24.480602>,  <33.718037, 41.331989, 24.133175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833904, 40.756721, 24.480602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.214722, 40.859810, 24.414635>,  <34.443211, 40.921661, 24.375053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.214722, 40.859810, 24.414635>,  <33.833904, 40.756721, 24.480602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214722, 40.859810, 24.414635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269010, -0.448231, 0.852480,
		0.145776, -0.855962, -0.496063,
		0.952042, 0.257717, -0.164921,
		34.500336, 40.937126, 24.365158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.420620, 45.127918, 20.510397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.452892, 44.752930, 20.374960>,  <38.472256, 44.527939, 20.293697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.452892, 44.752930, 20.374960>,  <38.420620, 45.127918, 20.510397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452892, 44.752930, 20.374960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312429, -0.346367, 0.884544,
		-0.946509, 0.034419, -0.320838,
		0.080683, -0.937468, -0.338593,
		38.477097, 44.471691, 20.273382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838650, 44.794357, 20.643606>,  <38.420620, 45.127918, 20.510397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838650, 44.794357, 20.643606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.083271, 44.478100, 20.631708>,  <38.230045, 44.288345, 20.624569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.083271, 44.478100, 20.631708>,  <37.838650, 44.794357, 20.643606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083271, 44.478100, 20.631708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338114, -0.295151, 0.893625,
		-0.715316, -0.536445, -0.447828,
		0.611557, -0.790641, -0.029746,
		38.266739, 44.240906, 20.622784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452484, 44.136383, 20.713535>,  <37.838650, 44.794357, 20.643606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452484, 44.136383, 20.713535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.825005, 44.046593, 20.828279>,  <38.048515, 43.992718, 20.897127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.825005, 44.046593, 20.828279>,  <37.452484, 44.136383, 20.713535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825005, 44.046593, 20.828279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352883, -0.360814, 0.863300,
		-0.090282, -0.905221, -0.415239,
		0.931302, -0.224472, 0.286862,
		38.104397, 43.979252, 20.914337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385338, 43.487797, 20.932201>,  <37.452484, 44.136383, 20.713535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385338, 43.487797, 20.932201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.726334, 43.598476, 21.109610>,  <37.930931, 43.664883, 21.216055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.726334, 43.598476, 21.109610>,  <37.385338, 43.487797, 20.932201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726334, 43.598476, 21.109610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348427, -0.331739, 0.876668,
		0.389703, -0.901881, -0.186395,
		0.852485, 0.276695, 0.443520,
		37.982079, 43.681484, 21.242666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551292, 42.973228, 21.429916>,  <37.385338, 43.487797, 20.932201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551292, 42.973228, 21.429916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.787701, 43.267628, 21.561977>,  <37.929546, 43.444267, 21.641214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.787701, 43.267628, 21.561977>,  <37.551292, 42.973228, 21.429916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787701, 43.267628, 21.561977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091633, -0.345376, 0.933980,
		0.801437, -0.582252, -0.136682,
		0.591018, 0.736002, 0.330150,
		37.965008, 43.488430, 21.661022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104755, 42.614197, 21.806145>,  <37.551292, 42.973228, 21.429916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104755, 42.614197, 21.806145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.101791, 42.990681, 21.941244>,  <38.100014, 43.216572, 22.022303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.101791, 42.990681, 21.941244>,  <38.104755, 42.614197, 21.806145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101791, 42.990681, 21.941244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022116, -0.337828, 0.940948,
		0.999728, -0.000495, 0.023320,
		-0.007413, 0.941208, 0.337747,
		38.099567, 43.273045, 22.042568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676884, 42.681423, 22.341003>,  <38.104755, 42.614197, 21.806145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676884, 42.681423, 22.341003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.444279, 42.993629, 22.432781>,  <38.304718, 43.180954, 22.487848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.444279, 42.993629, 22.432781>,  <38.676884, 42.681423, 22.341003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444279, 42.993629, 22.432781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010101, -0.288939, 0.957294,
		0.813477, 0.554357, 0.175905,
		-0.581509, 0.780514, 0.229446,
		38.269825, 43.227783, 22.501616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995140, 43.057640, 22.855457>,  <38.676884, 42.681423, 22.341003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995140, 43.057640, 22.855457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.609470, 43.163727, 22.857788>,  <38.378071, 43.227379, 22.859186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.609470, 43.163727, 22.857788>,  <38.995140, 43.057640, 22.855457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609470, 43.163727, 22.857788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078192, -0.305116, 0.949100,
		0.253493, 0.914640, 0.314921,
		-0.964172, 0.265214, 0.005827,
		38.320217, 43.243290, 22.859537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037724, 43.563881, 23.329792>,  <38.995140, 43.057640, 22.855457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037724, 43.563881, 23.329792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.649197, 43.469803, 23.315825>,  <38.416080, 43.413357, 23.307444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.649197, 43.469803, 23.315825>,  <39.037724, 43.563881, 23.329792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649197, 43.469803, 23.315825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031369, -0.018818, 0.999331,
		-0.235690, 0.971767, 0.010900,
		-0.971322, -0.235191, -0.034919,
		38.357800, 43.399246, 23.305349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639923, 44.010994, 23.736176>,  <39.037724, 43.563881, 23.329792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639923, 44.010994, 23.736176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.415718, 43.680977, 23.707539>,  <38.281193, 43.482967, 23.690355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.415718, 43.680977, 23.707539>,  <38.639923, 44.010994, 23.736176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415718, 43.680977, 23.707539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073112, -0.036814, 0.996644,
		-0.824910, 0.563869, -0.039686,
		-0.560515, -0.825044, -0.071594,
		38.247562, 43.433464, 23.686060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982491, 44.085865, 24.182379>,  <38.639923, 44.010994, 23.736176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982491, 44.085865, 24.182379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.037083, 43.694111, 24.122814>,  <38.069839, 43.459057, 24.087076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.037083, 43.694111, 24.122814>,  <37.982491, 44.085865, 24.182379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037083, 43.694111, 24.122814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057897, -0.142175, 0.988147,
		-0.988949, -0.143484, 0.037300,
		0.136480, -0.979387, -0.148912,
		38.078026, 43.400295, 24.078140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484749, 43.711048, 24.493874>,  <37.982491, 44.085865, 24.182379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484749, 43.711048, 24.493874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.795471, 43.459549, 24.479733>,  <37.981903, 43.308651, 24.471247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.795471, 43.459549, 24.479733>,  <37.484749, 43.711048, 24.493874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795471, 43.459549, 24.479733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036614, -0.101140, 0.994198,
		-0.628676, -0.771004, -0.101587,
		0.776805, -0.628748, -0.035355,
		38.028511, 43.270924, 24.469126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795105, 43.362579, 24.752110>,  <37.484749, 43.711048, 24.493874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795105, 43.362579, 24.752110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.496910, 43.561600, 24.929514>,  <36.317993, 43.681011, 25.035955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.496910, 43.561600, 24.929514>,  <36.795105, 43.362579, 24.752110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496910, 43.561600, 24.929514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103389, 0.743674, -0.660500,
		-0.658457, -0.446537, -0.605837,
		-0.745483, 0.497548, 0.443510,
		36.273266, 43.710865, 25.062567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374126, 43.514580, 24.306231>,  <36.795105, 43.362579, 24.752110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374126, 43.514580, 24.306231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.240417, 43.785862, 24.568010>,  <36.160191, 43.948631, 24.725079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.240417, 43.785862, 24.568010>,  <36.374126, 43.514580, 24.306231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240417, 43.785862, 24.568010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015351, 0.698218, -0.715721,
		-0.942350, -0.229201, -0.243809,
		-0.334276, 0.678202, 0.654447,
		36.140133, 43.989323, 24.764345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866482, 43.777058, 23.958834>,  <36.374126, 43.514580, 24.306231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866482, 43.777058, 23.958834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.946873, 44.048653, 24.241276>,  <35.995110, 44.211609, 24.410740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.946873, 44.048653, 24.241276>,  <35.866482, 43.777058, 23.958834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946873, 44.048653, 24.241276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074561, 0.729324, -0.680094,
		-0.976754, 0.084037, 0.197206,
		0.200980, 0.678988, 0.706104,
		36.007168, 44.252350, 24.453106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303791, 44.377918, 23.866989>,  <35.866482, 43.777058, 23.958834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303791, 44.377918, 23.866989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.594055, 44.552410, 24.079826>,  <35.768215, 44.657104, 24.207529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.594055, 44.552410, 24.079826>,  <35.303791, 44.377918, 23.866989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594055, 44.552410, 24.079826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071867, 0.721045, -0.689151,
		-0.684291, 0.538329, 0.491882,
		0.725659, 0.436230, 0.532093,
		35.811752, 44.683281, 24.239454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047470, 45.002827, 24.057314>,  <35.303791, 44.377918, 23.866989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047470, 45.002827, 24.057314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.446533, 45.030151, 24.055740>,  <35.685970, 45.046547, 24.054796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.446533, 45.030151, 24.055740>,  <35.047470, 45.002827, 24.057314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446533, 45.030151, 24.055740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051531, 0.712251, -0.700031,
		-0.045023, 0.698593, 0.714102,
		0.997656, 0.068316, -0.003932,
		35.745831, 45.050648, 24.054562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151066, 45.647362, 24.042961>,  <35.047470, 45.002827, 24.057314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151066, 45.647362, 24.042961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.504581, 45.510323, 23.915499>,  <35.716690, 45.428097, 23.839022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.504581, 45.510323, 23.915499>,  <35.151066, 45.647362, 24.042961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504581, 45.510323, 23.915499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001895, 0.678425, -0.734667,
		0.467882, 0.649894, 0.598936,
		0.883789, -0.342603, -0.318655,
		35.769718, 45.407543, 23.819902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572945, 46.224129, 23.881727>,  <35.151066, 45.647362, 24.042961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572945, 46.224129, 23.881727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.740833, 45.916100, 23.689552>,  <35.841568, 45.731281, 23.574247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.740833, 45.916100, 23.689552>,  <35.572945, 46.224129, 23.881727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740833, 45.916100, 23.689552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316046, 0.620189, -0.717970,
		0.850850, 0.149511, 0.503688,
		0.419726, -0.770073, -0.480435,
		35.866753, 45.685078, 23.545422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265564, 46.483421, 23.678925>,  <35.572945, 46.224129, 23.881727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265564, 46.483421, 23.678925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.138500, 46.185249, 23.444513>,  <36.062260, 46.006348, 23.303867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.138500, 46.185249, 23.444513>,  <36.265564, 46.483421, 23.678925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138500, 46.185249, 23.444513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128539, 0.578480, -0.805505,
		0.939451, -0.331206, -0.087945,
		-0.317662, -0.745428, -0.586027,
		36.043201, 45.961620, 23.268705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778946, 46.458012, 23.157539>,  <36.265564, 46.483421, 23.678925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778946, 46.458012, 23.157539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.445168, 46.275360, 23.034122>,  <36.244900, 46.165771, 22.960072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.445168, 46.275360, 23.034122>,  <36.778946, 46.458012, 23.157539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445168, 46.275360, 23.034122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096255, 0.430504, -0.897442,
		0.542624, -0.778562, -0.315278,
		-0.834442, -0.456627, -0.308543,
		36.194836, 46.138374, 22.941561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958900, 46.455017, 22.403395>,  <36.778946, 46.458012, 23.157539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958900, 46.455017, 22.403395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.576317, 46.342403, 22.434162>,  <36.346767, 46.274834, 22.452623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.576317, 46.342403, 22.434162>,  <36.958900, 46.455017, 22.403395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576317, 46.342403, 22.434162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184606, 0.379465, -0.906602,
		0.226052, -0.881331, -0.414917,
		-0.956463, -0.281536, 0.076920,
		36.289379, 46.257942, 22.457237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717857, 46.037235, 21.735909>,  <36.958900, 46.455017, 22.403395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717857, 46.037235, 21.735909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.380882, 46.174458, 21.902094>,  <36.178696, 46.256790, 22.001804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.380882, 46.174458, 21.902094>,  <36.717857, 46.037235, 21.735909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380882, 46.174458, 21.902094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369473, 0.193415, -0.908890,
		-0.392160, -0.919185, -0.036189,
		-0.842437, 0.343060, 0.415464,
		36.128151, 46.277374, 22.026733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218994, 45.857956, 21.237579>,  <36.717857, 46.037235, 21.735909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218994, 45.857956, 21.237579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.053684, 46.129040, 21.480862>,  <35.954498, 46.291691, 21.626831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.053684, 46.129040, 21.480862>,  <36.218994, 45.857956, 21.237579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053684, 46.129040, 21.480862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380503, 0.478286, -0.791492,
		-0.827299, -0.558527, 0.060208,
		-0.413273, 0.677710, 0.608207,
		35.929703, 46.332352, 21.663324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424484, 45.794830, 21.087704>,  <36.218994, 45.857956, 21.237579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424484, 45.794830, 21.087704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.532249, 46.151230, 21.233879>,  <35.596909, 46.365070, 21.321585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.532249, 46.151230, 21.233879>,  <35.424484, 45.794830, 21.087704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532249, 46.151230, 21.233879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564490, 0.453548, -0.689670,
		-0.780237, -0.020482, 0.625149,
		0.269409, 0.890996, 0.365437,
		35.613071, 46.418530, 21.343510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017227, 45.153194, 20.894632>,  <35.424484, 45.794830, 21.087704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017227, 45.153194, 20.894632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.863377, 44.959103, 20.580534>,  <34.771065, 44.842648, 20.392075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.863377, 44.959103, 20.580534>,  <35.017227, 45.153194, 20.894632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863377, 44.959103, 20.580534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258727, -0.759916, 0.596312,
		-0.886070, 0.432523, 0.166742,
		-0.384629, -0.485234, -0.785244,
		34.747990, 44.813534, 20.344961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353039, 44.881508, 21.122652>,  <35.017227, 45.153194, 20.894632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353039, 44.881508, 21.122652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.505863, 44.655968, 20.829775>,  <34.597557, 44.520645, 20.654049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.505863, 44.655968, 20.829775>,  <34.353039, 44.881508, 21.122652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505863, 44.655968, 20.829775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270781, -0.825825, 0.494662,
		-0.883577, 0.009273, -0.468194,
		0.382059, -0.563850, -0.732191,
		34.620480, 44.486813, 20.610117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899231, 44.444828, 20.937410>,  <34.353039, 44.881508, 21.122652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899231, 44.444828, 20.937410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.225163, 44.254654, 20.804735>,  <34.420719, 44.140549, 20.725130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.225163, 44.254654, 20.804735>,  <33.899231, 44.444828, 20.937410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225163, 44.254654, 20.804735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203282, -0.770171, 0.604577,
		-0.542895, -0.425199, -0.724203,
		0.814826, -0.475439, -0.331687,
		34.469612, 44.112022, 20.705229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627766, 43.834930, 20.778482>,  <33.899231, 44.444828, 20.937410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627766, 43.834930, 20.778482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.021458, 43.790543, 20.833591>,  <34.257671, 43.763908, 20.866657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.021458, 43.790543, 20.833591>,  <33.627766, 43.834930, 20.778482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021458, 43.790543, 20.833591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169120, -0.818700, 0.548753,
		0.051899, -0.563398, -0.824554,
		0.984228, -0.110969, 0.137772,
		34.316727, 43.757252, 20.874924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766163, 43.183464, 20.644930>,  <33.627766, 43.834930, 20.778482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766163, 43.183464, 20.644930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.076416, 43.291100, 20.873312>,  <34.262569, 43.355679, 21.010342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.076416, 43.291100, 20.873312>,  <33.766163, 43.183464, 20.644930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076416, 43.291100, 20.873312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023950, -0.916470, 0.399386,
		0.630731, -0.296102, -0.717288,
		0.775632, 0.269084, 0.570955,
		34.309105, 43.371826, 21.044598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071774, 42.533451, 20.850969>,  <33.766163, 43.183464, 20.644930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071774, 42.533451, 20.850969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.255539, 42.783192, 21.103674>,  <34.365799, 42.933037, 21.255297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.255539, 42.783192, 21.103674>,  <34.071774, 42.533451, 20.850969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255539, 42.783192, 21.103674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232276, -0.770964, 0.593012,
		0.857313, -0.125696, -0.499215,
		0.459416, 0.624352, 0.631761,
		34.393364, 42.970497, 21.293201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755817, 42.341171, 20.894747>,  <34.071774, 42.533451, 20.850969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755817, 42.341171, 20.894747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.670544, 42.506363, 21.248922>,  <34.619377, 42.605476, 21.461428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.670544, 42.506363, 21.248922>,  <34.755817, 42.341171, 20.894747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670544, 42.506363, 21.248922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335147, -0.820371, 0.463323,
		0.917730, 0.395526, 0.036485,
		-0.213187, 0.412978, 0.885438,
		34.606586, 42.630257, 21.514553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058514, 41.943493, 21.339848>,  <34.755817, 42.341171, 20.894747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058514, 41.943493, 21.339848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.821594, 42.147640, 21.589231>,  <34.679443, 42.270130, 21.738863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.821594, 42.147640, 21.589231>,  <35.058514, 41.943493, 21.339848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821594, 42.147640, 21.589231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088922, -0.727661, 0.680149,
		0.800798, 0.458289, 0.385608,
		-0.592297, 0.510373, 0.623461,
		34.643906, 42.300751, 21.776270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818279, 41.996109, 21.325109>,  <35.058514, 41.943493, 21.339848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818279, 41.996109, 21.325109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.790024, 41.634636, 21.156172>,  <35.773071, 41.417751, 21.054810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.790024, 41.634636, 21.156172>,  <35.818279, 41.996109, 21.325109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790024, 41.634636, 21.156172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124468, 0.428078, -0.895130,
		0.989706, -0.010659, -0.142717,
		-0.070635, -0.903679, -0.422345,
		35.768833, 41.363533, 21.029469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342712, 42.084305, 20.830826>,  <35.818279, 41.996109, 21.325109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342712, 42.084305, 20.830826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.063892, 41.808109, 20.753529>,  <35.896599, 41.642391, 20.707150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.063892, 41.808109, 20.753529>,  <36.342712, 42.084305, 20.830826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063892, 41.808109, 20.753529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067972, 0.204663, -0.976470,
		0.713792, -0.693785, -0.095727,
		-0.697051, -0.690490, -0.193245,
		35.854778, 41.600964, 20.695555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629749, 41.678883, 20.340803>,  <36.342712, 42.084305, 20.830826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629749, 41.678883, 20.340803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.234978, 41.619640, 20.315409>,  <35.998116, 41.584095, 20.300173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.234978, 41.619640, 20.315409>,  <36.629749, 41.678883, 20.340803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234978, 41.619640, 20.315409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032205, 0.204741, -0.978286,
		0.157878, -0.967548, -0.197296,
		-0.986934, -0.148096, -0.063484,
		35.938896, 41.575211, 20.296364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552155, 41.221756, 19.784615>,  <36.629749, 41.678883, 20.340803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552155, 41.221756, 19.784615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.183529, 41.376583, 19.796663>,  <35.962353, 41.469479, 19.803892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.183529, 41.376583, 19.796663>,  <36.552155, 41.221756, 19.784615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183529, 41.376583, 19.796663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012463, 0.107039, -0.994177,
		-0.388037, -0.915818, -0.103467,
		-0.921559, 0.387067, 0.030122,
		35.907063, 41.492702, 19.805700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307346, 40.966469, 19.207075>,  <36.552155, 41.221756, 19.784615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307346, 40.966469, 19.207075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.051628, 41.261227, 19.294970>,  <35.898197, 41.438084, 19.347706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.051628, 41.261227, 19.294970>,  <36.307346, 40.966469, 19.207075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051628, 41.261227, 19.294970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122154, 0.184808, -0.975153,
		-0.759199, -0.650251, -0.028131,
		-0.639293, 0.736899, 0.219737,
		35.859840, 41.482296, 19.360891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721310, 40.808418, 18.697422>,  <36.307346, 40.966469, 19.207075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721310, 40.808418, 18.697422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.724522, 41.187572, 18.824827>,  <35.726448, 41.415066, 18.901270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.724522, 41.187572, 18.824827>,  <35.721310, 40.808418, 18.697422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724522, 41.187572, 18.824827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162959, 0.315508, -0.934826,
		-0.986600, -0.044399, 0.157000,
		0.008029, 0.947884, 0.318515,
		35.726929, 41.471939, 18.920382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163353, 41.203987, 18.321775>,  <35.721310, 40.808418, 18.697422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163353, 41.203987, 18.321775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.408768, 41.487503, 18.461029>,  <35.556015, 41.657612, 18.544580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.408768, 41.487503, 18.461029>,  <35.163353, 41.203987, 18.321775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408768, 41.487503, 18.461029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153270, 0.325590, -0.933005,
		-0.774650, 0.625791, 0.091125,
		0.613536, 0.708786, 0.348133,
		35.592827, 41.700138, 18.565470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986809, 41.859089, 18.001406>,  <35.163353, 41.203987, 18.321775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986809, 41.859089, 18.001406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.362675, 41.912193, 18.127520>,  <35.588196, 41.944054, 18.203188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.362675, 41.912193, 18.127520>,  <34.986809, 41.859089, 18.001406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362675, 41.912193, 18.127520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238857, 0.405178, -0.882484,
		-0.244903, 0.904548, 0.349021,
		0.939665, 0.132757, 0.315287,
		35.644573, 41.952019, 18.222105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218803, 42.474945, 17.592941>,  <34.986809, 41.859089, 18.001406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218803, 42.474945, 17.592941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.562164, 42.327709, 17.735861>,  <35.768181, 42.239368, 17.821611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.562164, 42.327709, 17.735861>,  <35.218803, 42.474945, 17.592941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562164, 42.327709, 17.735861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501740, 0.457445, -0.734167,
		0.106792, 0.809480, 0.577354,
		0.858401, -0.368085, 0.357297,
		35.819683, 42.217285, 17.843050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.280319, 35.007454, 32.251911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.646248, 34.858376, 32.189678>,  <37.865803, 34.768929, 32.152340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.646248, 34.858376, 32.189678>,  <37.280319, 35.007454, 32.251911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646248, 34.858376, 32.189678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039751, 0.300269, -0.953026,
		0.401902, 0.878031, 0.259877,
		0.914819, -0.372693, -0.155581,
		37.920692, 34.746567, 32.143005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653435, 35.579903, 32.110435>,  <37.280319, 35.007454, 32.251911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653435, 35.579903, 32.110435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.824554, 35.254005, 31.953884>,  <37.927227, 35.058468, 31.859953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.824554, 35.254005, 31.953884>,  <37.653435, 35.579903, 32.110435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824554, 35.254005, 31.953884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256882, 0.305556, -0.916868,
		0.866602, 0.492774, -0.078577,
		0.427799, -0.814745, -0.391381,
		37.952892, 35.009583, 31.836470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160534, 35.790543, 31.581417>,  <37.653435, 35.579903, 32.110435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160534, 35.790543, 31.581417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.111885, 35.409004, 31.471592>,  <38.082695, 35.180080, 31.405697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.111885, 35.409004, 31.471592>,  <38.160534, 35.790543, 31.581417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111885, 35.409004, 31.471592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237633, 0.296556, -0.924978,
		0.963710, -0.047255, -0.262734,
		-0.121626, -0.953846, -0.274565,
		38.075397, 35.122852, 31.389223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506470, 35.675873, 30.997068>,  <38.160534, 35.790543, 31.581417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506470, 35.675873, 30.997068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.236176, 35.381062, 30.991716>,  <38.074001, 35.204174, 30.988504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.236176, 35.381062, 30.991716>,  <38.506470, 35.675873, 30.997068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236176, 35.381062, 30.991716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272413, 0.266543, -0.924525,
		0.684964, -0.621087, -0.380887,
		-0.675733, -0.737025, -0.013380,
		38.033455, 35.159954, 30.987701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640846, 35.240013, 30.329281>,  <38.506470, 35.675873, 30.997068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640846, 35.240013, 30.329281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.271072, 35.118389, 30.421345>,  <38.049210, 35.045414, 30.476583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.271072, 35.118389, 30.421345>,  <38.640846, 35.240013, 30.329281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271072, 35.118389, 30.421345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291438, 0.174042, -0.940624,
		0.245946, -0.936621, -0.249504,
		-0.924432, -0.304057, 0.230162,
		37.993744, 35.027172, 30.490393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382011, 34.651844, 29.816423>,  <38.640846, 35.240013, 30.329281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382011, 34.651844, 29.816423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.051853, 34.828976, 29.956491>,  <37.853756, 34.935253, 30.040533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.051853, 34.828976, 29.956491>,  <38.382011, 34.651844, 29.816423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051853, 34.828976, 29.956491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294494, 0.191458, -0.936278,
		-0.481653, -0.875927, -0.027619,
		-0.825399, 0.442828, 0.350171,
		37.804234, 34.961823, 30.061543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834213, 34.392868, 29.519226>,  <38.382011, 34.651844, 29.816423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834213, 34.392868, 29.519226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.691536, 34.747952, 29.635664>,  <37.605930, 34.961002, 29.705526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.691536, 34.747952, 29.635664>,  <37.834213, 34.392868, 29.519226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691536, 34.747952, 29.635664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458143, 0.105335, -0.882615,
		-0.814171, -0.448187, 0.369127,
		-0.356694, 0.887712, 0.291094,
		37.584526, 35.014267, 29.722992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253212, 34.526566, 29.104229>,  <37.834213, 34.392868, 29.519226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253212, 34.526566, 29.104229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.290176, 34.896732, 29.251236>,  <37.312355, 35.118832, 29.339439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.290176, 34.896732, 29.251236>,  <37.253212, 34.526566, 29.104229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290176, 34.896732, 29.251236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547606, 0.355499, -0.757461,
		-0.831618, -0.131260, 0.539613,
		0.092408, 0.925414, 0.367518,
		37.317898, 35.174358, 29.361492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608814, 34.816151, 29.028175>,  <37.253212, 34.526566, 29.104229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608814, 34.816151, 29.028175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.852898, 35.130703, 29.066654>,  <36.999348, 35.319435, 29.089741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.852898, 35.130703, 29.066654>,  <36.608814, 34.816151, 29.028175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852898, 35.130703, 29.066654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504515, 0.479333, -0.718125,
		-0.610830, 0.389672, 0.689233,
		0.610206, 0.786381, 0.096196,
		37.035961, 35.366619, 29.095512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183849, 35.361080, 28.928261>,  <36.608814, 34.816151, 29.028175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183849, 35.361080, 28.928261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.542881, 35.527790, 28.870766>,  <36.758301, 35.627815, 28.836269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.542881, 35.527790, 28.870766>,  <36.183849, 35.361080, 28.928261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542881, 35.527790, 28.870766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409727, 0.668247, -0.620943,
		-0.162739, 0.616236, 0.770564,
		0.897575, 0.416772, -0.143738,
		36.812153, 35.652821, 28.827644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046368, 36.133209, 28.930004>,  <36.183849, 35.361080, 28.928261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046368, 36.133209, 28.930004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411636, 36.105400, 28.769361>,  <36.630798, 36.088715, 28.672976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411636, 36.105400, 28.769361>,  <36.046368, 36.133209, 28.930004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411636, 36.105400, 28.769361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257436, 0.665524, -0.700574,
		0.315988, 0.743131, 0.589838,
		0.913170, -0.069528, -0.401606,
		36.685589, 36.084541, 28.648880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357719, 36.829361, 28.799942>,  <36.046368, 36.133209, 28.930004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357719, 36.829361, 28.799942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.544308, 36.567513, 28.561991>,  <36.656261, 36.410404, 28.419220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.544308, 36.567513, 28.561991>,  <36.357719, 36.829361, 28.799942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544308, 36.567513, 28.561991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233017, 0.557830, -0.796573,
		0.853292, 0.510195, 0.107675,
		0.466472, -0.654619, -0.594876,
		36.684250, 36.371128, 28.383528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345654, 37.512592, 29.125097>,  <36.357719, 36.829361, 28.799942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345654, 37.512592, 29.125097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.975670, 37.647141, 29.195862>,  <35.753677, 37.727871, 29.238321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.975670, 37.647141, 29.195862>,  <36.345654, 37.512592, 29.125097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975670, 37.647141, 29.195862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069511, -0.307910, 0.948873,
		0.373650, 0.889969, 0.261423,
		-0.924962, 0.336374, 0.176913,
		35.698181, 37.748055, 29.248936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409863, 37.853958, 29.783417>,  <36.345654, 37.512592, 29.125097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409863, 37.853958, 29.783417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.024166, 37.754307, 29.747263>,  <35.792747, 37.694515, 29.725571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.024166, 37.754307, 29.747263>,  <36.409863, 37.853958, 29.783417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024166, 37.754307, 29.747263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054479, -0.147445, 0.987569,
		-0.259354, 0.957182, 0.128601,
		-0.964244, -0.249124, -0.090387,
		35.734894, 37.679569, 29.720146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063671, 38.285995, 30.223925>,  <36.409863, 37.853958, 29.783417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063671, 38.285995, 30.223925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.807415, 37.986248, 30.156961>,  <35.653660, 37.806400, 30.116783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.807415, 37.986248, 30.156961>,  <36.063671, 38.285995, 30.223925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807415, 37.986248, 30.156961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006305, -0.212887, 0.977057,
		-0.767812, 0.627001, 0.131660,
		-0.640644, -0.749366, -0.167410,
		35.615223, 37.761436, 30.106739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475880, 38.387337, 30.703087>,  <36.063671, 38.285995, 30.223925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475880, 38.387337, 30.703087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.464985, 38.000057, 30.603603>,  <35.458447, 37.767689, 30.543913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.464985, 38.000057, 30.603603>,  <35.475880, 38.387337, 30.703087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464985, 38.000057, 30.603603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085245, -0.245646, 0.965604,
		-0.995988, 0.047502, -0.075843,
		-0.027238, -0.968195, -0.248710,
		35.456814, 37.709599, 30.528990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740257, 38.127445, 30.866497>,  <35.475880, 38.387337, 30.703087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740257, 38.127445, 30.866497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035957, 37.858078, 30.867512>,  <35.213379, 37.696457, 30.868120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035957, 37.858078, 30.867512>,  <34.740257, 38.127445, 30.866497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035957, 37.858078, 30.867512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246898, -0.267525, 0.931381,
		-0.626534, -0.689154, -0.364036,
		0.739255, -0.673422, 0.002537,
		35.257732, 37.656052, 30.868273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433159, 37.646328, 31.187525>,  <34.740257, 38.127445, 30.866497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433159, 37.646328, 31.187525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.825035, 37.573387, 31.220863>,  <35.060162, 37.529625, 31.240866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.825035, 37.573387, 31.220863>,  <34.433159, 37.646328, 31.187525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825035, 37.573387, 31.220863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128124, -0.249662, 0.959819,
		-0.154211, -0.951009, -0.267956,
		0.979695, -0.182346, 0.083347,
		35.118942, 37.518684, 31.245867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437508, 37.165348, 31.726576>,  <34.433159, 37.646328, 31.187525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437508, 37.165348, 31.726576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.825989, 37.260654, 31.726898>,  <35.059078, 37.317841, 31.727091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.825989, 37.260654, 31.726898>,  <34.437508, 37.165348, 31.726576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825989, 37.260654, 31.726898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039086, -0.162644, 0.985910,
		0.235043, -0.957484, -0.167273,
		0.971199, 0.238269, 0.000804,
		35.117348, 37.332134, 31.727139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706478, 36.638592, 32.205017>,  <34.437508, 37.165348, 31.726576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706478, 36.638592, 32.205017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.971851, 36.937336, 32.186913>,  <35.131077, 37.116585, 32.176048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.971851, 36.937336, 32.186913>,  <34.706478, 36.638592, 32.205017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971851, 36.937336, 32.186913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307961, -0.217429, 0.926221,
		0.681919, -0.628426, -0.374255,
		0.663434, 0.746864, -0.045262,
		35.170883, 37.161396, 32.173332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315331, 36.350758, 32.510368>,  <34.706478, 36.638592, 32.205017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315331, 36.350758, 32.510368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.422237, 36.735950, 32.524414>,  <35.486382, 36.967068, 32.532841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.422237, 36.735950, 32.524414>,  <35.315331, 36.350758, 32.510368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422237, 36.735950, 32.524414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351907, -0.131462, 0.926757,
		0.897066, -0.235338, -0.374016,
		0.267270, 0.962982, 0.035113,
		35.502419, 37.024845, 32.534946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997601, 36.455910, 32.712086>,  <35.315331, 36.350758, 32.510368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997601, 36.455910, 32.712086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.820751, 36.799332, 32.815941>,  <35.714642, 37.005386, 32.878254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.820751, 36.799332, 32.815941>,  <35.997601, 36.455910, 32.712086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820751, 36.799332, 32.815941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279107, -0.143412, 0.949490,
		0.852425, 0.492257, -0.176224,
		-0.442120, 0.858555, 0.259640,
		35.688114, 37.056900, 32.893833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493160, 36.679321, 33.167057>,  <35.997601, 36.455910, 32.712086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493160, 36.679321, 33.167057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.195042, 36.939156, 33.227165>,  <36.016171, 37.095055, 33.263229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.195042, 36.939156, 33.227165>,  <36.493160, 36.679321, 33.167057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195042, 36.939156, 33.227165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239351, 0.050313, 0.969629,
		0.622292, 0.758625, -0.192976,
		-0.745294, 0.649581, 0.150268,
		35.971455, 37.134029, 33.272247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785725, 37.244160, 33.656841>,  <36.493160, 36.679321, 33.167057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785725, 37.244160, 33.656841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.388813, 37.278019, 33.693085>,  <36.150665, 37.298332, 33.714832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.388813, 37.278019, 33.693085>,  <36.785725, 37.244160, 33.656841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388813, 37.278019, 33.693085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094111, 0.038291, 0.994825,
		0.080737, 0.995675, -0.045962,
		-0.992283, 0.084645, 0.090613,
		36.091129, 37.303413, 33.720268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746727, 37.863022, 34.091473>,  <36.785725, 37.244160, 33.656841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746727, 37.863022, 34.091473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.425297, 37.626564, 34.119247>,  <36.232441, 37.484692, 34.135914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.425297, 37.626564, 34.119247>,  <36.746727, 37.863022, 34.091473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425297, 37.626564, 34.119247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039343, 0.169166, 0.984802,
		-0.593904, 0.788629, -0.159195,
		-0.803573, -0.591141, 0.069441,
		36.184223, 37.449223, 34.140079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234459, 38.251595, 34.458721>,  <36.746727, 37.863022, 34.091473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234459, 38.251595, 34.458721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.157097, 37.860813, 34.494862>,  <36.110680, 37.626347, 34.516544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.157097, 37.860813, 34.494862>,  <36.234459, 38.251595, 34.458721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157097, 37.860813, 34.494862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092971, 0.073425, 0.992958,
		-0.976705, 0.200439, 0.076628,
		-0.193401, -0.976951, 0.090350,
		36.099075, 37.567726, 34.521965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639679, 38.146248, 35.066635>,  <36.234459, 38.251595, 34.458721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639679, 38.146248, 35.066635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897919, 37.855602, 34.972622>,  <36.052864, 37.681217, 34.916214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897919, 37.855602, 34.972622>,  <35.639679, 38.146248, 35.066635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897919, 37.855602, 34.972622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329939, -0.012172, 0.943924,
		-0.688726, -0.686942, 0.231879,
		0.645598, -0.726611, -0.235032,
		36.091599, 37.637619, 34.902111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884804, 38.817104, 34.933300>,  <35.639679, 38.146248, 35.066635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884804, 38.817104, 34.933300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234352, 39.000809, 34.997086>,  <36.444080, 39.111031, 35.035358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234352, 39.000809, 34.997086>,  <35.884804, 38.817104, 34.933300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234352, 39.000809, 34.997086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163853, 0.587053, -0.792793,
		-0.457715, 0.666669, 0.588260,
		0.873870, 0.459261, 0.159468,
		36.496513, 39.138588, 35.044926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968098, 39.501789, 35.114410>,  <35.884804, 38.817104, 34.933300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968098, 39.501789, 35.114410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.301323, 39.436333, 34.903042>,  <36.501259, 39.397060, 34.776222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.301323, 39.436333, 34.903042>,  <35.968098, 39.501789, 35.114410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301323, 39.436333, 34.903042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283210, 0.694389, -0.661526,
		0.475180, 0.700747, 0.532126,
		0.833064, -0.163640, -0.528418,
		36.551243, 39.387241, 34.744514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245464, 40.142639, 35.005085>,  <35.968098, 39.501789, 35.114410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245464, 40.142639, 35.005085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.436501, 39.932140, 34.723667>,  <36.551121, 39.805843, 34.554817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.436501, 39.932140, 34.723667>,  <36.245464, 40.142639, 35.005085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436501, 39.932140, 34.723667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061247, 0.778882, -0.624172,
		0.876444, 0.341190, 0.339757,
		0.477592, -0.526243, -0.703544,
		36.579777, 39.774269, 34.512604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717819, 40.600979, 34.717560>,  <36.245464, 40.142639, 35.005085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717819, 40.600979, 34.717560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.641438, 40.327049, 34.436260>,  <36.595608, 40.162693, 34.267483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.641438, 40.327049, 34.436260>,  <36.717819, 40.600979, 34.717560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641438, 40.327049, 34.436260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084121, 0.725209, -0.683370,
		0.977987, -0.071336, -0.196092,
		-0.190956, -0.684823, -0.703245,
		36.584152, 40.121601, 34.225288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044201, 40.893772, 34.194653>,  <36.717819, 40.600979, 34.717560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044201, 40.893772, 34.194653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.810810, 40.604877, 34.046097>,  <36.670776, 40.431541, 33.956963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.810810, 40.604877, 34.046097>,  <37.044201, 40.893772, 34.194653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810810, 40.604877, 34.046097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128714, 0.533766, -0.835779,
		0.801866, -0.439853, -0.404401,
		-0.583475, -0.722235, -0.371394,
		36.635769, 40.388206, 33.934677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406933, 40.609268, 33.441063>,  <37.044201, 40.893772, 34.194653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406933, 40.609268, 33.441063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.017471, 40.519337, 33.456306>,  <36.783794, 40.465378, 33.465454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.017471, 40.519337, 33.456306>,  <37.406933, 40.609268, 33.441063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017471, 40.519337, 33.456306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111824, 0.325087, -0.939049,
		0.198737, -0.918569, -0.341663,
		-0.973652, -0.224829, 0.038111,
		36.725376, 40.451889, 33.467739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208527, 40.022015, 32.880478>,  <37.406933, 40.609268, 33.441063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208527, 40.022015, 32.880478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.892422, 40.246769, 32.978268>,  <36.702759, 40.381622, 33.036942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.892422, 40.246769, 32.978268>,  <37.208527, 40.022015, 32.880478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892422, 40.246769, 32.978268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150229, 0.209139, -0.966277,
		-0.594069, -0.800339, -0.080863,
		-0.790261, 0.561888, 0.244477,
		36.655342, 40.415337, 33.051609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699505, 39.886696, 32.428200>,  <37.208527, 40.022015, 32.880478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699505, 39.886696, 32.428200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.511135, 40.215733, 32.555683>,  <36.398113, 40.413155, 32.632175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.511135, 40.215733, 32.555683>,  <36.699505, 39.886696, 32.428200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511135, 40.215733, 32.555683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211495, 0.245468, -0.946053,
		-0.856445, -0.512927, 0.058376,
		-0.470927, 0.822588, 0.318711,
		36.369858, 40.462509, 32.651295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074440, 39.903957, 32.101677>,  <36.699505, 39.886696, 32.428200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074440, 39.903957, 32.101677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.119648, 40.281803, 32.224922>,  <36.146774, 40.508511, 32.298870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.119648, 40.281803, 32.224922>,  <36.074440, 39.903957, 32.101677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119648, 40.281803, 32.224922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378160, 0.327662, -0.865814,
		-0.918815, -0.018660, 0.394247,
		0.113024, 0.944611, 0.308117,
		36.153557, 40.565186, 32.317356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350285, 40.234882, 31.936562>,  <36.074440, 39.903957, 32.101677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350285, 40.234882, 31.936562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.600502, 40.546288, 31.956970>,  <35.750633, 40.733131, 31.969215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.600502, 40.546288, 31.956970>,  <35.350285, 40.234882, 31.936562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600502, 40.546288, 31.956970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323085, 0.318016, -0.891337,
		-0.710147, 0.541088, 0.450461,
		0.625546, 0.778517, 0.051020,
		35.788166, 40.779842, 31.972277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950409, 40.715042, 31.638117>,  <35.350285, 40.234882, 31.936562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950409, 40.715042, 31.638117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.320572, 40.859287, 31.591497>,  <35.542667, 40.945835, 31.563526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.320572, 40.859287, 31.591497>,  <34.950409, 40.715042, 31.638117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320572, 40.859287, 31.591497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231377, 0.294040, -0.927365,
		-0.300151, 0.885154, 0.355544,
		0.925405, 0.360614, -0.116548,
		35.598194, 40.967472, 31.556534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911194, 41.285854, 31.236946>,  <34.950409, 40.715042, 31.638117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911194, 41.285854, 31.236946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.291981, 41.186581, 31.165201>,  <35.520451, 41.127018, 31.122154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.291981, 41.186581, 31.165201>,  <34.911194, 41.285854, 31.236946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291981, 41.186581, 31.165201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030064, 0.507163, -0.861325,
		0.304731, 0.825343, 0.475340,
		0.951964, -0.248182, -0.179361,
		35.577568, 41.112125, 31.111393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271332, 41.877373, 31.048069>,  <34.911194, 41.285854, 31.236946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271332, 41.877373, 31.048069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499714, 41.586636, 30.895384>,  <35.636745, 41.412193, 30.803772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499714, 41.586636, 30.895384>,  <35.271332, 41.877373, 31.048069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499714, 41.586636, 30.895384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038445, 0.488112, -0.871934,
		0.820077, 0.483164, 0.306635,
		0.570960, -0.726842, -0.381714,
		35.671001, 41.368584, 30.780869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776463, 42.182796, 30.625692>,  <35.271332, 41.877373, 31.048069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776463, 42.182796, 30.625692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.800617, 41.804630, 30.497601>,  <35.815109, 41.577732, 30.420746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.800617, 41.804630, 30.497601>,  <35.776463, 42.182796, 30.625692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800617, 41.804630, 30.497601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068248, 0.323975, -0.943601,
		0.995839, 0.035130, 0.084088,
		0.060391, -0.945413, -0.320230,
		35.818733, 41.521008, 30.401531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235645, 42.230312, 30.126579>,  <35.776463, 42.182796, 30.625692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235645, 42.230312, 30.126579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.059170, 41.885822, 30.025667>,  <35.953285, 41.679131, 29.965120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.059170, 41.885822, 30.025667>,  <36.235645, 42.230312, 30.126579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059170, 41.885822, 30.025667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017912, 0.272613, -0.961957,
		0.897234, -0.428926, -0.104849,
		-0.441191, -0.861223, -0.252280,
		35.926811, 41.627457, 29.949984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629410, 41.944626, 29.575808>,  <36.235645, 42.230312, 30.126579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629410, 41.944626, 29.575808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.271912, 41.767887, 29.544836>,  <36.057415, 41.661846, 29.526253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.271912, 41.767887, 29.544836>,  <36.629410, 41.944626, 29.575808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271912, 41.767887, 29.544836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042285, 0.088862, -0.995146,
		0.446581, -0.892679, -0.060736,
		-0.893744, -0.441845, -0.077431,
		36.003788, 41.635334, 29.521606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754955, 41.339005, 29.101009>,  <36.629410, 41.944626, 29.575808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754955, 41.339005, 29.101009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.379169, 41.473488, 29.127451>,  <36.153698, 41.554176, 29.143316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.379169, 41.473488, 29.127451>,  <36.754955, 41.339005, 29.101009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379169, 41.473488, 29.127451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038570, 0.295457, -0.954577,
		-0.340468, -0.894242, -0.290539,
		-0.939465, 0.336209, 0.066102,
		36.097328, 41.574352, 29.147282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425819, 41.083672, 28.543558>,  <36.754955, 41.339005, 29.101009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425819, 41.083672, 28.543558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.175716, 41.383148, 28.631662>,  <36.025654, 41.562836, 28.684525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.175716, 41.383148, 28.631662>,  <36.425819, 41.083672, 28.543558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175716, 41.383148, 28.631662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057631, 0.237165, -0.969758,
		-0.778290, -0.619040, -0.105140,
		-0.625254, 0.748694, 0.220260,
		35.988140, 41.607758, 28.697741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845070, 40.934959, 28.056879>,  <36.425819, 41.083672, 28.543558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845070, 40.934959, 28.056879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.828850, 41.316795, 28.174944>,  <35.819118, 41.545895, 28.245783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.828850, 41.316795, 28.174944>,  <35.845070, 40.934959, 28.056879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828850, 41.316795, 28.174944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211736, 0.280489, -0.936213,
		-0.976485, -0.100458, 0.190747,
		-0.040548, 0.954586, 0.295164,
		35.816685, 41.603172, 28.263493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309395, 41.232147, 27.550282>,  <35.845070, 40.934959, 28.056879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309395, 41.232147, 27.550282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489178, 41.541595, 27.728945>,  <35.597046, 41.727264, 27.836142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489178, 41.541595, 27.728945>,  <35.309395, 41.232147, 27.550282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489178, 41.541595, 27.728945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105349, 0.450613, -0.886482,
		-0.887069, 0.445488, 0.121030,
		0.449455, 0.773620, 0.446657,
		35.624016, 41.773682, 27.862942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975689, 41.781693, 27.324301>,  <35.309395, 41.232147, 27.550282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975689, 41.781693, 27.324301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332157, 41.935329, 27.420872>,  <35.546040, 42.027512, 27.478813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332157, 41.935329, 27.420872>,  <34.975689, 41.781693, 27.324301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332157, 41.935329, 27.420872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018168, 0.561954, -0.826969,
		-0.453304, 0.732584, 0.507775,
		0.891171, 0.384094, 0.241426,
		35.599510, 42.050556, 27.493299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953342, 42.554974, 27.161707>,  <34.975689, 41.781693, 27.324301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953342, 42.554974, 27.161707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.347260, 42.485477, 27.161560>,  <35.583611, 42.443779, 27.161472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.347260, 42.485477, 27.161560>,  <34.953342, 42.554974, 27.161707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347260, 42.485477, 27.161560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119530, 0.679051, -0.724295,
		0.126088, 0.713236, 0.689490,
		0.984792, -0.173739, -0.000367,
		35.642696, 42.433357, 27.161449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242722, 43.302757, 27.104492>,  <34.953342, 42.554974, 27.161707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242722, 43.302757, 27.104492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.539139, 43.042439, 27.038380>,  <35.716988, 42.886246, 26.998713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.539139, 43.042439, 27.038380>,  <35.242722, 43.302757, 27.104492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539139, 43.042439, 27.038380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384672, 0.613230, -0.689910,
		0.550345, 0.447676, 0.704774,
		0.741045, -0.650796, -0.165280,
		35.761452, 42.847198, 26.988796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821926, 43.652649, 27.199442>,  <35.242722, 43.302757, 27.104492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821926, 43.652649, 27.199442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.926476, 43.352486, 26.956600>,  <35.989204, 43.172390, 26.810894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.926476, 43.352486, 26.956600>,  <35.821926, 43.652649, 27.199442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926476, 43.352486, 26.956600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317680, 0.660807, -0.680010,
		0.911462, -0.015128, 0.411107,
		0.261375, -0.750404, -0.607106,
		36.004887, 43.127365, 26.774467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539654, 43.728069, 26.882841>,  <35.821926, 43.652649, 27.199442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539654, 43.728069, 26.882841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356636, 43.471397, 26.636621>,  <36.246826, 43.317394, 26.488890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356636, 43.471397, 26.636621>,  <36.539654, 43.728069, 26.882841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356636, 43.471397, 26.636621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296294, 0.542675, -0.785948,
		0.838372, -0.541986, -0.058169,
		-0.457540, -0.641681, -0.615551,
		36.219376, 43.278893, 26.451956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997093, 43.777988, 26.331926>,  <36.539654, 43.728069, 26.882841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997093, 43.777988, 26.331926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.673355, 43.623096, 26.155287>,  <36.479111, 43.530163, 26.049303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.673355, 43.623096, 26.155287>,  <36.997093, 43.777988, 26.331926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673355, 43.623096, 26.155287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092506, 0.658448, -0.746919,
		0.579997, -0.645369, -0.497094,
		-0.809349, -0.387227, -0.441598,
		36.430550, 43.506927, 26.022808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189789, 43.514545, 25.619387>,  <36.997093, 43.777988, 26.331926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189789, 43.514545, 25.619387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791267, 43.538986, 25.595243>,  <36.552155, 43.553650, 25.580757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791267, 43.538986, 25.595243>,  <37.189789, 43.514545, 25.619387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791267, 43.538986, 25.595243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085578, 0.646596, -0.758017,
		-0.007288, -0.760381, -0.649435,
		-0.996305, 0.061101, -0.060359,
		36.492374, 43.557316, 25.577135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431866, 43.120533, 25.096420>,  <37.189789, 43.514545, 25.619387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431866, 43.120533, 25.096420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.816925, 43.138374, 24.989595>,  <38.047958, 43.149078, 24.925501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.816925, 43.138374, 24.989595>,  <37.431866, 43.120533, 25.096420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816925, 43.138374, 24.989595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270666, -0.132395, 0.953526,
		0.007178, -0.990193, -0.139524,
		0.962646, 0.044609, -0.267061,
		38.105721, 43.151756, 24.909477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674667, 42.600895, 25.533451>,  <37.431866, 43.120533, 25.096420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674667, 42.600895, 25.533451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.006985, 42.777386, 25.397747>,  <38.206375, 42.883278, 25.316324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.006985, 42.777386, 25.397747>,  <37.674667, 42.600895, 25.533451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006985, 42.777386, 25.397747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461437, -0.205203, 0.863115,
		0.311208, -0.873621, -0.374079,
		0.830798, 0.441222, -0.339260,
		38.256226, 42.909752, 25.295969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125477, 42.044548, 25.567705>,  <37.674667, 42.600895, 25.533451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125477, 42.044548, 25.567705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.323654, 42.392002, 25.567348>,  <38.442562, 42.600475, 25.567135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.323654, 42.392002, 25.567348>,  <38.125477, 42.044548, 25.567705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323654, 42.392002, 25.567348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437964, -0.248916, 0.863845,
		0.750149, -0.428376, -0.503757,
		0.495444, 0.868640, -0.000890,
		38.472286, 42.652596, 25.567081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826717, 41.867321, 25.651516>,  <38.125477, 42.044548, 25.567705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826717, 41.867321, 25.651516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.813313, 42.246384, 25.778530>,  <38.805271, 42.473820, 25.854738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.813313, 42.246384, 25.778530>,  <38.826717, 41.867321, 25.651516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813313, 42.246384, 25.778530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527592, -0.253066, 0.810928,
		0.848837, 0.194702, -0.491495,
		-0.033509, 0.947654, 0.317535,
		38.803261, 42.530682, 25.873791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555458, 42.058670, 25.868994>,  <38.826717, 41.867321, 25.651516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555458, 42.058670, 25.868994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.302608, 42.304733, 26.057463>,  <39.150898, 42.452374, 26.170544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.302608, 42.304733, 26.057463>,  <39.555458, 42.058670, 25.868994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302608, 42.304733, 26.057463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523652, -0.109062, 0.844922,
		0.571149, 0.780823, -0.253189,
		-0.632121, 0.615160, 0.471171,
		39.112972, 42.489281, 26.198814>
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
