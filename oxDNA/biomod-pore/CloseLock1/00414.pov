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
	<24.763016, 35.279476, 34.719448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.473936, 35.006477, 34.763081>,  <24.300488, 34.842678, 34.789261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.473936, 35.006477, 34.763081>,  <24.763016, 35.279476, 34.719448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.473936, 35.006477, 34.763081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600358, 0.698083, 0.390192,
		-0.342454, 0.216504, -0.914249,
		-0.722700, -0.682499, 0.109081,
		24.257126, 34.801727, 34.795807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.287960, 34.881058, 34.973103>,  <24.763016, 35.279476, 34.719448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.287960, 34.881058, 34.973103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340429, 34.690823, 35.321033>,  <25.371910, 34.576679, 35.529793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340429, 34.690823, 35.321033>,  <25.287960, 34.881058, 34.973103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.340429, 34.690823, 35.321033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966217, -0.135023, -0.219532,
		0.221855, 0.869241, 0.441814,
		0.131171, -0.475592, 0.869831,
		25.379780, 34.548145, 35.581982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857130, 35.200668, 35.383808>,  <25.287960, 34.881058, 34.973103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.857130, 35.200668, 35.383808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830709, 34.808861, 35.459896>,  <25.814857, 34.573776, 35.505550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830709, 34.808861, 35.459896>,  <25.857130, 35.200668, 35.383808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830709, 34.808861, 35.459896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968369, -0.108896, -0.224508,
		0.240624, 0.169374, 0.955726,
		-0.066049, -0.979517, 0.190220,
		25.810894, 34.515007, 35.516960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430582, 35.102428, 35.832146>,  <25.857130, 35.200668, 35.383808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430582, 35.102428, 35.832146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335299, 34.761070, 35.646687>,  <26.278128, 34.556255, 35.535412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335299, 34.761070, 35.646687>,  <26.430582, 35.102428, 35.832146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335299, 34.761070, 35.646687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948213, -0.101075, -0.301124,
		0.210114, -0.511372, 0.833277,
		-0.238210, -0.853395, -0.463652,
		26.263836, 34.505051, 35.507591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889408, 34.651516, 36.126965>,  <26.430582, 35.102428, 35.832146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889408, 34.651516, 36.126965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745586, 34.542896, 35.769871>,  <26.659294, 34.477726, 35.555614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745586, 34.542896, 35.769871>,  <26.889408, 34.651516, 36.126965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745586, 34.542896, 35.769871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932817, -0.080081, -0.351338,
		0.023914, -0.959088, 0.282098,
		-0.359555, -0.271548, -0.892738,
		26.637720, 34.461433, 35.502048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286322, 34.272507, 36.657116>,  <26.889408, 34.651516, 36.126965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286322, 34.272507, 36.657116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685375, 34.296284, 36.670933>,  <27.924807, 34.310551, 36.679222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685375, 34.296284, 36.670933>,  <27.286322, 34.272507, 36.657116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685375, 34.296284, 36.670933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003851, -0.453336, 0.891331,
		0.068647, -0.889355, -0.452034,
		0.997634, 0.059447, 0.034545,
		27.984665, 34.314117, 36.681297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422167, 33.652344, 36.811047>,  <27.286322, 34.272507, 36.657116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422167, 33.652344, 36.811047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734524, 33.880249, 36.913483>,  <27.921938, 34.016991, 36.974945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734524, 33.880249, 36.913483>,  <27.422167, 33.652344, 36.811047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734524, 33.880249, 36.913483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024687, -0.437787, 0.898740,
		0.624178, -0.695497, -0.355930,
		0.780893, 0.569760, 0.256087,
		27.968792, 34.051178, 36.990311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937151, 33.229431, 37.098579>,  <27.422167, 33.652344, 36.811047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937151, 33.229431, 37.098579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026340, 33.585693, 37.257076>,  <28.079853, 33.799450, 37.352177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026340, 33.585693, 37.257076>,  <27.937151, 33.229431, 37.098579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026340, 33.585693, 37.257076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046124, -0.415664, 0.908348,
		0.973733, -0.184260, -0.133762,
		0.222972, 0.890658, 0.396247,
		28.093233, 33.852890, 37.375950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463388, 33.262138, 37.554878>,  <27.937151, 33.229431, 37.098579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463388, 33.262138, 37.554878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280167, 33.592514, 37.686333>,  <28.170233, 33.790741, 37.765205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280167, 33.592514, 37.686333>,  <28.463388, 33.262138, 37.554878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280167, 33.592514, 37.686333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006592, -0.372847, 0.927870,
		0.888899, 0.422850, 0.176230,
		-0.458057, 0.825944, 0.328635,
		28.142750, 33.840298, 37.784924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596878, 33.237595, 38.278450>,  <28.463388, 33.262138, 37.554878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596878, 33.237595, 38.278450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318430, 33.524372, 38.293446>,  <28.151361, 33.696438, 38.302444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318430, 33.524372, 38.293446>,  <28.596878, 33.237595, 38.278450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318430, 33.524372, 38.293446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166333, -0.211858, 0.963042,
		0.698390, 0.664158, 0.266731,
		-0.696121, 0.716945, 0.037488,
		28.109594, 33.739456, 38.304691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808752, 33.580334, 38.827904>,  <28.596878, 33.237595, 38.278450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808752, 33.580334, 38.827904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423559, 33.666504, 38.763088>,  <28.192444, 33.718204, 38.724197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423559, 33.666504, 38.763088>,  <28.808752, 33.580334, 38.827904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423559, 33.666504, 38.763088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170504, -0.021172, 0.985129,
		0.208788, 0.976291, 0.057119,
		-0.962983, 0.215422, -0.162041,
		28.134665, 33.731129, 38.714478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605722, 33.976971, 39.357479>,  <28.808752, 33.580334, 38.827904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605722, 33.976971, 39.357479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273190, 33.820942, 39.199123>,  <28.073669, 33.727325, 39.104111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273190, 33.820942, 39.199123>,  <28.605722, 33.976971, 39.357479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273190, 33.820942, 39.199123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197661, -0.458235, 0.866574,
		-0.519437, 0.798664, 0.303844,
		-0.831334, -0.390073, -0.395889,
		28.023790, 33.703918, 39.080357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190107, 34.049854, 39.869354>,  <28.605722, 33.976971, 39.357479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190107, 34.049854, 39.869354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993532, 33.769600, 39.662437>,  <27.875587, 33.601448, 39.538288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993532, 33.769600, 39.662437>,  <28.190107, 34.049854, 39.869354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993532, 33.769600, 39.662437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165332, -0.508115, 0.845272,
		-0.855075, 0.500925, 0.133870,
		-0.491439, -0.700638, -0.517296,
		27.846100, 33.559410, 39.507248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670301, 33.803238, 40.243164>,  <28.190107, 34.049854, 39.869354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670301, 33.803238, 40.243164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711288, 33.509872, 39.974358>,  <27.735880, 33.333855, 39.813072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711288, 33.509872, 39.974358>,  <27.670301, 33.803238, 40.243164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711288, 33.509872, 39.974358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161722, -0.678867, 0.716230,
		-0.981502, 0.035291, -0.188169,
		0.102465, -0.733413, -0.672017,
		27.742027, 33.289848, 39.772751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222605, 33.411419, 40.528465>,  <27.670301, 33.803238, 40.243164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222605, 33.411419, 40.528465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418108, 33.159397, 40.287086>,  <27.535410, 33.008183, 40.142258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418108, 33.159397, 40.287086>,  <27.222605, 33.411419, 40.528465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418108, 33.159397, 40.287086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019687, -0.699482, 0.714379,
		-0.872198, -0.337278, -0.354280,
		0.488757, -0.630055, -0.603446,
		27.564735, 32.970379, 40.106052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844046, 32.700230, 40.583939>,  <27.222605, 33.411419, 40.528465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844046, 32.700230, 40.583939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223328, 32.628918, 40.478771>,  <27.450897, 32.586132, 40.415672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223328, 32.628918, 40.478771>,  <26.844046, 32.700230, 40.583939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223328, 32.628918, 40.478771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057550, -0.717560, 0.694115,
		-0.312406, -0.673293, -0.670133,
		0.948204, -0.178280, -0.262918,
		27.507790, 32.575432, 40.399895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918295, 31.963266, 40.529457>,  <26.844046, 32.700230, 40.583939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.918295, 31.963266, 40.529457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297421, 32.090237, 40.541393>,  <27.524895, 32.166420, 40.548553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297421, 32.090237, 40.541393>,  <26.918295, 31.963266, 40.529457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297421, 32.090237, 40.541393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173496, -0.592022, 0.787025,
		0.267488, -0.740776, -0.616199,
		0.947813, 0.317428, 0.029837,
		27.581764, 32.185467, 40.550343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.354584, 31.396658, 40.406990>,  <26.918295, 31.963266, 40.529457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.354584, 31.396658, 40.406990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565969, 31.673532, 40.603603>,  <27.692801, 31.839657, 40.721569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565969, 31.673532, 40.603603>,  <27.354584, 31.396658, 40.406990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565969, 31.673532, 40.603603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063497, -0.609587, 0.790172,
		0.846577, -0.386367, -0.366097,
		0.528465, 0.692188, 0.491529,
		27.724508, 31.881189, 40.751060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050058, 31.169075, 40.675373>,  <27.354584, 31.396658, 40.406990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050058, 31.169075, 40.675373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.980257, 31.469194, 40.930435>,  <27.938375, 31.649265, 41.083473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.980257, 31.469194, 40.930435>,  <28.050058, 31.169075, 40.675373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980257, 31.469194, 40.930435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277718, -0.583795, 0.762926,
		0.944681, 0.310221, -0.106497,
		-0.174504, 0.750298, 0.637653,
		27.927906, 31.694284, 41.121731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506195, 31.060804, 41.168434>,  <28.050058, 31.169075, 40.675373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506195, 31.060804, 41.168434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252895, 31.306276, 41.357067>,  <28.100916, 31.453560, 41.470245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252895, 31.306276, 41.357067>,  <28.506195, 31.060804, 41.168434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252895, 31.306276, 41.357067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273209, -0.392843, 0.878084,
		0.724122, 0.684887, 0.081104,
		-0.633249, 0.613681, 0.471584,
		28.062922, 31.490381, 41.498543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861481, 31.294445, 41.776531>,  <28.506195, 31.060804, 41.168434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861481, 31.294445, 41.776531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470972, 31.353628, 41.839783>,  <28.236668, 31.389137, 41.877735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470972, 31.353628, 41.839783>,  <28.861481, 31.294445, 41.776531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470972, 31.353628, 41.839783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132238, -0.170947, 0.976366,
		0.171492, 0.974108, 0.147324,
		-0.976270, 0.147957, 0.158130,
		28.178091, 31.398016, 41.887222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799397, 31.728191, 42.394245>,  <28.861481, 31.294445, 41.776531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799397, 31.728191, 42.394245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446726, 31.547527, 42.339622>,  <28.235123, 31.439129, 42.306847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446726, 31.547527, 42.339622>,  <28.799397, 31.728191, 42.394245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446726, 31.547527, 42.339622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088998, -0.125040, 0.988152,
		-0.463383, 0.883385, 0.070048,
		-0.881678, -0.451659, -0.136560,
		28.182222, 31.412029, 42.298653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304642, 32.118557, 42.925110>,  <28.799397, 31.728191, 42.394245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304642, 32.118557, 42.925110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136703, 31.765635, 42.840012>,  <28.035940, 31.553881, 42.788952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136703, 31.765635, 42.840012>,  <28.304642, 32.118557, 42.925110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136703, 31.765635, 42.840012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129551, -0.173751, 0.976231,
		-0.898303, 0.437427, -0.041355,
		-0.419844, -0.882308, -0.212750,
		28.010750, 31.500942, 42.776188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768517, 32.123032, 43.378033>,  <28.304642, 32.118557, 42.925110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768517, 32.123032, 43.378033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827410, 31.738052, 43.286804>,  <27.862745, 31.507065, 43.232067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827410, 31.738052, 43.286804>,  <27.768517, 32.123032, 43.378033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827410, 31.738052, 43.286804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137605, -0.248270, 0.958867,
		-0.979483, -0.109795, -0.168992,
		0.147235, -0.962448, -0.228068,
		27.871580, 31.449318, 43.218384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224258, 31.765509, 43.646328>,  <27.768517, 32.123032, 43.378033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.224258, 31.765509, 43.646328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533220, 31.514315, 43.608330>,  <27.718597, 31.363598, 43.585533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533220, 31.514315, 43.608330>,  <27.224258, 31.765509, 43.646328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533220, 31.514315, 43.608330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075935, -0.239798, 0.967849,
		-0.630574, -0.740359, -0.232907,
		0.772406, -0.627986, -0.094991,
		27.764942, 31.325918, 43.579834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046944, 31.218573, 43.996822>,  <27.224258, 31.765509, 43.646328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046944, 31.218573, 43.996822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446659, 31.229925, 43.986866>,  <27.686487, 31.236736, 43.980892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446659, 31.229925, 43.986866>,  <27.046944, 31.218573, 43.996822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446659, 31.229925, 43.986866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030895, -0.235868, 0.971294,
		0.021694, -0.971370, -0.236577,
		0.999287, 0.028380, -0.024894,
		27.746445, 31.238440, 43.979397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384384, 30.579430, 44.200951>,  <27.046944, 31.218573, 43.996822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384384, 30.579430, 44.200951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620436, 30.888613, 44.294144>,  <27.762066, 31.074123, 44.350060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620436, 30.888613, 44.294144>,  <27.384384, 30.579430, 44.200951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620436, 30.888613, 44.294144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119389, -0.201865, 0.972109,
		0.798433, -0.601485, -0.026843,
		0.590128, 0.772959, 0.232987,
		27.797474, 31.120501, 44.364040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967579, 30.326916, 44.414383>,  <27.384384, 30.579430, 44.200951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967579, 30.326916, 44.414383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862928, 30.681835, 44.566307>,  <27.800138, 30.894787, 44.657463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862928, 30.681835, 44.566307>,  <27.967579, 30.326916, 44.414383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862928, 30.681835, 44.566307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246118, -0.441839, 0.862673,
		0.933262, 0.132218, 0.333976,
		-0.261625, 0.887297, 0.379811,
		27.784441, 30.948025, 44.680252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364080, 30.596344, 44.999313>,  <27.967579, 30.326916, 44.414383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364080, 30.596344, 44.999313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009146, 30.768518, 45.065479>,  <27.796185, 30.871822, 45.105179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009146, 30.768518, 45.065479>,  <28.364080, 30.596344, 44.999313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009146, 30.768518, 45.065479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087802, -0.509875, 0.855756,
		0.452689, 0.744818, 0.490222,
		-0.887335, 0.430434, 0.165418,
		27.742945, 30.897648, 45.115105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267157, 30.321161, 45.642448>,  <28.364080, 30.596344, 44.999313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267157, 30.321161, 45.642448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954390, 30.561905, 45.577488>,  <27.766729, 30.706350, 45.538509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954390, 30.561905, 45.577488>,  <28.267157, 30.321161, 45.642448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954390, 30.561905, 45.577488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301612, -0.137253, 0.943500,
		0.545562, 0.786720, 0.288848,
		-0.781915, 0.601858, -0.162405,
		27.719814, 30.742462, 45.528767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294130, 30.878597, 46.132004>,  <28.267157, 30.321161, 45.642448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294130, 30.878597, 46.132004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927269, 30.764214, 46.020969>,  <27.707151, 30.695583, 45.954350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927269, 30.764214, 46.020969>,  <28.294130, 30.878597, 46.132004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927269, 30.764214, 46.020969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226646, -0.198661, 0.953502,
		-0.327810, 0.937422, 0.117390,
		-0.917154, -0.285961, -0.277586,
		27.652122, 30.678425, 45.937695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858974, 31.039614, 45.728016>,  <28.294130, 30.878597, 46.132004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858974, 31.039614, 45.728016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188513, 31.208624, 45.879147>,  <29.386236, 31.310030, 45.969826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188513, 31.208624, 45.879147>,  <28.858974, 31.039614, 45.728016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188513, 31.208624, 45.879147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064743, 0.592063, -0.803287,
		-0.563106, 0.686245, 0.460412,
		0.823845, 0.422527, 0.377823,
		29.435667, 31.335382, 45.992493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975819, 31.689976, 45.389370>,  <28.858974, 31.039614, 45.728016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975819, 31.689976, 45.389370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335918, 31.618595, 45.548218>,  <29.551977, 31.575766, 45.643528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335918, 31.618595, 45.548218>,  <28.975819, 31.689976, 45.389370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335918, 31.618595, 45.548218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429488, 0.513522, -0.742856,
		-0.071367, 0.839315, 0.538941,
		0.900248, -0.178453, 0.397124,
		29.605993, 31.565060, 45.667355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124769, 32.303963, 45.600662>,  <28.975819, 31.689976, 45.389370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124769, 32.303963, 45.600662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421289, 32.051510, 45.509327>,  <29.599201, 31.900038, 45.454525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421289, 32.051510, 45.509327>,  <29.124769, 32.303963, 45.600662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421289, 32.051510, 45.509327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265569, 0.588270, -0.763814,
		0.616395, 0.505577, 0.603695,
		0.741303, -0.631134, -0.228341,
		29.643681, 31.862169, 45.440826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796650, 32.647869, 45.510239>,  <29.124769, 32.303963, 45.600662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796650, 32.647869, 45.510239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750267, 32.318104, 45.288643>,  <29.722437, 32.120243, 45.155685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750267, 32.318104, 45.288643>,  <29.796650, 32.647869, 45.510239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750267, 32.318104, 45.288643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311772, 0.499348, -0.808363,
		0.943055, -0.266452, 0.199125,
		-0.115957, -0.824412, -0.553985,
		29.715479, 32.070782, 45.122448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367062, 32.446301, 45.114429>,  <29.796650, 32.647869, 45.510239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367062, 32.446301, 45.114429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058842, 32.309978, 44.898983>,  <29.873909, 32.228184, 44.769714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058842, 32.309978, 44.898983>,  <30.367062, 32.446301, 45.114429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058842, 32.309978, 44.898983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386554, 0.422023, -0.820044,
		0.506783, -0.840088, -0.193451,
		-0.770550, -0.340805, -0.538613,
		29.827677, 32.207737, 44.737400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624418, 32.187786, 44.447147>,  <30.367062, 32.446301, 45.114429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624418, 32.187786, 44.447147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247438, 32.291561, 44.362782>,  <30.021252, 32.353825, 44.312164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247438, 32.291561, 44.362782>,  <30.624418, 32.187786, 44.447147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247438, 32.291561, 44.362782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332025, 0.651895, -0.681756,
		-0.039380, -0.712548, -0.700517,
		-0.942448, 0.259437, -0.210912,
		29.964705, 32.369392, 44.299507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640255, 32.146221, 43.758450>,  <30.624418, 32.187786, 44.447147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640255, 32.146221, 43.758450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308681, 32.353119, 43.843613>,  <30.109737, 32.477257, 43.894711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308681, 32.353119, 43.843613>,  <30.640255, 32.146221, 43.758450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308681, 32.353119, 43.843613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186896, 0.614889, -0.766147,
		-0.527200, -0.595293, -0.606373,
		-0.828934, 0.517241, 0.212911,
		30.060001, 32.508289, 43.907486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323360, 32.142860, 43.123074>,  <30.640255, 32.146221, 43.758450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323360, 32.142860, 43.123074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160616, 32.432140, 43.346302>,  <30.062969, 32.605709, 43.480240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160616, 32.432140, 43.346302>,  <30.323360, 32.142860, 43.123074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160616, 32.432140, 43.346302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129412, 0.650390, -0.748495,
		-0.904276, -0.232313, -0.358210,
		-0.406862, 0.723203, 0.558069,
		30.038557, 32.649101, 43.513721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740511, 32.460098, 42.698662>,  <30.323360, 32.142860, 43.123074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740511, 32.460098, 42.698662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897890, 32.714619, 42.964088>,  <29.992317, 32.867329, 43.123344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897890, 32.714619, 42.964088>,  <29.740511, 32.460098, 42.698662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897890, 32.714619, 42.964088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000903, 0.721516, -0.692397,
		-0.919346, 0.273022, 0.283305,
		0.393449, 0.636297, 0.663570,
		30.015924, 32.905506, 43.163158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300024, 33.087723, 42.590122>,  <29.740511, 32.460098, 42.698662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300024, 33.087723, 42.590122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653513, 33.176941, 42.754700>,  <29.865606, 33.230473, 42.853447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653513, 33.176941, 42.754700>,  <29.300024, 33.087723, 42.590122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653513, 33.176941, 42.754700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097388, 0.772248, -0.627813,
		-0.457769, 0.594881, 0.660730,
		0.883721, 0.223046, 0.411445,
		29.918629, 33.243855, 42.878132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246719, 33.746639, 42.752251>,  <29.300024, 33.087723, 42.590122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246719, 33.746639, 42.752251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640942, 33.678928, 42.750481>,  <29.877476, 33.638302, 42.749420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640942, 33.678928, 42.750481>,  <29.246719, 33.746639, 42.752251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640942, 33.678928, 42.750481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112430, 0.673659, -0.730440,
		0.126629, 0.719394, 0.682962,
		0.985558, -0.169281, -0.004423,
		29.936609, 33.628143, 42.749153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592209, 34.366707, 42.752430>,  <29.246719, 33.746639, 42.752251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592209, 34.366707, 42.752430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863390, 34.114635, 42.601032>,  <30.026098, 33.963390, 42.510193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863390, 34.114635, 42.601032>,  <29.592209, 34.366707, 42.752430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863390, 34.114635, 42.601032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166430, 0.633089, -0.755976,
		0.716019, 0.449522, 0.534084,
		0.677951, -0.630181, -0.378490,
		30.066774, 33.925583, 42.487484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068081, 34.731369, 42.496098>,  <29.592209, 34.366707, 42.752430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068081, 34.731369, 42.496098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158066, 34.397137, 42.295620>,  <30.212057, 34.196598, 42.175335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158066, 34.397137, 42.295620>,  <30.068081, 34.731369, 42.496098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158066, 34.397137, 42.295620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178482, 0.541013, -0.821857,
		0.957880, 0.095435, 0.270846,
		0.224965, -0.835582, -0.501193,
		30.225555, 34.146461, 42.145264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652952, 34.870358, 42.081886>,  <30.068081, 34.731369, 42.496098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652952, 34.870358, 42.081886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512974, 34.539761, 41.905502>,  <30.428988, 34.341400, 41.799671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512974, 34.539761, 41.905502>,  <30.652952, 34.870358, 42.081886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512974, 34.539761, 41.905502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228945, 0.380986, -0.895786,
		0.908363, -0.414431, 0.055898,
		-0.349945, -0.826497, -0.440955,
		30.407990, 34.291813, 41.773216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089569, 34.659412, 41.530186>,  <30.652952, 34.870358, 42.081886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089569, 34.659412, 41.530186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749361, 34.469952, 41.438736>,  <30.545237, 34.356274, 41.383865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749361, 34.469952, 41.438736>,  <31.089569, 34.659412, 41.530186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749361, 34.469952, 41.438736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219714, 0.074966, -0.972680,
		0.477852, -0.877515, 0.040309,
		-0.850519, -0.473653, -0.228625,
		30.494205, 34.327854, 41.370148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283993, 34.293259, 40.930069>,  <31.089569, 34.659412, 41.530186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283993, 34.293259, 40.930069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884077, 34.301159, 40.927807>,  <30.644127, 34.305901, 40.926449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884077, 34.301159, 40.927807>,  <31.283993, 34.293259, 40.930069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884077, 34.301159, 40.927807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005466, -0.009714, -0.999938,
		-0.019833, -0.999757, 0.009604,
		-0.999789, 0.019780, -0.005658,
		30.584141, 34.307083, 40.926109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150946, 33.953911, 40.319073>,  <31.283993, 34.293259, 40.930069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150946, 33.953911, 40.319073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801620, 34.139198, 40.379417>,  <30.592026, 34.250370, 40.415623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801620, 34.139198, 40.379417>,  <31.150946, 33.953911, 40.319073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801620, 34.139198, 40.379417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127516, 0.081520, -0.988481,
		-0.470179, -0.882488, -0.012125,
		-0.873310, 0.463217, 0.150860,
		30.539627, 34.278164, 40.424675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717089, 33.526741, 39.917976>,  <31.150946, 33.953911, 40.319073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717089, 33.526741, 39.917976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544113, 33.882023, 39.980049>,  <30.440329, 34.095192, 40.017292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544113, 33.882023, 39.980049>,  <30.717089, 33.526741, 39.917976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544113, 33.882023, 39.980049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189084, 0.078947, -0.978782,
		-0.881614, -0.452606, 0.133807,
		-0.432439, 0.888209, 0.155182,
		30.414381, 34.148487, 40.026604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104279, 33.500751, 39.507278>,  <30.717089, 33.526741, 39.917976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104279, 33.500751, 39.507278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183390, 33.888073, 39.568287>,  <30.230856, 34.120468, 39.604893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183390, 33.888073, 39.568287>,  <30.104279, 33.500751, 39.507278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183390, 33.888073, 39.568287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099744, 0.174667, -0.979562,
		-0.975159, 0.178524, 0.131129,
		0.197779, 0.968308, 0.152521,
		30.242723, 34.178566, 39.614044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639851, 33.879555, 39.020981>,  <30.104279, 33.500751, 39.507278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639851, 33.879555, 39.020981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931730, 34.140820, 39.101894>,  <30.106857, 34.297581, 39.150440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931730, 34.140820, 39.101894>,  <29.639851, 33.879555, 39.020981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931730, 34.140820, 39.101894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114992, 0.174396, -0.977938,
		-0.674031, 0.736860, 0.052148,
		0.729698, 0.653164, 0.202281,
		30.150640, 34.336769, 39.162579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555994, 34.470894, 38.569466>,  <29.639851, 33.879555, 39.020981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555994, 34.470894, 38.569466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942501, 34.488789, 38.670914>,  <30.174406, 34.499527, 38.731785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942501, 34.488789, 38.670914>,  <29.555994, 34.470894, 38.569466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942501, 34.488789, 38.670914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249499, 0.081514, -0.964938,
		-0.063846, 0.995668, 0.067602,
		0.966268, 0.044741, 0.253622,
		30.232382, 34.502213, 38.747002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802069, 35.077148, 38.162571>,  <29.555994, 34.470894, 38.569466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802069, 35.077148, 38.162571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142433, 34.881981, 38.240421>,  <30.346653, 34.764881, 38.287132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142433, 34.881981, 38.240421>,  <29.802069, 35.077148, 38.162571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142433, 34.881981, 38.240421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249594, 0.049527, -0.967083,
		0.462223, 0.871480, 0.163925,
		0.850913, -0.487923, 0.194624,
		30.397707, 34.735603, 38.298809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338953, 35.518257, 37.890678>,  <29.802069, 35.077148, 38.162571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338953, 35.518257, 37.890678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497313, 35.151199, 37.904446>,  <30.592329, 34.930965, 37.912704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497313, 35.151199, 37.904446>,  <30.338953, 35.518257, 37.890678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497313, 35.151199, 37.904446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340918, 0.112073, -0.933389,
		0.852665, 0.381262, 0.357213,
		0.395900, -0.917648, 0.034419,
		30.616083, 34.875904, 37.914772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036098, 35.584949, 37.565418>,  <30.338953, 35.518257, 37.890678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036098, 35.584949, 37.565418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964277, 35.192028, 37.544125>,  <30.921185, 34.956276, 37.531349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964277, 35.192028, 37.544125>,  <31.036098, 35.584949, 37.565418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964277, 35.192028, 37.544125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452457, -0.034410, -0.891122,
		0.873524, -0.184088, 0.450630,
		-0.179551, -0.982307, -0.053235,
		30.910412, 34.897335, 37.528152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668581, 35.269096, 37.271267>,  <31.036098, 35.584949, 37.565418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668581, 35.269096, 37.271267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352304, 35.033997, 37.202732>,  <31.162539, 34.892937, 37.161613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352304, 35.033997, 37.202732>,  <31.668581, 35.269096, 37.271267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352304, 35.033997, 37.202732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251323, -0.056428, -0.966257,
		0.558251, -0.807072, 0.192332,
		-0.790691, -0.587751, -0.171335,
		31.115097, 34.857670, 37.151333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915606, 34.649158, 36.921429>,  <31.668581, 35.269096, 37.271267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915606, 34.649158, 36.921429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518723, 34.640991, 36.872261>,  <31.280592, 34.636093, 36.842762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518723, 34.640991, 36.872261>,  <31.915606, 34.649158, 36.921429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518723, 34.640991, 36.872261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124092, -0.072783, -0.989598,
		0.011261, -0.997139, 0.074750,
		-0.992207, -0.020419, -0.122917,
		31.221060, 34.634865, 36.835384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738293, 34.036633, 36.473591>,  <31.915606, 34.649158, 36.921429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738293, 34.036633, 36.473591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448547, 34.311295, 36.448948>,  <31.274700, 34.476093, 36.434162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448547, 34.311295, 36.448948>,  <31.738293, 34.036633, 36.473591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448547, 34.311295, 36.448948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113723, 0.030876, -0.993033,
		-0.679972, -0.726324, -0.100454,
		-0.724366, 0.686658, -0.061605,
		31.231237, 34.517292, 36.430466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013802, 33.940002, 35.792156>,  <31.738293, 34.036633, 36.473591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013802, 33.940002, 35.792156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151657, 33.568851, 35.735218>,  <32.234371, 33.346161, 35.701054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151657, 33.568851, 35.735218>,  <32.013802, 33.940002, 35.792156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151657, 33.568851, 35.735218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752076, -0.182168, -0.633401,
		0.561789, 0.325349, -0.760619,
		0.344637, -0.927881, -0.142347,
		32.255047, 33.290485, 35.692513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737877, 33.564953, 35.868942>,  <32.013802, 33.940002, 35.792156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737877, 33.564953, 35.868942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917366, 33.863434, 36.065643>,  <33.025059, 34.042522, 36.183666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917366, 33.863434, 36.065643>,  <32.737877, 33.564953, 35.868942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917366, 33.863434, 36.065643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283748, -0.402828, 0.870182,
		0.847428, -0.530007, 0.030976,
		0.448724, 0.746205, 0.491756,
		33.051983, 34.087296, 36.213169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070049, 33.395676, 36.541439>,  <32.737877, 33.564953, 35.868942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070049, 33.395676, 36.541439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995651, 33.524059, 36.912899>,  <32.951012, 33.601089, 37.135777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995651, 33.524059, 36.912899>,  <33.070049, 33.395676, 36.541439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995651, 33.524059, 36.912899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686563, -0.633662, 0.356516,
		0.702878, 0.703885, -0.102505,
		-0.185993, 0.320963, 0.928649,
		32.939854, 33.620350, 37.191494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895626, 32.764881, 36.811611>,  <33.070049, 33.395676, 36.541439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895626, 32.764881, 36.811611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867165, 32.408016, 36.990044>,  <32.850090, 32.193897, 37.097103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867165, 32.408016, 36.990044>,  <32.895626, 32.764881, 36.811611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867165, 32.408016, 36.990044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033409, 0.444834, 0.894990,
		-0.996906, 0.078583, -0.001845,
		-0.071152, -0.892159, 0.446083,
		32.845818, 32.140369, 37.123867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371864, 32.840672, 37.207600>,  <32.895626, 32.764881, 36.811611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371864, 32.840672, 37.207600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587158, 32.538654, 37.357380>,  <32.716335, 32.357445, 37.447250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587158, 32.538654, 37.357380>,  <32.371864, 32.840672, 37.207600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587158, 32.538654, 37.357380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063643, 0.406619, 0.911378,
		-0.840387, -0.514368, 0.170804,
		0.538237, -0.755040, 0.374454,
		32.748631, 32.312141, 37.469715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109482, 32.637398, 37.929604>,  <32.371864, 32.840672, 37.207600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109482, 32.637398, 37.929604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495995, 32.548183, 37.878147>,  <32.727901, 32.494656, 37.847275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495995, 32.548183, 37.878147>,  <32.109482, 32.637398, 37.929604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495995, 32.548183, 37.878147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218541, 0.446305, 0.867785,
		-0.136132, -0.866642, 0.480000,
		0.966285, -0.223034, -0.128640,
		32.785881, 32.481274, 37.839554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450901, 32.316101, 38.599033>,  <32.109482, 32.637398, 37.929604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450901, 32.316101, 38.599033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758350, 32.436436, 38.373211>,  <32.942818, 32.508636, 38.237717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758350, 32.436436, 38.373211>,  <32.450901, 32.316101, 38.599033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758350, 32.436436, 38.373211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428223, 0.413657, 0.803438,
		0.475237, -0.859293, 0.189119,
		0.768619, 0.300839, -0.564554,
		32.988937, 32.526688, 38.203846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072601, 32.141872, 38.984417>,  <32.450901, 32.316101, 38.599033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072601, 32.141872, 38.984417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191372, 32.442730, 38.749092>,  <33.262634, 32.623245, 38.607899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191372, 32.442730, 38.749092>,  <33.072601, 32.141872, 38.984417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191372, 32.442730, 38.749092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461102, 0.426568, 0.778090,
		0.836192, -0.502309, -0.220156,
		0.296930, 0.752147, -0.588309,
		33.280453, 32.668373, 38.572598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757824, 32.252728, 39.143944>,  <33.072601, 32.141872, 38.984417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757824, 32.252728, 39.143944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628815, 32.598248, 38.989113>,  <33.551411, 32.805561, 38.896214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628815, 32.598248, 38.989113>,  <33.757824, 32.252728, 39.143944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628815, 32.598248, 38.989113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522485, 0.503452, 0.688147,
		0.789297, 0.019699, -0.613696,
		-0.322522, 0.863799, -0.387081,
		33.532059, 32.857388, 38.872990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275959, 32.657375, 39.216530>,  <33.757824, 32.252728, 39.143944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275959, 32.657375, 39.216530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002186, 32.934696, 39.126301>,  <33.837921, 33.101089, 39.072163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002186, 32.934696, 39.126301>,  <34.275959, 32.657375, 39.216530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002186, 32.934696, 39.126301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523316, 0.682589, 0.510111,
		0.507632, 0.231093, -0.830003,
		-0.684434, 0.693302, -0.225569,
		33.796856, 33.142689, 39.058628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725979, 33.266891, 39.226704>,  <34.275959, 32.657375, 39.216530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725979, 33.266891, 39.226704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342449, 33.374504, 39.263088>,  <34.112331, 33.439072, 39.284920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342449, 33.374504, 39.263088>,  <34.725979, 33.266891, 39.226704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342449, 33.374504, 39.263088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254859, 0.673804, 0.693567,
		0.125303, 0.688192, -0.714627,
		-0.958825, 0.269035, 0.090962,
		34.054802, 33.455215, 39.290379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756649, 33.914028, 39.184757>,  <34.725979, 33.266891, 39.226704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756649, 33.914028, 39.184757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417576, 33.822552, 39.376228>,  <34.214130, 33.767666, 39.491112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417576, 33.822552, 39.376228>,  <34.756649, 33.914028, 39.184757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417576, 33.822552, 39.376228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185735, 0.717264, 0.671591,
		-0.496923, 0.658205, -0.565539,
		-0.847685, -0.228688, 0.478677,
		34.163269, 33.753944, 39.519833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634708, 34.517597, 39.518814>,  <34.756649, 33.914028, 39.184757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634708, 34.517597, 39.518814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392235, 34.269905, 39.718449>,  <34.246750, 34.121288, 39.838230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392235, 34.269905, 39.718449>,  <34.634708, 34.517597, 39.518814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392235, 34.269905, 39.718449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302678, 0.400685, 0.864776,
		-0.735475, 0.675278, -0.055461,
		-0.606187, -0.619234, 0.499086,
		34.210381, 34.084133, 39.868176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339203, 34.894154, 40.043068>,  <34.634708, 34.517597, 39.518814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339203, 34.894154, 40.043068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286827, 34.523205, 40.183258>,  <34.255402, 34.300636, 40.267372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286827, 34.523205, 40.183258>,  <34.339203, 34.894154, 40.043068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286827, 34.523205, 40.183258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323699, 0.294156, 0.899272,
		-0.937056, 0.231197, 0.261674,
		-0.130936, -0.927373, 0.350479,
		34.247547, 34.244991, 40.288403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077499, 34.909214, 40.741066>,  <34.339203, 34.894154, 40.043068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077499, 34.909214, 40.741066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240540, 34.544403, 40.722904>,  <34.338364, 34.325516, 40.712006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240540, 34.544403, 40.722904>,  <34.077499, 34.909214, 40.741066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240540, 34.544403, 40.722904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262828, 0.069551, 0.962332,
		-0.874517, -0.404184, 0.268056,
		0.407603, -0.912029, -0.045408,
		34.362820, 34.270794, 40.709282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863754, 34.555138, 41.395706>,  <34.077499, 34.909214, 40.741066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863754, 34.555138, 41.395706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185421, 34.376152, 41.239201>,  <34.378422, 34.268761, 41.145298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185421, 34.376152, 41.239201>,  <33.863754, 34.555138, 41.395706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185421, 34.376152, 41.239201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443572, 0.013578, 0.896136,
		-0.395679, -0.894197, 0.209403,
		0.804165, -0.447468, -0.391268,
		34.426670, 34.241913, 41.121819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065506, 34.095722, 41.906475>,  <33.863754, 34.555138, 41.395706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065506, 34.095722, 41.906475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383751, 34.076561, 41.664913>,  <34.574699, 34.065063, 41.519978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383751, 34.076561, 41.664913>,  <34.065506, 34.095722, 41.906475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383751, 34.076561, 41.664913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577362, -0.241882, 0.779838,
		-0.183429, -0.969123, -0.164788,
		0.795617, -0.047903, -0.603903,
		34.622437, 34.062187, 41.483742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440392, 33.368351, 41.867104>,  <34.065506, 34.095722, 41.906475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440392, 33.368351, 41.867104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700497, 33.660133, 41.782207>,  <34.856560, 33.835201, 41.731270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700497, 33.660133, 41.782207>,  <34.440392, 33.368351, 41.867104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700497, 33.660133, 41.782207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631553, -0.363772, 0.684697,
		0.422247, -0.579279, -0.697239,
		0.650267, 0.729455, -0.212244,
		34.895576, 33.878971, 41.718533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165890, 33.082851, 42.010086>,  <34.440392, 33.368351, 41.867104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165890, 33.082851, 42.010086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231220, 33.476696, 41.985214>,  <35.270420, 33.713001, 41.970291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231220, 33.476696, 41.985214>,  <35.165890, 33.082851, 42.010086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231220, 33.476696, 41.985214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777504, -0.089665, 0.622453,
		0.607299, -0.150004, -0.780183,
		0.163326, 0.984611, -0.062176,
		35.280216, 33.772079, 41.966560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832623, 33.118347, 41.817074>,  <35.165890, 33.082851, 42.010086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832623, 33.118347, 41.817074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702030, 33.456600, 41.985989>,  <35.623676, 33.659550, 42.087337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702030, 33.456600, 41.985989>,  <35.832623, 33.118347, 41.817074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702030, 33.456600, 41.985989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674697, -0.104397, 0.730675,
		0.661965, 0.523463, -0.536459,
		-0.326477, 0.845628, 0.422286,
		35.604088, 33.710289, 42.112675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454468, 33.685623, 41.988590>,  <35.832623, 33.118347, 41.817074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454468, 33.685623, 41.988590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156879, 33.738106, 42.250671>,  <35.978325, 33.769596, 42.407921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156879, 33.738106, 42.250671>,  <36.454468, 33.685623, 41.988590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156879, 33.738106, 42.250671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622991, -0.218364, 0.751132,
		0.241628, 0.967006, 0.080714,
		-0.743974, 0.131210, 0.655199,
		35.933685, 33.777470, 42.447231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855854, 33.872650, 42.626221>,  <36.454468, 33.685623, 41.988590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855854, 33.872650, 42.626221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490639, 33.822319, 42.781414>,  <36.271511, 33.792118, 42.874531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490639, 33.822319, 42.781414>,  <36.855854, 33.872650, 42.626221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490639, 33.822319, 42.781414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407012, -0.219197, 0.886732,
		-0.026534, 0.967533, 0.251350,
		-0.913037, -0.125831, 0.387981,
		36.216728, 33.784569, 42.897808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765079, 34.325008, 43.231724>,  <36.855854, 33.872650, 42.626221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765079, 34.325008, 43.231724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512543, 34.015656, 43.254646>,  <36.361019, 33.830044, 43.268402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512543, 34.015656, 43.254646>,  <36.765079, 34.325008, 43.231724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512543, 34.015656, 43.254646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259577, -0.141108, 0.955358,
		-0.730773, 0.618032, 0.289840,
		-0.631340, -0.773385, 0.057309,
		36.323139, 33.783638, 43.271839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316982, 34.558800, 43.694046>,  <36.765079, 34.325008, 43.231724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316982, 34.558800, 43.694046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269836, 34.161594, 43.691921>,  <36.241550, 33.923271, 43.690647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269836, 34.161594, 43.691921>,  <36.316982, 34.558800, 43.694046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269836, 34.161594, 43.691921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189453, -0.027737, 0.981498,
		-0.974790, 0.114677, 0.191399,
		-0.117864, -0.993016, -0.005312,
		36.234478, 33.863689, 43.690327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030499, 34.373592, 44.343616>,  <36.316982, 34.558800, 43.694046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030499, 34.373592, 44.343616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155083, 34.007896, 44.239956>,  <36.229832, 33.788479, 44.177761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155083, 34.007896, 44.239956>,  <36.030499, 34.373592, 44.343616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155083, 34.007896, 44.239956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108926, -0.236570, 0.965489,
		-0.943995, -0.328940, 0.025903,
		0.311460, -0.914239, -0.259151,
		36.248520, 33.733624, 44.162212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712173, 33.989227, 44.870247>,  <36.030499, 34.373592, 44.343616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712173, 33.989227, 44.870247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972832, 33.733913, 44.706318>,  <36.129227, 33.580723, 44.607960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972832, 33.733913, 44.706318>,  <35.712173, 33.989227, 44.870247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972832, 33.733913, 44.706318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038751, -0.567591, 0.822398,
		-0.757535, -0.520030, -0.394601,
		0.651643, -0.638287, -0.409818,
		36.168324, 33.542427, 44.583374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466213, 33.319466, 44.928364>,  <35.712173, 33.989227, 44.870247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466213, 33.319466, 44.928364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863426, 33.283649, 44.897724>,  <36.101753, 33.262161, 44.879341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863426, 33.283649, 44.897724>,  <35.466213, 33.319466, 44.928364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863426, 33.283649, 44.897724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013833, -0.556967, 0.830419,
		-0.117015, -0.825694, -0.551849,
		0.993034, -0.089538, -0.076595,
		36.161335, 33.256786, 44.874744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549686, 32.672134, 45.201401>,  <35.466213, 33.319466, 44.928364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549686, 32.672134, 45.201401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930775, 32.793663, 45.199593>,  <36.159428, 32.866581, 45.198509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930775, 32.793663, 45.199593>,  <35.549686, 32.672134, 45.201401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930775, 32.793663, 45.199593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195575, -0.601760, 0.774362,
		0.232546, -0.738633, -0.632727,
		0.952718, 0.303821, -0.004521,
		36.216591, 32.884808, 45.198235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886459, 32.059032, 45.245865>,  <35.549686, 32.672134, 45.201401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886459, 32.059032, 45.245865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138920, 32.343254, 45.370289>,  <36.290398, 32.513786, 45.444942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138920, 32.343254, 45.370289>,  <35.886459, 32.059032, 45.245865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138920, 32.343254, 45.370289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223220, -0.550455, 0.804470,
		0.742845, -0.438308, -0.506031,
		0.631153, 0.710553, 0.311064,
		36.328266, 32.556419, 45.463608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534660, 31.716599, 45.491833>,  <35.886459, 32.059032, 45.245865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534660, 31.716599, 45.491833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547554, 32.069588, 45.679535>,  <36.555290, 32.281380, 45.792156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547554, 32.069588, 45.679535>,  <36.534660, 31.716599, 45.491833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547554, 32.069588, 45.679535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174102, -0.467278, 0.866798,
		0.984200, 0.053760, -0.168702,
		0.032231, 0.882474, 0.469255,
		36.557224, 32.334332, 45.820312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052795, 31.752926, 45.936707>,  <36.534660, 31.716599, 45.491833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052795, 31.752926, 45.936707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859627, 32.057320, 46.110001>,  <36.743725, 32.239956, 46.213978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859627, 32.057320, 46.110001>,  <37.052795, 31.752926, 45.936707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859627, 32.057320, 46.110001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197215, -0.387516, 0.900521,
		0.853167, 0.520320, 0.037062,
		-0.482921, 0.760985, 0.433231,
		36.714752, 32.285614, 46.239971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453136, 31.882772, 46.597103>,  <37.052795, 31.752926, 45.936707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453136, 31.882772, 46.597103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120155, 32.099472, 46.643646>,  <36.920368, 32.229492, 46.671570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120155, 32.099472, 46.643646>,  <37.453136, 31.882772, 46.597103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120155, 32.099472, 46.643646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057607, -0.293464, 0.954233,
		0.551099, 0.787647, 0.275503,
		-0.832449, 0.541748, 0.116354,
		36.870422, 32.261997, 46.678551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480064, 32.199570, 47.302490>,  <37.453136, 31.882772, 46.597103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480064, 32.199570, 47.302490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097000, 32.199730, 47.187332>,  <36.867161, 32.199825, 47.118237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097000, 32.199730, 47.187332>,  <37.480064, 32.199570, 47.302490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097000, 32.199730, 47.187332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281504, -0.210827, 0.936113,
		-0.060318, 0.977523, 0.202015,
		-0.957662, 0.000403, -0.287894,
		36.809700, 32.199852, 47.100964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137020, 32.631886, 47.795750>,  <37.480064, 32.199570, 47.302490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137020, 32.631886, 47.795750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893795, 32.357082, 47.636612>,  <36.747860, 32.192200, 47.541130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893795, 32.357082, 47.636612>,  <37.137020, 32.631886, 47.795750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893795, 32.357082, 47.636612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310763, -0.255165, 0.915596,
		-0.730537, 0.680376, -0.058340,
		-0.608064, -0.687007, -0.397843,
		36.711376, 32.150982, 47.517258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543774, 32.694866, 48.202354>,  <37.137020, 32.631886, 47.795750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543774, 32.694866, 48.202354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456551, 32.341366, 48.036732>,  <36.404217, 32.129265, 47.937359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456551, 32.341366, 48.036732>,  <36.543774, 32.694866, 48.202354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456551, 32.341366, 48.036732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643188, -0.188951, 0.742028,
		-0.734002, 0.428119, -0.527214,
		-0.218059, -0.883748, -0.414052,
		36.391132, 32.076241, 47.912518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798294, 32.603207, 48.253246>,  <36.543774, 32.694866, 48.202354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798294, 32.603207, 48.253246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922123, 32.232075, 48.170006>,  <35.996422, 32.009396, 48.120064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922123, 32.232075, 48.170006>,  <35.798294, 32.603207, 48.253246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922123, 32.232075, 48.170006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595109, -0.359740, 0.718632,
		-0.741627, -0.098626, -0.663523,
		0.309571, -0.927826, -0.208099,
		36.014996, 31.953728, 48.107574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183769, 32.211002, 48.249996>,  <35.798294, 32.603207, 48.253246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183769, 32.211002, 48.249996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456837, 31.919666, 48.273582>,  <35.620678, 31.744864, 48.287735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456837, 31.919666, 48.273582>,  <35.183769, 32.211002, 48.249996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456837, 31.919666, 48.273582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562018, -0.471776, 0.679384,
		-0.466981, -0.496963, -0.731407,
		0.682689, -0.728323, 0.058991,
		35.661636, 31.701162, 48.291271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868629, 31.565910, 48.117100>,  <35.183769, 32.211002, 48.249996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868629, 31.565910, 48.117100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190430, 31.496830, 48.344418>,  <35.383511, 31.455381, 48.480808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190430, 31.496830, 48.344418>,  <34.868629, 31.565910, 48.117100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190430, 31.496830, 48.344418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590683, -0.332915, 0.735025,
		0.062254, -0.927007, -0.369841,
		0.804499, -0.172700, 0.568292,
		35.431778, 31.445019, 48.514904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779259, 30.930237, 48.306004>,  <34.868629, 31.565910, 48.117100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779259, 30.930237, 48.306004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059994, 31.057104, 48.561138>,  <35.228436, 31.133224, 48.714218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059994, 31.057104, 48.561138>,  <34.779259, 30.930237, 48.306004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059994, 31.057104, 48.561138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568833, -0.289446, 0.769837,
		0.428786, -0.903120, -0.022728,
		0.701834, 0.317167, 0.637835,
		35.270542, 31.152254, 48.752487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911617, 30.370310, 48.819717>,  <34.779259, 30.930237, 48.306004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911617, 30.370310, 48.819717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020782, 30.709410, 49.001633>,  <35.086281, 30.912870, 49.110783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020782, 30.709410, 49.001633>,  <34.911617, 30.370310, 48.819717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020782, 30.709410, 49.001633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468400, -0.295826, 0.832519,
		0.840308, -0.440232, 0.316351,
		0.272917, 0.847752, 0.454789,
		35.102657, 30.963736, 49.138069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270252, 30.241806, 49.401573>,  <34.911617, 30.370310, 48.819717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270252, 30.241806, 49.401573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120720, 30.607538, 49.463867>,  <35.031002, 30.826977, 49.501244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120720, 30.607538, 49.463867>,  <35.270252, 30.241806, 49.401573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120720, 30.607538, 49.463867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198702, -0.242957, 0.949468,
		0.905964, 0.323994, 0.272503,
		-0.373828, 0.914330, 0.155732,
		35.008572, 30.881838, 49.510586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441669, 30.213125, 50.042179>,  <35.270252, 30.241806, 49.401573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441669, 30.213125, 50.042179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197552, 30.527145, 49.999771>,  <35.051083, 30.715557, 49.974327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197552, 30.527145, 49.999771>,  <35.441669, 30.213125, 50.042179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197552, 30.527145, 49.999771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306798, -0.110836, 0.945299,
		0.730356, 0.609435, 0.308494,
		-0.610290, 0.785051, -0.106024,
		35.014465, 30.762661, 49.967964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408401, 30.535330, 50.682106>,  <35.441669, 30.213125, 50.042179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408401, 30.535330, 50.682106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076664, 30.655029, 50.493362>,  <34.877621, 30.726849, 50.380116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076664, 30.655029, 50.493362>,  <35.408401, 30.535330, 50.682106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076664, 30.655029, 50.493362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504799, -0.039261, 0.862344,
		0.239528, 0.953368, 0.183621,
		-0.829340, 0.299247, -0.471855,
		34.827862, 30.744802, 50.351807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066776, 30.895119, 51.194393>,  <35.408401, 30.535330, 50.682106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066776, 30.895119, 51.194393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778736, 30.777596, 50.942955>,  <34.605911, 30.707081, 50.792091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778736, 30.777596, 50.942955>,  <35.066776, 30.895119, 51.194393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778736, 30.777596, 50.942955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562473, -0.283286, 0.776771,
		-0.406293, 0.912921, 0.038736,
		-0.720104, -0.293809, -0.628591,
		34.562706, 30.689453, 50.754379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467003, 31.118114, 51.569736>,  <35.066776, 30.895119, 51.194393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467003, 31.118114, 51.569736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384445, 30.866568, 51.269890>,  <34.334911, 30.715639, 51.089981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384445, 30.866568, 51.269890>,  <34.467003, 31.118114, 51.569736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384445, 30.866568, 51.269890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635556, -0.496333, 0.591374,
		-0.743955, 0.598482, -0.297238,
		-0.206398, -0.628866, -0.749618,
		34.322525, 30.677908, 51.045006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829292, 31.160503, 51.545242>,  <34.467003, 31.118114, 51.569736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829292, 31.160503, 51.545242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869541, 30.816353, 51.345390>,  <33.893692, 30.609863, 51.225479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869541, 30.816353, 51.345390>,  <33.829292, 31.160503, 51.545242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869541, 30.816353, 51.345390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654935, -0.435309, 0.617710,
		-0.748956, 0.265069, -0.607292,
		0.100623, -0.860375, -0.499630,
		33.899727, 30.558241, 51.195499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156937, 30.936224, 51.325996>,  <33.829292, 31.160503, 51.545242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156937, 30.936224, 51.325996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402279, 30.626324, 51.387390>,  <33.549484, 30.440384, 51.424229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402279, 30.626324, 51.387390>,  <33.156937, 30.936224, 51.325996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402279, 30.626324, 51.387390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735033, -0.488821, 0.469873,
		-0.289007, -0.401017, -0.869287,
		0.613353, -0.774751, 0.153488,
		33.586285, 30.393898, 51.433437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827705, 30.227699, 51.057400>,  <33.156937, 30.936224, 51.325996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827705, 30.227699, 51.057400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092422, 30.180250, 51.353497>,  <33.251251, 30.151781, 51.531155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092422, 30.180250, 51.353497>,  <32.827705, 30.227699, 51.057400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092422, 30.180250, 51.353497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698037, -0.457658, 0.550721,
		0.273452, -0.881180, -0.385677,
		0.661792, -0.118621, 0.740243,
		33.290958, 30.144665, 51.575569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957756, 29.473101, 51.202026>,  <32.827705, 30.227699, 51.057400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957756, 29.473101, 51.202026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963326, 29.737572, 51.502068>,  <32.966667, 29.896254, 51.682091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963326, 29.737572, 51.502068>,  <32.957756, 29.473101, 51.202026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963326, 29.737572, 51.502068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768391, -0.472954, 0.431150,
		0.639829, -0.582374, 0.501457,
		0.013924, 0.661177, 0.750100,
		32.967503, 29.935925, 51.727097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073792, 29.134518, 51.836369>,  <32.957756, 29.473101, 51.202026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073792, 29.134518, 51.836369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866070, 29.469997, 51.901974>,  <32.741436, 29.671286, 51.941338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866070, 29.469997, 51.901974>,  <33.073792, 29.134518, 51.836369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866070, 29.469997, 51.901974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598896, -0.494072, 0.630251,
		0.609626, 0.229069, 0.758870,
		-0.519308, 0.838701, 0.164011,
		32.710278, 29.721607, 51.951176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904037, 29.207035, 52.529285>,  <33.073792, 29.134518, 51.836369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904037, 29.207035, 52.529285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626202, 29.446756, 52.370094>,  <32.459499, 29.590590, 52.274582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626202, 29.446756, 52.370094>,  <32.904037, 29.207035, 52.529285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626202, 29.446756, 52.370094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678715, -0.362483, 0.638711,
		0.238521, 0.713754, 0.658531,
		-0.694589, 0.599301, -0.397976,
		32.417824, 29.626547, 52.250702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110020, 29.654785, 53.167446>,  <32.904037, 29.207035, 52.529285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110020, 29.654785, 53.167446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831264, 29.635386, 53.453659>,  <32.664009, 29.623745, 53.625389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831264, 29.635386, 53.453659>,  <33.110020, 29.654785, 53.167446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831264, 29.635386, 53.453659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357114, -0.888690, 0.287574,
		0.621943, 0.455935, 0.636639,
		-0.696890, -0.048499, 0.715536,
		32.622196, 29.620836, 53.668320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441063, 29.241941, 53.698086>,  <33.110020, 29.654785, 53.167446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441063, 29.241941, 53.698086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053196, 29.215990, 53.792351>,  <32.820477, 29.200418, 53.848907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053196, 29.215990, 53.792351>,  <33.441063, 29.241941, 53.698086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053196, 29.215990, 53.792351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195988, -0.782499, 0.591003,
		0.146059, 0.619263, 0.771480,
		-0.969668, -0.064879, 0.235659,
		32.762295, 29.196526, 53.863049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226608, 28.948849, 53.547859>,  <33.441063, 29.241941, 53.698086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226608, 28.948849, 53.547859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277538, 29.345587, 53.549934>,  <34.308098, 29.583630, 53.551178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277538, 29.345587, 53.549934>,  <34.226608, 28.948849, 53.547859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277538, 29.345587, 53.549934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294942, 0.032868, 0.954950,
		0.946994, -0.123120, 0.296722,
		0.127326, 0.991847, 0.005187,
		34.315735, 29.643141, 53.551491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431004, 28.502344, 52.875507>,  <34.226608, 28.948849, 53.547859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431004, 28.502344, 52.875507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166264, 28.241043, 52.728424>,  <34.007420, 28.084263, 52.640175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166264, 28.241043, 52.728424>,  <34.431004, 28.502344, 52.875507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166264, 28.241043, 52.728424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354644, 0.159296, -0.921332,
		0.660436, -0.740194, 0.126241,
		-0.661854, -0.653252, -0.367710,
		33.967709, 28.045067, 52.618111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768726, 28.114685, 52.520458>,  <34.431004, 28.502344, 52.875507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768726, 28.114685, 52.520458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398388, 28.099028, 52.370113>,  <34.176186, 28.089634, 52.279907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398388, 28.099028, 52.370113>,  <34.768726, 28.114685, 52.520458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398388, 28.099028, 52.370113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377855, -0.110813, -0.919209,
		-0.005669, -0.993070, 0.117387,
		-0.925847, -0.039144, -0.375865,
		34.120632, 28.087284, 52.257355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693970, 27.424829, 52.174919>,  <34.768726, 28.114685, 52.520458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693970, 27.424829, 52.174919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402973, 27.661591, 52.036121>,  <34.228374, 27.803648, 51.952843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402973, 27.661591, 52.036121>,  <34.693970, 27.424829, 52.174919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402973, 27.661591, 52.036121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244964, -0.248330, -0.937190,
		-0.640894, -0.766800, 0.035664,
		-0.727494, 0.591903, -0.346992,
		34.184727, 27.839161, 51.932022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259235, 27.167183, 51.636887>,  <34.693970, 27.424829, 52.174919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259235, 27.167183, 51.636887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204369, 27.560711, 51.590790>,  <34.171448, 27.796827, 51.563133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204369, 27.560711, 51.590790>,  <34.259235, 27.167183, 51.636887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204369, 27.560711, 51.590790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232899, -0.081049, -0.969118,
		-0.962778, -0.159774, -0.218013,
		-0.137170, 0.983821, -0.115243,
		34.163216, 27.855858, 51.556217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933529, 27.263264, 51.043221>,  <34.259235, 27.167183, 51.636887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933529, 27.263264, 51.043221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130524, 27.603245, 51.118092>,  <34.248722, 27.807234, 51.163013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130524, 27.603245, 51.118092>,  <33.933529, 27.263264, 51.043221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130524, 27.603245, 51.118092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327973, 0.017966, -0.944516,
		-0.806156, 0.526555, -0.269912,
		0.492491, 0.849951, 0.187179,
		34.278271, 27.858231, 51.174244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634445, 27.746500, 50.662716>,  <33.933529, 27.263264, 51.043221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634445, 27.746500, 50.662716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006363, 27.871504, 50.740501>,  <34.229515, 27.946507, 50.787170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006363, 27.871504, 50.740501>,  <33.634445, 27.746500, 50.662716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006363, 27.871504, 50.740501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130016, 0.215409, -0.967830,
		-0.344345, 0.925168, 0.159656,
		0.929797, 0.312509, 0.194461,
		34.285301, 27.965256, 50.798840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780033, 28.201319, 50.154457>,  <33.634445, 27.746500, 50.662716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780033, 28.201319, 50.154457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154873, 28.136564, 50.278156>,  <34.379776, 28.097712, 50.352375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154873, 28.136564, 50.278156>,  <33.780033, 28.201319, 50.154457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154873, 28.136564, 50.278156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329266, 0.115872, -0.937101,
		0.115872, 0.979983, 0.161888,
		0.937101, -0.161888, 0.309248,
		34.436005, 28.087997, 50.370930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259220, 28.713682, 49.951065>,  <33.780033, 28.201319, 50.154457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259220, 28.713682, 49.951065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513828, 28.411818, 50.014725>,  <34.666592, 28.230700, 50.052921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513828, 28.411818, 50.014725>,  <34.259220, 28.713682, 49.951065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513828, 28.411818, 50.014725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401441, 0.147981, -0.903851,
		0.658548, 0.639211, 0.397144,
		0.636521, -0.754659, 0.159153,
		34.704784, 28.185419, 50.062469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946411, 28.995979, 49.838436>,  <34.259220, 28.713682, 49.951065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946411, 28.995979, 49.838436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988148, 28.601072, 49.790409>,  <35.013191, 28.364128, 49.761593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988148, 28.601072, 49.790409>,  <34.946411, 28.995979, 49.838436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988148, 28.601072, 49.790409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677743, 0.158938, -0.717916,
		0.727858, -0.006466, 0.685698,
		0.104341, -0.987267, -0.120066,
		35.019451, 28.304892, 49.754391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664066, 28.931150, 49.846497>,  <34.946411, 28.995979, 49.838436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664066, 28.931150, 49.846497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502575, 28.608530, 49.673763>,  <35.405678, 28.414959, 49.570122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502575, 28.608530, 49.673763>,  <35.664066, 28.931150, 49.846497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502575, 28.608530, 49.673763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666472, 0.064073, -0.742771,
		0.626751, -0.587684, 0.511675,
		-0.403730, -0.806550, -0.431832,
		35.381454, 28.366566, 49.544212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261497, 28.480465, 49.572727>,  <35.664066, 28.931150, 49.846497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261497, 28.480465, 49.572727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956688, 28.313446, 49.374752>,  <35.773800, 28.213234, 49.255966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956688, 28.313446, 49.374752>,  <36.261497, 28.480465, 49.572727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956688, 28.313446, 49.374752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525372, 0.048157, -0.849509,
		0.378546, -0.907377, 0.182672,
		-0.762028, -0.417549, -0.494941,
		35.728081, 28.188181, 49.226269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453468, 27.914505, 49.178368>,  <36.261497, 28.480465, 49.572727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453468, 27.914505, 49.178368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130695, 28.045664, 48.981861>,  <35.937031, 28.124359, 48.863956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130695, 28.045664, 48.981861>,  <36.453468, 27.914505, 49.178368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130695, 28.045664, 48.981861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515038, -0.016527, -0.857008,
		-0.289128, -0.944569, -0.155543,
		-0.806932, 0.327896, -0.491268,
		35.888615, 28.144033, 48.834480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618050, 27.797947, 48.367905>,  <36.453468, 27.914505, 49.178368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618050, 27.797947, 48.367905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284527, 28.018717, 48.363182>,  <36.084412, 28.151178, 48.360348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284527, 28.018717, 48.363182>,  <36.618050, 27.797947, 48.367905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284527, 28.018717, 48.363182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139702, 0.190263, -0.971743,
		-0.534085, -0.811897, -0.235748,
		-0.833809, 0.551927, -0.011807,
		36.034386, 28.184296, 48.359638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291542, 27.629309, 47.740189>,  <36.618050, 27.797947, 48.367905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291542, 27.629309, 47.740189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180866, 27.988764, 47.876362>,  <36.114460, 28.204437, 47.958065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180866, 27.988764, 47.876362>,  <36.291542, 27.629309, 47.740189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180866, 27.988764, 47.876362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105804, 0.380599, -0.918667,
		-0.955118, -0.218163, -0.200386,
		-0.276686, 0.898637, 0.340434,
		36.097862, 28.258354, 47.978493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732964, 27.852781, 47.237705>,  <36.291542, 27.629309, 47.740189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732964, 27.852781, 47.237705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888672, 28.181465, 47.404202>,  <35.982098, 28.378675, 47.504101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888672, 28.181465, 47.404202>,  <35.732964, 27.852781, 47.237705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888672, 28.181465, 47.404202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155929, 0.386578, -0.908980,
		-0.907828, 0.418746, 0.022356,
		0.389274, 0.821711, 0.416241,
		36.005455, 28.427979, 47.529076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399605, 28.342037, 46.926083>,  <35.732964, 27.852781, 47.237705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399605, 28.342037, 46.926083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719879, 28.532772, 47.071148>,  <35.912045, 28.647213, 47.158188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719879, 28.532772, 47.071148>,  <35.399605, 28.342037, 46.926083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719879, 28.532772, 47.071148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098749, 0.492032, -0.864958,
		-0.590885, 0.728375, 0.346878,
		0.800689, 0.476837, 0.362661,
		35.960087, 28.675823, 47.179947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273186, 28.979668, 46.772488>,  <35.399605, 28.342037, 46.926083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273186, 28.979668, 46.772488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667542, 28.951651, 46.833309>,  <35.904156, 28.934841, 46.869804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667542, 28.951651, 46.833309>,  <35.273186, 28.979668, 46.772488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667542, 28.951651, 46.833309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167392, 0.397658, -0.902135,
		0.002720, 0.914856, 0.403771,
		0.985887, -0.070042, 0.152057,
		35.963306, 28.930637, 46.878925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509693, 29.659903, 46.549221>,  <35.273186, 28.979668, 46.772488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509693, 29.659903, 46.549221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833038, 29.424524, 46.555836>,  <36.027046, 29.283297, 46.559803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833038, 29.424524, 46.555836>,  <35.509693, 29.659903, 46.549221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833038, 29.424524, 46.555836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304497, 0.393926, -0.867239,
		0.503811, 0.706082, 0.497617,
		0.808366, -0.588448, 0.016535,
		36.075550, 29.247990, 46.560795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998035, 30.133640, 46.440327>,  <35.509693, 29.659903, 46.549221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998035, 30.133640, 46.440327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128204, 29.769840, 46.336861>,  <36.206306, 29.551559, 46.274780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128204, 29.769840, 46.336861>,  <35.998035, 30.133640, 46.440327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128204, 29.769840, 46.336861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205061, 0.334929, -0.919659,
		0.923066, 0.246233, 0.295496,
		0.325420, -0.909501, -0.258669,
		36.225830, 29.496990, 46.259258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522831, 30.328882, 46.079887>,  <35.998035, 30.133640, 46.440327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522831, 30.328882, 46.079887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484608, 29.947746, 45.964672>,  <36.461674, 29.719065, 45.895542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484608, 29.947746, 45.964672>,  <36.522831, 30.328882, 46.079887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484608, 29.947746, 45.964672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228483, 0.260640, -0.938010,
		0.968847, -0.155447, 0.192801,
		-0.095559, -0.952839, -0.288037,
		36.455940, 29.661894, 45.878262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134197, 30.134199, 45.838577>,  <36.522831, 30.328882, 46.079887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134197, 30.134199, 45.838577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873814, 29.894518, 45.652157>,  <36.717583, 29.750710, 45.540306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873814, 29.894518, 45.652157>,  <37.134197, 30.134199, 45.838577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873814, 29.894518, 45.652157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372658, 0.282625, -0.883883,
		0.661345, -0.749051, 0.039321,
		-0.650960, -0.599205, -0.466052,
		36.678524, 29.714756, 45.512341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479214, 29.898907, 45.085812>,  <37.134197, 30.134199, 45.838577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479214, 29.898907, 45.085812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090530, 29.804482, 45.088619>,  <36.857319, 29.747828, 45.090302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090530, 29.804482, 45.088619>,  <37.479214, 29.898907, 45.085812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090530, 29.804482, 45.088619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039455, 0.132974, -0.990334,
		0.232849, -0.962596, -0.138527,
		-0.971712, -0.236064, 0.007016,
		36.799015, 29.733664, 45.090725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360416, 29.397371, 44.556129>,  <37.479214, 29.898907, 45.085812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360416, 29.397371, 44.556129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996498, 29.553509, 44.612564>,  <36.778149, 29.647190, 44.646427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996498, 29.553509, 44.612564>,  <37.360416, 29.397371, 44.556129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996498, 29.553509, 44.612564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161132, -0.018902, -0.986752,
		-0.382505, -0.920475, 0.080094,
		-0.909795, 0.390343, 0.141088,
		36.723560, 29.670610, 44.654892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868469, 29.108086, 44.036083>,  <37.360416, 29.397371, 44.556129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868469, 29.108086, 44.036083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723331, 29.459192, 44.161221>,  <36.636250, 29.669857, 44.236301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723331, 29.459192, 44.161221>,  <36.868469, 29.108086, 44.036083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723331, 29.459192, 44.161221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235755, 0.238328, -0.942136,
		-0.901536, -0.415599, 0.120463,
		-0.362841, 0.877769, 0.312840,
		36.614479, 29.722523, 44.255074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310432, 29.113188, 43.750999>,  <36.868469, 29.108086, 44.036083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310432, 29.113188, 43.750999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383617, 29.496330, 43.839577>,  <36.427528, 29.726215, 43.892723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383617, 29.496330, 43.839577>,  <36.310432, 29.113188, 43.750999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383617, 29.496330, 43.839577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456346, 0.282254, -0.843849,
		-0.870789, 0.053335, 0.488755,
		0.182960, 0.957856, 0.221445,
		36.438507, 29.783688, 43.906010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601494, 29.511789, 43.465538>,  <36.310432, 29.113188, 43.750999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601494, 29.511789, 43.465538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921593, 29.747791, 43.508438>,  <36.113651, 29.889393, 43.534180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921593, 29.747791, 43.508438>,  <35.601494, 29.511789, 43.465538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921593, 29.747791, 43.508438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142846, 0.361252, -0.921462,
		-0.582412, 0.722074, 0.373370,
		0.800244, 0.590005, 0.107253,
		36.161667, 29.924793, 43.540615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310516, 30.233269, 43.363419>,  <35.601494, 29.511789, 43.465538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310516, 30.233269, 43.363419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699543, 30.199936, 43.276539>,  <35.932957, 30.179937, 43.224411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699543, 30.199936, 43.276539>,  <35.310516, 30.233269, 43.363419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699543, 30.199936, 43.276539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160060, 0.437861, -0.884680,
		0.168826, 0.895173, 0.412509,
		0.972563, -0.083331, -0.217204,
		35.991310, 30.174936, 43.211376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435711, 30.833654, 43.028091>,  <35.310516, 30.233269, 43.363419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435711, 30.833654, 43.028091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762444, 30.622791, 42.934372>,  <35.958481, 30.496273, 42.878139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762444, 30.622791, 42.934372>,  <35.435711, 30.833654, 43.028091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762444, 30.622791, 42.934372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044276, 0.347662, -0.936574,
		0.575181, 0.775393, 0.260640,
		0.816827, -0.527159, -0.234299,
		36.007492, 30.464643, 42.864082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829666, 31.270319, 42.519146>,  <35.435711, 30.833654, 43.028091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829666, 31.270319, 42.519146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014328, 30.923178, 42.445713>,  <36.125126, 30.714893, 42.401653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014328, 30.923178, 42.445713>,  <35.829666, 31.270319, 42.519146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014328, 30.923178, 42.445713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070568, 0.170371, -0.982850,
		0.884248, 0.466692, 0.017410,
		0.461655, -0.867855, -0.183584,
		36.152824, 30.662821, 42.390636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383099, 31.443214, 42.051979>,  <35.829666, 31.270319, 42.519146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383099, 31.443214, 42.051979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314186, 31.054663, 41.986568>,  <36.272839, 30.821531, 41.947323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314186, 31.054663, 41.986568>,  <36.383099, 31.443214, 42.051979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314186, 31.054663, 41.986568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170199, 0.134159, -0.976234,
		0.970233, -0.196020, 0.142214,
		-0.172282, -0.971379, -0.163528,
		36.262501, 30.763248, 41.937511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889950, 31.243950, 41.545452>,  <36.383099, 31.443214, 42.051979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889950, 31.243950, 41.545452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599007, 30.970060, 41.527096>,  <36.424442, 30.805727, 41.516083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599007, 30.970060, 41.527096>,  <36.889950, 31.243950, 41.545452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599007, 30.970060, 41.527096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035449, 0.029292, -0.998942,
		0.685346, -0.728212, 0.002968,
		-0.727354, -0.684726, -0.045889,
		36.380802, 30.764643, 41.513329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125580, 30.698633, 41.028709>,  <36.889950, 31.243950, 41.545452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125580, 30.698633, 41.028709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731667, 30.658884, 41.085751>,  <36.495319, 30.635035, 41.119976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731667, 30.658884, 41.085751>,  <37.125580, 30.698633, 41.028709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731667, 30.658884, 41.085751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134507, -0.083963, -0.987349,
		0.110088, -0.991502, 0.069319,
		-0.984779, -0.099372, 0.142607,
		36.436234, 30.629072, 41.128532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904514, 30.139618, 40.563099>,  <37.125580, 30.698633, 41.028709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904514, 30.139618, 40.563099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571339, 30.346189, 40.642605>,  <36.371433, 30.470133, 40.690308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571339, 30.346189, 40.642605>,  <36.904514, 30.139618, 40.563099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571339, 30.346189, 40.642605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272394, -0.069996, -0.959636,
		-0.481674, -0.853463, 0.198975,
		-0.832942, 0.516431, 0.198764,
		36.321457, 30.501120, 40.702232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434998, 29.942211, 40.099430>,  <36.904514, 30.139618, 40.563099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434998, 29.942211, 40.099430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247341, 30.270090, 40.230888>,  <36.134747, 30.466818, 40.309761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247341, 30.270090, 40.230888>,  <36.434998, 29.942211, 40.099430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247341, 30.270090, 40.230888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416471, 0.122806, -0.900817,
		-0.778755, -0.559479, 0.283766,
		-0.469140, 0.819696, 0.328642,
		36.106598, 30.515999, 40.329479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727222, 29.873800, 39.910957>,  <36.434998, 29.942211, 40.099430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727222, 29.873800, 39.910957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749981, 30.266245, 39.984913>,  <35.763634, 30.501711, 40.029285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749981, 30.266245, 39.984913>,  <35.727222, 29.873800, 39.910957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749981, 30.266245, 39.984913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422152, 0.191462, -0.886076,
		-0.904738, -0.027639, 0.425071,
		0.056894, 0.981111, 0.184891,
		35.767048, 30.560577, 40.040379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101574, 30.235689, 39.682301>,  <35.727222, 29.873800, 39.910957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101574, 30.235689, 39.682301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328934, 30.564110, 39.703434>,  <35.465351, 30.761162, 39.716114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328934, 30.564110, 39.703434>,  <35.101574, 30.235689, 39.682301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328934, 30.564110, 39.703434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399785, 0.331745, -0.854469,
		-0.719090, 0.464561, 0.516810,
		0.568402, 0.821053, 0.052830,
		35.499454, 30.810427, 39.719284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713688, 30.697464, 39.387077>,  <35.101574, 30.235689, 39.682301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713688, 30.697464, 39.387077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082733, 30.850445, 39.367016>,  <35.304161, 30.942234, 39.354977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082733, 30.850445, 39.367016>,  <34.713688, 30.697464, 39.387077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082733, 30.850445, 39.367016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176734, 0.303558, -0.936279,
		-0.342858, 0.872686, 0.347659,
		0.922612, 0.382454, -0.050156,
		35.359516, 30.965181, 39.351971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686436, 31.411222, 39.126492>,  <34.713688, 30.697464, 39.387077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686436, 31.411222, 39.126492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055656, 31.282696, 39.041885>,  <35.277187, 31.205580, 38.991123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055656, 31.282696, 39.041885>,  <34.686436, 31.411222, 39.126492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055656, 31.282696, 39.041885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044757, 0.456403, -0.888647,
		0.382074, 0.829729, 0.406901,
		0.923047, -0.321317, -0.211516,
		35.332569, 31.186300, 38.978432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901276, 31.959259, 38.783646>,  <34.686436, 31.411222, 39.126492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901276, 31.959259, 38.783646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128727, 31.646698, 38.680824>,  <35.265198, 31.459162, 38.619133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128727, 31.646698, 38.680824>,  <34.901276, 31.959259, 38.783646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128727, 31.646698, 38.680824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041732, 0.284682, -0.957713,
		0.821538, 0.555307, 0.129268,
		0.568625, -0.781403, -0.257051,
		35.299313, 31.412277, 38.603710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065392, 32.167416, 38.142204>,  <34.901276, 31.959259, 38.783646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065392, 32.167416, 38.142204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208069, 31.793850, 38.132671>,  <35.293674, 31.569710, 38.126953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208069, 31.793850, 38.132671>,  <35.065392, 32.167416, 38.142204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208069, 31.793850, 38.132671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043661, 0.042143, -0.998157,
		0.933200, 0.354998, 0.055808,
		0.356695, -0.933917, -0.023828,
		35.315079, 31.513676, 38.125523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635063, 32.139484, 37.715431>,  <35.065392, 32.167416, 38.142204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635063, 32.139484, 37.715431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461884, 31.778942, 37.719673>,  <35.357975, 31.562616, 37.722218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461884, 31.778942, 37.719673>,  <35.635063, 32.139484, 37.715431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461884, 31.778942, 37.719673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000999, -0.011280, -0.999936,
		0.901417, -0.432933, 0.003983,
		-0.432950, -0.901356, 0.010600,
		35.331997, 31.508535, 37.722855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076214, 31.735149, 37.331097>,  <35.635063, 32.139484, 37.715431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076214, 31.735149, 37.331097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721542, 31.550322, 37.338036>,  <35.508739, 31.439425, 37.342197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721542, 31.550322, 37.338036>,  <36.076214, 31.735149, 37.331097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721542, 31.550322, 37.338036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114892, -0.256489, -0.959694,
		0.447894, -0.848943, 0.280510,
		-0.886674, -0.462070, 0.017343,
		35.455540, 31.411701, 37.343239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826195, 32.013023, 37.292145>,  <36.076214, 31.735149, 37.331097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826195, 32.013023, 37.292145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569561, 32.319843, 37.293285>,  <36.415581, 32.503937, 37.293968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569561, 32.319843, 37.293285>,  <36.826195, 32.013023, 37.292145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569561, 32.319843, 37.293285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561075, 0.466761, 0.683614,
		0.523037, 0.440192, -0.729838,
		-0.641581, 0.767050, 0.002847,
		36.377087, 32.549957, 37.294140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897202, 31.850939, 38.017551>,  <36.826195, 32.013023, 37.292145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897202, 31.850939, 38.017551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289680, 31.856352, 37.940533>,  <37.525166, 31.859600, 37.894321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289680, 31.856352, 37.940533>,  <36.897202, 31.850939, 38.017551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289680, 31.856352, 37.940533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187687, -0.299782, 0.935363,
		-0.045062, -0.953911, -0.296685,
		0.981195, 0.013535, -0.192546,
		37.584038, 31.860413, 37.882771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260487, 31.199146, 38.078705>,  <36.897202, 31.850939, 38.017551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260487, 31.199146, 38.078705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536827, 31.480165, 38.147011>,  <37.702629, 31.648777, 38.187992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536827, 31.480165, 38.147011>,  <37.260487, 31.199146, 38.078705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536827, 31.480165, 38.147011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142775, -0.364099, 0.920352,
		0.708764, -0.611441, -0.351843,
		0.690847, 0.702546, 0.170761,
		37.744080, 31.690929, 38.198238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854290, 30.820686, 38.403347>,  <37.260487, 31.199146, 38.078705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854290, 30.820686, 38.403347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925667, 31.200254, 38.507435>,  <37.968494, 31.427996, 38.569885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925667, 31.200254, 38.507435>,  <37.854290, 30.820686, 38.403347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925667, 31.200254, 38.507435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383150, -0.310598, 0.869900,
		0.906286, -0.055524, -0.419002,
		0.178441, 0.948919, 0.260216,
		37.979198, 31.484930, 38.585499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521786, 30.801847, 38.656986>,  <37.854290, 30.820686, 38.403347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521786, 30.801847, 38.656986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379345, 31.139336, 38.817650>,  <38.293880, 31.341829, 38.914047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379345, 31.139336, 38.817650>,  <38.521786, 30.801847, 38.656986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379345, 31.139336, 38.817650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317881, -0.294821, 0.901129,
		0.878718, 0.448570, -0.163217,
		-0.356099, 0.843722, 0.401656,
		38.272514, 31.392452, 38.938148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103855, 31.273050, 38.875172>,  <38.521786, 30.801847, 38.656986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103855, 31.273050, 38.875172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784866, 31.346676, 39.105007>,  <38.593472, 31.390852, 39.242908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784866, 31.346676, 39.105007>,  <39.103855, 31.273050, 38.875172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784866, 31.346676, 39.105007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441230, -0.471636, 0.763463,
		0.411524, 0.862369, 0.294902,
		-0.797473, 0.184064, 0.574593,
		38.545624, 31.401896, 39.277386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499043, 31.368828, 39.450523>,  <39.103855, 31.273050, 38.875172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499043, 31.368828, 39.450523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120388, 31.313286, 39.566864>,  <38.893196, 31.279961, 39.636669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120388, 31.313286, 39.566864>,  <39.499043, 31.368828, 39.450523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120388, 31.313286, 39.566864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322005, -0.446172, 0.835011,
		0.013826, 0.884109, 0.467075,
		-0.946637, -0.138855, 0.290856,
		38.836395, 31.271629, 39.654121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463028, 31.674818, 40.164307>,  <39.499043, 31.368828, 39.450523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463028, 31.674818, 40.164307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155746, 31.421696, 40.125477>,  <38.971378, 31.269823, 40.102180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155746, 31.421696, 40.125477>,  <39.463028, 31.674818, 40.164307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155746, 31.421696, 40.125477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217853, -0.400964, 0.889813,
		-0.602002, 0.662408, 0.445880,
		-0.768202, -0.632805, -0.097074,
		38.925285, 31.231853, 40.096355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118343, 31.671991, 40.888325>,  <39.463028, 31.674818, 40.164307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118343, 31.671991, 40.888325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959717, 31.346069, 40.719170>,  <38.864540, 31.150517, 40.617676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959717, 31.346069, 40.719170>,  <39.118343, 31.671991, 40.888325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959717, 31.346069, 40.719170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035420, -0.473892, 0.879870,
		-0.917322, 0.333948, 0.216790,
		-0.396566, -0.814803, -0.422883,
		38.840748, 31.101627, 40.592304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504539, 31.387089, 41.239098>,  <39.118343, 31.671991, 40.888325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504539, 31.387089, 41.239098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649864, 31.071245, 41.041302>,  <38.737057, 30.881739, 40.922623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649864, 31.071245, 41.041302>,  <38.504539, 31.387089, 41.239098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649864, 31.071245, 41.041302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128724, -0.483128, 0.866036,
		-0.922734, -0.378291, -0.073883,
		0.363308, -0.789610, -0.494493,
		38.758858, 30.834362, 40.892952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213608, 30.861065, 41.577778>,  <38.504539, 31.387089, 41.239098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213608, 30.861065, 41.577778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513535, 30.686190, 41.379128>,  <38.693493, 30.581264, 41.259937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513535, 30.686190, 41.379128>,  <38.213608, 30.861065, 41.577778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513535, 30.686190, 41.379128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262951, -0.491865, 0.830015,
		-0.607146, -0.752950, -0.253851,
		0.749820, -0.437190, -0.496623,
		38.738480, 30.555033, 41.230141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187893, 30.118820, 41.694599>,  <38.213608, 30.861065, 41.577778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187893, 30.118820, 41.694599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564228, 30.137915, 41.560402>,  <38.790028, 30.149372, 41.479885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564228, 30.137915, 41.560402>,  <38.187893, 30.118820, 41.694599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564228, 30.137915, 41.560402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302120, -0.566551, 0.766644,
		-0.153475, -0.822643, -0.547452,
		0.940834, 0.047736, -0.335488,
		38.846478, 30.152235, 41.459755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368515, 29.486322, 41.752602>,  <38.187893, 30.118820, 41.694599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368515, 29.486322, 41.752602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728352, 29.660965, 41.748260>,  <38.944252, 29.765751, 41.745655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728352, 29.660965, 41.748260>,  <38.368515, 29.486322, 41.752602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728352, 29.660965, 41.748260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301250, -0.602317, 0.739232,
		0.316213, -0.668274, -0.673364,
		0.899588, 0.436605, -0.010857,
		38.998226, 29.791946, 41.745003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003147, 28.924038, 41.775269>,  <38.368515, 29.486322, 41.752602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003147, 28.924038, 41.775269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120285, 29.284597, 41.902847>,  <39.190567, 29.500933, 41.979393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120285, 29.284597, 41.902847>,  <39.003147, 28.924038, 41.775269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120285, 29.284597, 41.902847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174345, -0.378313, 0.909111,
		0.940131, -0.210621, -0.267941,
		0.292844, 0.901398, 0.318943,
		39.208138, 29.555017, 41.998531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660923, 28.829735, 42.235374>,  <39.003147, 28.924038, 41.775269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660923, 28.829735, 42.235374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518906, 29.189194, 42.338428>,  <39.433693, 29.404869, 42.400261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518906, 29.189194, 42.338428>,  <39.660923, 28.829735, 42.235374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518906, 29.189194, 42.338428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165629, -0.210761, 0.963404,
		0.920059, 0.384724, -0.074012,
		-0.355046, 0.898648, 0.257634,
		39.412392, 29.458788, 42.415718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150085, 29.051184, 42.633869>,  <39.660923, 28.829735, 42.235374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150085, 29.051184, 42.633869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820526, 29.255388, 42.732311>,  <39.622791, 29.377911, 42.791378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820526, 29.255388, 42.732311>,  <40.150085, 29.051184, 42.633869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820526, 29.255388, 42.732311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120217, -0.266937, 0.956186,
		0.553841, 0.817386, 0.158557,
		-0.823898, 0.510514, 0.246104,
		39.573357, 29.408543, 42.806141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304703, 29.476076, 43.155342>,  <40.150085, 29.051184, 42.633869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304703, 29.476076, 43.155342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908031, 29.490906, 43.204651>,  <39.670029, 29.499804, 43.234238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908031, 29.490906, 43.204651>,  <40.304703, 29.476076, 43.155342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908031, 29.490906, 43.204651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115461, -0.167226, 0.979134,
		0.056913, 0.985221, 0.161555,
		-0.991680, 0.037073, 0.123272,
		39.610527, 29.502028, 43.241634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160603, 29.946634, 43.756561>,  <40.304703, 29.476076, 43.155342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160603, 29.946634, 43.756561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861874, 29.684902, 43.709064>,  <39.682636, 29.527863, 43.680565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861874, 29.684902, 43.709064>,  <40.160603, 29.946634, 43.756561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861874, 29.684902, 43.709064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034300, -0.140420, 0.989498,
		-0.664134, 0.743056, 0.082425,
		-0.746826, -0.654332, -0.118745,
		39.637825, 29.488604, 43.673443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783661, 30.073759, 44.359322>,  <40.160603, 29.946634, 43.756561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783661, 30.073759, 44.359322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649307, 29.725603, 44.215317>,  <39.568695, 29.516710, 44.128914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649307, 29.725603, 44.215317>,  <39.783661, 30.073759, 44.359322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649307, 29.725603, 44.215317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118039, -0.340303, 0.932877,
		-0.934478, 0.355834, 0.011562,
		-0.335884, -0.870388, -0.360008,
		39.548542, 29.464487, 44.107315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147259, 30.078016, 44.575848>,  <39.783661, 30.073759, 44.359322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147259, 30.078016, 44.575848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287292, 29.709988, 44.505520>,  <39.371311, 29.489170, 44.463322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287292, 29.709988, 44.505520>,  <39.147259, 30.078016, 44.575848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287292, 29.709988, 44.505520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187622, -0.252769, 0.949160,
		-0.917737, -0.299294, -0.261115,
		0.350080, -0.920071, -0.175822,
		39.392315, 29.433966, 44.452774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627075, 29.549906, 44.594097>,  <39.147259, 30.078016, 44.575848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627075, 29.549906, 44.594097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949226, 29.333138, 44.690174>,  <39.142517, 29.203077, 44.747822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949226, 29.333138, 44.690174>,  <38.627075, 29.549906, 44.594097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949226, 29.333138, 44.690174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529388, -0.475274, 0.702754,
		-0.266678, -0.693136, -0.669660,
		0.805377, -0.541919, 0.240193,
		39.190838, 29.170561, 44.762230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354851, 29.068844, 45.007286>,  <38.627075, 29.549906, 44.594097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354851, 29.068844, 45.007286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744591, 28.996468, 45.060814>,  <38.978436, 28.953041, 45.092930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744591, 28.996468, 45.060814>,  <38.354851, 29.068844, 45.007286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744591, 28.996468, 45.060814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202580, -0.446183, 0.871712,
		-0.098020, -0.876459, -0.471393,
		0.974347, -0.180940, 0.133818,
		39.036896, 28.942184, 45.100960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371449, 28.499077, 45.267994>,  <38.354851, 29.068844, 45.007286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371449, 28.499077, 45.267994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714260, 28.676250, 45.373299>,  <38.919949, 28.782555, 45.436481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714260, 28.676250, 45.373299>,  <38.371449, 28.499077, 45.267994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714260, 28.676250, 45.373299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124739, -0.317374, 0.940061,
		0.499937, -0.838500, -0.216748,
		0.857031, 0.442934, 0.263261,
		38.971371, 28.809132, 45.452278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659512, 28.078804, 45.658661>,  <38.371449, 28.499077, 45.267994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659512, 28.078804, 45.658661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823311, 28.423243, 45.779213>,  <38.921589, 28.629906, 45.851543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823311, 28.423243, 45.779213>,  <38.659512, 28.078804, 45.658661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823311, 28.423243, 45.779213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111369, -0.280692, 0.953315,
		0.905488, -0.423945, -0.019044,
		0.409499, 0.861094, 0.301377,
		38.946159, 28.681570, 45.869625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209270, 27.921886, 46.152409>,  <38.659512, 28.078804, 45.658661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209270, 27.921886, 46.152409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145802, 28.301048, 46.262901>,  <39.107719, 28.528545, 46.329197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145802, 28.301048, 46.262901>,  <39.209270, 27.921886, 46.152409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145802, 28.301048, 46.262901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222678, -0.306925, 0.925317,
		0.961893, 0.085312, 0.259777,
		-0.158673, 0.947902, 0.276232,
		39.098198, 28.585419, 46.345772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489540, 27.995304, 46.830357>,  <39.209270, 27.921886, 46.152409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489540, 27.995304, 46.830357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250721, 28.315237, 46.805702>,  <39.107430, 28.507196, 46.790909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250721, 28.315237, 46.805702>,  <39.489540, 27.995304, 46.830357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250721, 28.315237, 46.805702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294735, -0.147252, 0.944165,
		0.746099, 0.581879, 0.323655,
		-0.597049, 0.799834, -0.061636,
		39.071606, 28.555187, 46.787212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668941, 28.469843, 47.385406>,  <39.489540, 27.995304, 46.830357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668941, 28.469843, 47.385406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297676, 28.543377, 47.255966>,  <39.074917, 28.587498, 47.178303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297676, 28.543377, 47.255966>,  <39.668941, 28.469843, 47.385406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297676, 28.543377, 47.255966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299820, 0.145789, 0.942790,
		0.220493, 0.972086, -0.080199,
		-0.928165, 0.183833, -0.323596,
		39.019226, 28.598526, 47.158886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378292, 29.077402, 47.672894>,  <39.668941, 28.469843, 47.385406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378292, 29.077402, 47.672894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028263, 28.922819, 47.556343>,  <38.818245, 28.830070, 47.486412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028263, 28.922819, 47.556343>,  <39.378292, 29.077402, 47.672894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028263, 28.922819, 47.556343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434382, 0.361614, 0.824953,
		-0.213443, 0.848462, -0.484309,
		-0.875074, -0.386455, -0.291372,
		38.765739, 28.806883, 47.468933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880058, 29.610922, 47.811779>,  <39.378292, 29.077402, 47.672894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880058, 29.610922, 47.811779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684040, 29.262251, 47.813988>,  <38.566429, 29.053047, 47.815315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684040, 29.262251, 47.813988>,  <38.880058, 29.610922, 47.811779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684040, 29.262251, 47.813988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414567, 0.238629, 0.878174,
		-0.766804, 0.428056, -0.478309,
		-0.490046, -0.871679, 0.005524,
		38.537025, 29.000748, 47.815643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193932, 29.652056, 48.168636>,  <38.880058, 29.610922, 47.811779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193932, 29.652056, 48.168636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215294, 29.252815, 48.156361>,  <38.228111, 29.013271, 48.148994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215294, 29.252815, 48.156361>,  <38.193932, 29.652056, 48.168636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215294, 29.252815, 48.156361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273239, -0.044165, 0.960932,
		-0.960463, -0.042930, -0.275079,
		0.053401, -0.998102, -0.030689,
		38.231316, 28.953384, 48.147156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731815, 29.526274, 48.636124>,  <38.193932, 29.652056, 48.168636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731815, 29.526274, 48.636124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923370, 29.175568, 48.618477>,  <38.038303, 28.965143, 48.607891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923370, 29.175568, 48.618477>,  <37.731815, 29.526274, 48.636124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923370, 29.175568, 48.618477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336316, -0.229650, 0.913319,
		-0.810898, -0.422543, -0.404848,
		0.478890, -0.876765, -0.044115,
		38.067036, 28.912539, 48.605244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254177, 29.006186, 48.659649>,  <37.731815, 29.526274, 48.636124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254177, 29.006186, 48.659649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593761, 28.851559, 48.803772>,  <37.797512, 28.758781, 48.890247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593761, 28.851559, 48.803772>,  <37.254177, 29.006186, 48.659649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593761, 28.851559, 48.803772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384961, 0.014700, 0.922816,
		-0.362029, -0.922143, -0.136335,
		0.848964, -0.386569, 0.360311,
		37.848450, 28.735588, 48.911865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124355, 28.342726, 49.083649>,  <37.254177, 29.006186, 48.659649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124355, 28.342726, 49.083649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485371, 28.456429, 49.213028>,  <37.701981, 28.524651, 49.290657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485371, 28.456429, 49.213028>,  <37.124355, 28.342726, 49.083649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485371, 28.456429, 49.213028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382405, 0.183773, 0.905535,
		0.197974, -0.940967, 0.274568,
		0.902537, 0.284268, 0.323448,
		37.756134, 28.541704, 49.310062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292259, 27.902206, 49.596928>,  <37.124355, 28.342726, 49.083649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292259, 27.902206, 49.596928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493118, 28.243542, 49.653019>,  <37.613632, 28.448343, 49.686676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493118, 28.243542, 49.653019>,  <37.292259, 27.902206, 49.596928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493118, 28.243542, 49.653019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443846, 0.115142, 0.888675,
		0.742193, -0.508486, 0.436568,
		0.502146, 0.853337, 0.140232,
		37.643761, 28.499542, 49.695087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438770, 27.925255, 50.268238>,  <37.292259, 27.902206, 49.596928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438770, 27.925255, 50.268238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513142, 28.311150, 50.193714>,  <37.557766, 28.542686, 50.148998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513142, 28.311150, 50.193714>,  <37.438770, 27.925255, 50.268238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513142, 28.311150, 50.193714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465562, 0.253483, 0.847938,
		0.865264, -0.070918, 0.496275,
		0.185931, 0.964737, -0.186313,
		37.568920, 28.600571, 50.137821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702728, 28.127001, 50.885925>,  <37.438770, 27.925255, 50.268238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702728, 28.127001, 50.885925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541637, 28.448614, 50.710957>,  <37.444984, 28.641582, 50.605976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541637, 28.448614, 50.710957>,  <37.702728, 28.127001, 50.885925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541637, 28.448614, 50.710957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483488, 0.218920, 0.847534,
		0.777207, 0.552815, 0.300576,
		-0.402727, 0.804034, -0.437425,
		37.420818, 28.689825, 50.579727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834225, 28.719860, 51.405151>,  <37.702728, 28.127001, 50.885925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834225, 28.719860, 51.405151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568924, 28.858761, 51.139969>,  <37.409744, 28.942101, 50.980858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568924, 28.858761, 51.139969>,  <37.834225, 28.719860, 51.405151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568924, 28.858761, 51.139969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518380, 0.425761, 0.741626,
		0.539792, 0.835550, -0.102380,
		-0.663255, 0.347253, -0.662955,
		37.369949, 28.962936, 50.941082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823936, 29.459515, 51.541424>,  <37.834225, 28.719860, 51.405151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823936, 29.459515, 51.541424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478737, 29.356773, 51.367405>,  <37.271618, 29.295130, 51.262993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478737, 29.356773, 51.367405>,  <37.823936, 29.459515, 51.541424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478737, 29.356773, 51.367405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503601, 0.506055, 0.700210,
		0.040307, 0.823368, -0.566074,
		-0.862996, -0.256852, -0.435047,
		37.219837, 29.279718, 51.236893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664982, 30.218836, 51.493980>,  <37.823936, 29.459515, 51.541424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664982, 30.218836, 51.493980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571751, 30.602047, 51.560741>,  <37.515812, 30.831974, 51.600800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571751, 30.602047, 51.560741>,  <37.664982, 30.218836, 51.493980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571751, 30.602047, 51.560741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427054, 0.255034, -0.867515,
		-0.873671, -0.130917, -0.468572,
		-0.233075, 0.958028, 0.166907,
		37.501827, 30.889456, 51.610813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243225, 30.718321, 50.870010>,  <37.664982, 30.218836, 51.493980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243225, 30.718321, 50.870010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506493, 30.912569, 51.100140>,  <37.664452, 31.029118, 51.238216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506493, 30.912569, 51.100140>,  <37.243225, 30.718321, 50.870010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506493, 30.912569, 51.100140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596573, 0.129748, -0.792001,
		-0.459258, 0.864488, -0.204312,
		0.658166, 0.485619, 0.575318,
		37.703941, 31.058254, 51.272736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528484, 31.232916, 50.443691>,  <37.243225, 30.718321, 50.870010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528484, 31.232916, 50.443691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805008, 31.256033, 50.731789>,  <37.970921, 31.269903, 50.904648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805008, 31.256033, 50.731789>,  <37.528484, 31.232916, 50.443691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805008, 31.256033, 50.731789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720313, -0.133674, -0.680647,
		0.056942, 0.989339, -0.134039,
		0.691308, 0.057793, 0.720245,
		38.012402, 31.273371, 50.947861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022572, 31.860952, 50.401283>,  <37.528484, 31.232916, 50.443691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022572, 31.860952, 50.401283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179691, 31.546484, 50.592133>,  <38.273964, 31.357803, 50.706642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179691, 31.546484, 50.592133>,  <38.022572, 31.860952, 50.401283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179691, 31.546484, 50.592133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761224, -0.013142, -0.648356,
		0.515988, 0.617870, 0.593289,
		0.392803, -0.786170, 0.477119,
		38.297531, 31.310633, 50.735268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751263, 32.034351, 50.412846>,  <38.022572, 31.860952, 50.401283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751263, 32.034351, 50.412846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775150, 31.648031, 50.513771>,  <38.789482, 31.416239, 50.574326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775150, 31.648031, 50.513771>,  <38.751263, 32.034351, 50.412846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775150, 31.648031, 50.513771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875306, -0.070844, -0.478352,
		0.479868, 0.249422, 0.841139,
		0.059722, -0.965800, 0.252317,
		38.793068, 31.358292, 50.589466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415390, 32.063366, 50.427639>,  <38.751263, 32.034351, 50.412846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415390, 32.063366, 50.427639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296810, 31.683681, 50.469830>,  <39.225662, 31.455872, 50.495144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296810, 31.683681, 50.469830>,  <39.415390, 32.063366, 50.427639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296810, 31.683681, 50.469830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808904, -0.308262, -0.500648,
		0.507732, -0.063099, 0.859201,
		-0.296449, -0.949206, 0.105473,
		39.207874, 31.398920, 50.501472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974579, 31.676346, 50.789288>,  <39.415390, 32.063366, 50.427639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974579, 31.676346, 50.789288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750229, 31.443954, 50.553360>,  <39.615620, 31.304520, 50.411804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750229, 31.443954, 50.553360>,  <39.974579, 31.676346, 50.789288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750229, 31.443954, 50.553360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788131, -0.156531, -0.595271,
		0.253516, -0.798724, 0.545682,
		-0.560873, -0.580980, -0.589816,
		39.581966, 31.269661, 50.376415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371578, 31.091429, 50.573181>,  <39.974579, 31.676346, 50.789288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371578, 31.091429, 50.573181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097706, 31.094219, 50.281658>,  <39.933384, 31.095894, 50.106743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097706, 31.094219, 50.281658>,  <40.371578, 31.091429, 50.573181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097706, 31.094219, 50.281658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725403, -0.090529, -0.682345,
		-0.070739, -0.995869, 0.056923,
		-0.684680, 0.006977, -0.728810,
		39.892303, 31.096312, 50.063015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452347, 30.458794, 50.091263>,  <40.371578, 31.091429, 50.573181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452347, 30.458794, 50.091263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288452, 30.762505, 49.889030>,  <40.190113, 30.944731, 49.767693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288452, 30.762505, 49.889030>,  <40.452347, 30.458794, 50.091263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288452, 30.762505, 49.889030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581552, -0.209578, -0.786050,
		-0.702789, -0.616096, -0.355687,
		-0.409738, 0.759278, -0.505581,
		40.165531, 30.990288, 49.737354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578224, 30.269142, 49.430004>,  <40.452347, 30.458794, 50.091263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578224, 30.269142, 49.430004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433498, 30.634706, 49.356400>,  <40.346661, 30.854044, 49.312237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433498, 30.634706, 49.356400>,  <40.578224, 30.269142, 49.430004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433498, 30.634706, 49.356400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496001, 0.021591, -0.868053,
		-0.789348, -0.405345, -0.461112,
		-0.361817, 0.913909, -0.184009,
		40.324955, 30.908878, 49.301197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529869, 30.273811, 48.732922>,  <40.578224, 30.269142, 49.430004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529869, 30.273811, 48.732922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516376, 30.660479, 48.834442>,  <40.508282, 30.892479, 48.895355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516376, 30.660479, 48.834442>,  <40.529869, 30.273811, 48.732922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516376, 30.660479, 48.834442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415218, 0.244550, -0.876236,
		-0.909096, 0.075826, -0.409627,
		-0.033733, 0.966667, 0.253804,
		40.506256, 30.950480, 48.910583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108284, 30.616987, 48.241184>,  <40.529869, 30.273811, 48.732922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108284, 30.616987, 48.241184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343296, 30.906326, 48.386280>,  <40.484303, 31.079929, 48.473335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343296, 30.906326, 48.386280>,  <40.108284, 30.616987, 48.241184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343296, 30.906326, 48.386280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079089, 0.394789, -0.915362,
		-0.805328, 0.566491, 0.174742,
		0.587530, 0.723346, 0.362738,
		40.519554, 31.123329, 48.495102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755787, 31.334513, 48.031029>,  <40.108284, 30.616987, 48.241184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755787, 31.334513, 48.031029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139664, 31.416721, 48.107719>,  <40.369987, 31.466047, 48.153732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139664, 31.416721, 48.107719>,  <39.755787, 31.334513, 48.031029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139664, 31.416721, 48.107719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143371, 0.228755, -0.962868,
		-0.241747, 0.951542, 0.190068,
		0.959689, 0.205521, 0.191724,
		40.427570, 31.478378, 48.165237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830357, 31.942606, 47.801201>,  <39.755787, 31.334513, 48.031029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830357, 31.942606, 47.801201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193844, 31.775793, 47.808205>,  <40.411938, 31.675705, 47.812408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193844, 31.775793, 47.808205>,  <39.830357, 31.942606, 47.801201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193844, 31.775793, 47.808205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119186, 0.219045, -0.968408,
		0.400022, 0.882101, 0.248755,
		0.908723, -0.417033, 0.017511,
		40.466461, 31.650682, 47.813457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146721, 32.432228, 47.429836>,  <39.830357, 31.942606, 47.801201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146721, 32.432228, 47.429836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363220, 32.095966, 47.422409>,  <40.493118, 31.894209, 47.417953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363220, 32.095966, 47.422409>,  <40.146721, 32.432228, 47.429836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363220, 32.095966, 47.422409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260323, 0.188523, -0.946938,
		0.799552, 0.507693, 0.320881,
		0.541248, -0.840658, -0.018570,
		40.525593, 31.843769, 47.416840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696995, 32.601307, 47.075699>,  <40.146721, 32.432228, 47.429836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696995, 32.601307, 47.075699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705719, 32.203491, 47.034882>,  <40.710953, 31.964802, 47.010391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705719, 32.203491, 47.034882>,  <40.696995, 32.601307, 47.075699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705719, 32.203491, 47.034882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136624, 0.104073, -0.985141,
		0.990383, 0.007545, 0.138148,
		0.021811, -0.994541, -0.102042,
		40.712261, 31.905128, 47.004269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089237, 32.480198, 46.489353>,  <40.696995, 32.601307, 47.075699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089237, 32.480198, 46.489353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934551, 32.115273, 46.543232>,  <40.841740, 31.896318, 46.575558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934551, 32.115273, 46.543232>,  <41.089237, 32.480198, 46.489353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934551, 32.115273, 46.543232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012706, -0.140773, -0.989960,
		0.922111, -0.384545, 0.042848,
		-0.386716, -0.912309, 0.134694,
		40.818535, 31.841579, 46.583641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519287, 32.021248, 46.105297>,  <41.089237, 32.480198, 46.489353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519287, 32.021248, 46.105297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177891, 31.815100, 46.136169>,  <40.973053, 31.691412, 46.154694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177891, 31.815100, 46.136169>,  <41.519287, 32.021248, 46.105297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177891, 31.815100, 46.136169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025654, -0.106376, -0.993995,
		0.520484, -0.850341, 0.077570,
		-0.853486, -0.515369, 0.077181,
		40.921844, 31.660490, 46.159325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525093, 31.368189, 45.652836>,  <41.519287, 32.021248, 46.105297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525093, 31.368189, 45.652836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135899, 31.434402, 45.717201>,  <40.902382, 31.474131, 45.755821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135899, 31.434402, 45.717201>,  <41.525093, 31.368189, 45.652836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135899, 31.434402, 45.717201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139390, 0.134388, -0.981076,
		-0.184026, -0.977005, -0.107685,
		-0.972988, 0.165534, 0.160915,
		40.844002, 31.484062, 45.765476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212978, 30.967937, 45.111412>,  <41.525093, 31.368189, 45.652836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212978, 30.967937, 45.111412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895821, 31.180597, 45.230522>,  <40.705524, 31.308193, 45.301987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895821, 31.180597, 45.230522>,  <41.212978, 30.967937, 45.111412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895821, 31.180597, 45.230522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274092, 0.125277, -0.953509,
		-0.544237, -0.837648, 0.046390,
		-0.792893, 0.531650, 0.297773,
		40.657951, 31.340092, 45.319855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665287, 30.778425, 44.705025>,  <41.212978, 30.967937, 45.111412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665287, 30.778425, 44.705025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586479, 31.142988, 44.849537>,  <40.539192, 31.361725, 44.936245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586479, 31.142988, 44.849537>,  <40.665287, 30.778425, 44.705025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586479, 31.142988, 44.849537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289967, 0.297842, -0.909510,
		-0.936537, -0.283953, 0.205596,
		-0.197023, 0.911406, 0.361277,
		40.527370, 31.416410, 44.957920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048695, 30.857447, 44.351276>,  <40.665287, 30.778425, 44.705025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048695, 30.857447, 44.351276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200081, 31.206993, 44.473339>,  <40.290913, 31.416721, 44.546577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200081, 31.206993, 44.473339>,  <40.048695, 30.857447, 44.351276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200081, 31.206993, 44.473339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044721, 0.346561, -0.936961,
		-0.924533, 0.340964, 0.170243,
		0.378469, 0.873865, 0.305158,
		40.313622, 31.469152, 44.564888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538353, 31.383099, 44.077599>,  <40.048695, 30.857447, 44.351276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538353, 31.383099, 44.077599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885078, 31.566547, 44.155876>,  <40.093113, 31.676617, 44.202843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885078, 31.566547, 44.155876>,  <39.538353, 31.383099, 44.077599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885078, 31.566547, 44.155876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045772, 0.317615, -0.947115,
		-0.496520, 0.829933, 0.254322,
		0.866818, 0.458620, 0.195690,
		40.145123, 31.704134, 44.214584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461163, 31.958595, 43.700954>,  <39.538353, 31.383099, 44.077599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461163, 31.958595, 43.700954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850060, 31.984085, 43.791016>,  <40.083397, 31.999378, 43.845051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850060, 31.984085, 43.791016>,  <39.461163, 31.958595, 43.700954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850060, 31.984085, 43.791016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176434, 0.432394, -0.884255,
		-0.153702, 0.899431, 0.409146,
		0.972238, 0.063724, 0.225150,
		40.141731, 32.003201, 43.858562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675266, 32.641876, 43.497169>,  <39.461163, 31.958595, 43.700954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675266, 32.641876, 43.497169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969997, 32.372414, 43.474300>,  <40.146835, 32.210735, 43.460579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969997, 32.372414, 43.474300>,  <39.675266, 32.641876, 43.497169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969997, 32.372414, 43.474300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124160, 0.217954, -0.968029,
		0.664579, 0.706175, 0.244236,
		0.736831, -0.673656, -0.057169,
		40.191048, 32.170319, 43.457150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169968, 32.849159, 43.057594>,  <39.675266, 32.641876, 43.497169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169968, 32.849159, 43.057594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273212, 32.462994, 43.072369>,  <40.335159, 32.231297, 43.081234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273212, 32.462994, 43.072369>,  <40.169968, 32.849159, 43.057594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273212, 32.462994, 43.072369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315769, 0.048168, -0.947613,
		0.913055, 0.256250, 0.317279,
		0.258108, -0.965410, 0.036936,
		40.350643, 32.173370, 43.083450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791714, 32.871223, 42.815994>,  <40.169968, 32.849159, 43.057594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791714, 32.871223, 42.815994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695690, 32.483799, 42.789886>,  <40.638077, 32.251343, 42.774223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695690, 32.483799, 42.789886>,  <40.791714, 32.871223, 42.815994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695690, 32.483799, 42.789886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327080, -0.017396, -0.944836,
		0.913996, -0.248169, 0.320973,
		-0.240063, -0.968561, -0.065271,
		40.623672, 32.193230, 42.770306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303352, 32.565540, 42.564407>,  <40.791714, 32.871223, 42.815994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303352, 32.565540, 42.564407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994816, 32.322605, 42.488335>,  <40.809692, 32.176842, 42.442692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994816, 32.322605, 42.488335>,  <41.303352, 32.565540, 42.564407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994816, 32.322605, 42.488335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450169, -0.309445, -0.837611,
		0.449865, -0.731697, 0.512095,
		-0.771342, -0.607341, -0.190179,
		40.763412, 32.140404, 42.431282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626591, 32.032288, 42.269482>,  <41.303352, 32.565540, 42.564407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626591, 32.032288, 42.269482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245884, 31.998724, 42.151428>,  <41.017460, 31.978584, 42.080597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245884, 31.998724, 42.151428>,  <41.626591, 32.032288, 42.269482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245884, 31.998724, 42.151428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306761, -0.280447, -0.909531,
		-0.006447, -0.956195, 0.292661,
		-0.951765, -0.083913, -0.295131,
		40.960354, 31.973551, 42.062889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520088, 31.362335, 41.959702>,  <41.626591, 32.032288, 42.269482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520088, 31.362335, 41.959702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247868, 31.610271, 41.803417>,  <41.084534, 31.759033, 41.709648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247868, 31.610271, 41.803417>,  <41.520088, 31.362335, 41.959702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247868, 31.610271, 41.803417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320165, -0.228070, -0.919499,
		-0.659050, -0.750856, -0.043237,
		-0.680550, 0.619839, -0.390707,
		41.043701, 31.796223, 41.686207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378689, 31.164286, 41.304893>,  <41.520088, 31.362335, 41.959702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378689, 31.164286, 41.304893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218571, 31.529221, 41.270473>,  <41.122501, 31.748182, 41.249821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218571, 31.529221, 41.270473>,  <41.378689, 31.164286, 41.304893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218571, 31.529221, 41.270473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529343, 0.153557, -0.834395,
		-0.748038, -0.379552, -0.544408,
		-0.400294, 0.912338, -0.086047,
		41.098484, 31.802921, 41.244659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233509, 31.220171, 40.629803>,  <41.378689, 31.164286, 41.304893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233509, 31.220171, 40.629803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212009, 31.607201, 40.728523>,  <41.199112, 31.839418, 40.787754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212009, 31.607201, 40.728523>,  <41.233509, 31.220171, 40.629803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212009, 31.607201, 40.728523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327799, 0.250555, -0.910917,
		-0.943217, 0.031941, -0.330637,
		-0.053747, 0.967575, 0.246798,
		41.195885, 31.897472, 40.802563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851189, 31.497921, 40.175766>,  <41.233509, 31.220171, 40.629803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851189, 31.497921, 40.175766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034431, 31.826694, 40.311153>,  <41.144379, 32.023956, 40.392387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034431, 31.826694, 40.311153>,  <40.851189, 31.497921, 40.175766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034431, 31.826694, 40.311153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217043, 0.265820, -0.939272,
		-0.861990, 0.503753, -0.056619,
		0.458111, 0.821932, 0.338471,
		41.171864, 32.073273, 40.412693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569901, 32.037590, 39.719666>,  <40.851189, 31.497921, 40.175766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569901, 32.037590, 39.719666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926800, 32.142109, 39.866970>,  <41.140938, 32.204823, 39.955353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926800, 32.142109, 39.866970>,  <40.569901, 32.037590, 39.719666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926800, 32.142109, 39.866970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266824, 0.352830, -0.896837,
		-0.364277, 0.898461, 0.245091,
		0.892249, 0.261301, 0.368259,
		41.194473, 32.220501, 39.977448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661613, 32.675571, 39.414043>,  <40.569901, 32.037590, 39.719666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661613, 32.675571, 39.414043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023163, 32.543842, 39.523270>,  <41.240093, 32.464806, 39.588806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023163, 32.543842, 39.523270>,  <40.661613, 32.675571, 39.414043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023163, 32.543842, 39.523270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375199, 0.303559, -0.875830,
		0.205536, 0.894092, 0.397938,
		0.903870, -0.329320, 0.273070,
		41.294323, 32.445045, 39.605190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052387, 33.171825, 39.370102>,  <40.661613, 32.675571, 39.414043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052387, 33.171825, 39.370102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324627, 32.880196, 39.341152>,  <41.487968, 32.705219, 39.323784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324627, 32.880196, 39.341152>,  <41.052387, 33.171825, 39.370102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324627, 32.880196, 39.341152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350197, 0.410488, -0.841939,
		0.643546, 0.547675, 0.534697,
		0.680596, -0.729075, -0.072374,
		41.528805, 32.661472, 39.319439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674526, 33.478390, 39.333183>,  <41.052387, 33.171825, 39.370102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674526, 33.478390, 39.333183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767685, 33.113289, 39.198936>,  <41.823582, 32.894226, 39.118389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767685, 33.113289, 39.198936>,  <41.674526, 33.478390, 39.333183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767685, 33.113289, 39.198936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283309, 0.393816, -0.874440,
		0.930319, 0.108574, 0.350311,
		0.232900, -0.912754, -0.335614,
		41.837555, 32.839462, 39.098251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245228, 33.615257, 39.076359>,  <41.674526, 33.478390, 39.333183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245228, 33.615257, 39.076359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120857, 33.276821, 38.903175>,  <42.046234, 33.073761, 38.799263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120857, 33.276821, 38.903175>,  <42.245228, 33.615257, 39.076359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120857, 33.276821, 38.903175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350451, 0.321381, -0.879715,
		0.883464, -0.425258, 0.196587,
		-0.310926, -0.846091, -0.432961,
		42.027580, 33.022995, 38.773289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793388, 33.380596, 38.748329>,  <42.245228, 33.615257, 39.076359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793388, 33.380596, 38.748329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479908, 33.216904, 38.561420>,  <42.291821, 33.118687, 38.449276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479908, 33.216904, 38.561420>,  <42.793388, 33.380596, 38.748329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479908, 33.216904, 38.561420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292942, 0.419847, -0.859019,
		0.547723, -0.810096, -0.209151,
		-0.783699, -0.409235, -0.467271,
		42.244797, 33.094131, 38.421238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067753, 33.084328, 38.115643>,  <42.793388, 33.380596, 38.748329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067753, 33.084328, 38.115643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676140, 33.088261, 38.034260>,  <42.441170, 33.090622, 37.985432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676140, 33.088261, 38.034260>,  <43.067753, 33.084328, 38.115643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.676140, 33.088261, 38.034260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199206, 0.254778, -0.946259,
		0.042530, -0.966949, -0.251395,
		-0.979034, 0.009835, -0.203458,
		42.382431, 33.091209, 37.973221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968884, 32.658749, 37.600613>,  <43.067753, 33.084328, 38.115643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968884, 32.658749, 37.600613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661961, 32.914471, 37.580498>,  <42.477806, 33.067902, 37.568428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661961, 32.914471, 37.580498>,  <42.968884, 32.658749, 37.600613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661961, 32.914471, 37.580498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217972, 0.186260, -0.958016,
		-0.603094, -0.746058, -0.282269,
		-0.767311, 0.639301, -0.050288,
		42.431767, 33.106262, 37.565411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342255, 33.126621, 37.092873>,  <42.968884, 32.658749, 37.600613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342255, 33.126621, 37.092873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245659, 33.171356, 36.707298>,  <43.187702, 33.198196, 36.475952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245659, 33.171356, 36.707298>,  <43.342255, 33.126621, 37.092873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245659, 33.171356, 36.707298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904015, -0.335171, -0.265361,
		-0.352761, -0.935496, -0.020162,
		-0.241487, 0.111836, -0.963938,
		43.173214, 33.204906, 36.418118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686470, 32.673958, 36.770226>,  <43.342255, 33.126621, 37.092873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686470, 32.673958, 36.770226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581951, 32.902702, 36.459175>,  <43.519241, 33.039948, 36.272545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581951, 32.902702, 36.459175>,  <43.686470, 32.673958, 36.770226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581951, 32.902702, 36.459175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905559, -0.133699, -0.402601,
		-0.334199, -0.809383, -0.482918,
		-0.261293, 0.571860, -0.777626,
		43.503563, 33.074261, 36.225887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.643833, 32.326431, 36.071465>,  <43.686470, 32.673958, 36.770226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.643833, 32.326431, 36.071465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770916, 32.705700, 36.073875>,  <43.847164, 32.933262, 36.075321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770916, 32.705700, 36.073875>,  <43.643833, 32.326431, 36.071465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770916, 32.705700, 36.073875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813991, -0.269471, -0.514591,
		-0.486295, 0.168395, -0.857415,
		0.317703, 0.948171, 0.006030,
		43.866226, 32.990150, 36.075684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021111, 32.338165, 35.456619>,  <43.643833, 32.326431, 36.071465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021111, 32.338165, 35.456619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106426, 32.671776, 35.660149>,  <44.157616, 32.871944, 35.782265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106426, 32.671776, 35.660149>,  <44.021111, 32.338165, 35.456619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106426, 32.671776, 35.660149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887874, 0.051837, -0.457157,
		-0.407659, 0.549278, -0.729457,
		0.213293, 0.834030, 0.508822,
		44.170414, 32.921986, 35.812794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.116699, 32.893047, 35.056763>,  <44.021111, 32.338165, 35.456619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.116699, 32.893047, 35.056763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347469, 32.901768, 35.383366>,  <44.485931, 32.906998, 35.579327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347469, 32.901768, 35.383366>,  <44.116699, 32.893047, 35.056763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347469, 32.901768, 35.383366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811045, -0.133683, -0.569504,
		0.096739, 0.990784, -0.094805,
		0.576930, 0.021798, 0.816503,
		44.520550, 32.908306, 35.628315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544346, 33.447430, 35.149750>,  <44.116699, 32.893047, 35.056763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544346, 33.447430, 35.149750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743095, 33.162155, 35.347530>,  <44.862347, 32.990990, 35.466198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743095, 33.162155, 35.347530>,  <44.544346, 33.447430, 35.149750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.743095, 33.162155, 35.347530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783580, 0.123824, -0.608827,
		0.372981, 0.689953, 0.620362,
		0.496878, -0.713185, 0.494450,
		44.892159, 32.948200, 35.495865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933250, 33.527996, 35.783764>,  <44.544346, 33.447430, 35.149750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933250, 33.527996, 35.783764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.233448, 33.787109, 35.836136>,  <45.413567, 33.942577, 35.867558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.233448, 33.787109, 35.836136>,  <44.933250, 33.527996, 35.783764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.233448, 33.787109, 35.836136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603863, 0.591647, 0.534138,
		0.268541, -0.479929, 0.835197,
		0.750490, 0.647782, 0.130930,
		45.458595, 33.981445, 35.875416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022671, 33.745983, 36.456310>,  <44.933250, 33.527996, 35.783764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022671, 33.745983, 36.456310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130577, 34.019726, 36.185345>,  <45.195320, 34.183971, 36.022766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130577, 34.019726, 36.185345>,  <45.022671, 33.745983, 36.456310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130577, 34.019726, 36.185345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782985, 0.565385, 0.259372,
		0.560499, 0.460430, 0.688364,
		0.269768, 0.684357, -0.677408,
		45.211506, 34.225033, 35.982121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.019920, 34.377705, 36.759323>,  <45.022671, 33.745983, 36.456310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.019920, 34.377705, 36.759323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.954155, 34.449486, 36.371349>,  <44.914696, 34.492554, 36.138565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.954155, 34.449486, 36.371349>,  <45.019920, 34.377705, 36.759323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954155, 34.449486, 36.371349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882003, 0.413509, 0.226011,
		0.441633, 0.892641, 0.090288,
		-0.164412, 0.179448, -0.969932,
		44.904831, 34.503319, 36.080368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910290, 35.016781, 36.743195>,  <45.019920, 34.377705, 36.759323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910290, 35.016781, 36.743195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771378, 34.937576, 36.376549>,  <44.688030, 34.890053, 36.156559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771378, 34.937576, 36.376549>,  <44.910290, 35.016781, 36.743195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.771378, 34.937576, 36.376549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792793, 0.584067, 0.174200,
		0.500872, 0.787184, -0.359816,
		-0.347284, -0.198008, -0.916617,
		44.667191, 34.878174, 36.101562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.701256, 35.666435, 36.434540>,  <44.910290, 35.016781, 36.743195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.701256, 35.666435, 36.434540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488071, 35.381599, 36.251732>,  <44.360161, 35.210697, 36.142048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488071, 35.381599, 36.251732>,  <44.701256, 35.666435, 36.434540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488071, 35.381599, 36.251732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778076, 0.624696, -0.065980,
		0.332485, 0.320434, -0.887004,
		-0.532965, -0.712093, -0.457024,
		44.328182, 35.167973, 36.114624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322342, 36.013397, 35.913746>,  <44.701256, 35.666435, 36.434540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322342, 36.013397, 35.913746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123131, 35.670372, 35.965218>,  <44.003605, 35.464558, 35.996101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123131, 35.670372, 35.965218>,  <44.322342, 36.013397, 35.913746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123131, 35.670372, 35.965218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863565, 0.503971, 0.016370,
		-0.078888, -0.102969, -0.991551,
		-0.498028, -0.857561, 0.128678,
		43.973724, 35.413105, 36.003822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857670, 35.955952, 35.341671>,  <44.322342, 36.013397, 35.913746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.857670, 35.955952, 35.341671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720940, 35.706203, 35.622616>,  <43.638901, 35.556355, 35.791183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720940, 35.706203, 35.622616>,  <43.857670, 35.955952, 35.341671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.720940, 35.706203, 35.622616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933683, 0.310515, -0.178375,
		-0.106722, -0.716758, -0.689107,
		-0.341829, -0.624371, 0.702364,
		43.618389, 35.518890, 35.833324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198532, 35.621483, 35.013626>,  <43.857670, 35.955952, 35.341671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198532, 35.621483, 35.013626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180153, 35.597469, 35.412479>,  <43.169125, 35.583061, 35.651794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180153, 35.597469, 35.412479>,  <43.198532, 35.621483, 35.013626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180153, 35.597469, 35.412479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950977, 0.308229, -0.025262,
		-0.305830, -0.949416, -0.071254,
		-0.045947, -0.060035, 0.997138,
		43.166367, 35.579456, 35.711620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616249, 35.278622, 35.167801>,  <43.198532, 35.621483, 35.013626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616249, 35.278622, 35.167801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695549, 35.447739, 35.521511>,  <42.743130, 35.549210, 35.733738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695549, 35.447739, 35.521511>,  <42.616249, 35.278622, 35.167801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695549, 35.447739, 35.521511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941398, 0.333314, 0.051690,
		-0.272886, -0.842701, 0.464099,
		0.198249, 0.422796, 0.884274,
		42.755024, 35.574577, 35.786793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071880, 35.057316, 35.603603>,  <42.616249, 35.278622, 35.167801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071880, 35.057316, 35.603603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224751, 35.391201, 35.762196>,  <42.316471, 35.591534, 35.857349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224751, 35.391201, 35.762196>,  <42.071880, 35.057316, 35.603603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224751, 35.391201, 35.762196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923544, 0.359764, 0.132800,
		-0.031789, -0.416920, 0.908387,
		0.382172, 0.834714, 0.396481,
		42.339401, 35.641617, 35.881138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493759, 35.255886, 36.010658>,  <42.071880, 35.057316, 35.603603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493759, 35.255886, 36.010658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732689, 35.574905, 35.976891>,  <41.876045, 35.766315, 35.956631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732689, 35.574905, 35.976891>,  <41.493759, 35.255886, 36.010658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732689, 35.574905, 35.976891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785252, 0.602997, 0.140619,
		0.163055, -0.017704, 0.986458,
		0.597321, 0.797547, -0.084420,
		41.911884, 35.814171, 35.951565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322968, 35.613537, 36.481400>,  <41.493759, 35.255886, 36.010658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322968, 35.613537, 36.481400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526096, 35.882858, 36.266449>,  <41.647976, 36.044453, 36.137478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526096, 35.882858, 36.266449>,  <41.322968, 35.613537, 36.481400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526096, 35.882858, 36.266449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796978, 0.603997, 0.003626,
		0.327013, 0.426433, 0.843337,
		0.507827, 0.673307, -0.537373,
		41.678444, 36.084850, 36.105236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318977, 36.305199, 36.819942>,  <41.322968, 35.613537, 36.481400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318977, 36.305199, 36.819942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379597, 36.377129, 36.431160>,  <41.415970, 36.420288, 36.197891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379597, 36.377129, 36.431160>,  <41.318977, 36.305199, 36.819942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379597, 36.377129, 36.431160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683527, 0.729374, 0.028366,
		0.714019, 0.660059, 0.233452,
		0.151551, 0.179824, -0.971955,
		41.425060, 36.431076, 36.139572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312031, 37.090263, 36.847221>,  <41.318977, 36.305199, 36.819942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312031, 37.090263, 36.847221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274105, 36.975800, 36.465828>,  <41.251350, 36.907120, 36.236992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274105, 36.975800, 36.465828>,  <41.312031, 37.090263, 36.847221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274105, 36.975800, 36.465828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676992, 0.720752, -0.148992,
		0.729858, 0.631371, -0.262066,
		-0.094816, -0.286160, -0.953479,
		41.245659, 36.889950, 36.179783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239338, 37.790398, 36.523396>,  <41.312031, 37.090263, 36.847221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239338, 37.790398, 36.523396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108589, 37.505127, 36.275352>,  <41.030140, 37.333965, 36.126526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108589, 37.505127, 36.275352>,  <41.239338, 37.790398, 36.523396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108589, 37.505127, 36.275352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737527, 0.602779, -0.304486,
		0.590937, 0.357812, -0.723024,
		-0.326875, -0.713181, -0.620101,
		41.010529, 37.291172, 36.089321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199795, 38.087101, 35.886246>,  <41.239338, 37.790398, 36.523396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199795, 38.087101, 35.886246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950657, 37.774166, 35.884991>,  <40.801174, 37.586403, 35.884239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950657, 37.774166, 35.884991>,  <41.199795, 38.087101, 35.886246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950657, 37.774166, 35.884991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711085, 0.567773, -0.414719,
		0.326231, -0.256076, -0.909944,
		-0.622841, -0.782342, -0.003133,
		40.763805, 37.539463, 35.884052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970894, 37.995728, 35.188023>,  <41.199795, 38.087101, 35.886246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970894, 37.995728, 35.188023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701801, 37.809883, 35.418350>,  <40.540344, 37.698376, 35.556549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701801, 37.809883, 35.418350>,  <40.970894, 37.995728, 35.188023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701801, 37.809883, 35.418350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719126, 0.593649, -0.361162,
		-0.174038, -0.657054, -0.733478,
		-0.672732, -0.464608, 0.575822,
		40.499981, 37.670502, 35.591099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495239, 37.923420, 34.676228>,  <40.970894, 37.995728, 35.188023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495239, 37.923420, 34.676228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336510, 37.924973, 35.043381>,  <40.241272, 37.925903, 35.263672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336510, 37.924973, 35.043381>,  <40.495239, 37.923420, 34.676228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336510, 37.924973, 35.043381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710551, 0.631747, -0.309859,
		-0.581074, -0.775165, -0.247937,
		-0.396825, 0.003879, 0.917886,
		40.217461, 37.926136, 35.318748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774769, 38.036594, 34.582764>,  <40.495239, 37.923420, 34.676228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774769, 38.036594, 34.582764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812553, 38.125160, 34.971001>,  <39.835224, 38.178299, 35.203941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812553, 38.125160, 34.971001>,  <39.774769, 38.036594, 34.582764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812553, 38.125160, 34.971001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753879, 0.652658, -0.075518,
		-0.650187, -0.724577, 0.228571,
		0.094460, 0.221416, 0.970594,
		39.840893, 38.191586, 35.262180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080997, 38.051437, 34.800900>,  <39.774769, 38.036594, 34.582764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080997, 38.051437, 34.800900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280312, 38.278137, 35.063351>,  <39.399902, 38.414158, 35.220821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280312, 38.278137, 35.063351>,  <39.080997, 38.051437, 34.800900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280312, 38.278137, 35.063351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676570, 0.727420, -0.114513,
		-0.542181, -0.386857, 0.745910,
		0.498289, 0.566747, 0.656129,
		39.429798, 38.448162, 35.260189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514416, 38.415405, 35.190174>,  <39.080997, 38.051437, 34.800900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514416, 38.415405, 35.190174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831326, 38.651978, 35.250191>,  <39.021473, 38.793919, 35.286201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831326, 38.651978, 35.250191>,  <38.514416, 38.415405, 35.190174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831326, 38.651978, 35.250191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582180, 0.806345, -0.104280,
		-0.182663, -0.004735, 0.983164,
		0.792276, 0.591426, 0.150046,
		39.069008, 38.829407, 35.295204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332813, 39.032200, 35.631405>,  <38.514416, 38.415405, 35.190174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332813, 39.032200, 35.631405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669819, 39.191177, 35.485962>,  <38.872021, 39.286564, 35.398697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669819, 39.191177, 35.485962>,  <38.332813, 39.032200, 35.631405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669819, 39.191177, 35.485962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410316, 0.910839, 0.044858,
		0.349017, 0.111401, 0.930471,
		0.842513, 0.397444, -0.363608,
		38.922573, 39.310410, 35.376881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698421, 39.452457, 36.041626>,  <38.332813, 39.032200, 35.631405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698421, 39.452457, 36.041626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785088, 39.576172, 35.671242>,  <38.837086, 39.650398, 35.449013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785088, 39.576172, 35.671242>,  <38.698421, 39.452457, 36.041626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785088, 39.576172, 35.671242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365975, 0.905052, 0.216665,
		0.905051, 0.291935, 0.309282,
		-0.216665, -0.309282, 0.925959,
		38.850086, 39.668957, 35.393456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130943, 40.007217, 35.969425>,  <38.698421, 39.452457, 36.041626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130943, 40.007217, 35.969425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897583, 40.052185, 35.647678>,  <38.757568, 40.079166, 35.454632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897583, 40.052185, 35.647678>,  <39.130943, 40.007217, 35.969425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897583, 40.052185, 35.647678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197228, 0.941119, 0.274582,
		0.787872, 0.318835, -0.526879,
		-0.583402, 0.112420, -0.804365,
		38.722561, 40.085911, 35.406368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320713, 40.576458, 35.475830>,  <39.130943, 40.007217, 35.969425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320713, 40.576458, 35.475830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925926, 40.516449, 35.499119>,  <38.689053, 40.480446, 35.513092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925926, 40.516449, 35.499119>,  <39.320713, 40.576458, 35.475830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925926, 40.516449, 35.499119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117291, 0.918352, 0.377985,
		-0.110173, 0.366230, -0.923979,
		-0.986968, -0.150018, 0.058222,
		38.629837, 40.471443, 35.516586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753510, 40.966145, 35.307911>,  <39.320713, 40.576458, 35.475830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753510, 40.966145, 35.307911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130711, 41.096622, 35.334259>,  <39.357033, 41.174908, 35.350067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130711, 41.096622, 35.334259>,  <38.753510, 40.966145, 35.307911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130711, 41.096622, 35.334259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103023, -0.097940, -0.989846,
		-0.316426, 0.940217, -0.125963,
		0.943006, 0.326190, 0.065873,
		39.413612, 41.194481, 35.354019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924091, 41.685558, 35.081806>,  <38.753510, 40.966145, 35.307911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924091, 41.685558, 35.081806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206081, 41.405594, 35.035969>,  <39.375275, 41.237617, 35.008465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206081, 41.405594, 35.035969>,  <38.924091, 41.685558, 35.081806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206081, 41.405594, 35.035969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214425, -0.056319, -0.975115,
		0.676038, 0.712008, -0.189782,
		0.704978, -0.699909, -0.114598,
		39.417576, 41.195621, 35.001591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396812, 41.896042, 34.569252>,  <38.924091, 41.685558, 35.081806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396812, 41.896042, 34.569252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417885, 41.496605, 34.566601>,  <39.430531, 41.256943, 34.565010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417885, 41.496605, 34.566601>,  <39.396812, 41.896042, 34.569252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417885, 41.496605, 34.566601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211101, -0.004652, -0.977453,
		0.976043, 0.052895, -0.211048,
		0.052684, -0.998589, -0.006626,
		39.433689, 41.197029, 34.564613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940659, 41.553322, 34.123440>,  <39.396812, 41.896042, 34.569252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940659, 41.553322, 34.123440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576656, 41.390575, 34.155331>,  <39.358257, 41.292927, 34.174465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576656, 41.390575, 34.155331>,  <39.940659, 41.553322, 34.123440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576656, 41.390575, 34.155331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131149, 0.100053, -0.986301,
		0.393312, -0.907994, -0.144408,
		-0.910003, -0.406863, 0.079730,
		39.303654, 41.268517, 34.179249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004982, 42.061214, 33.641289>,  <39.940659, 41.553322, 34.123440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004982, 42.061214, 33.641289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268047, 42.193935, 33.370770>,  <40.425888, 42.273567, 33.208458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268047, 42.193935, 33.370770>,  <40.004982, 42.061214, 33.641289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268047, 42.193935, 33.370770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586025, -0.789459, 0.182563,
		-0.473339, -0.516396, -0.713642,
		0.657666, 0.331798, -0.676303,
		40.465347, 42.293476, 33.167877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987865, 41.495155, 33.174286>,  <40.004982, 42.061214, 33.641289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987865, 41.495155, 33.174286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303280, 41.740116, 33.196815>,  <40.492531, 41.887093, 33.210331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303280, 41.740116, 33.196815>,  <39.987865, 41.495155, 33.174286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303280, 41.740116, 33.196815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614977, -0.785668, -0.067304,
		0.003032, 0.087708, -0.996142,
		0.788539, 0.612400, 0.056321,
		40.539841, 41.923836, 33.213711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469540, 41.357594, 32.649136>,  <39.987865, 41.495155, 33.174286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469540, 41.357594, 32.649136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754894, 41.526009, 32.873207>,  <40.926109, 41.627056, 33.007652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754894, 41.526009, 32.873207>,  <40.469540, 41.357594, 32.649136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754894, 41.526009, 32.873207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634518, -0.727378, -0.261359,
		0.297424, 0.541897, -0.786058,
		0.713390, 0.421034, 0.560183,
		40.968910, 41.652317, 33.041264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163498, 41.380718, 32.221260>,  <40.469540, 41.357594, 32.649136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163498, 41.380718, 32.221260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198727, 41.326099, 32.615944>,  <41.219864, 41.293327, 32.852753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198727, 41.326099, 32.615944>,  <41.163498, 41.380718, 32.221260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198727, 41.326099, 32.615944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601003, -0.782666, -0.161955,
		0.794380, 0.607280, 0.013136,
		0.088071, -0.136548, 0.986711,
		41.225147, 41.285133, 32.911957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866703, 41.151932, 32.252007>,  <41.163498, 41.380718, 32.221260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866703, 41.151932, 32.252007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739922, 41.088459, 32.626034>,  <41.663853, 41.050377, 32.850452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739922, 41.088459, 32.626034>,  <41.866703, 41.151932, 32.252007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739922, 41.088459, 32.626034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486422, -0.873566, 0.016638,
		0.814207, 0.460113, 0.354066,
		-0.316955, -0.158679, 0.935072,
		41.644836, 41.040855, 32.906555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496624, 40.883495, 32.651646>,  <41.866703, 41.151932, 32.252007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496624, 40.883495, 32.651646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160969, 40.789227, 32.847733>,  <41.959576, 40.732666, 32.965385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160969, 40.789227, 32.847733>,  <42.496624, 40.883495, 32.651646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160969, 40.789227, 32.847733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324050, -0.940463, 0.102573,
		0.436854, 0.244926, 0.865546,
		-0.839137, -0.235671, 0.490213,
		41.909229, 40.718525, 32.994797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750317, 40.676907, 33.247314>,  <42.496624, 40.883495, 32.651646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750317, 40.676907, 33.247314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387035, 40.512024, 33.218338>,  <42.169067, 40.413094, 33.200954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387035, 40.512024, 33.218338>,  <42.750317, 40.676907, 33.247314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387035, 40.512024, 33.218338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399114, -0.905114, 0.146549,
		-0.125974, 0.104185, 0.986548,
		-0.908206, -0.412206, -0.072439,
		42.114574, 40.388363, 33.196606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780430, 40.114643, 33.695595>,  <42.750317, 40.676907, 33.247314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780430, 40.114643, 33.695595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459782, 40.022148, 33.475075>,  <42.267395, 39.966652, 33.342762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459782, 40.022148, 33.475075>,  <42.780430, 40.114643, 33.695595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459782, 40.022148, 33.475075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194137, -0.972876, 0.125785,
		-0.565436, -0.006197, 0.824768,
		-0.801618, -0.231242, -0.551303,
		42.219296, 39.952774, 33.309685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583332, 39.557613, 33.974834>,  <42.780430, 40.114643, 33.695595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583332, 39.557613, 33.974834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356846, 39.523460, 33.646904>,  <42.220955, 39.502968, 33.450146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356846, 39.523460, 33.646904>,  <42.583332, 39.557613, 33.974834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356846, 39.523460, 33.646904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096664, -0.994636, 0.036823,
		-0.818571, -0.058398, 0.571429,
		-0.566213, -0.085379, -0.819825,
		42.186981, 39.497849, 33.400955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021057, 39.005024, 34.060635>,  <42.583332, 39.557613, 33.974834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021057, 39.005024, 34.060635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130680, 39.062828, 33.680317>,  <42.196453, 39.097511, 33.452126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130680, 39.062828, 33.680317>,  <42.021057, 39.005024, 34.060635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130680, 39.062828, 33.680317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118878, -0.986154, -0.115618,
		-0.954339, -0.081343, -0.287438,
		0.274054, 0.144509, -0.950795,
		42.212894, 39.106182, 33.395077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663391, 38.460331, 33.589214>,  <42.021057, 39.005024, 34.060635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663391, 38.460331, 33.589214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983696, 38.599316, 33.394054>,  <42.175880, 38.682705, 33.276958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983696, 38.599316, 33.394054>,  <41.663391, 38.460331, 33.589214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983696, 38.599316, 33.394054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335671, -0.934946, -0.114900,
		-0.496086, -0.071767, -0.865303,
		0.800765, 0.347457, -0.487903,
		42.223927, 38.703552, 33.247684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817993, 37.990295, 32.961536>,  <41.663391, 38.460331, 33.589214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817993, 37.990295, 32.961536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162453, 38.183914, 33.023663>,  <42.369129, 38.300087, 33.060940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162453, 38.183914, 33.023663>,  <41.817993, 37.990295, 32.961536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162453, 38.183914, 33.023663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508117, -0.828959, -0.233760,
		0.015599, 0.280220, -0.959809,
		0.861147, 0.484049, 0.155315,
		42.420795, 38.329128, 33.070255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300468, 37.856590, 32.401245>,  <41.817993, 37.990295, 32.961536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300468, 37.856590, 32.401245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522545, 37.954075, 32.719330>,  <42.655792, 38.012566, 32.910183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522545, 37.954075, 32.719330>,  <42.300468, 37.856590, 32.401245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522545, 37.954075, 32.719330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685627, -0.675344, -0.271708,
		0.470827, 0.696072, -0.542039,
		0.555191, 0.243709, 0.795216,
		42.689102, 38.027187, 32.957893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880310, 37.585724, 32.138577>,  <42.300468, 37.856590, 32.401245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880310, 37.585724, 32.138577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955944, 37.682846, 32.519165>,  <43.001324, 37.741119, 32.747517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955944, 37.682846, 32.519165>,  <42.880310, 37.585724, 32.138577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955944, 37.682846, 32.519165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784135, -0.620586, 0.002537,
		0.591084, 0.745600, -0.307734,
		0.189084, 0.242805, 0.951469,
		43.012669, 37.755688, 32.804607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641953, 37.778023, 32.165478>,  <42.880310, 37.585724, 32.138577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641953, 37.778023, 32.165478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529198, 37.680473, 32.536652>,  <43.461544, 37.621941, 32.759357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529198, 37.680473, 32.536652>,  <43.641953, 37.778023, 32.165478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529198, 37.680473, 32.536652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884777, -0.440147, 0.153101,
		0.371089, 0.864172, 0.339851,
		-0.281891, -0.243878, 0.927934,
		43.444630, 37.607311, 32.815033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203487, 38.036541, 32.574276>,  <43.641953, 37.778023, 32.165478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203487, 38.036541, 32.574276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.032677, 37.751198, 32.796543>,  <43.930191, 37.579990, 32.929901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.032677, 37.751198, 32.796543>,  <44.203487, 38.036541, 32.574276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032677, 37.751198, 32.796543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889804, -0.440869, 0.117828,
		0.160922, 0.544750, 0.823014,
		-0.427028, -0.713360, 0.555666,
		43.904568, 37.537189, 32.963242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659653, 37.971054, 33.208683>,  <44.203487, 38.036541, 32.574276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659653, 37.971054, 33.208683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.439281, 37.637264, 33.204174>,  <44.307060, 37.436989, 33.201469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.439281, 37.637264, 33.204174>,  <44.659653, 37.971054, 33.208683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439281, 37.637264, 33.204174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769388, -0.513093, 0.380498,
		-0.323303, 0.200950, 0.924713,
		-0.550924, -0.834479, -0.011276,
		44.274006, 37.386921, 33.200790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.710873, 37.611950, 33.951073>,  <44.659653, 37.971054, 33.208683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.710873, 37.611950, 33.951073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.595135, 37.336567, 33.685051>,  <44.525692, 37.171337, 33.525436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.595135, 37.336567, 33.685051>,  <44.710873, 37.611950, 33.951073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.595135, 37.336567, 33.685051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634924, -0.657978, 0.404891,
		-0.716344, -0.305107, 0.627504,
		-0.289349, -0.688458, -0.665058,
		44.508331, 37.130028, 33.485535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.655632, 37.027111, 34.342125>,  <44.710873, 37.611950, 33.951073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.655632, 37.027111, 34.342125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655216, 36.860821, 33.978329>,  <44.654968, 36.761047, 33.760052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655216, 36.860821, 33.978329>,  <44.655632, 37.027111, 34.342125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655216, 36.860821, 33.978329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559689, -0.753938, 0.343984,
		-0.828702, -0.508674, 0.233462,
		-0.001040, -0.415727, -0.909489,
		44.654903, 36.736103, 33.705482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443317, 36.300213, 34.386726>,  <44.655632, 37.027111, 34.342125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443317, 36.300213, 34.386726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.644382, 36.318192, 34.041401>,  <44.765022, 36.328979, 33.834206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.644382, 36.318192, 34.041401>,  <44.443317, 36.300213, 34.386726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.644382, 36.318192, 34.041401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516327, -0.816567, 0.258118,
		-0.693352, -0.575498, -0.433665,
		0.502662, 0.044946, -0.863314,
		44.795181, 36.331676, 33.782406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545990, 35.567352, 34.149326>,  <44.443317, 36.300213, 34.386726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545990, 35.567352, 34.149326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837154, 35.785625, 33.983257>,  <45.011852, 35.916592, 33.883617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837154, 35.785625, 33.983257>,  <44.545990, 35.567352, 34.149326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837154, 35.785625, 33.983257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671897, -0.688419, 0.273193,
		-0.136735, -0.477814, -0.867754,
		0.727914, 0.545686, -0.415173,
		45.055527, 35.949329, 33.858704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930145, 35.054504, 33.886360>,  <44.545990, 35.567352, 34.149326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930145, 35.054504, 33.886360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159695, 35.379391, 33.928249>,  <45.297424, 35.574322, 33.953384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159695, 35.379391, 33.928249>,  <44.930145, 35.054504, 33.886360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.159695, 35.379391, 33.928249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765964, -0.577590, 0.282291,
		0.289770, -0.081785, -0.953596,
		0.573875, 0.812220, 0.104724,
		45.331856, 35.623058, 33.959667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.609962, 34.963150, 33.513966>,  <44.930145, 35.054504, 33.886360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.609962, 34.963150, 33.513966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.642059, 35.220634, 33.818386>,  <45.661316, 35.375126, 34.001038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.642059, 35.220634, 33.818386>,  <45.609962, 34.963150, 33.513966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.642059, 35.220634, 33.818386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656609, -0.608582, 0.445525,
		0.749950, 0.463962, -0.471501,
		0.080240, 0.643714, 0.761048,
		45.666130, 35.413750, 34.046700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.321636, 35.187439, 33.610661>,  <45.609962, 34.963150, 33.513966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.321636, 35.187439, 33.610661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158646, 35.222912, 33.974220>,  <46.060852, 35.244194, 34.192356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158646, 35.222912, 33.974220>,  <46.321636, 35.187439, 33.610661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.158646, 35.222912, 33.974220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783608, -0.477145, 0.397857,
		0.468961, 0.874339, 0.124930,
		-0.407472, 0.088684, 0.908902,
		46.036404, 35.249516, 34.246891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.583374, 35.719967, 34.032040>,  <46.321636, 35.187439, 33.610661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.583374, 35.719967, 34.032040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.480389, 35.392521, 34.237404>,  <46.418598, 35.196053, 34.360622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.480389, 35.392521, 34.237404>,  <46.583374, 35.719967, 34.032040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.480389, 35.392521, 34.237404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965950, -0.203989, 0.159152,
		-0.025554, 0.536904, 0.843257,
		-0.257464, -0.818611, 0.513409,
		46.403149, 35.146938, 34.391426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.159298, 35.574402, 34.269394>,  <46.583374, 35.719967, 34.032040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.159298, 35.574402, 34.269394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.975285, 35.273766, 34.458488>,  <46.864876, 35.093384, 34.571945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.975285, 35.273766, 34.458488>,  <47.159298, 35.574402, 34.269394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.975285, 35.273766, 34.458488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860236, -0.245400, 0.446959,
		-0.219920, 0.612282, 0.759438,
		-0.460031, -0.751591, 0.472739,
		46.837276, 35.048286, 34.600311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.086182, 35.683945, 35.023926>,  <47.159298, 35.574402, 34.269394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.086182, 35.683945, 35.023926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.132317, 35.308502, 34.893871>,  <47.159996, 35.083237, 34.815838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.132317, 35.308502, 34.893871>,  <47.086182, 35.683945, 35.023926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.132317, 35.308502, 34.893871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836680, -0.084633, 0.541114,
		-0.535411, -0.334442, 0.775554,
		0.115334, -0.938608, -0.325134,
		47.166916, 35.026920, 34.796329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.515446, 35.267902, 35.389179>,  <47.086182, 35.683945, 35.023926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.515446, 35.267902, 35.389179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.581306, 35.023643, 35.079342>,  <47.620823, 34.877087, 34.893440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.581306, 35.023643, 35.079342>,  <47.515446, 35.267902, 35.389179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.581306, 35.023643, 35.079342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819763, -0.352005, 0.451752,
		-0.548524, -0.709365, 0.442631,
		0.164649, -0.610650, -0.774595,
		47.630703, 34.840450, 34.846962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.388474, 36.049187, 46.527290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.043613, 35.850067, 46.489552>,  <35.836697, 35.730595, 46.466908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.043613, 35.850067, 46.489552>,  <36.388474, 36.049187, 46.527290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043613, 35.850067, 46.489552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002935, 0.191112, -0.981564,
		0.506651, -0.845975, -0.166227,
		-0.862146, -0.497798, -0.094344,
		35.784969, 35.700729, 46.461246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428257, 35.474976, 46.175102>,  <36.388474, 36.049187, 46.527290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428257, 35.474976, 46.175102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.045933, 35.571171, 46.107464>,  <35.816540, 35.628887, 46.066879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.045933, 35.571171, 46.107464>,  <36.428257, 35.474976, 46.175102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045933, 35.571171, 46.107464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219626, 0.201745, -0.954496,
		-0.195429, -0.949455, -0.245647,
		-0.955810, 0.240486, -0.169099,
		35.759190, 35.643318, 46.056736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241039, 35.171043, 45.625088>,  <36.428257, 35.474976, 46.175102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241039, 35.171043, 45.625088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.957642, 35.452839, 45.641720>,  <35.787601, 35.621918, 45.651699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.957642, 35.452839, 45.641720>,  <36.241039, 35.171043, 45.625088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957642, 35.452839, 45.641720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038620, 0.097541, -0.994482,
		-0.704659, -0.702979, -0.096315,
		-0.708495, 0.704490, 0.041583,
		35.745094, 35.664185, 45.654194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869987, 35.087154, 45.129257>,  <36.241039, 35.171043, 45.625088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869987, 35.087154, 45.129257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.751862, 35.460979, 45.208645>,  <35.680988, 35.685272, 45.256279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.751862, 35.460979, 45.208645>,  <35.869987, 35.087154, 45.129257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751862, 35.460979, 45.208645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063425, 0.188102, -0.980099,
		-0.953294, -0.302021, 0.003726,
		-0.295310, 0.934559, 0.198472,
		35.663269, 35.741348, 45.268188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208603, 35.166363, 44.675972>,  <35.869987, 35.087154, 45.129257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208603, 35.166363, 44.675972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.344105, 35.531189, 44.768387>,  <35.425407, 35.750084, 44.823837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.344105, 35.531189, 44.768387>,  <35.208603, 35.166363, 44.675972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344105, 35.531189, 44.768387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051260, 0.263083, -0.963410,
		-0.939477, 0.314517, 0.135873,
		0.338755, 0.912067, 0.231039,
		35.445732, 35.804810, 44.837700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862183, 35.652752, 44.299423>,  <35.208603, 35.166363, 44.675972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862183, 35.652752, 44.299423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.175503, 35.881413, 44.397121>,  <35.363495, 36.018608, 44.455742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.175503, 35.881413, 44.397121>,  <34.862183, 35.652752, 44.299423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175503, 35.881413, 44.397121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042197, 0.440894, -0.896566,
		-0.620214, 0.691971, 0.369473,
		0.783297, 0.571654, 0.244250,
		35.410492, 36.052910, 44.470398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702312, 36.299831, 44.119392>,  <34.862183, 35.652752, 44.299423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702312, 36.299831, 44.119392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.101208, 36.311722, 44.146599>,  <35.340546, 36.318855, 44.162922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.101208, 36.311722, 44.146599>,  <34.702312, 36.299831, 44.119392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101208, 36.311722, 44.146599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051464, 0.383447, -0.922128,
		-0.053489, 0.923084, 0.380860,
		0.997241, 0.029723, 0.068016,
		35.400379, 36.320641, 44.167004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879284, 36.760845, 43.702698>,  <34.702312, 36.299831, 44.119392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879284, 36.760845, 43.702698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.240925, 36.605549, 43.774105>,  <35.457909, 36.512371, 43.816948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.240925, 36.605549, 43.774105>,  <34.879284, 36.760845, 43.702698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240925, 36.605549, 43.774105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247268, 0.134606, -0.959552,
		0.348512, 0.911673, 0.217698,
		0.904101, -0.388245, 0.178516,
		35.512154, 36.489075, 43.827660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441071, 37.229424, 43.421661>,  <34.879284, 36.760845, 43.702698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441071, 37.229424, 43.421661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.566063, 36.849499, 43.427528>,  <35.641060, 36.621544, 43.431049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.566063, 36.849499, 43.427528>,  <35.441071, 37.229424, 43.421661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566063, 36.849499, 43.427528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233922, 0.061972, -0.970278,
		0.920672, 0.306626, 0.241546,
		0.312481, -0.949811, 0.014671,
		35.659809, 36.564556, 43.431931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976357, 37.213680, 43.006920>,  <35.441071, 37.229424, 43.421661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976357, 37.213680, 43.006920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.940346, 36.815842, 43.027584>,  <35.918739, 36.577137, 43.039982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.940346, 36.815842, 43.027584>,  <35.976357, 37.213680, 43.006920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940346, 36.815842, 43.027584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470267, -0.088179, -0.878107,
		0.877920, -0.054761, 0.475666,
		-0.090030, -0.994598, 0.051662,
		35.913338, 36.517464, 43.043083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616425, 36.888451, 43.016815>,  <35.976357, 37.213680, 43.006920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616425, 36.888451, 43.016815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.349026, 36.626053, 42.876656>,  <36.188587, 36.468613, 42.792561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.349026, 36.626053, 42.876656>,  <36.616425, 36.888451, 43.016815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349026, 36.626053, 42.876656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582519, -0.168935, -0.795068,
		0.462365, -0.735618, 0.495061,
		-0.668499, -0.655994, -0.350402,
		36.148476, 36.429256, 42.771534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992096, 36.356003, 42.747986>,  <36.616425, 36.888451, 43.016815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992096, 36.356003, 42.747986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.640923, 36.290527, 42.568016>,  <36.430218, 36.251240, 42.460033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.640923, 36.290527, 42.568016>,  <36.992096, 36.356003, 42.747986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640923, 36.290527, 42.568016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478608, -0.274942, -0.833871,
		0.012794, -0.947424, 0.319725,
		-0.877935, -0.163691, -0.449927,
		36.377541, 36.241421, 42.433037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088463, 35.661049, 42.452351>,  <36.992096, 36.356003, 42.747986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088463, 35.661049, 42.452351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.773613, 35.818890, 42.262730>,  <36.584702, 35.913593, 42.148956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.773613, 35.818890, 42.262730>,  <37.088463, 35.661049, 42.452351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773613, 35.818890, 42.262730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440231, -0.178906, -0.879880,
		-0.432011, -0.901268, -0.032893,
		-0.787124, 0.394598, -0.474055,
		36.537476, 35.937267, 42.120514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954212, 35.281559, 41.904510>,  <37.088463, 35.661049, 42.452351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954212, 35.281559, 41.904510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.744759, 35.605675, 41.799255>,  <36.619087, 35.800144, 41.736103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.744759, 35.605675, 41.799255>,  <36.954212, 35.281559, 41.904510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744759, 35.605675, 41.799255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226674, -0.165222, -0.959854,
		-0.821233, -0.562261, -0.097155,
		-0.523636, 0.810287, -0.263135,
		36.587669, 35.848763, 41.720314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552322, 35.020081, 41.263485>,  <36.954212, 35.281559, 41.904510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552322, 35.020081, 41.263485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.545193, 35.419209, 41.238052>,  <36.540916, 35.658684, 41.222794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.545193, 35.419209, 41.238052>,  <36.552322, 35.020081, 41.263485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545193, 35.419209, 41.238052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247975, -0.057197, -0.967076,
		-0.968603, -0.033002, -0.246414,
		-0.017821, 0.997817, -0.063585,
		36.539845, 35.718555, 41.218975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088947, 35.148743, 40.733902>,  <36.552322, 35.020081, 41.263485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088947, 35.148743, 40.733902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.325466, 35.467381, 40.784199>,  <36.467377, 35.658562, 40.814377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.325466, 35.467381, 40.784199>,  <36.088947, 35.148743, 40.733902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325466, 35.467381, 40.784199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219644, -0.009048, -0.975538,
		-0.775966, 0.604452, -0.180317,
		0.591297, 0.796590, 0.125744,
		36.502857, 35.706356, 40.821922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870956, 35.586304, 40.258575>,  <36.088947, 35.148743, 40.733902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870956, 35.586304, 40.258575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.242683, 35.702831, 40.349354>,  <36.465721, 35.772747, 40.403820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.242683, 35.702831, 40.349354>,  <35.870956, 35.586304, 40.258575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242683, 35.702831, 40.349354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249068, -0.040720, -0.967629,
		-0.272643, 0.955760, -0.110399,
		0.929317, 0.291314, 0.226948,
		36.521477, 35.790226, 40.417439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033325, 36.039955, 39.779118>,  <35.870956, 35.586304, 40.258575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033325, 36.039955, 39.779118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.374046, 35.871094, 39.903194>,  <36.578480, 35.769779, 39.977642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.374046, 35.871094, 39.903194>,  <36.033325, 36.039955, 39.779118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374046, 35.871094, 39.903194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312097, -0.066635, -0.947711,
		0.420747, 0.904073, 0.074992,
		0.851803, -0.422151, 0.310195,
		36.629585, 35.744450, 39.996254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553291, 36.313515, 39.308636>,  <36.033325, 36.039955, 39.779118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553291, 36.313515, 39.308636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.739037, 36.004379, 39.481647>,  <36.850483, 35.818897, 39.585457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.739037, 36.004379, 39.481647>,  <36.553291, 36.313515, 39.308636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739037, 36.004379, 39.481647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489430, -0.183097, -0.852604,
		0.738120, 0.607616, 0.293225,
		0.464368, -0.772837, 0.432533,
		36.878345, 35.772530, 39.611408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277523, 36.391491, 39.091110>,  <36.553291, 36.313515, 39.308636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277523, 36.391491, 39.091110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.309067, 36.006420, 39.194668>,  <37.327991, 35.775375, 39.256802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.309067, 36.006420, 39.194668>,  <37.277523, 36.391491, 39.091110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309067, 36.006420, 39.194668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537977, -0.177546, -0.824050,
		0.839263, 0.204260, 0.503900,
		0.078855, -0.962681, 0.258895,
		37.332722, 35.717617, 39.272335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007603, 36.102539, 39.066532>,  <37.277523, 36.391491, 39.091110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007603, 36.102539, 39.066532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.760433, 35.791248, 39.021740>,  <37.612133, 35.604473, 38.994865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.760433, 35.791248, 39.021740>,  <38.007603, 36.102539, 39.066532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760433, 35.791248, 39.021740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387155, -0.177210, -0.904825,
		0.684314, -0.602462, 0.410796,
		-0.617920, -0.778226, -0.111978,
		37.575058, 35.557781, 38.988148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400856, 35.743408, 38.614594>,  <38.007603, 36.102539, 39.066532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400856, 35.743408, 38.614594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.007458, 35.671528, 38.606079>,  <37.771420, 35.628399, 38.600971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.007458, 35.671528, 38.606079>,  <38.400856, 35.743408, 38.614594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007458, 35.671528, 38.606079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095909, -0.417887, -0.903422,
		0.153445, -0.890550, 0.428223,
		-0.983492, -0.179696, -0.021289,
		37.712410, 35.617619, 38.599693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680061, 35.148293, 38.370094>,  <38.400856, 35.743408, 38.614594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680061, 35.148293, 38.370094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.066654, 35.250854, 38.364788>,  <39.298611, 35.312393, 38.361603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.066654, 35.250854, 38.364788>,  <38.680061, 35.148293, 38.370094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066654, 35.250854, 38.364788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025575, 0.147555, 0.988723,
		0.255475, -0.955239, 0.149167,
		0.966477, 0.256409, -0.013266,
		39.356598, 35.327778, 38.360809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945873, 34.886425, 38.963707>,  <38.680061, 35.148293, 38.370094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945873, 34.886425, 38.963707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.229389, 35.153297, 38.872063>,  <39.399498, 35.313419, 38.817078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.229389, 35.153297, 38.872063>,  <38.945873, 34.886425, 38.963707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229389, 35.153297, 38.872063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110115, 0.216163, 0.970128,
		0.696774, -0.712844, 0.079748,
		0.708788, 0.667179, -0.229112,
		39.442024, 35.353451, 38.803329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493660, 34.726234, 39.367889>,  <38.945873, 34.886425, 38.963707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493660, 34.726234, 39.367889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537891, 35.109745, 39.263180>,  <39.564430, 35.339851, 39.200356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537891, 35.109745, 39.263180>,  <39.493660, 34.726234, 39.367889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537891, 35.109745, 39.263180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077709, 0.254238, 0.964015,
		0.990824, -0.126946, -0.046391,
		0.110583, 0.958774, -0.261770,
		39.571068, 35.397377, 39.184650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093449, 34.960182, 39.705711>,  <39.493660, 34.726234, 39.367889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093449, 34.960182, 39.705711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.921726, 35.313808, 39.631813>,  <39.818695, 35.525982, 39.587475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.921726, 35.313808, 39.631813>,  <40.093449, 34.960182, 39.705711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921726, 35.313808, 39.631813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156757, 0.274391, 0.948755,
		0.889453, 0.378342, -0.256380,
		-0.429303, 0.884063, -0.184750,
		39.792934, 35.579029, 39.576389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542534, 35.432766, 39.922203>,  <40.093449, 34.960182, 39.705711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542534, 35.432766, 39.922203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.185028, 35.611710, 39.909184>,  <39.970524, 35.719074, 39.901371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.185028, 35.611710, 39.909184>,  <40.542534, 35.432766, 39.922203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185028, 35.611710, 39.909184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055655, 0.182611, 0.981609,
		0.445072, 0.875515, -0.188109,
		-0.893764, 0.447356, -0.032548,
		39.916901, 35.745914, 39.899418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671844, 36.099209, 40.242294>,  <40.542534, 35.432766, 39.922203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671844, 36.099209, 40.242294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.275158, 36.051392, 40.261089>,  <40.037148, 36.022701, 40.272366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.275158, 36.051392, 40.261089>,  <40.671844, 36.099209, 40.242294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275158, 36.051392, 40.261089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022141, 0.201213, 0.979297,
		-0.126518, 0.972226, -0.196900,
		-0.991717, -0.119539, 0.046983,
		39.977642, 36.015530, 40.275185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531818, 36.547653, 40.759884>,  <40.671844, 36.099209, 40.242294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531818, 36.547653, 40.759884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.195492, 36.337292, 40.708584>,  <39.993694, 36.211075, 40.677803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.195492, 36.337292, 40.708584>,  <40.531818, 36.547653, 40.759884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195492, 36.337292, 40.708584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136471, -0.023321, 0.990369,
		-0.523830, 0.850224, -0.052162,
		-0.840820, -0.525904, -0.128247,
		39.943245, 36.179520, 40.670109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033051, 36.868652, 41.186146>,  <40.531818, 36.547653, 40.759884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033051, 36.868652, 41.186146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.910797, 36.494743, 41.113712>,  <39.837444, 36.270397, 41.070251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.910797, 36.494743, 41.113712>,  <40.033051, 36.868652, 41.186146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910797, 36.494743, 41.113712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136739, -0.145119, 0.979920,
		-0.942279, 0.324258, -0.083466,
		-0.305634, -0.934771, -0.181082,
		39.819107, 36.214314, 41.059387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458099, 36.828640, 41.447124>,  <40.033051, 36.868652, 41.186146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458099, 36.828640, 41.447124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.557190, 36.443588, 41.403339>,  <39.616646, 36.212559, 41.377068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.557190, 36.443588, 41.403339>,  <39.458099, 36.828640, 41.447124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557190, 36.443588, 41.403339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298478, -0.183320, 0.936645,
		-0.921706, -0.199362, -0.332736,
		0.247729, -0.962626, -0.109462,
		39.631508, 36.154800, 41.370502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927158, 36.419128, 41.691502>,  <39.458099, 36.828640, 41.447124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927158, 36.419128, 41.691502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.253227, 36.188236, 41.710682>,  <39.448868, 36.049702, 41.722191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.253227, 36.188236, 41.710682>,  <38.927158, 36.419128, 41.691502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253227, 36.188236, 41.710682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368746, -0.453335, 0.811489,
		-0.446637, -0.679214, -0.582395,
		0.815194, -0.577197, 0.047981,
		39.497780, 36.015068, 41.725067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682911, 35.734745, 41.863754>,  <38.927158, 36.419128, 41.691502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682911, 35.734745, 41.863754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.070469, 35.744808, 41.962223>,  <39.303005, 35.750847, 42.021305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.070469, 35.744808, 41.962223>,  <38.682911, 35.734745, 41.863754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070469, 35.744808, 41.962223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227891, -0.296946, 0.927302,
		0.096433, -0.954563, -0.281977,
		0.968900, 0.025162, 0.246172,
		39.361137, 35.752357, 42.036076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824696, 35.026859, 42.119534>,  <38.682911, 35.734745, 41.863754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824696, 35.026859, 42.119534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.088284, 35.285511, 42.273224>,  <39.246437, 35.440701, 42.365437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.088284, 35.285511, 42.273224>,  <38.824696, 35.026859, 42.119534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088284, 35.285511, 42.273224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191386, -0.349861, 0.917044,
		0.727411, -0.677841, -0.106793,
		0.658973, 0.646629, 0.384222,
		39.285976, 35.479500, 42.388489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260006, 34.716030, 42.639324>,  <38.824696, 35.026859, 42.119534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260006, 34.716030, 42.639324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.330967, 35.100342, 42.724579>,  <39.373543, 35.330929, 42.775730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.330967, 35.100342, 42.724579>,  <39.260006, 34.716030, 42.639324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330967, 35.100342, 42.724579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023664, -0.212341, 0.976909,
		0.983853, -0.178352, -0.014934,
		0.177404, 0.960782, 0.213133,
		39.384190, 35.388577, 42.788517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759953, 34.690834, 43.166828>,  <39.260006, 34.716030, 42.639324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759953, 34.690834, 43.166828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.593487, 35.051998, 43.209846>,  <39.493607, 35.268696, 43.235657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.593487, 35.051998, 43.209846>,  <39.759953, 34.690834, 43.166828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593487, 35.051998, 43.209846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041613, -0.099236, 0.994193,
		0.908336, 0.418225, 0.003726,
		-0.416166, 0.902906, 0.107544,
		39.468636, 35.322868, 43.242111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131737, 35.054562, 43.744999>,  <39.759953, 34.690834, 43.166828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131737, 35.054562, 43.744999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.774502, 35.233631, 43.727142>,  <39.560162, 35.341072, 43.716427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.774502, 35.233631, 43.727142>,  <40.131737, 35.054562, 43.744999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774502, 35.233631, 43.727142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052794, -0.005745, 0.998589,
		0.446782, 0.894180, 0.028765,
		-0.893084, 0.447670, -0.044640,
		39.506577, 35.367931, 43.713749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084488, 35.564972, 44.293777>,  <40.131737, 35.054562, 43.744999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084488, 35.564972, 44.293777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.706459, 35.476646, 44.197384>,  <39.479641, 35.423653, 44.139549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.706459, 35.476646, 44.197384>,  <40.084488, 35.564972, 44.293777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706459, 35.476646, 44.197384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241222, -0.026299, 0.970114,
		-0.220553, 0.974961, -0.028411,
		-0.945076, -0.220815, -0.240982,
		39.422935, 35.410400, 44.125088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773800, 35.745506, 44.917183>,  <40.084488, 35.564972, 44.293777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773800, 35.745506, 44.917183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.487885, 35.553101, 44.714123>,  <39.316338, 35.437656, 44.592289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.487885, 35.553101, 44.714123>,  <39.773800, 35.745506, 44.917183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487885, 35.553101, 44.714123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443048, -0.250177, 0.860883,
		-0.541102, 0.840257, -0.034292,
		-0.714784, -0.481019, -0.507646,
		39.273449, 35.408794, 44.561829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212753, 36.026691, 45.181362>,  <39.773800, 35.745506, 44.917183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212753, 36.026691, 45.181362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.109554, 35.665665, 45.043488>,  <39.047634, 35.449047, 44.960762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.109554, 35.665665, 45.043488>,  <39.212753, 36.026691, 45.181362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109554, 35.665665, 45.043488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274913, -0.273433, 0.921768,
		-0.926208, 0.332570, -0.177583,
		-0.257996, -0.902569, -0.344684,
		39.032154, 35.394894, 44.940083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.599133, 36.025635, 45.536304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.707985, 35.658543, 45.420567>,  <38.773296, 35.438290, 45.351124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.707985, 35.658543, 45.420567>,  <38.599133, 36.025635, 45.536304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707985, 35.658543, 45.420567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339877, -0.372981, 0.863347,
		-0.900237, -0.136605, -0.413415,
		0.272134, -0.917728, -0.289343,
		38.789627, 35.383224, 45.333763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047127, 35.643425, 45.607323>,  <38.599133, 36.025635, 45.536304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047127, 35.643425, 45.607323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.335564, 35.366470, 45.597347>,  <38.508625, 35.200298, 45.591362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.335564, 35.366470, 45.597347>,  <38.047127, 35.643425, 45.607323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335564, 35.366470, 45.597347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292561, -0.336922, 0.894926,
		-0.628041, -0.638026, -0.445518,
		0.721091, -0.692392, -0.024939,
		38.551891, 35.158752, 45.589867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759830, 35.124176, 45.951828>,  <38.047127, 35.643425, 45.607323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759830, 35.124176, 45.951828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.148811, 35.031017, 45.947853>,  <38.382198, 34.975124, 45.945469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.148811, 35.031017, 45.947853>,  <37.759830, 35.124176, 45.951828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148811, 35.031017, 45.947853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028867, -0.162602, 0.986269,
		-0.231316, -0.958811, -0.164845,
		0.972450, -0.232898, -0.009935,
		38.440548, 34.961147, 45.944874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752831, 34.497261, 46.310707>,  <37.759830, 35.124176, 45.951828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752831, 34.497261, 46.310707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.111561, 34.669014, 46.353283>,  <38.326797, 34.772068, 46.378830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.111561, 34.669014, 46.353283>,  <37.752831, 34.497261, 46.310707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111561, 34.669014, 46.353283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075613, -0.088287, 0.993221,
		0.435873, -0.898795, -0.046711,
		0.896826, 0.429387, 0.106443,
		38.380608, 34.797829, 46.385216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082699, 34.077644, 46.788284>,  <37.752831, 34.497261, 46.310707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082699, 34.077644, 46.788284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.289806, 34.419731, 46.779247>,  <38.414070, 34.624985, 46.773827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.289806, 34.419731, 46.779247>,  <38.082699, 34.077644, 46.788284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289806, 34.419731, 46.779247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076967, -0.020264, 0.996828,
		0.852051, -0.517867, -0.076316,
		0.517770, 0.855221, -0.022593,
		38.445137, 34.676296, 46.772469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646660, 33.926788, 47.190979>,  <38.082699, 34.077644, 46.788284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646660, 33.926788, 47.190979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.604774, 34.324493, 47.199764>,  <38.579643, 34.563114, 47.205036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.604774, 34.324493, 47.199764>,  <38.646660, 33.926788, 47.190979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604774, 34.324493, 47.199764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222576, 0.001905, 0.974914,
		0.969275, 0.106979, -0.221497,
		-0.104717, 0.994260, 0.021964,
		38.573360, 34.622772, 47.206352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260464, 34.252441, 47.501198>,  <38.646660, 33.926788, 47.190979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260464, 34.252441, 47.501198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949028, 34.499477, 47.545712>,  <38.762165, 34.647697, 47.572418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949028, 34.499477, 47.545712>,  <39.260464, 34.252441, 47.501198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949028, 34.499477, 47.545712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102853, -0.049347, 0.993472,
		0.619048, 0.784952, -0.025099,
		-0.778589, 0.617588, 0.111283,
		38.715450, 34.684753, 47.579098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423260, 34.630695, 48.127342>,  <39.260464, 34.252441, 47.501198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423260, 34.630695, 48.127342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.032452, 34.714561, 48.112011>,  <38.797966, 34.764881, 48.102814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.032452, 34.714561, 48.112011>,  <39.423260, 34.630695, 48.127342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032452, 34.714561, 48.112011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024742, 0.067037, 0.997444,
		0.211698, 0.975473, -0.060309,
		-0.977022, 0.209665, -0.038327,
		38.739346, 34.777462, 48.100513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320602, 35.068851, 48.628189>,  <39.423260, 34.630695, 48.127342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320602, 35.068851, 48.628189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.942257, 34.959896, 48.557602>,  <38.715248, 34.894524, 48.515251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.942257, 34.959896, 48.557602>,  <39.320602, 35.068851, 48.628189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942257, 34.959896, 48.557602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203521, 0.074264, 0.976250,
		-0.252814, 0.959317, -0.125681,
		-0.945867, -0.272388, -0.176466,
		38.658497, 34.878178, 48.504662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852615, 35.659851, 48.936985>,  <39.320602, 35.068851, 48.628189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852615, 35.659851, 48.936985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.692215, 35.294743, 48.905884>,  <38.595974, 35.075676, 48.887222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.692215, 35.294743, 48.905884>,  <38.852615, 35.659851, 48.936985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692215, 35.294743, 48.905884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147527, -0.019422, 0.988867,
		-0.904119, 0.408010, -0.126870,
		-0.401004, -0.912771, -0.077753,
		38.571915, 35.020912, 48.882557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329094, 35.734871, 49.400890>,  <38.852615, 35.659851, 48.936985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329094, 35.734871, 49.400890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.370770, 35.339390, 49.357800>,  <38.395775, 35.102100, 49.331944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.370770, 35.339390, 49.357800>,  <38.329094, 35.734871, 49.400890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370770, 35.339390, 49.357800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172196, -0.124618, 0.977148,
		-0.979537, -0.083261, -0.183236,
		0.104193, -0.988705, -0.107730,
		38.402027, 35.042778, 49.325481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704960, 35.432285, 49.771736>,  <38.329094, 35.734871, 49.400890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704960, 35.432285, 49.771736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.984444, 35.147797, 49.740814>,  <38.152134, 34.977104, 49.722260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.984444, 35.147797, 49.740814>,  <37.704960, 35.432285, 49.771736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984444, 35.147797, 49.740814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291231, -0.381466, 0.877307,
		-0.653447, -0.590467, -0.473662,
		0.698707, -0.711219, -0.077305,
		38.194057, 34.934429, 49.717625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425018, 34.782913, 50.062992>,  <37.704960, 35.432285, 49.771736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425018, 34.782913, 50.062992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.820358, 34.723175, 50.074730>,  <38.057564, 34.687332, 50.081772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.820358, 34.723175, 50.074730>,  <37.425018, 34.782913, 50.062992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820358, 34.723175, 50.074730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107760, -0.550485, 0.827861,
		-0.107488, -0.821378, -0.560165,
		0.988350, -0.149348, 0.029341,
		38.116863, 34.678371, 50.083530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505959, 34.078278, 50.388092>,  <37.425018, 34.782913, 50.062992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505959, 34.078278, 50.388092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883858, 34.205326, 50.420498>,  <38.110600, 34.281555, 50.439941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883858, 34.205326, 50.420498>,  <37.505959, 34.078278, 50.388092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883858, 34.205326, 50.420498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147945, -0.633733, 0.759272,
		0.292500, -0.705338, -0.645710,
		0.944752, 0.317617, 0.081016,
		38.167282, 34.300610, 50.444801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967957, 33.481441, 50.500237>,  <37.505959, 34.078278, 50.388092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967957, 33.481441, 50.500237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.187481, 33.788990, 50.631470>,  <38.319195, 33.973518, 50.710209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.187481, 33.788990, 50.631470>,  <37.967957, 33.481441, 50.500237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187481, 33.788990, 50.631470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256599, -0.528463, 0.809249,
		0.795590, -0.359939, -0.487320,
		0.548811, 0.768876, 0.328080,
		38.352123, 34.019653, 50.729893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645470, 33.220276, 50.722382>,  <37.967957, 33.481441, 50.500237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645470, 33.220276, 50.722382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.586155, 33.563065, 50.919807>,  <38.550568, 33.768738, 51.038261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.586155, 33.563065, 50.919807>,  <38.645470, 33.220276, 50.722382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586155, 33.563065, 50.919807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271135, -0.444725, 0.853642,
		0.951050, 0.260405, -0.166410,
		-0.148286, 0.856976, 0.493561,
		38.541668, 33.820156, 51.067875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112434, 33.204601, 51.249969>,  <38.645470, 33.220276, 50.722382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112434, 33.204601, 51.249969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.846848, 33.466316, 51.394775>,  <38.687496, 33.623344, 51.481659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.846848, 33.466316, 51.394775>,  <39.112434, 33.204601, 51.249969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846848, 33.466316, 51.394775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128155, -0.377403, 0.917139,
		0.736701, 0.655342, 0.166731,
		-0.663964, 0.654289, 0.362018,
		38.647659, 33.662601, 51.503380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406635, 33.389153, 51.893906>,  <39.112434, 33.204601, 51.249969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406635, 33.389153, 51.893906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.017590, 33.470562, 51.938816>,  <38.784164, 33.519409, 51.965763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.017590, 33.470562, 51.938816>,  <39.406635, 33.389153, 51.893906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017590, 33.470562, 51.938816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068372, -0.211171, 0.975055,
		0.222159, 0.956025, 0.191472,
		-0.972610, 0.203526, 0.112279,
		38.725807, 33.531620, 51.972500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360775, 33.785572, 52.579403>,  <39.406635, 33.389153, 51.893906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360775, 33.785572, 52.579403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.985588, 33.669994, 52.502750>,  <38.760475, 33.600647, 52.456760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.985588, 33.669994, 52.502750>,  <39.360775, 33.785572, 52.579403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985588, 33.669994, 52.502750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103528, -0.294076, 0.950158,
		-0.330899, 0.911059, 0.245921,
		-0.937970, -0.288947, -0.191630,
		38.704197, 33.583309, 52.445263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036434, 33.959919, 53.129658>,  <39.360775, 33.785572, 52.579403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036434, 33.959919, 53.129658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.748455, 33.713909, 53.001022>,  <38.575668, 33.566303, 52.923843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.748455, 33.713909, 53.001022>,  <39.036434, 33.959919, 53.129658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748455, 33.713909, 53.001022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119617, -0.346465, 0.930405,
		-0.683639, 0.708312, 0.175870,
		-0.719950, -0.615024, -0.321584,
		38.532471, 33.529404, 52.904549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486893, 33.929867, 53.690434>,  <39.036434, 33.959919, 53.129658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486893, 33.929867, 53.690434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434250, 33.587372, 53.490620>,  <38.402664, 33.381874, 53.370731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434250, 33.587372, 53.490620>,  <38.486893, 33.929867, 53.690434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434250, 33.587372, 53.490620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071074, -0.494473, 0.866282,
		-0.988750, 0.149516, 0.004221,
		-0.131610, -0.856237, -0.499537,
		38.394768, 33.330502, 53.340759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091816, 33.445583, 54.144646>,  <38.486893, 33.929867, 53.690434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091816, 33.445583, 54.144646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.236000, 33.175243, 53.887493>,  <38.322510, 33.013039, 53.733204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.236000, 33.175243, 53.887493>,  <38.091816, 33.445583, 54.144646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236000, 33.175243, 53.887493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161660, -0.633515, 0.756654,
		-0.918659, -0.376672, -0.119099,
		0.360462, -0.675853, -0.642877,
		38.344139, 32.972488, 53.694630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701290, 32.775314, 54.179199>,  <38.091816, 33.445583, 54.144646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701290, 32.775314, 54.179199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.084061, 32.745621, 54.066929>,  <38.313725, 32.727802, 53.999569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.084061, 32.745621, 54.066929>,  <37.701290, 32.775314, 54.179199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084061, 32.745621, 54.066929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192783, -0.560375, 0.805491,
		-0.217080, -0.824906, -0.521927,
		0.956928, -0.074237, -0.280673,
		38.371140, 32.723351, 53.982727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171257, 32.325684, 53.917767>,  <37.701290, 32.775314, 54.179199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171257, 32.325684, 53.917767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982323, 32.023209, 53.736626>,  <36.868961, 31.841722, 53.627941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982323, 32.023209, 53.736626>,  <37.171257, 32.325684, 53.917767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982323, 32.023209, 53.736626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208945, 0.595192, -0.775943,
		0.856294, -0.271885, -0.439134,
		-0.472336, -0.756191, -0.452851,
		36.840622, 31.796352, 53.600769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402458, 32.173504, 53.192303>,  <37.171257, 32.325684, 53.917767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402458, 32.173504, 53.192303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.021378, 32.061199, 53.238838>,  <36.792728, 31.993814, 53.266758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.021378, 32.061199, 53.238838>,  <37.402458, 32.173504, 53.192303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021378, 32.061199, 53.238838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216165, 0.356935, -0.908774,
		0.213627, -0.890937, -0.400743,
		-0.952699, -0.280765, 0.116338,
		36.735569, 31.976969, 53.273739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206753, 31.832006, 52.606560>,  <37.402458, 32.173504, 53.192303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206753, 31.832006, 52.606560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853909, 31.940281, 52.760761>,  <36.642200, 32.005245, 52.853283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853909, 31.940281, 52.760761>,  <37.206753, 31.832006, 52.606560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853909, 31.940281, 52.760761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300097, 0.307864, -0.902863,
		-0.363076, -0.912111, -0.190337,
		-0.882110, 0.270688, 0.385500,
		36.589275, 32.021488, 52.876411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585621, 31.482744, 52.306011>,  <37.206753, 31.832006, 52.606560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585621, 31.482744, 52.306011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422760, 31.804913, 52.478302>,  <36.325043, 31.998213, 52.581676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422760, 31.804913, 52.478302>,  <36.585621, 31.482744, 52.306011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422760, 31.804913, 52.478302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491943, 0.203960, -0.846400,
		-0.769558, -0.556508, 0.313177,
		-0.407152, 0.805419, 0.430729,
		36.300613, 32.046539, 52.607521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863277, 31.480438, 52.021198>,  <36.585621, 31.482744, 52.306011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863277, 31.480438, 52.021198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.953739, 31.850922, 52.141857>,  <36.008015, 32.073212, 52.214252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.953739, 31.850922, 52.141857>,  <35.863277, 31.480438, 52.021198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953739, 31.850922, 52.141857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410764, 0.371470, -0.832636,
		-0.883249, 0.064395, 0.464461,
		0.226151, 0.926209, 0.301649,
		36.021584, 32.128784, 52.232353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218410, 31.875574, 51.831760>,  <35.863277, 31.480438, 52.021198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218410, 31.875574, 51.831760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.503334, 32.145306, 51.909618>,  <35.674290, 32.307144, 51.956333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.503334, 32.145306, 51.909618>,  <35.218410, 31.875574, 51.831760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503334, 32.145306, 51.909618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181994, 0.445302, -0.876689,
		-0.677855, 0.589053, 0.439919,
		0.712314, 0.674331, 0.194647,
		35.717030, 32.347607, 51.968014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920723, 32.506794, 51.518044>,  <35.218410, 31.875574, 51.831760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920723, 32.506794, 51.518044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.311787, 32.567505, 51.576218>,  <35.546425, 32.603931, 51.611122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.311787, 32.567505, 51.576218>,  <34.920723, 32.506794, 51.518044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311787, 32.567505, 51.576218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046156, 0.519983, -0.852929,
		-0.205082, 0.840584, 0.501359,
		0.977656, 0.151779, 0.145437,
		35.605083, 32.613037, 51.619850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016346, 33.293777, 51.641083>,  <34.920723, 32.506794, 51.518044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016346, 33.293777, 51.641083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.363308, 33.133270, 51.523376>,  <35.571484, 33.036964, 51.452751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.363308, 33.133270, 51.523376>,  <35.016346, 33.293777, 51.641083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363308, 33.133270, 51.523376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054207, 0.511650, -0.857482,
		0.494640, 0.759736, 0.422057,
		0.867406, -0.401266, -0.294266,
		35.623531, 33.012890, 51.435097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392807, 33.814621, 51.358788>,  <35.016346, 33.293777, 51.641083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392807, 33.814621, 51.358788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559151, 33.486378, 51.201988>,  <35.658958, 33.289433, 51.107906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559151, 33.486378, 51.201988>,  <35.392807, 33.814621, 51.358788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559151, 33.486378, 51.201988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159544, 0.490186, -0.856892,
		0.895325, 0.293804, 0.334771,
		0.415858, -0.820608, -0.392001,
		35.683907, 33.240196, 51.084389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984322, 34.064404, 51.024284>,  <35.392807, 33.814621, 51.358788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984322, 34.064404, 51.024284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.938915, 33.698715, 50.868687>,  <35.911671, 33.479301, 50.775330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.938915, 33.698715, 50.868687>,  <35.984322, 34.064404, 51.024284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938915, 33.698715, 50.868687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396048, 0.317436, -0.861615,
		0.911186, -0.251864, 0.326043,
		-0.113512, -0.914220, -0.388994,
		35.904861, 33.424450, 50.751987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592621, 33.842102, 50.684746>,  <35.984322, 34.064404, 51.024284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592621, 33.842102, 50.684746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290222, 33.647984, 50.509037>,  <36.108784, 33.531513, 50.403610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290222, 33.647984, 50.509037>,  <36.592621, 33.842102, 50.684746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290222, 33.647984, 50.509037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333997, 0.291157, -0.896478,
		0.562954, -0.824449, -0.058026,
		-0.755995, -0.485296, -0.439272,
		36.063423, 33.502396, 50.377254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836128, 33.719959, 49.983246>,  <36.592621, 33.842102, 50.684746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836128, 33.719959, 49.983246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.452236, 33.627525, 49.919353>,  <36.221901, 33.572067, 49.881020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.452236, 33.627525, 49.919353>,  <36.836128, 33.719959, 49.983246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452236, 33.627525, 49.919353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122901, 0.165888, -0.978456,
		0.252603, -0.958687, -0.130807,
		-0.959733, -0.231085, -0.159727,
		36.164314, 33.558201, 49.871437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842361, 33.316528, 49.397022>,  <36.836128, 33.719959, 49.983246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842361, 33.316528, 49.397022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464481, 33.447227, 49.408154>,  <36.237751, 33.525646, 49.414833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464481, 33.447227, 49.408154>,  <36.842361, 33.316528, 49.397022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464481, 33.447227, 49.408154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118811, 0.420123, -0.899656,
		-0.305651, -0.846601, -0.435712,
		-0.944702, 0.326748, 0.027826,
		36.181072, 33.545250, 49.416500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616631, 33.282356, 48.697567>,  <36.842361, 33.316528, 49.397022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616631, 33.282356, 48.697567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.343029, 33.518520, 48.868938>,  <36.178867, 33.660217, 48.971764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.343029, 33.518520, 48.868938>,  <36.616631, 33.282356, 48.697567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343029, 33.518520, 48.868938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122323, 0.671832, -0.730533,
		-0.719146, -0.447283, -0.531759,
		-0.684008, 0.590406, 0.428433,
		36.137825, 33.695641, 48.997467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070332, 33.296829, 48.276108>,  <36.616631, 33.282356, 48.697567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070332, 33.296829, 48.276108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.068432, 33.629589, 48.498070>,  <36.067291, 33.829247, 48.631245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.068432, 33.629589, 48.498070>,  <36.070332, 33.296829, 48.276108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068432, 33.629589, 48.498070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018768, 0.554736, -0.831815,
		-0.999813, -0.014363, 0.012979,
		-0.004747, 0.831902, 0.554902,
		36.067009, 33.879158, 48.664539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497013, 33.583328, 48.007210>,  <36.070332, 33.296829, 48.276108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497013, 33.583328, 48.007210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.680748, 33.884708, 48.195393>,  <35.790989, 34.065536, 48.308300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.680748, 33.884708, 48.195393>,  <35.497013, 33.583328, 48.007210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680748, 33.884708, 48.195393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289233, 0.627634, -0.722786,
		-0.839856, 0.195929, 0.506215,
		0.459333, 0.753450, 0.470453,
		35.818546, 34.110744, 48.336529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043121, 34.099091, 48.073307>,  <35.497013, 33.583328, 48.007210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043121, 34.099091, 48.073307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.393318, 34.288589, 48.111427>,  <35.603436, 34.402290, 48.134300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.393318, 34.288589, 48.111427>,  <35.043121, 34.099091, 48.073307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393318, 34.288589, 48.111427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261872, 0.630863, -0.730366,
		-0.406129, 0.614473, 0.676375,
		0.875490, 0.473747, 0.095298,
		35.655964, 34.430714, 48.140018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901157, 34.808357, 48.119389>,  <35.043121, 34.099091, 48.073307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901157, 34.808357, 48.119389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.283600, 34.779488, 48.005787>,  <35.513065, 34.762165, 47.937626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.283600, 34.779488, 48.005787>,  <34.901157, 34.808357, 48.119389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283600, 34.779488, 48.005787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161423, 0.679171, -0.716010,
		0.244565, 0.730423, 0.637707,
		0.956102, -0.072170, -0.284008,
		35.570431, 34.757835, 47.920586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083450, 35.484859, 48.043221>,  <34.901157, 34.808357, 48.119389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083450, 35.484859, 48.043221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.359638, 35.264301, 47.855938>,  <35.525352, 35.131966, 47.743568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.359638, 35.264301, 47.855938>,  <35.083450, 35.484859, 48.043221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359638, 35.264301, 47.855938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109886, 0.559795, -0.821312,
		0.714966, 0.618541, 0.325931,
		0.690470, -0.551395, -0.468204,
		35.566780, 35.098885, 47.715477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489384, 35.982525, 47.709019>,  <35.083450, 35.484859, 48.043221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489384, 35.982525, 47.709019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.560299, 35.647259, 47.502697>,  <35.602848, 35.446098, 47.378902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.560299, 35.647259, 47.502697>,  <35.489384, 35.982525, 47.709019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560299, 35.647259, 47.502697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042174, 0.517156, -0.854851,
		0.983256, 0.173305, 0.056335,
		0.177284, -0.838162, -0.515805,
		35.613483, 35.395809, 47.347954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079315, 36.073498, 47.234226>,  <35.489384, 35.982525, 47.709019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079315, 36.073498, 47.234226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.835743, 35.794315, 47.083458>,  <35.689602, 35.626808, 46.992996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.835743, 35.794315, 47.083458>,  <36.079315, 36.073498, 47.234226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835743, 35.794315, 47.083458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059880, 0.433375, -0.899222,
		0.790963, -0.570131, -0.222100,
		-0.608927, -0.697952, -0.376923,
		35.653065, 35.584930, 46.970383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.998100, 39.537216, 34.771526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.666634, 39.496162, 34.991627>,  <39.467754, 39.471531, 35.123688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.666634, 39.496162, 34.991627>,  <39.998100, 39.537216, 34.771526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666634, 39.496162, 34.991627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351528, -0.860430, 0.368901,
		0.435593, 0.499125, 0.749088,
		-0.828666, -0.102635, 0.550254,
		39.418034, 39.465370, 35.156704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125271, 39.540134, 35.469009>,  <39.998100, 39.537216, 34.771526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125271, 39.540134, 35.469009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.797146, 39.315613, 35.425140>,  <39.600269, 39.180901, 35.398819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.797146, 39.315613, 35.425140>,  <40.125271, 39.540134, 35.469009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797146, 39.315613, 35.425140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511166, -0.805576, 0.299596,
		-0.256511, 0.189702, 0.947742,
		-0.820312, -0.561303, -0.109670,
		39.551052, 39.147221, 35.392239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085018, 39.109753, 36.147408>,  <40.125271, 39.540134, 35.469009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085018, 39.109753, 36.147408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.896450, 38.912327, 35.855064>,  <39.783310, 38.793873, 35.679657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.896450, 38.912327, 35.855064>,  <40.085018, 39.109753, 36.147408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896450, 38.912327, 35.855064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392710, -0.859513, 0.327133,
		-0.789644, -0.132799, 0.599022,
		-0.471424, -0.493560, -0.730861,
		39.755024, 38.764259, 35.635807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883198, 38.452377, 36.529060>,  <40.085018, 39.109753, 36.147408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883198, 38.452377, 36.529060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.878563, 38.362862, 36.139233>,  <39.875782, 38.309151, 35.905334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.878563, 38.362862, 36.139233>,  <39.883198, 38.452377, 36.529060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878563, 38.362862, 36.139233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426685, -0.882553, 0.197587,
		-0.904326, -0.413545, 0.105712,
		-0.011585, -0.223789, -0.974569,
		39.875088, 38.295727, 35.846863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730400, 37.760498, 36.511806>,  <39.883198, 38.452377, 36.529060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730400, 37.760498, 36.511806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.879517, 37.816753, 36.144928>,  <39.968987, 37.850506, 35.924801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.879517, 37.816753, 36.144928>,  <39.730400, 37.760498, 36.511806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879517, 37.816753, 36.144928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412602, -0.910478, 0.028091,
		-0.831133, -0.388909, -0.397451,
		0.372795, 0.140641, -0.917193,
		39.991356, 37.858944, 35.869770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552814, 37.140438, 36.198864>,  <39.730400, 37.760498, 36.511806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552814, 37.140438, 36.198864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.857925, 37.296627, 35.992676>,  <40.040993, 37.390339, 35.868961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.857925, 37.296627, 35.992676>,  <39.552814, 37.140438, 36.198864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857925, 37.296627, 35.992676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503471, -0.858834, 0.094453,
		-0.405823, -0.331570, -0.851686,
		0.762775, 0.390468, -0.515470,
		40.086758, 37.413769, 35.838036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918533, 36.509693, 36.021477>,  <39.552814, 37.140438, 36.198864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918533, 36.509693, 36.021477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.167110, 36.816273, 35.956535>,  <40.316257, 37.000221, 35.917568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.167110, 36.816273, 35.956535>,  <39.918533, 36.509693, 36.021477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167110, 36.816273, 35.956535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783442, -0.606588, 0.135165,
		0.005114, -0.211194, -0.977431,
		0.621443, 0.766452, -0.162356,
		40.353542, 37.046207, 35.907829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421272, 36.381809, 35.377563>,  <39.918533, 36.509693, 36.021477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421272, 36.381809, 35.377563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.622768, 36.654495, 35.589790>,  <40.743668, 36.818108, 35.717129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.622768, 36.654495, 35.589790>,  <40.421272, 36.381809, 35.377563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622768, 36.654495, 35.589790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826862, -0.558318, -0.067682,
		0.250087, 0.472803, -0.844934,
		0.503742, 0.681718, 0.530570,
		40.773891, 36.859009, 35.748962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018742, 36.530384, 34.967300>,  <40.421272, 36.381809, 35.377563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018742, 36.530384, 34.967300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.102268, 36.666477, 35.334045>,  <41.152386, 36.748135, 35.554092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.102268, 36.666477, 35.334045>,  <41.018742, 36.530384, 34.967300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102268, 36.666477, 35.334045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891098, -0.452456, -0.035050,
		0.402914, 0.824332, -0.397663,
		0.208818, 0.340235, 0.916862,
		41.164913, 36.768547, 35.609104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677063, 36.708427, 34.890709>,  <41.018742, 36.530384, 34.967300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677063, 36.708427, 34.890709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.598557, 36.644211, 35.277637>,  <41.551453, 36.605682, 35.509792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.598557, 36.644211, 35.277637>,  <41.677063, 36.708427, 34.890709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598557, 36.644211, 35.277637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907668, -0.402967, 0.117287,
		0.370969, 0.901025, 0.224804,
		-0.196267, -0.160538, 0.967319,
		41.539677, 36.596050, 35.567833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261265, 36.888363, 35.254845>,  <41.677063, 36.708427, 34.890709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261265, 36.888363, 35.254845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.087082, 36.640263, 35.515816>,  <41.982571, 36.491402, 35.672398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.087082, 36.640263, 35.515816>,  <42.261265, 36.888363, 35.254845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087082, 36.640263, 35.515816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900178, -0.306128, 0.309784,
		0.007582, 0.722198, 0.691644,
		-0.435457, -0.620254, 0.652428,
		41.956444, 36.454185, 35.711544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597065, 36.921761, 35.839413>,  <42.261265, 36.888363, 35.254845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597065, 36.921761, 35.839413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.414715, 36.569141, 35.888504>,  <42.305305, 36.357571, 35.917957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.414715, 36.569141, 35.888504>,  <42.597065, 36.921761, 35.839413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414715, 36.569141, 35.888504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858717, -0.399365, 0.321111,
		-0.234062, 0.251771, 0.939056,
		-0.455872, -0.881544, 0.122724,
		42.277954, 36.304680, 35.925320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870033, 36.652325, 36.487892>,  <42.597065, 36.921761, 35.839413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870033, 36.652325, 36.487892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.695305, 36.336754, 36.315018>,  <42.590469, 36.147411, 36.211292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.695305, 36.336754, 36.315018>,  <42.870033, 36.652325, 36.487892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695305, 36.336754, 36.315018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818887, -0.547599, 0.171931,
		-0.372304, -0.278808, 0.885243,
		-0.436822, -0.788925, -0.432186,
		42.564259, 36.100075, 36.185364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947472, 36.150990, 36.959076>,  <42.870033, 36.652325, 36.487892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947472, 36.150990, 36.959076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.896969, 35.983917, 36.599163>,  <42.866669, 35.883675, 36.383217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.896969, 35.983917, 36.599163>,  <42.947472, 36.150990, 36.959076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896969, 35.983917, 36.599163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898743, -0.432104, 0.074476,
		-0.419905, -0.799266, 0.429946,
		-0.126255, -0.417684, -0.899778,
		42.859093, 35.858612, 36.329231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972881, 35.452568, 37.003189>,  <42.947472, 36.150990, 36.959076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972881, 35.452568, 37.003189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.048126, 35.503380, 36.613628>,  <43.093273, 35.533867, 36.379894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.048126, 35.503380, 36.613628>,  <42.972881, 35.452568, 37.003189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048126, 35.503380, 36.613628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715265, -0.697257, 0.047211,
		-0.673061, -0.705476, -0.222018,
		0.188110, 0.127026, -0.973899,
		43.104561, 35.541489, 36.321457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153923, 34.820946, 36.828659>,  <42.972881, 35.452568, 37.003189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153923, 34.820946, 36.828659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.285435, 35.027859, 36.512604>,  <43.364342, 35.152004, 36.322971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.285435, 35.027859, 36.512604>,  <43.153923, 34.820946, 36.828659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285435, 35.027859, 36.512604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764099, -0.637404, -0.099345,
		-0.555029, -0.571084, -0.604819,
		0.328780, 0.517281, -0.790142,
		43.384068, 35.183044, 36.275562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306110, 34.357700, 36.236362>,  <43.153923, 34.820946, 36.828659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306110, 34.357700, 36.236362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.529648, 34.685429, 36.185108>,  <43.663769, 34.882065, 36.154354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.529648, 34.685429, 36.185108>,  <43.306110, 34.357700, 36.236362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529648, 34.685429, 36.185108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811767, -0.572054, -0.117425,
		-0.169508, -0.038395, -0.984781,
		0.558839, 0.819317, -0.128135,
		43.697300, 34.931225, 36.146667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522182, 34.401825, 35.494942>,  <43.306110, 34.357700, 36.236362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522182, 34.401825, 35.494942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.794865, 34.640087, 35.664867>,  <43.958473, 34.783043, 35.766823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.794865, 34.640087, 35.664867>,  <43.522182, 34.401825, 35.494942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.794865, 34.640087, 35.664867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731582, -0.548871, -0.404386,
		-0.007705, 0.586461, -0.809940,
		0.681709, 0.595654, 0.424816,
		43.999378, 34.818783, 35.792313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.089905, 34.495274, 34.988510>,  <43.522182, 34.401825, 35.494942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.089905, 34.495274, 34.988510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.273716, 34.630341, 35.317097>,  <44.384003, 34.711380, 35.514248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.273716, 34.630341, 35.317097>,  <44.089905, 34.495274, 34.988510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.273716, 34.630341, 35.317097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842380, -0.458824, -0.282625,
		0.281476, 0.821864, -0.495289,
		0.459530, 0.337669, 0.821469,
		44.411575, 34.731640, 35.563538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.714409, 34.685268, 34.836586>,  <44.089905, 34.495274, 34.988510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.714409, 34.685268, 34.836586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780605, 34.648624, 35.229366>,  <44.820324, 34.626637, 35.465034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780605, 34.648624, 35.229366>,  <44.714409, 34.685268, 34.836586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780605, 34.648624, 35.229366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865659, -0.463531, -0.189137,
		0.472490, 0.881332, 0.002593,
		0.165491, -0.091610, 0.981947,
		44.830254, 34.621143, 35.523949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.358353, 34.904579, 34.892952>,  <44.714409, 34.685268, 34.836586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.358353, 34.904579, 34.892952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.300133, 34.685913, 35.222794>,  <45.265202, 34.554714, 35.420700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.300133, 34.685913, 35.222794>,  <45.358353, 34.904579, 34.892952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300133, 34.685913, 35.222794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963745, -0.266739, -0.006720,
		0.223628, 0.793731, 0.565669,
		-0.145552, -0.546664, 0.824605,
		45.256466, 34.521915, 35.470177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.533630, 35.682037, 34.776436>,  <45.358353, 34.904579, 34.892952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.533630, 35.682037, 34.776436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.851795, 35.613415, 34.543922>,  <46.042694, 35.572243, 34.404415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.851795, 35.613415, 34.543922>,  <45.533630, 35.682037, 34.776436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.851795, 35.613415, 34.543922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295099, 0.728101, -0.618697,
		0.529371, 0.663655, 0.528515,
		0.795414, -0.171556, -0.581279,
		46.090420, 35.561947, 34.369537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.959351, 36.301136, 34.631798>,  <45.533630, 35.682037, 34.776436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.959351, 36.301136, 34.631798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.982082, 36.064739, 34.309929>,  <45.995724, 35.922901, 34.116806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.982082, 36.064739, 34.309929>,  <45.959351, 36.301136, 34.631798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.982082, 36.064739, 34.309929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476776, 0.692069, -0.541965,
		0.877186, 0.414451, -0.242438,
		0.056834, -0.590992, -0.804673,
		45.999134, 35.887444, 34.068527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.108711, 36.717720, 34.010990>,  <45.959351, 36.301136, 34.631798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.108711, 36.717720, 34.010990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.878174, 36.393291, 33.971012>,  <45.739853, 36.198635, 33.947025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.878174, 36.393291, 33.971012>,  <46.108711, 36.717720, 34.010990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.878174, 36.393291, 33.971012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686696, 0.546964, -0.478830,
		0.443031, -0.207341, -0.872200,
		-0.576343, -0.811073, -0.099942,
		45.705273, 36.149971, 33.941029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.910347, 36.684429, 33.251575>,  <46.108711, 36.717720, 34.010990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.910347, 36.684429, 33.251575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.648636, 36.443924, 33.435055>,  <45.491611, 36.299622, 33.545143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.648636, 36.443924, 33.435055>,  <45.910347, 36.684429, 33.251575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.648636, 36.443924, 33.435055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750198, 0.439404, -0.494092,
		0.095528, -0.667385, -0.738560,
		-0.654276, -0.601266, 0.458696,
		45.452354, 36.263542, 33.572662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516308, 36.458370, 32.746719>,  <45.910347, 36.684429, 33.251575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516308, 36.458370, 32.746719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.298119, 36.434692, 33.081135>,  <45.167206, 36.420486, 33.281784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.298119, 36.434692, 33.081135>,  <45.516308, 36.458370, 32.746719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.298119, 36.434692, 33.081135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767657, 0.435655, -0.470008,
		-0.336401, -0.898165, -0.283080,
		-0.545470, -0.059197, 0.836037,
		45.134480, 36.416935, 33.331947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870590, 36.430397, 32.442024>,  <45.516308, 36.458370, 32.746719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870590, 36.430397, 32.442024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.792019, 36.522449, 32.823277>,  <44.744877, 36.577682, 33.052029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.792019, 36.522449, 32.823277>,  <44.870590, 36.430397, 32.442024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792019, 36.522449, 32.823277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873587, 0.400353, -0.276701,
		-0.445267, -0.886993, 0.122401,
		-0.196428, 0.230134, 0.953129,
		44.733089, 36.591488, 33.109215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128120, 36.177944, 32.733700>,  <44.870590, 36.430397, 32.442024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128120, 36.177944, 32.733700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.257809, 36.490013, 32.947697>,  <44.335621, 36.677254, 33.076096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.257809, 36.490013, 32.947697>,  <44.128120, 36.177944, 32.733700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.257809, 36.490013, 32.947697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871125, 0.466723, -0.152681,
		-0.368810, -0.416542, 0.830947,
		0.324225, 0.780168, 0.534992,
		44.355076, 36.724064, 33.108192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521862, 36.319977, 33.104012>,  <44.128120, 36.177944, 32.733700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521862, 36.319977, 33.104012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.763580, 36.636356, 33.142437>,  <43.908611, 36.826183, 33.165493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.763580, 36.636356, 33.142437>,  <43.521862, 36.319977, 33.104012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.763580, 36.636356, 33.142437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795653, 0.605408, 0.020420,
		-0.042005, -0.088771, 0.995166,
		0.604295, 0.790949, 0.096061,
		43.944870, 36.873642, 33.171257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349670, 36.658638, 33.730904>,  <43.521862, 36.319977, 33.104012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349670, 36.658638, 33.730904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.505989, 36.925835, 33.477589>,  <43.599781, 37.086155, 33.325600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.505989, 36.925835, 33.477589>,  <43.349670, 36.658638, 33.730904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.505989, 36.925835, 33.477589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798040, 0.588737, 0.128536,
		0.458703, 0.455160, 0.763165,
		0.390799, 0.667996, -0.633291,
		43.623230, 37.126232, 33.287601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956409, 37.253937, 33.909416>,  <43.349670, 36.658638, 33.730904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956409, 37.253937, 33.909416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.168339, 37.394882, 33.600838>,  <43.295498, 37.479450, 33.415691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.168339, 37.394882, 33.600838>,  <42.956409, 37.253937, 33.909416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168339, 37.394882, 33.600838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606791, 0.792988, -0.054538,
		0.592532, 0.497002, 0.633952,
		0.529822, 0.352361, -0.771447,
		43.327286, 37.500591, 33.369404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365341, 37.883305, 34.098778>,  <42.956409, 37.253937, 33.909416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365341, 37.883305, 34.098778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.256809, 37.859222, 33.714539>,  <43.191689, 37.844772, 33.483994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.256809, 37.859222, 33.714539>,  <43.365341, 37.883305, 34.098778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256809, 37.859222, 33.714539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571792, 0.812914, 0.110562,
		0.774230, 0.579263, -0.254994,
		-0.271333, -0.060203, -0.960601,
		43.175407, 37.841160, 33.426357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519257, 38.503143, 33.849518>,  <43.365341, 37.883305, 34.098778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519257, 38.503143, 33.849518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.254272, 38.357437, 33.587692>,  <43.095280, 38.270012, 33.430599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.254272, 38.357437, 33.587692>,  <43.519257, 38.503143, 33.849518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254272, 38.357437, 33.587692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532017, 0.843935, 0.068783,
		0.527350, 0.393803, -0.752875,
		-0.662465, -0.364270, -0.654559,
		43.055534, 38.248158, 33.391323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549366, 38.979809, 33.220940>,  <43.519257, 38.503143, 33.849518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549366, 38.979809, 33.220940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.205975, 38.780663, 33.171719>,  <42.999939, 38.661175, 33.142185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.205975, 38.780663, 33.171719>,  <43.549366, 38.979809, 33.220940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205975, 38.780663, 33.171719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452555, 0.848294, -0.274939,
		0.241266, -0.180343, -0.953555,
		-0.858478, -0.497869, -0.123049,
		42.948433, 38.631302, 33.134804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191864, 39.169502, 32.559574>,  <43.549366, 38.979809, 33.220940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191864, 39.169502, 32.559574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.899216, 39.010826, 32.781342>,  <42.723629, 38.915623, 32.914402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.899216, 39.010826, 32.781342>,  <43.191864, 39.169502, 32.559574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899216, 39.010826, 32.781342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565900, 0.806874, -0.169446,
		-0.380126, -0.437713, -0.814808,
		-0.731616, -0.396688, 0.554415,
		42.679729, 38.891819, 32.947666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570267, 39.268322, 32.160038>,  <43.191864, 39.169502, 32.559574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570267, 39.268322, 32.160038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.454357, 39.223557, 32.540249>,  <42.384811, 39.196697, 32.768375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.454357, 39.223557, 32.540249>,  <42.570267, 39.268322, 32.160038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.454357, 39.223557, 32.540249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500495, 0.864246, -0.050826,
		-0.815805, -0.490464, -0.306445,
		-0.289772, -0.111910, 0.950531,
		42.367424, 39.189983, 32.825409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821182, 39.372715, 32.204666>,  <42.570267, 39.268322, 32.160038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821182, 39.372715, 32.204666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.931377, 39.429733, 32.584938>,  <41.997494, 39.463943, 32.813099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.931377, 39.429733, 32.584938>,  <41.821182, 39.372715, 32.204666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931377, 39.429733, 32.584938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503568, 0.863800, 0.016411,
		-0.818855, -0.483252, 0.309748,
		0.275491, 0.142541, 0.950677,
		42.014027, 39.472496, 32.870140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224476, 39.607498, 32.497055>,  <41.821182, 39.372715, 32.204666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224476, 39.607498, 32.497055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.507484, 39.731777, 32.750946>,  <41.677288, 39.806347, 32.903282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.507484, 39.731777, 32.750946>,  <41.224476, 39.607498, 32.497055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507484, 39.731777, 32.750946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569756, 0.782149, 0.252231,
		-0.418087, -0.540100, 0.730408,
		0.707518, 0.310700, 0.634731,
		41.719738, 39.824986, 32.941364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870453, 39.997089, 33.139362>,  <41.224476, 39.607498, 32.497055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870453, 39.997089, 33.139362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.257370, 40.097313, 33.155220>,  <41.489521, 40.157448, 33.164734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.257370, 40.097313, 33.155220>,  <40.870453, 39.997089, 33.139362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257370, 40.097313, 33.155220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253584, 0.950899, 0.177441,
		0.006761, -0.181691, 0.983333,
		0.967290, 0.250558, 0.039645,
		41.547558, 40.172482, 33.167114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844700, 40.388737, 33.642300>,  <40.870453, 39.997089, 33.139362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844700, 40.388737, 33.642300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.174278, 40.494358, 33.441746>,  <41.372025, 40.557732, 33.321415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.174278, 40.494358, 33.441746>,  <40.844700, 40.388737, 33.642300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174278, 40.494358, 33.441746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186878, 0.961914, 0.199493,
		0.534963, -0.070675, 0.841914,
		0.823948, 0.264056, -0.501381,
		41.421463, 40.573574, 33.291332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161530, 40.796646, 34.036446>,  <40.844700, 40.388737, 33.642300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161530, 40.796646, 34.036446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.312035, 40.883297, 33.676113>,  <41.402340, 40.935287, 33.459915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.312035, 40.883297, 33.676113>,  <41.161530, 40.796646, 34.036446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312035, 40.883297, 33.676113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251000, 0.959757, 0.125957,
		0.891865, 0.178715, 0.415496,
		0.376265, 0.216626, -0.900831,
		41.424915, 40.948284, 33.405865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630081, 41.434673, 34.185143>,  <41.161530, 40.796646, 34.036446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630081, 41.434673, 34.185143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.491234, 41.367214, 33.816132>,  <41.407925, 41.326740, 33.594723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.491234, 41.367214, 33.816132>,  <41.630081, 41.434673, 34.185143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491234, 41.367214, 33.816132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492871, 0.869700, 0.026463,
		0.797863, 0.463874, -0.385013,
		-0.347121, -0.168648, -0.922531,
		41.387096, 41.316620, 33.539371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.228031, 36.370121, 42.744755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948795, 36.098228, 42.654743>,  <39.781254, 35.935093, 42.600735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948795, 36.098228, 42.654743>,  <40.228031, 36.370121, 42.744755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948795, 36.098228, 42.654743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364276, -0.066591, -0.928907,
		0.616421, -0.730434, 0.294095,
		-0.698089, -0.679729, -0.225032,
		39.739368, 35.894310, 42.587234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609776, 35.809853, 42.355228>,  <40.228031, 36.370121, 42.744755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609776, 35.809853, 42.355228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221798, 35.793621, 42.259266>,  <39.989010, 35.783882, 42.201687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221798, 35.793621, 42.259266>,  <40.609776, 35.809853, 42.355228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221798, 35.793621, 42.259266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240646, -0.014357, -0.970507,
		0.035936, -0.999073, 0.023690,
		-0.969947, -0.040577, -0.239907,
		39.930813, 35.781448, 42.187294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551826, 35.298485, 41.779041>,  <40.609776, 35.809853, 42.355228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551826, 35.298485, 41.779041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220547, 35.522434, 41.769062>,  <40.021778, 35.656803, 41.763073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220547, 35.522434, 41.769062>,  <40.551826, 35.298485, 41.779041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220547, 35.522434, 41.769062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007155, -0.033951, -0.999398,
		-0.560387, -0.827880, 0.024112,
		-0.828200, 0.559878, -0.024949,
		39.972088, 35.690399, 41.761578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256653, 35.064354, 41.166969>,  <40.551826, 35.298485, 41.779041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256653, 35.064354, 41.166969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028439, 35.381962, 41.250904>,  <39.891510, 35.572525, 41.301266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028439, 35.381962, 41.250904>,  <40.256653, 35.064354, 41.166969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028439, 35.381962, 41.250904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110494, 0.178968, -0.977630,
		-0.813809, -0.580955, -0.014373,
		-0.570531, 0.794016, 0.209838,
		39.857281, 35.620167, 41.313854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474117, 34.981010, 40.879665>,  <40.256653, 35.064354, 41.166969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474117, 34.981010, 40.879665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564674, 35.367310, 40.930382>,  <39.619011, 35.599091, 40.960812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564674, 35.367310, 40.930382>,  <39.474117, 34.981010, 40.879665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564674, 35.367310, 40.930382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203145, 0.174127, -0.963541,
		-0.952616, 0.192384, 0.235608,
		0.226396, 0.965748, 0.126794,
		39.632591, 35.657032, 40.968418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904850, 35.374054, 40.528927>,  <39.474117, 34.981010, 40.879665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904850, 35.374054, 40.528927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197750, 35.643703, 40.567638>,  <39.373489, 35.805492, 40.590866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197750, 35.643703, 40.567638>,  <38.904850, 35.374054, 40.528927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197750, 35.643703, 40.567638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090116, 0.236761, -0.967380,
		-0.675046, 0.699644, 0.234118,
		0.732251, 0.674124, 0.096776,
		39.417427, 35.845940, 40.596672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683914, 35.981060, 40.261112>,  <38.904850, 35.374054, 40.528927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683914, 35.981060, 40.261112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083569, 35.997631, 40.260227>,  <39.323360, 36.007572, 40.259697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083569, 35.997631, 40.260227>,  <38.683914, 35.981060, 40.261112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083569, 35.997631, 40.260227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009070, 0.166132, -0.986062,
		-0.040483, 0.985233, 0.166365,
		0.999139, 0.041427, -0.002210,
		39.383308, 36.010059, 40.259563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844090, 36.482903, 39.804611>,  <38.683914, 35.981060, 40.261112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844090, 36.482903, 39.804611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174606, 36.260277, 39.839214>,  <39.372917, 36.126701, 39.859978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174606, 36.260277, 39.839214>,  <38.844090, 36.482903, 39.804611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174606, 36.260277, 39.839214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082408, -0.032483, -0.996069,
		0.557184, 0.830171, 0.019025,
		0.826289, -0.556562, 0.086512,
		39.422493, 36.093307, 39.865170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181381, 36.684471, 39.204540>,  <38.844090, 36.482903, 39.804611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181381, 36.684471, 39.204540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374554, 36.355419, 39.324581>,  <39.490456, 36.157990, 39.396606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374554, 36.355419, 39.324581>,  <39.181381, 36.684471, 39.204540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374554, 36.355419, 39.324581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203234, -0.228062, -0.952199,
		0.851746, 0.520839, 0.057047,
		0.482933, -0.822626, 0.300103,
		39.519432, 36.108631, 39.414612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838165, 36.678013, 38.850513>,  <39.181381, 36.684471, 39.204540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838165, 36.678013, 38.850513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751957, 36.301601, 38.954826>,  <39.700230, 36.075752, 39.017414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751957, 36.301601, 38.954826>,  <39.838165, 36.678013, 38.850513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751957, 36.301601, 38.954826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139089, -0.293919, -0.945656,
		0.966542, -0.167538, 0.194233,
		-0.215522, -0.941033, 0.260783,
		39.687302, 36.019291, 39.033062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420597, 36.246243, 38.498310>,  <39.838165, 36.678013, 38.850513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420597, 36.246243, 38.498310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135963, 35.984970, 38.601852>,  <39.965183, 35.828209, 38.663979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135963, 35.984970, 38.601852>,  <40.420597, 36.246243, 38.498310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135963, 35.984970, 38.601852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180223, -0.525787, -0.831305,
		0.679096, -0.544889, 0.491859,
		-0.711582, -0.653179, 0.258858,
		39.922489, 35.789017, 38.679508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668533, 35.583431, 38.275261>,  <40.420597, 36.246243, 38.498310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668533, 35.583431, 38.275261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270172, 35.547703, 38.281025>,  <40.031155, 35.526264, 38.284485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270172, 35.547703, 38.281025>,  <40.668533, 35.583431, 38.275261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270172, 35.547703, 38.281025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025024, -0.424992, -0.904851,
		0.086949, -0.900779, 0.425484,
		-0.995899, -0.089323, 0.014412,
		39.971401, 35.520905, 38.285347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523476, 34.956612, 37.899349>,  <40.668533, 35.583431, 38.275261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523476, 34.956612, 37.899349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173344, 35.149738, 37.909744>,  <39.963264, 35.265614, 37.915981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173344, 35.149738, 37.909744>,  <40.523476, 34.956612, 37.899349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173344, 35.149738, 37.909744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253195, -0.411925, -0.875334,
		-0.411925, -0.772789, 0.482819,
		0.875334, -0.482819, -0.025984,
		39.910744, 35.294582, 37.917538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803764, 34.275837, 37.705162>,  <40.523476, 34.956612, 37.899349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803764, 34.275837, 37.705162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536362, 34.209007, 37.995041>,  <40.375919, 34.168907, 38.168968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536362, 34.209007, 37.995041>,  <40.803764, 34.275837, 37.705162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536362, 34.209007, 37.995041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540848, 0.778063, -0.319533,
		-0.510472, -0.605560, -0.610504,
		-0.668507, -0.167077, 0.724696,
		40.335808, 34.158886, 38.212448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397694, 33.893768, 37.640003>,  <40.803764, 34.275837, 37.705162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397694, 33.893768, 37.640003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706467, 33.641544, 37.607704>,  <41.891731, 33.490211, 37.588326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706467, 33.641544, 37.607704>,  <41.397694, 33.893768, 37.640003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706467, 33.641544, 37.607704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351779, -0.529503, 0.771931,
		-0.529503, -0.567472, -0.630557,
		-0.771931, 0.630557, 0.080749,
		41.938046, 33.452377, 37.583481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091396, 33.252018, 37.745705>,  <41.397694, 33.893768, 37.640003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091396, 33.252018, 37.745705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483101, 33.199631, 37.807537>,  <41.718124, 33.168198, 37.844639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483101, 33.199631, 37.807537>,  <41.091396, 33.252018, 37.745705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483101, 33.199631, 37.807537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202055, -0.575008, 0.792805,
		-0.014946, -0.807597, -0.589545,
		0.979261, -0.130970, 0.154585,
		41.776878, 33.160339, 37.853912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256920, 32.493961, 37.838978>,  <41.091396, 33.252018, 37.745705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256920, 32.493961, 37.838978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561897, 32.689575, 38.008461>,  <41.744884, 32.806942, 38.110149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561897, 32.689575, 38.008461>,  <41.256920, 32.493961, 37.838978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561897, 32.689575, 38.008461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128297, -0.527568, 0.839769,
		0.634209, -0.694636, -0.339499,
		0.762443, 0.489032, 0.423708,
		41.790630, 32.836285, 38.135574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717976, 31.927641, 38.153252>,  <41.256920, 32.493961, 37.838978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717976, 31.927641, 38.153252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837490, 32.263767, 38.334183>,  <41.909199, 32.465443, 38.442741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837490, 32.263767, 38.334183>,  <41.717976, 31.927641, 38.153252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837490, 32.263767, 38.334183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049543, -0.486998, 0.871997,
		0.953034, -0.238130, -0.187140,
		0.298785, 0.840314, 0.452327,
		41.927124, 32.515862, 38.469879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277218, 31.770227, 38.581146>,  <41.717976, 31.927641, 38.153252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277218, 31.770227, 38.581146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113182, 32.095291, 38.746754>,  <42.014759, 32.290329, 38.846119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113182, 32.095291, 38.746754>,  <42.277218, 31.770227, 38.581146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113182, 32.095291, 38.746754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027825, -0.442583, 0.896296,
		0.911621, 0.379081, 0.158886,
		-0.410089, 0.812661, 0.414016,
		41.990154, 32.339088, 38.870960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455959, 31.736969, 39.286434>,  <42.277218, 31.770227, 38.581146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455959, 31.736969, 39.286434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179684, 32.026142, 39.293568>,  <42.013920, 32.199646, 39.297848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179684, 32.026142, 39.293568>,  <42.455959, 31.736969, 39.286434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179684, 32.026142, 39.293568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239751, -0.252184, 0.937509,
		0.682251, 0.643253, 0.347504,
		-0.690691, 0.722931, 0.017832,
		41.972477, 32.243023, 39.298916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505768, 32.012531, 40.010632>,  <42.455959, 31.736969, 39.286434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505768, 32.012531, 40.010632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151833, 32.154827, 39.890293>,  <41.939472, 32.240204, 39.818089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151833, 32.154827, 39.890293>,  <42.505768, 32.012531, 40.010632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151833, 32.154827, 39.890293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362092, -0.118750, 0.924547,
		0.293173, 0.927010, 0.233885,
		-0.884838, 0.355740, -0.300849,
		41.886379, 32.261551, 39.800037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365253, 32.540581, 40.475094>,  <42.505768, 32.012531, 40.010632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365253, 32.540581, 40.475094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012943, 32.437382, 40.316265>,  <41.801556, 32.375462, 40.220966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012943, 32.437382, 40.316265>,  <42.365253, 32.540581, 40.475094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012943, 32.437382, 40.316265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370911, -0.145385, 0.917218,
		-0.294369, 0.955144, 0.032358,
		-0.880779, -0.257998, -0.397070,
		41.748711, 32.359982, 40.197144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042313, 32.741768, 41.069256>,  <42.365253, 32.540581, 40.475094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042313, 32.741768, 41.069256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757000, 32.580315, 40.840065>,  <41.585812, 32.483444, 40.702549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757000, 32.580315, 40.840065>,  <42.042313, 32.741768, 41.069256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757000, 32.580315, 40.840065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584830, -0.107784, 0.803962,
		-0.386262, 0.908551, -0.159175,
		-0.713284, -0.403631, -0.572981,
		41.543015, 32.459225, 40.668171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281044, 33.131413, 41.147717>,  <42.042313, 32.741768, 41.069256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281044, 33.131413, 41.147717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262749, 32.741909, 41.058544>,  <41.251774, 32.508205, 41.005039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262749, 32.741909, 41.058544>,  <41.281044, 33.131413, 41.147717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262749, 32.741909, 41.058544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485419, -0.173381, 0.856918,
		-0.873085, 0.147407, -0.464752,
		-0.045737, -0.973761, -0.222930,
		41.249027, 32.449780, 40.991665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573067, 32.934650, 41.091999>,  <41.281044, 33.131413, 41.147717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573067, 32.934650, 41.091999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748428, 32.580734, 41.155190>,  <40.853645, 32.368385, 41.193104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748428, 32.580734, 41.155190>,  <40.573067, 32.934650, 41.091999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748428, 32.580734, 41.155190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571043, -0.138472, 0.809157,
		-0.694057, -0.444947, -0.565957,
		0.438401, -0.884787, 0.157976,
		40.879948, 32.315300, 41.202583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090141, 32.537991, 41.275951>,  <40.573067, 32.934650, 41.091999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090141, 32.537991, 41.275951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408981, 32.334972, 41.406811>,  <40.600285, 32.213161, 41.485325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408981, 32.334972, 41.406811>,  <40.090141, 32.537991, 41.275951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408981, 32.334972, 41.406811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458140, -0.155393, 0.875192,
		-0.393361, -0.847498, -0.356390,
		0.797104, -0.507543, 0.327147,
		40.648113, 32.182709, 41.504955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764782, 31.912535, 41.532196>,  <40.090141, 32.537991, 41.275951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764782, 31.912535, 41.532196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125660, 31.951149, 41.700352>,  <40.342186, 31.974318, 41.801243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125660, 31.951149, 41.700352>,  <39.764782, 31.912535, 41.532196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125660, 31.951149, 41.700352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404265, -0.150543, 0.902167,
		0.150377, -0.983879, -0.096794,
		0.902196, 0.096534, 0.420386,
		40.396320, 31.980110, 41.826469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869892, 31.349594, 41.950264>,  <39.764782, 31.912535, 41.532196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869892, 31.349594, 41.950264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133659, 31.612783, 42.095722>,  <40.291920, 31.770697, 42.182999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133659, 31.612783, 42.095722>,  <39.869892, 31.349594, 41.950264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133659, 31.612783, 42.095722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387730, -0.116754, 0.914349,
		0.644073, -0.743936, 0.178126,
		0.659420, 0.657972, 0.363644,
		40.331486, 31.810175, 42.204815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030029, 30.586767, 41.799896>,  <39.869892, 31.349594, 41.950264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030029, 30.586767, 41.799896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722923, 30.330677, 41.789783>,  <39.538658, 30.177023, 41.783714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722923, 30.330677, 41.789783>,  <40.030029, 30.586767, 41.799896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722923, 30.330677, 41.789783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154471, 0.223255, -0.962443,
		0.621827, -0.735028, -0.270305,
		-0.767769, -0.640227, -0.025286,
		39.492592, 30.138609, 41.782196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079552, 30.271029, 41.050831>,  <40.030029, 30.586767, 41.799896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079552, 30.271029, 41.050831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702137, 30.234568, 41.178223>,  <39.475689, 30.212690, 41.254658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702137, 30.234568, 41.178223>,  <40.079552, 30.271029, 41.050831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702137, 30.234568, 41.178223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330153, 0.180018, -0.926603,
		0.027132, -0.979431, -0.199949,
		-0.943538, -0.091155, 0.318478,
		39.419075, 30.207222, 41.273766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659473, 29.880472, 40.575272>,  <40.079552, 30.271029, 41.050831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659473, 29.880472, 40.575272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397064, 30.105446, 40.776592>,  <39.239620, 30.240429, 40.897385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397064, 30.105446, 40.776592>,  <39.659473, 29.880472, 40.575272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397064, 30.105446, 40.776592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482810, 0.199828, -0.852621,
		-0.580116, -0.802333, 0.140458,
		-0.656018, 0.562433, 0.503298,
		39.200260, 30.274176, 40.927582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029469, 29.884823, 40.055546>,  <39.659473, 29.880472, 40.575272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029469, 29.884823, 40.055546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958252, 30.161943, 40.335068>,  <38.915524, 30.328217, 40.502781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958252, 30.161943, 40.335068>,  <39.029469, 29.884823, 40.055546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958252, 30.161943, 40.335068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411797, 0.592518, -0.692348,
		-0.893714, -0.411030, 0.179803,
		-0.178040, 0.692803, 0.698803,
		38.904839, 30.369785, 40.544708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392605, 30.012400, 39.955502>,  <39.029469, 29.884823, 40.055546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392605, 30.012400, 39.955502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535397, 30.343517, 40.128628>,  <38.621071, 30.542189, 40.232502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535397, 30.343517, 40.128628>,  <38.392605, 30.012400, 39.955502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535397, 30.343517, 40.128628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464723, 0.559313, -0.686441,
		-0.810309, 0.043905, 0.584356,
		0.356976, 0.827793, 0.432812,
		38.642490, 30.591856, 40.258472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870453, 30.476810, 40.101250>,  <38.392605, 30.012400, 39.955502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870453, 30.476810, 40.101250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198093, 30.701603, 40.055214>,  <38.394680, 30.836477, 40.027592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198093, 30.701603, 40.055214>,  <37.870453, 30.476810, 40.101250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198093, 30.701603, 40.055214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498132, 0.597323, -0.628546,
		-0.284484, 0.572175, 0.769210,
		0.819105, 0.561979, -0.115090,
		38.443825, 30.870197, 40.020687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660378, 31.175158, 40.123032>,  <37.870453, 30.476810, 40.101250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660378, 31.175158, 40.123032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023659, 31.202892, 39.957935>,  <38.241627, 31.219532, 39.858875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023659, 31.202892, 39.957935>,  <37.660378, 31.175158, 40.123032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023659, 31.202892, 39.957935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350836, 0.663855, -0.660463,
		0.228208, 0.744640, 0.627241,
		0.908204, 0.069336, -0.412743,
		38.296120, 31.223694, 39.834114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638966, 31.888460, 39.923172>,  <37.660378, 31.175158, 40.123032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638966, 31.888460, 39.923172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905209, 31.680035, 39.709457>,  <38.064953, 31.554979, 39.581230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905209, 31.680035, 39.709457>,  <37.638966, 31.888460, 39.923172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905209, 31.680035, 39.709457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263660, 0.505559, -0.821519,
		0.698176, 0.687679, 0.199120,
		0.665608, -0.521065, -0.534282,
		38.104893, 31.523716, 39.549171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844589, 32.414894, 39.537552>,  <37.638966, 31.888460, 39.923172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844589, 32.414894, 39.537552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959522, 32.089802, 39.334808>,  <38.028481, 31.894747, 39.213161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959522, 32.089802, 39.334808>,  <37.844589, 32.414894, 39.537552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959522, 32.089802, 39.334808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117302, 0.495334, -0.860746,
		0.950622, 0.306773, 0.046989,
		0.287329, -0.812733, -0.506861,
		38.045719, 31.845982, 39.182751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236954, 32.732754, 39.025166>,  <37.844589, 32.414894, 39.537552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236954, 32.732754, 39.025166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185101, 32.358921, 38.892654>,  <38.153988, 32.134621, 38.813148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185101, 32.358921, 38.892654>,  <38.236954, 32.732754, 39.025166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185101, 32.358921, 38.892654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079934, 0.323160, -0.942963,
		0.988335, -0.148718, 0.032813,
		-0.129631, -0.934586, -0.331278,
		38.146210, 32.078545, 38.793270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762924, 32.511868, 38.419918>,  <38.236954, 32.732754, 39.025166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762924, 32.511868, 38.419918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447502, 32.273575, 38.358891>,  <38.258247, 32.130600, 38.322273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447502, 32.273575, 38.358891>,  <38.762924, 32.511868, 38.419918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447502, 32.273575, 38.358891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011665, 0.233567, -0.972271,
		0.614852, -0.768470, -0.177232,
		-0.788556, -0.595735, -0.152573,
		38.210934, 32.094856, 38.313118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883018, 32.070480, 37.785080>,  <38.762924, 32.511868, 38.419918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883018, 32.070480, 37.785080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484116, 32.072178, 37.814655>,  <38.244774, 32.073196, 37.832401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484116, 32.072178, 37.814655>,  <38.883018, 32.070480, 37.785080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484116, 32.072178, 37.814655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073087, 0.105110, -0.991771,
		-0.011984, -0.994452, -0.104511,
		-0.997254, 0.004247, 0.073941,
		38.184940, 32.073452, 37.836838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.316132, 28.924585, 45.313492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.922470, 28.918837, 45.242798>,  <39.686272, 28.915388, 45.200382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.922470, 28.918837, 45.242798>,  <40.316132, 28.924585, 45.313492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922470, 28.918837, 45.242798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177209, -0.115129, -0.977416,
		-0.006300, -0.993247, 0.115851,
		-0.984153, -0.014372, -0.176738,
		39.627224, 28.914524, 45.189777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111843, 28.312931, 44.832390>,  <40.316132, 28.924585, 45.313492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111843, 28.312931, 44.832390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.829342, 28.595259, 44.810356>,  <39.659843, 28.764654, 44.797134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.829342, 28.595259, 44.810356>,  <40.111843, 28.312931, 44.832390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829342, 28.595259, 44.810356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159567, 0.082892, -0.983701,
		-0.689748, -0.703527, -0.171167,
		-0.706248, 0.705818, -0.055085,
		39.617466, 28.807005, 44.793831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663094, 28.161375, 44.225250>,  <40.111843, 28.312931, 44.832390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663094, 28.161375, 44.225250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.583282, 28.547262, 44.293961>,  <39.535397, 28.778795, 44.335186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.583282, 28.547262, 44.293961>,  <39.663094, 28.161375, 44.225250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583282, 28.547262, 44.293961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054396, 0.185938, -0.981055,
		-0.978382, -0.186401, -0.089576,
		-0.199525, 0.964719, 0.171779,
		39.523426, 28.836678, 44.345493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060001, 28.329027, 43.719639>,  <39.663094, 28.161375, 44.225250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060001, 28.329027, 43.719639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.220757, 28.670057, 43.853268>,  <39.317207, 28.874676, 43.933445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.220757, 28.670057, 43.853268>,  <39.060001, 28.329027, 43.719639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220757, 28.670057, 43.853268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164732, 0.426199, -0.889504,
		-0.900751, 0.302445, 0.311728,
		0.401884, 0.852574, 0.334077,
		39.341320, 28.925829, 43.953491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633755, 28.693489, 43.495956>,  <39.060001, 28.329027, 43.719639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633755, 28.693489, 43.495956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.943512, 28.940550, 43.550827>,  <39.129368, 29.088787, 43.583748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.943512, 28.940550, 43.550827>,  <38.633755, 28.693489, 43.495956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943512, 28.940550, 43.550827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274817, 0.523651, -0.806390,
		-0.569902, 0.586766, 0.575254,
		0.774395, 0.617653, 0.137176,
		39.175831, 29.125845, 43.591980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333664, 29.390383, 43.362404>,  <38.633755, 28.693489, 43.495956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333664, 29.390383, 43.362404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.729908, 29.431391, 43.326206>,  <38.967655, 29.455996, 43.304489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.729908, 29.431391, 43.326206>,  <38.333664, 29.390383, 43.362404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729908, 29.431391, 43.326206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133842, 0.591280, -0.795283,
		-0.028025, 0.799924, 0.599446,
		0.990606, 0.102519, -0.090492,
		39.027088, 29.462147, 43.299057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423504, 30.012897, 43.030998>,  <38.333664, 29.390383, 43.362404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423504, 30.012897, 43.030998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789322, 29.855377, 42.994053>,  <39.008812, 29.760864, 42.971886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789322, 29.855377, 42.994053>,  <38.423504, 30.012897, 43.030998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789322, 29.855377, 42.994053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103969, 0.449533, -0.887193,
		0.390896, 0.801774, 0.452061,
		0.914544, -0.393801, -0.092361,
		39.063686, 29.737236, 42.966343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932655, 30.557655, 42.788132>,  <38.423504, 30.012897, 43.030998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932655, 30.557655, 42.788132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.099792, 30.206747, 42.693638>,  <39.200073, 29.996202, 42.636944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.099792, 30.206747, 42.693638>,  <38.932655, 30.557655, 42.788132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099792, 30.206747, 42.693638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195213, 0.340637, -0.919705,
		0.887299, 0.338177, 0.313588,
		0.417843, -0.877270, -0.236230,
		39.225147, 29.943565, 42.622768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542217, 30.751659, 42.348133>,  <38.932655, 30.557655, 42.788132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542217, 30.751659, 42.348133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.447987, 30.376326, 42.246914>,  <39.391449, 30.151125, 42.186180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.447987, 30.376326, 42.246914>,  <39.542217, 30.751659, 42.348133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447987, 30.376326, 42.246914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052209, 0.272222, -0.960817,
		0.970453, -0.213132, -0.113118,
		-0.235574, -0.938334, -0.253051,
		39.377316, 30.094826, 42.170998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205608, 30.947525, 42.554546>,  <39.542217, 30.751659, 42.348133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205608, 30.947525, 42.554546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.355209, 31.312548, 42.620708>,  <40.444969, 31.531561, 42.660408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.355209, 31.312548, 42.620708>,  <40.205608, 30.947525, 42.554546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355209, 31.312548, 42.620708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091557, -0.141150, 0.985745,
		0.922897, -0.383816, 0.030761,
		0.374003, 0.912558, 0.165408,
		40.467411, 31.586315, 42.670330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529354, 30.944834, 43.134140>,  <40.205608, 30.947525, 42.554546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529354, 30.944834, 43.134140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.533489, 31.343727, 43.104694>,  <40.535969, 31.583063, 43.087029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.533489, 31.343727, 43.104694>,  <40.529354, 30.944834, 43.134140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533489, 31.343727, 43.104694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145026, 0.071340, 0.986853,
		0.989374, -0.020878, -0.143887,
		0.010339, 0.997234, -0.073610,
		40.536591, 31.642897, 43.082611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071533, 31.246691, 43.593567>,  <40.529354, 30.944834, 43.134140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071533, 31.246691, 43.593567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.822525, 31.557409, 43.555500>,  <40.673122, 31.743841, 43.532658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.822525, 31.557409, 43.555500>,  <41.071533, 31.246691, 43.593567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822525, 31.557409, 43.555500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035585, 0.093388, 0.994994,
		0.781798, 0.622786, -0.030493,
		-0.622516, 0.776798, -0.095172,
		40.635769, 31.790449, 43.526947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435345, 31.841709, 43.934334>,  <41.071533, 31.246691, 43.593567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435345, 31.841709, 43.934334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.039513, 31.898270, 43.923508>,  <40.802013, 31.932205, 43.917011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.039513, 31.898270, 43.923508>,  <41.435345, 31.841709, 43.934334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039513, 31.898270, 43.923508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028632, -0.009061, 0.999549,
		0.141092, 0.989911, 0.013015,
		-0.989582, 0.141401, -0.027064,
		40.742638, 31.940691, 43.915390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246220, 32.328102, 44.358166>,  <41.435345, 31.841709, 43.934334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246220, 32.328102, 44.358166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.917953, 32.102570, 44.321079>,  <40.720993, 31.967249, 44.298828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.917953, 32.102570, 44.321079>,  <41.246220, 32.328102, 44.358166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917953, 32.102570, 44.321079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130213, 0.026550, 0.991130,
		-0.556372, 0.825461, -0.095207,
		-0.820667, -0.563835, -0.092715,
		40.671753, 31.933418, 44.293266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799076, 32.661583, 44.915691>,  <41.246220, 32.328102, 44.358166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799076, 32.661583, 44.915691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.640560, 32.307819, 44.817081>,  <40.545448, 32.095562, 44.757915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.640560, 32.307819, 44.817081>,  <40.799076, 32.661583, 44.915691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640560, 32.307819, 44.817081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172772, -0.191877, 0.966092,
		-0.901722, 0.425448, -0.076762,
		-0.396293, -0.884408, -0.246525,
		40.521671, 32.042496, 44.743122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086617, 32.568367, 45.260857>,  <40.799076, 32.661583, 44.915691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086617, 32.568367, 45.260857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.207016, 32.198303, 45.168358>,  <40.279255, 31.976265, 45.112858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.207016, 32.198303, 45.168358>,  <40.086617, 32.568367, 45.260857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207016, 32.198303, 45.168358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148986, -0.285142, 0.946835,
		-0.941913, -0.250547, -0.223665,
		0.301003, -0.925159, -0.231251,
		40.297318, 31.920755, 45.098984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729965, 32.158607, 45.574276>,  <40.086617, 32.568367, 45.260857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729965, 32.158607, 45.574276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.023937, 31.893719, 45.515839>,  <40.200321, 31.734787, 45.480778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.023937, 31.893719, 45.515839>,  <39.729965, 32.158607, 45.574276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023937, 31.893719, 45.515839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033270, -0.250380, 0.967576,
		-0.677325, -0.706241, -0.206044,
		0.734931, -0.662219, -0.146092,
		40.244415, 31.695053, 45.472012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568287, 31.558853, 45.837757>,  <39.729965, 32.158607, 45.574276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568287, 31.558853, 45.837757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.968090, 31.568394, 45.829624>,  <40.207973, 31.574118, 45.824745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.968090, 31.568394, 45.829624>,  <39.568287, 31.558853, 45.837757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968090, 31.568394, 45.829624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027196, -0.337603, 0.940896,
		0.015576, -0.940987, -0.338085,
		0.999509, 0.023850, -0.020333,
		40.267944, 31.575548, 45.823524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799839, 31.048510, 46.242489>,  <39.568287, 31.558853, 45.837757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799839, 31.048510, 46.242489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.153851, 31.233931, 46.225292>,  <40.366257, 31.345184, 46.214973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.153851, 31.233931, 46.225292>,  <39.799839, 31.048510, 46.242489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153851, 31.233931, 46.225292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100290, -0.099658, 0.989955,
		0.454613, -0.880446, -0.134690,
		0.885025, 0.463554, -0.042994,
		40.419357, 31.372997, 46.212395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328056, 30.577898, 46.530678>,  <39.799839, 31.048510, 46.242489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328056, 30.577898, 46.530678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.440712, 30.960239, 46.564201>,  <40.508305, 31.189644, 46.584316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.440712, 30.960239, 46.564201>,  <40.328056, 30.577898, 46.530678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440712, 30.960239, 46.564201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140000, -0.127350, 0.981928,
		0.949253, -0.264813, -0.169686,
		0.281636, 0.955854, 0.083814,
		40.525204, 31.246996, 46.589344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886532, 30.611998, 46.936840>,  <40.328056, 30.577898, 46.530678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886532, 30.611998, 46.936840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.827026, 31.006752, 46.961914>,  <40.791325, 31.243605, 46.976959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.827026, 31.006752, 46.961914>,  <40.886532, 30.611998, 46.936840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827026, 31.006752, 46.961914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189642, -0.033746, 0.981273,
		0.970518, 0.157864, -0.182134,
		-0.148762, 0.986884, 0.062689,
		40.782398, 31.302816, 46.980721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339333, 30.809534, 47.394493>,  <40.886532, 30.611998, 46.936840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339333, 30.809534, 47.394493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.068146, 31.103306, 47.407001>,  <40.905434, 31.279568, 47.414509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.068146, 31.103306, 47.407001>,  <41.339333, 30.809534, 47.394493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068146, 31.103306, 47.407001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053973, 0.007305, 0.998516,
		0.733109, 0.678648, -0.044592,
		-0.677966, 0.734428, 0.031273,
		40.864758, 31.323633, 47.416382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701050, 31.320152, 47.690681>,  <41.339333, 30.809534, 47.394493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701050, 31.320152, 47.690681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.309322, 31.380358, 47.744766>,  <41.074287, 31.416481, 47.777218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.309322, 31.380358, 47.744766>,  <41.701050, 31.320152, 47.690681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309322, 31.380358, 47.744766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090644, -0.271078, 0.958280,
		0.180888, 0.950717, 0.251828,
		-0.979318, 0.150514, 0.135212,
		41.015526, 31.425512, 47.785328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.541496, 32.025299, 46.854355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.929958, 32.091301, 46.923206>,  <36.163036, 32.130901, 46.964516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.929958, 32.091301, 46.923206>,  <35.541496, 32.025299, 46.854355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929958, 32.091301, 46.923206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018311, 0.668143, -0.743808,
		-0.237737, 0.725506, 0.645850,
		0.971157, 0.165005, 0.172127,
		36.221306, 32.140800, 46.974846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720100, 32.809452, 46.792515>,  <35.541496, 32.025299, 46.854355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720100, 32.809452, 46.792515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.076778, 32.633640, 46.749260>,  <36.290787, 32.528152, 46.723309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.076778, 32.633640, 46.749260>,  <35.720100, 32.809452, 46.792515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076778, 32.633640, 46.749260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189937, 0.580187, -0.792027,
		0.410858, 0.685708, 0.600833,
		0.891695, -0.439531, -0.108133,
		36.344288, 32.501781, 46.716820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141205, 33.335159, 46.623295>,  <35.720100, 32.809452, 46.792515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141205, 33.335159, 46.623295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.321983, 33.000751, 46.498833>,  <36.430450, 32.800106, 46.424156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.321983, 33.000751, 46.498833>,  <36.141205, 33.335159, 46.623295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321983, 33.000751, 46.498833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094770, 0.391832, -0.915143,
		0.886997, 0.384107, 0.256316,
		0.451945, -0.836020, -0.311153,
		36.457565, 32.749947, 46.405487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534798, 33.527790, 46.209000>,  <36.141205, 33.335159, 46.623295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534798, 33.527790, 46.209000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568581, 33.145439, 46.096458>,  <36.588848, 32.916027, 46.028934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568581, 33.145439, 46.096458>,  <36.534798, 33.527790, 46.209000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568581, 33.145439, 46.096458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138853, 0.290900, -0.946624,
		0.986705, 0.040881, 0.157295,
		0.084456, -0.955880, -0.281356,
		36.593918, 32.858677, 46.012051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106495, 33.520363, 45.896980>,  <36.534798, 33.527790, 46.209000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106495, 33.520363, 45.896980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.875713, 33.219749, 45.769028>,  <36.737244, 33.039383, 45.692257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.875713, 33.219749, 45.769028>,  <37.106495, 33.520363, 45.896980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875713, 33.219749, 45.769028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019434, 0.378894, -0.925236,
		0.816544, -0.540037, -0.203999,
		-0.576956, -0.751531, -0.319879,
		36.702625, 32.994289, 45.673065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355644, 33.494713, 45.301300>,  <37.106495, 33.520363, 45.896980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355644, 33.494713, 45.301300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.018253, 33.283165, 45.263668>,  <36.815819, 33.156239, 45.241089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.018253, 33.283165, 45.263668>,  <37.355644, 33.494713, 45.301300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018253, 33.283165, 45.263668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023929, 0.211958, -0.976986,
		0.536637, -0.821811, -0.191436,
		-0.843474, -0.528867, -0.094079,
		36.765213, 33.124504, 45.235443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429688, 33.035774, 44.748741>,  <37.355644, 33.494713, 45.301300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429688, 33.035774, 44.748741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.042110, 33.115196, 44.807705>,  <36.809566, 33.162849, 44.843082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.042110, 33.115196, 44.807705>,  <37.429688, 33.035774, 44.748741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042110, 33.115196, 44.807705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105288, 0.208139, -0.972416,
		-0.223764, -0.957733, -0.180768,
		-0.968940, 0.198559, 0.147412,
		36.751427, 33.174763, 44.851929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097496, 32.709278, 44.168926>,  <37.429688, 33.035774, 44.748741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097496, 32.709278, 44.168926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.806973, 32.955681, 44.290920>,  <36.632660, 33.103523, 44.364117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.806973, 32.955681, 44.290920>,  <37.097496, 32.709278, 44.168926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806973, 32.955681, 44.290920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115557, 0.327959, -0.937598,
		-0.677588, -0.716227, -0.167015,
		-0.726307, 0.616005, 0.304986,
		36.589081, 33.140484, 44.382416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663170, 32.616241, 43.648029>,  <37.097496, 32.709278, 44.168926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663170, 32.616241, 43.648029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.500050, 32.923691, 43.845173>,  <36.402176, 33.108162, 43.963459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.500050, 32.923691, 43.845173>,  <36.663170, 32.616241, 43.648029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500050, 32.923691, 43.845173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356359, 0.362995, -0.860955,
		-0.840657, -0.526736, 0.125875,
		-0.407804, 0.768624, 0.492862,
		36.377708, 33.154278, 43.993031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953209, 32.558071, 43.424175>,  <36.663170, 32.616241, 43.648029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953209, 32.558071, 43.424175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.038559, 32.928925, 43.547401>,  <36.089767, 33.151436, 43.621338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.038559, 32.928925, 43.547401>,  <35.953209, 32.558071, 43.424175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038559, 32.928925, 43.547401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525056, 0.374736, -0.764127,
		-0.823887, 0.001294, 0.566753,
		0.213371, 0.927131, 0.308061,
		36.102570, 33.207066, 43.639820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379223, 32.936161, 43.342030>,  <35.953209, 32.558071, 43.424175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379223, 32.936161, 43.342030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.672272, 33.208145, 43.329903>,  <35.848103, 33.371334, 43.322628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.672272, 33.208145, 43.329903>,  <35.379223, 32.936161, 43.342030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672272, 33.208145, 43.329903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343715, 0.331162, -0.878744,
		-0.587469, 0.654210, 0.476329,
		0.732625, 0.679957, -0.030314,
		35.892059, 33.412132, 43.320808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991207, 33.624310, 43.291245>,  <35.379223, 32.936161, 43.342030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991207, 33.624310, 43.291245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.370472, 33.675617, 43.174946>,  <35.598030, 33.706402, 43.105167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.370472, 33.675617, 43.174946>,  <34.991207, 33.624310, 43.291245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370472, 33.675617, 43.174946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317602, 0.351574, -0.880639,
		-0.010735, 0.927332, 0.374087,
		0.948163, 0.128265, -0.290748,
		35.654922, 33.714096, 43.087723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115963, 34.299557, 43.214645>,  <34.991207, 33.624310, 43.291245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115963, 34.299557, 43.214645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.357082, 34.107452, 42.959778>,  <35.501755, 33.992188, 42.806858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.357082, 34.107452, 42.959778>,  <35.115963, 34.299557, 43.214645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357082, 34.107452, 42.959778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348315, 0.560063, -0.751668,
		0.717854, 0.675038, 0.170321,
		0.602795, -0.480263, -0.637170,
		35.537922, 33.963375, 42.768627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269936, 34.766544, 42.778843>,  <35.115963, 34.299557, 43.214645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269936, 34.766544, 42.778843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.356918, 34.432892, 42.576088>,  <35.409107, 34.232700, 42.454433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.356918, 34.432892, 42.576088>,  <35.269936, 34.766544, 42.778843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356918, 34.432892, 42.576088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369932, 0.410139, -0.833628,
		0.903251, 0.368792, -0.219385,
		0.217457, -0.834133, -0.506886,
		35.422157, 34.182652, 42.424023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730576, 35.268391, 43.014694>,  <35.269936, 34.766544, 42.778843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730576, 35.268391, 43.014694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.791706, 35.662983, 43.038380>,  <35.828384, 35.899738, 43.052589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.791706, 35.662983, 43.038380>,  <35.730576, 35.268391, 43.014694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791706, 35.662983, 43.038380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107240, -0.043008, 0.993303,
		0.982418, -0.158150, 0.099217,
		0.152824, 0.986478, 0.059212,
		35.837555, 35.958927, 43.056145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159515, 35.364040, 43.487011>,  <35.730576, 35.268391, 43.014694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159515, 35.364040, 43.487011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.005657, 35.732784, 43.468174>,  <35.913342, 35.954033, 43.456871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.005657, 35.732784, 43.468174>,  <36.159515, 35.364040, 43.487011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005657, 35.732784, 43.468174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020945, 0.042287, 0.998886,
		0.922826, 0.385205, 0.003043,
		-0.384647, 0.921862, -0.047092,
		35.890263, 36.009342, 43.454048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618008, 35.764378, 43.918163>,  <36.159515, 35.364040, 43.487011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618008, 35.764378, 43.918163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.295219, 36.000042, 43.901714>,  <36.101547, 36.141441, 43.891846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.295219, 36.000042, 43.901714>,  <36.618008, 35.764378, 43.918163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295219, 36.000042, 43.901714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009627, 0.056500, 0.998356,
		0.590519, 0.806036, -0.039922,
		-0.806966, 0.589164, -0.041124,
		36.053131, 36.176792, 43.889378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728527, 36.403458, 44.263752>,  <36.618008, 35.764378, 43.918163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728527, 36.403458, 44.263752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.330139, 36.370739, 44.249050>,  <36.091106, 36.351109, 44.240231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.330139, 36.370739, 44.249050>,  <36.728527, 36.403458, 44.263752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330139, 36.370739, 44.249050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042436, 0.068877, 0.996722,
		-0.078994, 0.994266, -0.072071,
		-0.995971, -0.081794, -0.036752,
		36.031349, 36.346199, 44.238026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354427, 36.825672, 44.774643>,  <36.728527, 36.403458, 44.263752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354427, 36.825672, 44.774643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.069057, 36.556076, 44.697945>,  <35.897835, 36.394318, 44.651924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.069057, 36.556076, 44.697945>,  <36.354427, 36.825672, 44.774643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069057, 36.556076, 44.697945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166158, -0.103127, 0.980692,
		-0.680747, 0.731511, -0.038415,
		-0.713425, -0.673986, -0.191749,
		35.855030, 36.353882, 44.640419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906498, 36.972042, 45.311020>,  <36.354427, 36.825672, 44.774643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906498, 36.972042, 45.311020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.796982, 36.616673, 45.163651>,  <35.731274, 36.403450, 45.075230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.796982, 36.616673, 45.163651>,  <35.906498, 36.972042, 45.311020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796982, 36.616673, 45.163651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181609, -0.328419, 0.926908,
		-0.944489, 0.320685, -0.071430,
		-0.273786, -0.888427, -0.368428,
		35.714848, 36.350143, 45.053123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287720, 36.855354, 45.670959>,  <35.906498, 36.972042, 45.311020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287720, 36.855354, 45.670959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.389301, 36.500690, 45.516384>,  <35.450249, 36.287891, 45.423637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.389301, 36.500690, 45.516384>,  <35.287720, 36.855354, 45.670959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389301, 36.500690, 45.516384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212952, -0.440989, 0.871883,
		-0.943482, -0.139126, -0.300808,
		0.253954, -0.886664, -0.386438,
		35.465488, 36.234692, 45.400452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653824, 36.396931, 45.716904>,  <35.287720, 36.855354, 45.670959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653824, 36.396931, 45.716904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.974472, 36.158619, 45.697109>,  <35.166862, 36.015633, 45.685234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.974472, 36.158619, 45.697109>,  <34.653824, 36.396931, 45.716904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974472, 36.158619, 45.697109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323955, -0.502454, 0.801619,
		-0.502454, -0.626563, -0.595784,
		-0.801619, 0.595784, 0.049482,
		35.214958, 35.979885, 45.682266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515171, 35.671803, 45.827942>,  <34.653824, 36.396931, 45.716904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515171, 35.671803, 45.827942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.904037, 35.685120, 45.920715>,  <35.137356, 35.693111, 45.976379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.904037, 35.685120, 45.920715>,  <34.515171, 35.671803, 45.827942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904037, 35.685120, 45.920715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187091, -0.485613, 0.853919,
		0.141064, -0.873540, -0.465864,
		0.972161, 0.033298, 0.231934,
		35.195686, 35.695110, 45.990295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698029, 35.066525, 46.291412>,  <34.515171, 35.671803, 45.827942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698029, 35.066525, 46.291412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.050255, 35.247391, 46.348179>,  <35.261593, 35.355911, 46.382240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.050255, 35.247391, 46.348179>,  <34.698029, 35.066525, 46.291412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050255, 35.247391, 46.348179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022866, -0.339640, 0.940278,
		0.473365, -0.824735, -0.309416,
		0.880570, 0.452170, 0.141916,
		35.314426, 35.383041, 46.390755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171528, 34.465633, 46.496330>,  <34.698029, 35.066525, 46.291412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171528, 34.465633, 46.496330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.349121, 34.807934, 46.602592>,  <35.455677, 35.013313, 46.666351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.349121, 34.807934, 46.602592>,  <35.171528, 34.465633, 46.496330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349121, 34.807934, 46.602592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350149, -0.438601, 0.827662,
		0.824788, -0.274448, -0.494371,
		0.443982, 0.855750, 0.265655,
		35.482315, 35.064659, 46.682289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714226, 34.257584, 46.841549>,  <35.171528, 34.465633, 46.496330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714226, 34.257584, 46.841549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.726883, 34.634361, 46.975258>,  <35.734478, 34.860428, 47.055485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.726883, 34.634361, 46.975258>,  <35.714226, 34.257584, 46.841549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726883, 34.634361, 46.975258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394950, -0.319011, 0.861537,
		0.918157, 0.104757, -0.382117,
		0.031647, 0.941944, 0.334276,
		35.736378, 34.916943, 47.075542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490997, 34.449879, 47.031128>,  <35.714226, 34.257584, 46.841549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490997, 34.449879, 47.031128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.194767, 34.629894, 47.230732>,  <36.017029, 34.737904, 47.350494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.194767, 34.629894, 47.230732>,  <36.490997, 34.449879, 47.031128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194767, 34.629894, 47.230732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368069, -0.349627, 0.861560,
		0.562200, 0.821724, 0.093283,
		-0.740579, 0.450034, 0.499011,
		35.972595, 34.764904, 47.380436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823566, 34.720516, 47.595966>,  <36.490997, 34.449879, 47.031128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823566, 34.720516, 47.595966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.440266, 34.735489, 47.709354>,  <36.210285, 34.744473, 47.777390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.440266, 34.735489, 47.709354>,  <36.823566, 34.720516, 47.595966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440266, 34.735489, 47.709354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258480, -0.310479, 0.914763,
		0.122257, 0.949843, 0.287840,
		-0.958249, 0.037436, 0.283473,
		36.152790, 34.746719, 47.794395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456490, 35.054562, 48.061306>,  <36.823566, 34.720516, 47.595966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456490, 35.054562, 48.061306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848465, 34.974903, 48.064339>,  <38.083652, 34.927109, 48.066158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848465, 34.974903, 48.064339>,  <37.456490, 35.054562, 48.061306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848465, 34.974903, 48.064339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015747, 0.039471, -0.999097,
		0.198664, 0.979175, 0.041815,
		0.979941, -0.199143, 0.007578,
		38.142448, 34.915161, 48.066612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816246, 35.616524, 47.648651>,  <37.456490, 35.054562, 48.061306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816246, 35.616524, 47.648651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.086868, 35.322079, 47.656815>,  <38.249241, 35.145412, 47.661713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.086868, 35.322079, 47.656815>,  <37.816246, 35.616524, 47.648651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086868, 35.322079, 47.656815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236157, 0.190635, -0.952832,
		0.697499, 0.649461, 0.302812,
		0.676554, -0.736111, 0.020407,
		38.289833, 35.101246, 47.662937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449081, 35.910164, 47.334625>,  <37.816246, 35.616524, 47.648651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449081, 35.910164, 47.334625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.482136, 35.514111, 47.289341>,  <38.501968, 35.276478, 47.262169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.482136, 35.514111, 47.289341>,  <38.449081, 35.910164, 47.334625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482136, 35.514111, 47.289341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114384, 0.122270, -0.985883,
		0.989994, 0.068515, 0.123358,
		0.082631, -0.990129, -0.113209,
		38.506924, 35.217072, 47.255379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982243, 35.808323, 46.834106>,  <38.449081, 35.910164, 47.334625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982243, 35.808323, 46.834106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.803078, 35.450737, 46.839935>,  <38.695580, 35.236187, 46.843433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.803078, 35.450737, 46.839935>,  <38.982243, 35.808323, 46.834106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803078, 35.450737, 46.839935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181388, -0.106816, -0.977593,
		0.875486, -0.435230, 0.209998,
		-0.447909, -0.893960, 0.014571,
		38.668705, 35.182549, 46.844307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560669, 35.379055, 46.538876>,  <38.982243, 35.808323, 46.834106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560669, 35.379055, 46.538876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.202229, 35.211147, 46.481197>,  <38.987164, 35.110401, 46.446590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.202229, 35.211147, 46.481197>,  <39.560669, 35.379055, 46.538876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202229, 35.211147, 46.481197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164740, -0.012900, -0.986253,
		0.412137, -0.907540, 0.080713,
		-0.896105, -0.419768, -0.144191,
		38.933395, 35.085217, 46.437939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735729, 34.710632, 46.130135>,  <39.560669, 35.379055, 46.538876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735729, 34.710632, 46.130135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.351219, 34.802437, 46.069118>,  <39.120514, 34.857517, 46.032509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.351219, 34.802437, 46.069118>,  <39.735729, 34.710632, 46.130135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351219, 34.802437, 46.069118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111655, -0.181699, -0.976995,
		-0.251947, -0.956196, 0.149037,
		-0.961278, 0.229511, -0.152543,
		39.062836, 34.871288, 46.023357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433540, 34.251400, 45.684109>,  <39.735729, 34.710632, 46.130135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433540, 34.251400, 45.684109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.179958, 34.559017, 45.651432>,  <39.027809, 34.743587, 45.631828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.179958, 34.559017, 45.651432>,  <39.433540, 34.251400, 45.684109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179958, 34.559017, 45.651432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171371, 0.036689, -0.984523,
		-0.754147, -0.638139, -0.155052,
		-0.633952, 0.769046, -0.081690,
		38.989773, 34.789730, 45.626926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126892, 34.150345, 44.991360>,  <39.433540, 34.251400, 45.684109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126892, 34.150345, 44.991360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037125, 34.528526, 45.085804>,  <38.983265, 34.755436, 45.142471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037125, 34.528526, 45.085804>,  <39.126892, 34.150345, 44.991360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037125, 34.528526, 45.085804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014296, 0.245454, -0.969303,
		-0.974388, -0.214156, -0.068601,
		-0.224420, 0.945457, 0.236106,
		38.969799, 34.812164, 45.156635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509178, 34.242569, 44.566433>,  <39.126892, 34.150345, 44.991360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509178, 34.242569, 44.566433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.664120, 34.600471, 44.655308>,  <38.757084, 34.815212, 44.708633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.664120, 34.600471, 44.655308>,  <38.509178, 34.242569, 44.566433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664120, 34.600471, 44.655308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232054, 0.138618, -0.962775,
		-0.892247, 0.424499, -0.153937,
		0.387359, 0.894755, 0.222188,
		38.780327, 34.868896, 44.721966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426769, 34.679283, 44.019794>,  <38.509178, 34.242569, 44.566433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426769, 34.679283, 44.019794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.714340, 34.896549, 44.193283>,  <38.886883, 35.026909, 44.297379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.714340, 34.896549, 44.193283>,  <38.426769, 34.679283, 44.019794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714340, 34.896549, 44.193283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194079, 0.442311, -0.875611,
		-0.667439, 0.713679, 0.212574,
		0.718928, 0.543161, 0.433726,
		38.930019, 35.059498, 44.323402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146702, 35.297688, 44.000290>,  <38.426769, 34.679283, 44.019794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146702, 35.297688, 44.000290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.545944, 35.303101, 44.024307>,  <38.785488, 35.306347, 44.038719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.545944, 35.303101, 44.024307>,  <38.146702, 35.297688, 44.000290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545944, 35.303101, 44.024307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039103, 0.613971, -0.788359,
		-0.047534, 0.789212, 0.612278,
		0.998104, 0.013532, 0.060045,
		38.845375, 35.307159, 44.042320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326145, 35.910358, 43.751759>,  <38.146702, 35.297688, 44.000290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326145, 35.910358, 43.751759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.694691, 35.756496, 43.729397>,  <38.915817, 35.664177, 43.715981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.694691, 35.756496, 43.729397>,  <38.326145, 35.910358, 43.751759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694691, 35.756496, 43.729397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124079, 0.427346, -0.895533,
		0.368364, 0.818176, 0.441470,
		0.921364, -0.384660, -0.055901,
		38.971100, 35.641098, 43.712627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796783, 36.486298, 43.384659>,  <38.326145, 35.910358, 43.751759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796783, 36.486298, 43.384659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.007492, 36.151028, 43.328117>,  <39.133915, 35.949867, 43.294193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.007492, 36.151028, 43.328117>,  <38.796783, 36.486298, 43.384659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007492, 36.151028, 43.328117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294539, 0.335979, -0.894631,
		0.797348, 0.429629, 0.423858,
		0.526767, -0.838175, -0.141350,
		39.165524, 35.899574, 43.285713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429150, 36.707836, 42.992844>,  <38.796783, 36.486298, 43.384659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429150, 36.707836, 42.992844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.414520, 36.310528, 42.948898>,  <39.405743, 36.072144, 42.922531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.414520, 36.310528, 42.948898>,  <39.429150, 36.707836, 42.992844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414520, 36.310528, 42.948898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353348, 0.089978, -0.931155,
		0.934777, -0.072876, 0.347680,
		-0.036575, -0.993274, -0.109860,
		39.403549, 36.012547, 42.915939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.718840, 30.496096, 43.078747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.429638, 30.706036, 43.258434>,  <28.256117, 30.831999, 43.366245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.429638, 30.706036, 43.258434>,  <28.718840, 30.496096, 43.078747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429638, 30.706036, 43.258434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356589, 0.273406, -0.893361,
		-0.591699, -0.806090, -0.010518,
		-0.723005, 0.524850, 0.449217,
		28.212736, 30.863491, 43.393200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009775, 30.265989, 42.762226>,  <28.718840, 30.496096, 43.078747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009775, 30.265989, 42.762226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.014677, 30.632452, 42.922478>,  <28.017618, 30.852329, 43.018627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.014677, 30.632452, 42.922478>,  <28.009775, 30.265989, 42.762226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014677, 30.632452, 42.922478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332627, 0.381577, -0.862414,
		-0.942979, -0.122690, 0.309416,
		0.012256, 0.916159, 0.400629,
		28.018354, 30.907299, 43.042667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.278236, 30.516706, 42.587017>,  <28.009775, 30.265989, 42.762226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.278236, 30.516706, 42.587017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.536053, 30.817793, 42.640656>,  <27.690742, 30.998446, 42.672840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.536053, 30.817793, 42.640656>,  <27.278236, 30.516706, 42.587017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536053, 30.817793, 42.640656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201708, 0.336587, -0.919795,
		-0.737481, 0.565798, 0.368773,
		0.644543, 0.752716, 0.134101,
		27.729416, 31.043608, 42.680885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033382, 30.922213, 42.151279>,  <27.278236, 30.516706, 42.587017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033382, 30.922213, 42.151279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381319, 31.106022, 42.223076>,  <27.590080, 31.216307, 42.266155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381319, 31.106022, 42.223076>,  <27.033382, 30.922213, 42.151279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381319, 31.106022, 42.223076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153491, 0.597861, -0.786767,
		-0.468847, 0.656812, 0.590576,
		0.869841, 0.459521, 0.179490,
		27.642271, 31.243877, 42.276924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.937557, 31.691023, 42.129787>,  <27.033382, 30.922213, 42.151279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.937557, 31.691023, 42.129787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.311808, 31.576475, 42.047234>,  <27.536358, 31.507748, 41.997700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.311808, 31.576475, 42.047234>,  <26.937557, 31.691023, 42.129787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.311808, 31.576475, 42.047234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026217, 0.526686, -0.849655,
		0.352014, 0.800372, 0.485274,
		0.935627, -0.286368, -0.206385,
		27.592495, 31.490564, 41.985317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302794, 32.355793, 42.118004>,  <26.937557, 31.691023, 42.129787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302794, 32.355793, 42.118004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.525841, 32.084747, 41.926216>,  <27.659670, 31.922119, 41.811142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.525841, 32.084747, 41.926216>,  <27.302794, 32.355793, 42.118004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525841, 32.084747, 41.926216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105965, 0.630992, -0.768518,
		0.823305, 0.377734, 0.423658,
		0.557620, -0.677618, -0.479473,
		27.693127, 31.881462, 41.782375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758549, 32.768341, 41.825279>,  <27.302794, 32.355793, 42.118004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758549, 32.768341, 41.825279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.844166, 32.440983, 41.611958>,  <27.895536, 32.244568, 41.483967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.844166, 32.440983, 41.611958>,  <27.758549, 32.768341, 41.825279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844166, 32.440983, 41.611958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198108, 0.570977, -0.796705,
		0.956525, 0.064876, 0.284344,
		0.214041, -0.818399, -0.533301,
		27.908379, 32.195465, 41.451965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357162, 32.862682, 41.330044>,  <27.758549, 32.768341, 41.825279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357162, 32.862682, 41.330044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.164427, 32.557041, 41.158474>,  <28.048784, 32.373657, 41.055531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.164427, 32.557041, 41.158474>,  <28.357162, 32.862682, 41.330044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164427, 32.557041, 41.158474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046099, 0.510927, -0.858387,
		0.875046, -0.393832, -0.281410,
		-0.481840, -0.764101, -0.428929,
		28.019875, 32.327812, 41.029797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742378, 32.731487, 40.726883>,  <28.357162, 32.862682, 41.330044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742378, 32.731487, 40.726883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.378382, 32.571949, 40.681561>,  <28.159985, 32.476227, 40.654366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.378382, 32.571949, 40.681561>,  <28.742378, 32.731487, 40.726883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378382, 32.571949, 40.681561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052836, 0.382594, -0.922405,
		0.411249, -0.833393, -0.369230,
		-0.909990, -0.398846, -0.113308,
		28.105385, 32.452293, 40.647568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758904, 32.384792, 40.015633>,  <28.742378, 32.731487, 40.726883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758904, 32.384792, 40.015633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.379854, 32.432678, 40.134071>,  <28.152424, 32.461411, 40.205135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.379854, 32.432678, 40.134071>,  <28.758904, 32.384792, 40.015633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379854, 32.432678, 40.134071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221211, 0.422702, -0.878856,
		-0.230374, -0.898327, -0.374081,
		-0.947625, 0.119714, 0.296100,
		28.095566, 32.468594, 40.222900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455936, 32.433819, 39.365509>,  <28.758904, 32.384792, 40.015633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455936, 32.433819, 39.365509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.155071, 32.561604, 39.596054>,  <27.974552, 32.638275, 39.734383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.155071, 32.561604, 39.596054>,  <28.455936, 32.433819, 39.365509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155071, 32.561604, 39.596054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253176, 0.667417, -0.700326,
		-0.608401, -0.672681, -0.421127,
		-0.752164, 0.319460, 0.576364,
		27.929422, 32.657440, 39.768963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732460, 32.281319, 39.012688>,  <28.455936, 32.433819, 39.365509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732460, 32.281319, 39.012688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.745005, 32.612125, 39.237206>,  <27.752531, 32.810612, 39.371918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.745005, 32.612125, 39.237206>,  <27.732460, 32.281319, 39.012688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745005, 32.612125, 39.237206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111942, 0.560946, -0.820249,
		-0.993220, -0.037108, 0.110170,
		0.031362, 0.827020, 0.561297,
		27.754414, 32.860233, 39.405594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289022, 32.722664, 38.649590>,  <27.732460, 32.281319, 39.012688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289022, 32.722664, 38.649590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.439342, 32.979092, 38.917259>,  <27.529533, 33.132950, 39.077862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.439342, 32.979092, 38.917259>,  <27.289022, 32.722664, 38.649590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439342, 32.979092, 38.917259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038662, 0.710633, -0.702500,
		-0.925894, 0.289871, 0.242270,
		0.375799, 0.641074, 0.669179,
		27.552082, 33.171413, 39.118011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955675, 33.305950, 38.554081>,  <27.289022, 32.722664, 38.649590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955675, 33.305950, 38.554081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.301861, 33.418884, 38.719616>,  <27.509573, 33.486645, 38.818935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.301861, 33.418884, 38.719616>,  <26.955675, 33.305950, 38.554081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301861, 33.418884, 38.719616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132205, 0.668065, -0.732265,
		-0.483209, 0.688461, 0.540861,
		0.865466, 0.282333, 0.413833,
		27.561501, 33.503586, 38.843765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854172, 33.988049, 38.505501>,  <26.955675, 33.305950, 38.554081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854172, 33.988049, 38.505501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.244764, 33.922710, 38.561783>,  <27.479120, 33.883507, 38.595554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.244764, 33.922710, 38.561783>,  <26.854172, 33.988049, 38.505501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244764, 33.922710, 38.561783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209391, 0.563086, -0.799431,
		0.051355, 0.810093, 0.584047,
		0.976483, -0.163349, 0.140709,
		27.537708, 33.873707, 38.603996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139439, 34.575912, 38.334686>,  <26.854172, 33.988049, 38.505501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.139439, 34.575912, 38.334686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.459471, 34.336372, 38.320545>,  <27.651491, 34.192650, 38.312061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.459471, 34.336372, 38.320545>,  <27.139439, 34.575912, 38.334686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459471, 34.336372, 38.320545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343550, 0.505714, -0.791345,
		0.491773, 0.620995, 0.610347,
		0.800083, -0.598847, -0.035353,
		27.699495, 34.156719, 38.309940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806826, 35.018219, 38.135410>,  <27.139439, 34.575912, 38.334686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806826, 35.018219, 38.135410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.880060, 34.636002, 38.042957>,  <27.924002, 34.406673, 37.987484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.880060, 34.636002, 38.042957>,  <27.806826, 35.018219, 38.135410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880060, 34.636002, 38.042957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529973, 0.293952, -0.795437,
		0.828014, 0.023141, 0.560230,
		0.183088, -0.955540, -0.231133,
		27.934986, 34.349339, 37.973618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485369, 34.994724, 37.756763>,  <27.806826, 35.018219, 38.135410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485369, 34.994724, 37.756763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.360779, 34.626503, 37.662472>,  <28.286024, 34.405571, 37.605896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.360779, 34.626503, 37.662472>,  <28.485369, 34.994724, 37.756763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360779, 34.626503, 37.662472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198700, 0.179490, -0.963484,
		0.929248, -0.346940, 0.127007,
		-0.311475, -0.920552, -0.235727,
		28.267336, 34.350338, 37.591755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070801, 34.858841, 37.168850>,  <28.485369, 34.994724, 37.756763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070801, 34.858841, 37.168850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792242, 34.575928, 37.120228>,  <28.625107, 34.406178, 37.091053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792242, 34.575928, 37.120228>,  <29.070801, 34.858841, 37.168850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792242, 34.575928, 37.120228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027016, 0.195099, -0.980411,
		0.717148, -0.679472, -0.154975,
		-0.696397, -0.707286, -0.121558,
		28.583323, 34.363743, 37.083759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228716, 34.319340, 36.626659>,  <29.070801, 34.858841, 37.168850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228716, 34.319340, 36.626659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.831566, 34.354816, 36.658482>,  <28.593275, 34.376102, 36.677574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.831566, 34.354816, 36.658482>,  <29.228716, 34.319340, 36.626659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831566, 34.354816, 36.658482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054896, 0.252050, -0.966156,
		-0.105744, -0.963641, -0.245386,
		-0.992877, 0.088694, 0.079553,
		28.533703, 34.381424, 36.682346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981382, 34.484207, 36.653473>,  <29.228716, 34.319340, 36.626659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981382, 34.484207, 36.653473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.371481, 34.559254, 36.700291>,  <30.605539, 34.604282, 36.728382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.371481, 34.559254, 36.700291>,  <29.981382, 34.484207, 36.653473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371481, 34.559254, 36.700291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049847, -0.329145, 0.942963,
		0.215439, -0.925453, -0.311645,
		0.975244, 0.187616, 0.117042,
		30.664055, 34.615540, 36.735405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270987, 33.907524, 36.985291>,  <29.981382, 34.484207, 36.653473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270987, 33.907524, 36.985291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.493216, 34.226181, 37.080540>,  <30.626553, 34.417374, 37.137688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.493216, 34.226181, 37.080540>,  <30.270987, 33.907524, 36.985291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493216, 34.226181, 37.080540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028601, -0.267905, 0.963021,
		0.830976, -0.541838, -0.126056,
		0.555572, 0.796642, 0.238120,
		30.659887, 34.465172, 37.151978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539986, 33.693928, 37.567078>,  <30.270987, 33.907524, 36.985291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539986, 33.693928, 37.567078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.656590, 34.076294, 37.552937>,  <30.726553, 34.305714, 37.544453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.656590, 34.076294, 37.552937>,  <30.539986, 33.693928, 37.567078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656590, 34.076294, 37.552937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060957, 0.018324, 0.997972,
		0.954624, -0.293074, -0.052928,
		0.291510, 0.955914, -0.035357,
		30.744043, 34.363068, 37.542328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007923, 33.639923, 38.050419>,  <30.539986, 33.693928, 37.567078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007923, 33.639923, 38.050419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.895388, 34.021305, 38.007027>,  <30.827868, 34.250134, 37.980991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.895388, 34.021305, 38.007027>,  <31.007923, 33.639923, 38.050419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895388, 34.021305, 38.007027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026453, 0.120714, 0.992335,
		0.959244, 0.276311, -0.059183,
		-0.281338, 0.953457, -0.108485,
		30.810986, 34.307343, 37.974480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381590, 33.973236, 38.627754>,  <31.007923, 33.639923, 38.050419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381590, 33.973236, 38.627754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.085033, 34.218079, 38.517723>,  <30.907101, 34.364983, 38.451706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.085033, 34.218079, 38.517723>,  <31.381590, 33.973236, 38.627754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085033, 34.218079, 38.517723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236640, 0.145113, 0.960700,
		0.627968, 0.777346, 0.037264,
		-0.741389, 0.612107, -0.275077,
		30.862617, 34.401711, 38.435200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469158, 34.613876, 39.060360>,  <31.381590, 33.973236, 38.627754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469158, 34.613876, 39.060360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.084135, 34.559826, 38.966362>,  <30.853121, 34.527397, 38.909962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.084135, 34.559826, 38.966362>,  <31.469158, 34.613876, 39.060360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084135, 34.559826, 38.966362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249362, 0.101440, 0.963083,
		-0.106296, 0.985623, -0.131336,
		-0.962559, -0.135122, -0.234994,
		30.795368, 34.519291, 38.895863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108633, 35.112934, 39.493465>,  <31.469158, 34.613876, 39.060360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108633, 35.112934, 39.493465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.815701, 34.854290, 39.408070>,  <30.639940, 34.699104, 39.356831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.815701, 34.854290, 39.408070>,  <31.108633, 35.112934, 39.493465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815701, 34.854290, 39.408070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319164, 0.048998, 0.946432,
		-0.601516, 0.761242, -0.242259,
		-0.732334, -0.646615, -0.213488,
		30.596001, 34.660305, 39.344025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525982, 35.423256, 39.717403>,  <31.108633, 35.112934, 39.493465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525982, 35.423256, 39.717403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.448801, 35.031643, 39.691254>,  <30.402493, 34.796677, 39.675564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.448801, 35.031643, 39.691254>,  <30.525982, 35.423256, 39.717403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448801, 35.031643, 39.691254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166233, -0.033042, 0.985533,
		-0.967024, 0.201028, -0.156371,
		-0.192953, -0.979028, -0.065370,
		30.390915, 34.737934, 39.671642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928617, 35.354687, 40.065311>,  <30.525982, 35.423256, 39.717403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928617, 35.354687, 40.065311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.064802, 34.978615, 40.070038>,  <30.146513, 34.752972, 40.072876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.064802, 34.978615, 40.070038>,  <29.928617, 35.354687, 40.065311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064802, 34.978615, 40.070038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308079, -0.099667, 0.946126,
		-0.888355, -0.325760, -0.323584,
		0.340461, -0.940185, 0.011820,
		30.166941, 34.696560, 40.073586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428963, 34.874680, 40.428432>,  <29.928617, 35.354687, 40.065311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428963, 34.874680, 40.428432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.781708, 34.686989, 40.446953>,  <29.993355, 34.574375, 40.458065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.781708, 34.686989, 40.446953>,  <29.428963, 34.874680, 40.428432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781708, 34.686989, 40.446953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207644, -0.298318, 0.931606,
		-0.423325, -0.831162, -0.360508,
		0.881862, -0.469229, 0.046300,
		30.046267, 34.546219, 40.460842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331743, 34.308014, 40.752533>,  <29.428963, 34.874680, 40.428432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331743, 34.308014, 40.752533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.726324, 34.336334, 40.811726>,  <29.963072, 34.353329, 40.847240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.726324, 34.336334, 40.811726>,  <29.331743, 34.308014, 40.752533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726324, 34.336334, 40.811726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123614, -0.272179, 0.954274,
		0.107844, -0.959638, -0.259739,
		0.986453, 0.070805, 0.147978,
		30.022261, 34.357574, 40.856117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416937, 33.647541, 41.130424>,  <29.331743, 34.308014, 40.752533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416937, 33.647541, 41.130424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.746780, 33.869213, 41.175858>,  <29.944687, 34.002216, 41.203117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.746780, 33.869213, 41.175858>,  <29.416937, 33.647541, 41.130424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746780, 33.869213, 41.175858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018020, -0.226416, 0.973864,
		0.565417, -0.801009, -0.196691,
		0.824608, 0.554184, 0.113585,
		29.994164, 34.035469, 41.209934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884832, 33.215584, 41.343143>,  <29.416937, 33.647541, 41.130424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884832, 33.215584, 41.343143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.047377, 33.557777, 41.471527>,  <30.144903, 33.763096, 41.548557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.047377, 33.557777, 41.471527>,  <29.884832, 33.215584, 41.343143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047377, 33.557777, 41.471527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199188, -0.425759, 0.882640,
		0.891737, -0.294739, -0.343414,
		0.406360, 0.855487, 0.320957,
		30.169285, 33.814423, 41.567814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688570, 33.050373, 41.495472>,  <29.884832, 33.215584, 41.343143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688570, 33.050373, 41.495472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.549124, 33.365795, 41.698116>,  <30.465456, 33.555046, 41.819702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.549124, 33.365795, 41.698116>,  <30.688570, 33.050373, 41.495472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549124, 33.365795, 41.698116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121601, -0.497897, 0.858668,
		0.929344, 0.360950, 0.077687,
		-0.348616, 0.788552, 0.506610,
		30.444538, 33.602360, 41.850098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968481, 33.101181, 42.163795>,  <30.688570, 33.050373, 41.495472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968481, 33.101181, 42.163795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.685890, 33.370621, 42.250660>,  <30.516336, 33.532284, 42.302780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.685890, 33.370621, 42.250660>,  <30.968481, 33.101181, 42.163795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685890, 33.370621, 42.250660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033818, -0.338616, 0.940317,
		0.706929, 0.656967, 0.262003,
		-0.706475, 0.673598, 0.217160,
		30.473948, 33.572701, 42.315807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174231, 33.320911, 42.730366>,  <30.968481, 33.101181, 42.163795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174231, 33.320911, 42.730366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.781103, 33.394138, 42.720955>,  <30.545227, 33.438072, 42.715309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.781103, 33.394138, 42.720955>,  <31.174231, 33.320911, 42.730366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781103, 33.394138, 42.720955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099882, -0.420316, 0.901864,
		0.155209, 0.888719, 0.431379,
		-0.982819, 0.183064, -0.023530,
		30.486258, 33.449059, 42.713898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061930, 33.582981, 43.475693>,  <31.174231, 33.320911, 42.730366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061930, 33.582981, 43.475693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.715265, 33.488239, 43.300056>,  <30.507267, 33.431393, 43.194675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.715265, 33.488239, 43.300056>,  <31.061930, 33.582981, 43.475693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715265, 33.488239, 43.300056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290421, -0.476107, 0.830047,
		-0.405654, 0.846889, 0.343835,
		-0.866660, -0.236855, -0.439090,
		30.455267, 33.417183, 43.168331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448130, 33.874428, 43.831966>,  <31.061930, 33.582981, 43.475693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448130, 33.874428, 43.831966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.326420, 33.548771, 43.634144>,  <30.253395, 33.353378, 43.515450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.326420, 33.548771, 43.634144>,  <30.448130, 33.874428, 43.831966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326420, 33.548771, 43.634144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410885, -0.356226, 0.839212,
		-0.859413, 0.458557, -0.226129,
		-0.304274, -0.814143, -0.494560,
		30.235138, 33.304527, 43.485775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819754, 33.742489, 44.138813>,  <30.448130, 33.874428, 43.831966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819754, 33.742489, 44.138813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.896339, 33.398952, 43.948765>,  <29.942291, 33.192833, 43.834736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.896339, 33.398952, 43.948765>,  <29.819754, 33.742489, 44.138813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896339, 33.398952, 43.948765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505917, -0.501171, 0.702051,
		-0.841064, 0.105951, -0.530458,
		0.191467, -0.858838, -0.475120,
		29.953779, 33.141300, 43.806229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115789, 33.403854, 44.097748>,  <29.819754, 33.742489, 44.138813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115789, 33.403854, 44.097748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.409655, 33.134712, 44.063015>,  <29.585974, 32.973228, 44.042175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.409655, 33.134712, 44.063015>,  <29.115789, 33.403854, 44.097748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409655, 33.134712, 44.063015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537311, -0.655202, 0.531044,
		-0.414205, -0.343484, -0.842884,
		0.734664, -0.672852, -0.086830,
		29.630054, 32.932858, 44.036964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806324, 32.789654, 43.878811>,  <29.115789, 33.403854, 44.097748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806324, 32.789654, 43.878811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.153561, 32.657028, 44.026581>,  <29.361902, 32.577454, 44.115242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.153561, 32.657028, 44.026581>,  <28.806324, 32.789654, 43.878811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153561, 32.657028, 44.026581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483367, -0.734030, 0.477028,
		0.113003, -0.592674, -0.797476,
		0.868094, -0.331568, 0.369426,
		29.413988, 32.557556, 44.137409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935736, 32.038204, 43.718807>,  <28.806324, 32.789654, 43.878811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935736, 32.038204, 43.718807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.142725, 32.131168, 44.048222>,  <29.266918, 32.186947, 44.245869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.142725, 32.131168, 44.048222>,  <28.935736, 32.038204, 43.718807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142725, 32.131168, 44.048222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411731, -0.776051, 0.477726,
		0.750132, -0.586285, -0.305895,
		0.517474, 0.232411, 0.823533,
		29.297968, 32.200893, 44.295280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.676956, 31.847441, 48.320889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.309044, 31.698013, 48.272808>,  <41.088295, 31.608356, 48.243958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.309044, 31.698013, 48.272808>,  <41.676956, 31.847441, 48.320889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309044, 31.698013, 48.272808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047974, -0.196969, 0.979235,
		-0.389490, 0.906448, 0.163247,
		-0.919780, -0.373571, -0.120204,
		41.033112, 31.585941, 48.236748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295399, 31.980307, 49.013905>,  <41.676956, 31.847441, 48.320889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295399, 31.980307, 49.013905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.054615, 31.717321, 48.832626>,  <40.910145, 31.559530, 48.723858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.054615, 31.717321, 48.832626>,  <41.295399, 31.980307, 49.013905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054615, 31.717321, 48.832626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455886, -0.183001, 0.871022,
		-0.655600, 0.730926, -0.189569,
		-0.601961, -0.657463, -0.453194,
		40.874027, 31.520082, 48.696667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626366, 32.150040, 49.275330>,  <41.295399, 31.980307, 49.013905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626366, 32.150040, 49.275330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.568897, 31.776442, 49.144482>,  <40.534416, 31.552282, 49.065971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.568897, 31.776442, 49.144482>,  <40.626366, 32.150040, 49.275330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568897, 31.776442, 49.144482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790514, -0.090546, 0.605715,
		-0.595356, 0.345613, -0.725330,
		-0.143667, -0.933999, -0.327118,
		40.525799, 31.496243, 49.046345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925652, 32.124199, 49.132343>,  <40.626366, 32.150040, 49.275330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925652, 32.124199, 49.132343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.069256, 31.758089, 49.205421>,  <40.155418, 31.538424, 49.249268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.069256, 31.758089, 49.205421>,  <39.925652, 32.124199, 49.132343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069256, 31.758089, 49.205421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752514, -0.168069, 0.636769,
		-0.552115, -0.366090, -0.749098,
		0.359015, -0.915276, 0.182695,
		40.176960, 31.483505, 49.260231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424206, 31.598274, 48.907482>,  <39.925652, 32.124199, 49.132343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424206, 31.598274, 48.907482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.667759, 31.437601, 49.181099>,  <39.813892, 31.341198, 49.345268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.667759, 31.437601, 49.181099>,  <39.424206, 31.598274, 48.907482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667759, 31.437601, 49.181099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787305, -0.200558, 0.583032,
		-0.097001, -0.893550, -0.438360,
		0.608885, -0.401678, 0.684042,
		39.850426, 31.317097, 49.386311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989628, 31.133612, 49.134483>,  <39.424206, 31.598274, 48.907482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989628, 31.133612, 49.134483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.268780, 31.125063, 49.420841>,  <39.436272, 31.119934, 49.592655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.268780, 31.125063, 49.420841>,  <38.989628, 31.133612, 49.134483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268780, 31.125063, 49.420841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696928, -0.250655, 0.671910,
		0.165082, -0.967841, -0.189822,
		0.697882, -0.021372, 0.715894,
		39.478146, 31.118650, 49.635609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880730, 30.468246, 49.620037>,  <38.989628, 31.133612, 49.134483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880730, 30.468246, 49.620037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.102116, 30.705143, 49.854275>,  <39.234947, 30.847281, 49.994820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.102116, 30.705143, 49.854275>,  <38.880730, 30.468246, 49.620037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102116, 30.705143, 49.854275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669817, -0.101364, 0.735575,
		0.494998, -0.799359, 0.340593,
		0.553465, 0.592243, 0.585598,
		39.268154, 30.882816, 50.029953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824833, 30.166885, 50.334312>,  <38.880730, 30.468246, 49.620037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824833, 30.166885, 50.334312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.905880, 30.557751, 50.359924>,  <38.954510, 30.792271, 50.375290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.905880, 30.557751, 50.359924>,  <38.824833, 30.166885, 50.334312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905880, 30.557751, 50.359924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717174, 0.103550, 0.689158,
		0.666789, -0.185555, 0.721777,
		0.202617, 0.977163, 0.064029,
		38.966663, 30.850899, 50.379131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817474, 30.157745, 51.085346>,  <38.824833, 30.166885, 50.334312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817474, 30.157745, 51.085346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.808125, 30.530588, 50.940773>,  <38.802513, 30.754293, 50.854031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.808125, 30.530588, 50.940773>,  <38.817474, 30.157745, 51.085346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808125, 30.530588, 50.940773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568761, 0.284918, 0.771578,
		0.822170, 0.223606, 0.523485,
		-0.023379, 0.932106, -0.361429,
		38.801109, 30.810221, 50.832344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966881, 30.581211, 51.634373>,  <38.817474, 30.157745, 51.085346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966881, 30.581211, 51.634373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.767284, 30.795834, 51.362160>,  <38.647526, 30.924606, 51.198833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.767284, 30.795834, 51.362160>,  <38.966881, 30.581211, 51.634373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767284, 30.795834, 51.362160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602412, 0.349757, 0.717474,
		0.622984, 0.767970, 0.148702,
		-0.498989, 0.536555, -0.680528,
		38.617588, 30.956800, 51.158001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704330, 31.157988, 52.064934>,  <38.966881, 30.581211, 51.634373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704330, 31.157988, 52.064934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.513271, 31.195385, 51.715508>,  <38.398636, 31.217823, 51.505852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.513271, 31.195385, 51.715508>,  <38.704330, 31.157988, 52.064934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513271, 31.195385, 51.715508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845307, 0.222031, 0.485961,
		0.239392, 0.970547, -0.027022,
		-0.477647, 0.093493, -0.873563,
		38.369976, 31.223433, 51.453438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432465, 31.887068, 51.901402>,  <38.704330, 31.157988, 52.064934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432465, 31.887068, 51.901402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.214779, 31.602509, 51.723530>,  <38.084167, 31.431772, 51.616806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.214779, 31.602509, 51.723530>,  <38.432465, 31.887068, 51.901402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214779, 31.602509, 51.723530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778067, 0.229755, 0.584657,
		-0.313757, 0.664172, -0.678552,
		-0.544214, -0.711399, -0.444683,
		38.051514, 31.389090, 51.590126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573711, 32.664135, 51.877876>,  <38.432465, 31.887068, 51.901402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573711, 32.664135, 51.877876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.896294, 32.584282, 51.655243>,  <39.089844, 32.536369, 51.521664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.896294, 32.584282, 51.655243>,  <38.573711, 32.664135, 51.877876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896294, 32.584282, 51.655243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538177, 0.637738, 0.551050,
		0.244946, -0.743934, 0.621743,
		0.806454, -0.199630, -0.556579,
		39.138229, 32.524391, 51.488270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169998, 32.516502, 52.370579>,  <38.573711, 32.664135, 51.877876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169998, 32.516502, 52.370579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.298466, 32.666752, 52.022842>,  <39.375546, 32.756901, 51.814201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.298466, 32.666752, 52.022842>,  <39.169998, 32.516502, 52.370579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298466, 32.666752, 52.022842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625572, 0.605037, 0.492533,
		0.710994, -0.702021, -0.040666,
		0.321164, 0.375628, -0.869343,
		39.394814, 32.779442, 51.762039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008980, 32.211384, 52.983498>,  <39.169998, 32.516502, 52.370579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008980, 32.211384, 52.983498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.746853, 32.435329, 53.186321>,  <38.589577, 32.569698, 53.308014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.746853, 32.435329, 53.186321>,  <39.008980, 32.211384, 52.983498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746853, 32.435329, 53.186321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299007, 0.424183, -0.854789,
		-0.693653, -0.711772, -0.110571,
		-0.655317, 0.559865, 0.507060,
		38.550259, 32.603291, 53.338440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344742, 32.209072, 52.607853>,  <39.008980, 32.211384, 52.983498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344742, 32.209072, 52.607853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.316223, 32.543819, 52.824947>,  <38.299110, 32.744667, 52.955204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.316223, 32.543819, 52.824947>,  <38.344742, 32.209072, 52.607853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316223, 32.543819, 52.824947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128825, 0.531837, -0.836991,
		-0.989101, -0.129595, 0.069890,
		-0.071300, 0.836872, 0.542736,
		38.294834, 32.794880, 52.987766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839859, 32.644375, 52.323994>,  <38.344742, 32.209072, 52.607853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839859, 32.644375, 52.323994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.060966, 32.909897, 52.525513>,  <38.193630, 33.069210, 52.646423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.060966, 32.909897, 52.525513>,  <37.839859, 32.644375, 52.323994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060966, 32.909897, 52.525513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148907, 0.673506, -0.724028,
		-0.819926, 0.325197, 0.471135,
		0.552764, 0.663805, 0.503801,
		38.226795, 33.109039, 52.676655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495411, 33.198292, 52.249241>,  <37.839859, 32.644375, 52.323994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495411, 33.198292, 52.249241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.868813, 33.330956, 52.303761>,  <38.092854, 33.410553, 52.336472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.868813, 33.330956, 52.303761>,  <37.495411, 33.198292, 52.249241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868813, 33.330956, 52.303761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051198, 0.499494, -0.864803,
		-0.354901, 0.800316, 0.483258,
		0.933501, 0.331662, 0.136296,
		38.148861, 33.430454, 52.344650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437588, 33.895031, 52.168369>,  <37.495411, 33.198292, 52.249241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437588, 33.895031, 52.168369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.815140, 33.781620, 52.100601>,  <38.041672, 33.713573, 52.059940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.815140, 33.781620, 52.100601>,  <37.437588, 33.895031, 52.168369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815140, 33.781620, 52.100601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079658, 0.693212, -0.716318,
		0.320539, 0.662623, 0.676894,
		0.943880, -0.283528, -0.169418,
		38.098305, 33.696560, 52.049774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875950, 34.536869, 52.096096>,  <37.437588, 33.895031, 52.168369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875950, 34.536869, 52.096096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.063957, 34.250694, 51.889320>,  <38.176762, 34.078987, 51.765255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.063957, 34.250694, 51.889320>,  <37.875950, 34.536869, 52.096096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063957, 34.250694, 51.889320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156987, 0.644086, -0.748671,
		0.868585, 0.270734, 0.415046,
		0.470016, -0.715441, -0.516941,
		38.204964, 34.036060, 51.734238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334888, 34.895798, 51.684952>,  <37.875950, 34.536869, 52.096096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334888, 34.895798, 51.684952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.388309, 34.549492, 51.492031>,  <38.420364, 34.341709, 51.376278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.388309, 34.549492, 51.492031>,  <38.334888, 34.895798, 51.684952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388309, 34.549492, 51.492031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076779, 0.494236, -0.865930,
		0.988062, 0.078621, 0.132482,
		0.133557, -0.865765, -0.482300,
		38.428375, 34.289761, 51.347340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006756, 35.016365, 51.268272>,  <38.334888, 34.895798, 51.684952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006756, 35.016365, 51.268272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798458, 34.714581, 51.108467>,  <38.673481, 34.533508, 51.012585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798458, 34.714581, 51.108467>,  <39.006756, 35.016365, 51.268272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798458, 34.714581, 51.108467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265231, 0.301837, -0.915722,
		0.811468, -0.582818, 0.042928,
		-0.520742, -0.754465, -0.399513,
		38.642235, 34.488239, 50.988613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335831, 34.777733, 50.695251>,  <39.006756, 35.016365, 51.268272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335831, 34.777733, 50.695251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.985428, 34.608055, 50.603447>,  <38.775185, 34.506248, 50.548367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.985428, 34.608055, 50.603447>,  <39.335831, 34.777733, 50.695251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985428, 34.608055, 50.603447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070182, 0.358684, -0.930817,
		0.477169, -0.831508, -0.284438,
		-0.876005, -0.424195, -0.229509,
		38.722626, 34.480797, 50.534595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417068, 34.537750, 50.011444>,  <39.335831, 34.777733, 50.695251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417068, 34.537750, 50.011444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.018703, 34.556286, 50.042446>,  <38.779682, 34.567406, 50.061047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.018703, 34.556286, 50.042446>,  <39.417068, 34.537750, 50.011444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018703, 34.556286, 50.042446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066286, 0.207699, -0.975944,
		-0.061320, -0.977095, -0.203779,
		-0.995915, 0.046337, 0.077504,
		38.719929, 34.570187, 50.065697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108288, 34.032089, 49.526062>,  <39.417068, 34.537750, 50.011444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108288, 34.032089, 49.526062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.814213, 34.297569, 49.581192>,  <38.637768, 34.456860, 49.614269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.814213, 34.297569, 49.581192>,  <39.108288, 34.032089, 49.526062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814213, 34.297569, 49.581192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186748, -0.002856, -0.982404,
		-0.651631, -0.747991, 0.126044,
		-0.735189, 0.663703, 0.137825,
		38.593655, 34.496681, 49.622540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524574, 33.774677, 49.109367>,  <39.108288, 34.032089, 49.526062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524574, 33.774677, 49.109367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.502735, 34.168507, 49.175854>,  <38.489632, 34.404804, 49.215748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.502735, 34.168507, 49.175854>,  <38.524574, 33.774677, 49.109367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502735, 34.168507, 49.175854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247196, 0.147956, -0.957603,
		-0.967426, -0.093375, 0.235305,
		-0.054601, 0.984576, 0.166218,
		38.486355, 34.463879, 49.225719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879745, 33.962597, 48.830330>,  <38.524574, 33.774677, 49.109367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879745, 33.962597, 48.830330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.123920, 34.279179, 48.842777>,  <38.270424, 34.469128, 48.850246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.123920, 34.279179, 48.842777>,  <37.879745, 33.962597, 48.830330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123920, 34.279179, 48.842777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217637, 0.205380, -0.954177,
		-0.761579, 0.575691, 0.297621,
		0.610436, 0.791454, 0.031121,
		38.307053, 34.516613, 48.852112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450317, 34.472950, 48.516571>,  <37.879745, 33.962597, 48.830330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450317, 34.472950, 48.516571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.829113, 34.600101, 48.497936>,  <38.056389, 34.676392, 48.486755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.829113, 34.600101, 48.497936>,  <37.450317, 34.472950, 48.516571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829113, 34.600101, 48.497936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095365, 0.139664, -0.985596,
		-0.306790, 0.937789, 0.162574,
		0.946987, 0.317875, -0.046584,
		38.113209, 34.695465, 48.483959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834061, 34.881264, 48.340000>,  <37.450317, 34.472950, 48.516571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834061, 34.881264, 48.340000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.453461, 34.772518, 48.282387>,  <36.225101, 34.707272, 48.247818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.453461, 34.772518, 48.282387>,  <36.834061, 34.881264, 48.340000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453461, 34.772518, 48.282387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048673, -0.329232, 0.942994,
		-0.303788, 0.904265, 0.300030,
		-0.951496, -0.271867, -0.144030,
		36.168011, 34.690960, 48.239178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484512, 35.096230, 49.015644>,  <36.834061, 34.881264, 48.340000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484512, 35.096230, 49.015644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.282280, 34.814960, 48.815670>,  <36.160942, 34.646198, 48.695686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.282280, 34.814960, 48.815670>,  <36.484512, 35.096230, 49.015644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282280, 34.814960, 48.815670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111454, -0.521363, 0.846025,
		-0.855552, 0.483451, 0.185218,
		-0.505578, -0.703175, -0.499936,
		36.130608, 34.604008, 48.665688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851120, 34.977180, 49.344181>,  <36.484512, 35.096230, 49.015644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851120, 34.977180, 49.344181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.915932, 34.637501, 49.143139>,  <35.954819, 34.433693, 49.022514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.915932, 34.637501, 49.143139>,  <35.851120, 34.977180, 49.344181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915932, 34.637501, 49.143139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155736, -0.524957, 0.836760,
		-0.974419, -0.057306, -0.217309,
		0.162029, -0.849198, -0.502603,
		35.964539, 34.382740, 48.992359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259167, 34.540150, 49.466293>,  <35.851120, 34.977180, 49.344181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259167, 34.540150, 49.466293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.536987, 34.281330, 49.340485>,  <35.703678, 34.126038, 49.264999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.536987, 34.281330, 49.340485>,  <35.259167, 34.540150, 49.466293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536987, 34.281330, 49.340485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184474, -0.582726, 0.791454,
		-0.695393, -0.491683, -0.524096,
		0.694548, -0.647054, -0.314521,
		35.745354, 34.087215, 49.246128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963596, 33.927490, 49.632690>,  <35.259167, 34.540150, 49.466293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963596, 33.927490, 49.632690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.336239, 33.804512, 49.555141>,  <35.559826, 33.730724, 49.508614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.336239, 33.804512, 49.555141>,  <34.963596, 33.927490, 49.632690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336239, 33.804512, 49.555141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019210, -0.574297, 0.818421,
		-0.362954, -0.758724, -0.540927,
		0.931609, -0.307440, -0.193868,
		35.615723, 33.712280, 49.496983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896496, 33.301197, 49.697052>,  <34.963596, 33.927490, 49.632690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896496, 33.301197, 49.697052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.283188, 33.382202, 49.759563>,  <35.515202, 33.430805, 49.797070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.283188, 33.382202, 49.759563>,  <34.896496, 33.301197, 49.697052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283188, 33.382202, 49.759563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004232, -0.598181, 0.801350,
		0.255767, -0.775350, -0.577422,
		0.966729, 0.202515, 0.156276,
		35.573208, 33.442955, 49.806446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164631, 32.730358, 49.847130>,  <34.896496, 33.301197, 49.697052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164631, 32.730358, 49.847130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.438206, 32.974739, 50.006611>,  <35.602352, 33.121368, 50.102303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.438206, 32.974739, 50.006611>,  <35.164631, 32.730358, 49.847130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438206, 32.974739, 50.006611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016094, -0.533750, 0.845490,
		0.729364, -0.584678, -0.355218,
		0.683936, 0.610953, 0.398708,
		35.643387, 33.158024, 50.126225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532204, 32.217926, 49.499825>,  <35.164631, 32.730358, 49.847130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532204, 32.217926, 49.499825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.443920, 31.833023, 49.436131>,  <35.390949, 31.602081, 49.397915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.443920, 31.833023, 49.436131>,  <35.532204, 32.217926, 49.499825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443920, 31.833023, 49.436131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671451, -0.031487, -0.740380,
		0.707420, -0.270323, 0.653056,
		-0.220704, -0.962255, -0.159234,
		35.377708, 31.544346, 49.388359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155270, 31.724115, 49.552486>,  <35.532204, 32.217926, 49.499825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155270, 31.724115, 49.552486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.892040, 31.549921, 49.306789>,  <35.734104, 31.445404, 49.159370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.892040, 31.549921, 49.306789>,  <36.155270, 31.724115, 49.552486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892040, 31.549921, 49.306789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680957, 0.003893, -0.732313,
		0.321305, -0.900186, 0.293987,
		-0.658074, -0.435488, -0.614238,
		35.694618, 31.419275, 49.122517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585274, 31.281193, 49.131817>,  <36.155270, 31.724115, 49.552486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585274, 31.281193, 49.131817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.235558, 31.351400, 48.950790>,  <36.025730, 31.393524, 48.842175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.235558, 31.351400, 48.950790>,  <36.585274, 31.281193, 49.131817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235558, 31.351400, 48.950790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473444, 0.102582, -0.874830,
		-0.107123, -0.979117, -0.172785,
		-0.874286, 0.175518, -0.452568,
		35.973270, 31.404055, 48.815022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576508, 30.816170, 48.541328>,  <36.585274, 31.281193, 49.131817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576508, 30.816170, 48.541328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.307060, 31.107393, 48.490459>,  <36.145393, 31.282127, 48.459938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.307060, 31.107393, 48.490459>,  <36.576508, 30.816170, 48.541328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307060, 31.107393, 48.490459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286477, 0.098589, -0.953001,
		-0.681302, -0.678389, -0.274983,
		-0.673616, 0.728058, -0.127174,
		36.104977, 31.325811, 48.452309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674511, 30.830753, 47.906792>,  <36.576508, 30.816170, 48.541328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674511, 30.830753, 47.906792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.467651, 31.166122, 47.975616>,  <36.343536, 31.367344, 48.016911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.467651, 31.166122, 47.975616>,  <36.674511, 30.830753, 47.906792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467651, 31.166122, 47.975616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111509, 0.265313, -0.957692,
		-0.848603, -0.476080, -0.230697,
		-0.517145, 0.838425, 0.172059,
		36.312508, 31.417650, 48.027233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077858, 30.933008, 47.453793>,  <36.674511, 30.830753, 47.906792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077858, 30.933008, 47.453793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.179951, 31.295322, 47.589092>,  <36.241207, 31.512711, 47.670273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.179951, 31.295322, 47.589092>,  <36.077858, 30.933008, 47.453793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179951, 31.295322, 47.589092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273969, 0.267747, -0.923717,
		-0.927253, 0.328429, -0.179820,
		0.255229, 0.905785, 0.338248,
		36.256519, 31.567059, 47.690567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833851, 31.367165, 46.916481>,  <36.077858, 30.933008, 47.453793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833851, 31.367165, 46.916481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.083340, 31.609167, 47.114445>,  <36.233032, 31.754368, 47.233223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.083340, 31.609167, 47.114445>,  <35.833851, 31.367165, 46.916481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083340, 31.609167, 47.114445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259822, 0.436690, -0.861275,
		-0.737200, 0.665785, 0.115179,
		0.623721, 0.605006, 0.494913,
		36.270454, 31.790668, 47.262920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.048981, 28.810722, 51.216457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.311565, 29.112404, 51.222523>,  <36.469116, 29.293413, 51.226162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.311565, 29.112404, 51.222523>,  <36.048981, 28.810722, 51.216457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311565, 29.112404, 51.222523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501070, -0.420933, -0.756138,
		-0.563900, 0.503975, -0.654237,
		0.656465, 0.754205, 0.015163,
		36.508503, 29.338665, 51.227070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117668, 29.163177, 50.527779>,  <36.048981, 28.810722, 51.216457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117668, 29.163177, 50.527779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.460194, 29.196251, 50.731697>,  <36.665710, 29.216095, 50.854050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.460194, 29.196251, 50.731697>,  <36.117668, 29.163177, 50.527779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460194, 29.196251, 50.731697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516418, -0.149274, -0.843226,
		0.006377, 0.985333, -0.170526,
		0.856313, 0.082686, 0.509795,
		36.717087, 29.221056, 50.884636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523445, 29.165447, 50.018021>,  <36.117668, 29.163177, 50.527779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523445, 29.165447, 50.018021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.782654, 29.149557, 50.322254>,  <36.938179, 29.140024, 50.504795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.782654, 29.149557, 50.322254>,  <36.523445, 29.165447, 50.018021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782654, 29.149557, 50.322254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759308, -0.044123, -0.649234,
		0.059349, 0.998236, 0.001570,
		0.648019, -0.039724, 0.760587,
		36.977058, 29.137640, 50.550430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998329, 29.736008, 49.916706>,  <36.523445, 29.165447, 50.018021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998329, 29.736008, 49.916706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.125149, 29.421732, 50.129185>,  <37.201241, 29.233166, 50.256672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.125149, 29.421732, 50.129185>,  <36.998329, 29.736008, 49.916706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125149, 29.421732, 50.129185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714549, -0.170403, -0.678515,
		0.623620, 0.594689, 0.507387,
		0.317046, -0.785689, 0.531201,
		37.220261, 29.186026, 50.288544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724846, 29.796804, 49.881237>,  <36.998329, 29.736008, 49.916706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724846, 29.796804, 49.881237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.687569, 29.412722, 49.986553>,  <37.665203, 29.182272, 50.049744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.687569, 29.412722, 49.986553>,  <37.724846, 29.796804, 49.881237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687569, 29.412722, 49.986553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714905, -0.248585, -0.653542,
		0.692984, 0.127320, 0.709622,
		-0.093192, -0.960206, 0.263287,
		37.659611, 29.124660, 50.065540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380875, 29.558977, 49.884495>,  <37.724846, 29.796804, 49.881237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380875, 29.558977, 49.884495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.147808, 29.239317, 49.825356>,  <38.007969, 29.047520, 49.789871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.147808, 29.239317, 49.825356>,  <38.380875, 29.558977, 49.884495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147808, 29.239317, 49.825356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619122, -0.318619, -0.717753,
		0.526488, -0.509744, 0.680420,
		-0.582665, -0.799151, -0.147845,
		37.973007, 28.999571, 49.781002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901711, 28.959995, 49.760548>,  <38.380875, 29.558977, 49.884495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901711, 28.959995, 49.760548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.547318, 28.850239, 49.611019>,  <38.334682, 28.784386, 49.521301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.547318, 28.850239, 49.611019>,  <38.901711, 28.959995, 49.760548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547318, 28.850239, 49.611019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440667, -0.247230, -0.862954,
		0.144367, -0.929294, 0.339956,
		-0.885986, -0.274389, -0.373817,
		38.281521, 28.767921, 49.498875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013649, 28.376837, 49.374912>,  <38.901711, 28.959995, 49.760548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013649, 28.376837, 49.374912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.652615, 28.481970, 49.238529>,  <38.435993, 28.545050, 49.156700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.652615, 28.481970, 49.238529>,  <39.013649, 28.376837, 49.374912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652615, 28.481970, 49.238529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256567, -0.307562, -0.916285,
		-0.345698, -0.914507, 0.210166,
		-0.902588, 0.262836, -0.340956,
		38.381836, 28.560820, 49.136242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797352, 27.888250, 48.767902>,  <39.013649, 28.376837, 49.374912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797352, 27.888250, 48.767902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.571163, 28.210234, 48.696030>,  <38.435452, 28.403423, 48.652905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.571163, 28.210234, 48.696030>,  <38.797352, 27.888250, 48.767902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571163, 28.210234, 48.696030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062305, -0.175542, -0.982498,
		-0.822413, -0.566767, 0.049110,
		-0.565468, 0.804960, -0.179680,
		38.401524, 28.451721, 48.642124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384491, 27.637005, 48.189526>,  <38.797352, 27.888250, 48.767902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384491, 27.637005, 48.189526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.315868, 28.030735, 48.173161>,  <38.274693, 28.266973, 48.163342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.315868, 28.030735, 48.173161>,  <38.384491, 27.637005, 48.189526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315868, 28.030735, 48.173161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061523, -0.030741, -0.997632,
		-0.983251, -0.173671, -0.055285,
		-0.171561, 0.984324, -0.040911,
		38.264400, 28.326033, 48.160889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935490, 27.744890, 47.688652>,  <38.384491, 27.637005, 48.189526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935490, 27.744890, 47.688652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.098515, 28.106258, 47.741909>,  <38.196331, 28.323078, 47.773865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.098515, 28.106258, 47.741909>,  <37.935490, 27.744890, 47.688652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098515, 28.106258, 47.741909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072748, 0.113216, -0.990904,
		-0.910275, 0.413541, -0.019579,
		0.407562, 0.903419, 0.133141,
		38.220783, 28.377285, 47.781853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632908, 28.243338, 47.204212>,  <37.935490, 27.744890, 47.688652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632908, 28.243338, 47.204212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.998989, 28.385338, 47.280514>,  <38.218636, 28.470537, 47.326294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.998989, 28.385338, 47.280514>,  <37.632908, 28.243338, 47.204212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998989, 28.385338, 47.280514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199484, 0.012221, -0.979825,
		-0.350168, 0.934787, -0.059632,
		0.915199, 0.354999, 0.190754,
		38.273548, 28.491838, 47.337742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228523, 28.810003, 47.317787>,  <37.632908, 28.243338, 47.204212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228523, 28.810003, 47.317787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.881260, 28.949568, 47.176613>,  <36.672901, 29.033306, 47.091908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.881260, 28.949568, 47.176613>,  <37.228523, 28.810003, 47.317787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881260, 28.949568, 47.176613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386948, -0.030569, 0.921595,
		0.310766, 0.936657, 0.161549,
		-0.868156, 0.348912, -0.352938,
		36.620811, 29.054241, 47.070732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917332, 29.326933, 47.829292>,  <37.228523, 28.810003, 47.317787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917332, 29.326933, 47.829292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.611599, 29.182426, 47.615643>,  <36.428158, 29.095722, 47.487453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.611599, 29.182426, 47.615643>,  <36.917332, 29.326933, 47.829292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611599, 29.182426, 47.615643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417484, -0.354029, 0.836882,
		-0.491433, 0.862641, 0.119772,
		-0.764331, -0.361268, -0.534120,
		36.382301, 29.074045, 47.455406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296890, 29.522661, 48.165981>,  <36.917332, 29.326933, 47.829292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296890, 29.522661, 48.165981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.230888, 29.182821, 47.965599>,  <36.191288, 28.978918, 47.845371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.230888, 29.182821, 47.965599>,  <36.296890, 29.522661, 48.165981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230888, 29.182821, 47.965599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439752, -0.391265, 0.808412,
		-0.882832, 0.353684, -0.309054,
		-0.165000, -0.849600, -0.500955,
		36.181389, 28.927942, 47.815311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616058, 29.382507, 48.413097>,  <36.296890, 29.522661, 48.165981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616058, 29.382507, 48.413097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.728916, 29.036295, 48.247566>,  <35.796631, 28.828568, 48.148247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.728916, 29.036295, 48.247566>,  <35.616058, 29.382507, 48.413097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728916, 29.036295, 48.247566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496298, -0.500828, 0.709125,
		-0.821026, 0.005307, -0.570866,
		0.282143, -0.865530, -0.413827,
		35.813560, 28.776636, 48.123417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037685, 29.045683, 48.383461>,  <35.616058, 29.382507, 48.413097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037685, 29.045683, 48.383461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.340424, 28.784248, 48.381966>,  <35.522064, 28.627388, 48.381069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.340424, 28.784248, 48.381966>,  <35.037685, 29.045683, 48.383461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340424, 28.784248, 48.381966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444557, -0.518963, 0.730100,
		-0.479117, -0.550914, -0.683330,
		0.756846, -0.653583, -0.003731,
		35.567474, 28.588173, 48.380844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725647, 28.511269, 48.366364>,  <35.037685, 29.045683, 48.383461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725647, 28.511269, 48.366364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.086853, 28.418591, 48.511074>,  <35.303577, 28.362984, 48.597900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.086853, 28.418591, 48.511074>,  <34.725647, 28.511269, 48.366364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086853, 28.418591, 48.511074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428869, -0.436664, 0.790820,
		-0.025253, -0.869277, -0.493681,
		0.903014, -0.231695, 0.361778,
		35.357758, 28.349083, 48.619606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584553, 27.827589, 48.597923>,  <34.725647, 28.511269, 48.366364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584553, 27.827589, 48.597923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.906147, 27.976326, 48.783543>,  <35.099106, 28.065567, 48.894913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.906147, 27.976326, 48.783543>,  <34.584553, 27.827589, 48.597923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906147, 27.976326, 48.783543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280144, -0.451501, 0.847152,
		0.524523, -0.811099, -0.258832,
		0.803987, 0.371840, 0.464047,
		35.147343, 28.087877, 48.922756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920135, 27.314808, 48.966328>,  <34.584553, 27.827589, 48.597923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920135, 27.314808, 48.966328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.045872, 27.655258, 49.134506>,  <35.121311, 27.859529, 49.235413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.045872, 27.655258, 49.134506>,  <34.920135, 27.314808, 48.966328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045872, 27.655258, 49.134506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360525, -0.302682, 0.882273,
		0.878188, -0.428911, 0.211709,
		0.314336, 0.851128, 0.420445,
		35.140171, 27.910597, 49.260639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197876, 27.035488, 49.696445>,  <34.920135, 27.314808, 48.966328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197876, 27.035488, 49.696445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.144798, 27.431702, 49.710499>,  <35.112953, 27.669430, 49.718929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.144798, 27.431702, 49.710499>,  <35.197876, 27.035488, 49.696445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144798, 27.431702, 49.710499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307388, -0.074825, 0.948638,
		0.942287, 0.115080, 0.314407,
		-0.132695, 0.990534, 0.035132,
		35.104988, 27.728863, 49.721039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236610, 27.086813, 50.388668>,  <35.197876, 27.035488, 49.696445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236610, 27.086813, 50.388668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.105946, 27.450684, 50.286072>,  <35.027546, 27.669006, 50.224514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.105946, 27.450684, 50.286072>,  <35.236610, 27.086813, 50.388668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105946, 27.450684, 50.286072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357141, 0.132450, 0.924612,
		0.875068, 0.393636, 0.281616,
		-0.326661, 0.909675, -0.256486,
		35.007946, 27.723585, 50.209126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611790, 27.655046, 50.763130>,  <35.236610, 27.086813, 50.388668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611790, 27.655046, 50.763130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.257618, 27.801191, 50.648228>,  <35.045113, 27.888878, 50.579285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.257618, 27.801191, 50.648228>,  <35.611790, 27.655046, 50.763130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257618, 27.801191, 50.648228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205090, 0.247488, 0.946936,
		0.417068, 0.897363, -0.144202,
		-0.885433, 0.365362, -0.287259,
		34.991989, 27.910801, 50.562050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581955, 28.278839, 51.071579>,  <35.611790, 27.655046, 50.763130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581955, 28.278839, 51.071579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.195332, 28.208277, 50.997135>,  <34.963356, 28.165939, 50.952469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.195332, 28.208277, 50.997135>,  <35.581955, 28.278839, 51.071579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195332, 28.208277, 50.997135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224538, 0.231683, 0.946523,
		-0.123854, 0.956663, -0.263546,
		-0.966562, -0.176407, -0.186112,
		34.905361, 28.155355, 50.941303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175587, 28.697262, 51.521751>,  <35.581955, 28.278839, 51.071579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175587, 28.697262, 51.521751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.889439, 28.443512, 51.404572>,  <34.717751, 28.291262, 51.334263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.889439, 28.443512, 51.404572>,  <35.175587, 28.697262, 51.521751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889439, 28.443512, 51.404572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392672, 0.018194, 0.919499,
		-0.577975, 0.772813, -0.262116,
		-0.715369, -0.634373, -0.292947,
		34.674828, 28.253201, 51.316689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568665, 28.902122, 51.669376>,  <35.175587, 28.697262, 51.521751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568665, 28.902122, 51.669376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.521240, 28.504955, 51.672276>,  <34.492786, 28.266655, 51.674015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.521240, 28.504955, 51.672276>,  <34.568665, 28.902122, 51.669376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521240, 28.504955, 51.672276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363670, 0.050216, 0.930174,
		-0.923952, 0.107650, -0.367049,
		-0.118565, -0.992920, 0.007248,
		34.485672, 28.207079, 51.674450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924366, 29.173693, 51.425831>,  <34.568665, 28.902122, 51.669376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924366, 29.173693, 51.425831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.851715, 29.566530, 51.405819>,  <33.808125, 29.802233, 51.393810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.851715, 29.566530, 51.405819>,  <33.924366, 29.173693, 51.425831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851715, 29.566530, 51.405819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693102, 0.091759, -0.714976,
		-0.697582, -0.164537, -0.697357,
		-0.181629, 0.982094, -0.050031,
		33.797226, 29.861158, 51.390808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092064, 29.386889, 50.640438>,  <33.924366, 29.173693, 51.425831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092064, 29.386889, 50.640438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.050247, 29.745926, 50.811737>,  <34.025158, 29.961348, 50.914516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.050247, 29.745926, 50.811737>,  <34.092064, 29.386889, 50.640438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050247, 29.745926, 50.811737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278501, 0.439803, -0.853821,
		-0.954729, 0.030006, -0.295960,
		-0.104544, 0.897593, 0.428250,
		34.018883, 30.015203, 50.940212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831539, 29.847866, 50.078682>,  <34.092064, 29.386889, 50.640438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831539, 29.847866, 50.078682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.956573, 30.097980, 50.364704>,  <34.031593, 30.248049, 50.536320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.956573, 30.097980, 50.364704>,  <33.831539, 29.847866, 50.078682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956573, 30.097980, 50.364704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373033, 0.611496, -0.697795,
		-0.873578, 0.484859, -0.042110,
		0.312582, 0.625287, 0.715059,
		34.050346, 30.285566, 50.579220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601440, 30.512085, 49.856915>,  <33.831539, 29.847866, 50.078682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601440, 30.512085, 49.856915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.890308, 30.586973, 50.123276>,  <34.063629, 30.631907, 50.283092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.890308, 30.586973, 50.123276>,  <33.601440, 30.512085, 49.856915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890308, 30.586973, 50.123276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424263, 0.640448, -0.640177,
		-0.546330, 0.744832, 0.383079,
		0.722166, 0.187222, 0.665901,
		34.106956, 30.643141, 50.323048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798542, 31.293261, 49.776085>,  <33.601440, 30.512085, 49.856915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798542, 31.293261, 49.776085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.105118, 31.125273, 49.970482>,  <34.289062, 31.024481, 50.087120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.105118, 31.125273, 49.970482>,  <33.798542, 31.293261, 49.776085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105118, 31.125273, 49.970482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642276, 0.509169, -0.572912,
		-0.006848, 0.751247, 0.659985,
		0.766443, -0.419969, 0.485995,
		34.335052, 30.999283, 50.116280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236492, 31.799511, 49.713280>,  <33.798542, 31.293261, 49.776085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236492, 31.799511, 49.713280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.474510, 31.495731, 49.818474>,  <34.617321, 31.313463, 49.881588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.474510, 31.495731, 49.818474>,  <34.236492, 31.799511, 49.713280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474510, 31.495731, 49.818474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708273, 0.340877, -0.618185,
		0.379836, 0.554109, 0.740734,
		0.595042, -0.759451, 0.262983,
		34.653023, 31.267897, 49.897369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943081, 32.050812, 49.959885>,  <34.236492, 31.799511, 49.713280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943081, 32.050812, 49.959885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.976837, 31.675123, 49.826775>,  <34.997093, 31.449709, 49.746910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.976837, 31.675123, 49.826775>,  <34.943081, 32.050812, 49.959885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976837, 31.675123, 49.826775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667566, 0.301230, -0.680893,
		0.739752, -0.164686, 0.652415,
		0.084393, -0.939223, -0.332774,
		35.002155, 31.393356, 49.726944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626110, 32.248573, 50.243149>,  <34.943081, 32.050812, 49.959885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626110, 32.248573, 50.243149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.726925, 32.604019, 50.396423>,  <35.787415, 32.817287, 50.488388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.726925, 32.604019, 50.396423>,  <35.626110, 32.248573, 50.243149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726925, 32.604019, 50.396423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190688, -0.342601, 0.919925,
		0.948744, -0.304926, 0.083101,
		0.252039, 0.888619, 0.383187,
		35.802536, 32.870605, 50.511379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156200, 32.147240, 50.648087>,  <35.626110, 32.248573, 50.243149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156200, 32.147240, 50.648087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.974270, 32.480194, 50.774746>,  <35.865112, 32.679966, 50.850742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.974270, 32.480194, 50.774746>,  <36.156200, 32.147240, 50.648087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974270, 32.480194, 50.774746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065114, -0.323521, 0.943978,
		0.888195, 0.449967, 0.092947,
		-0.454830, 0.832384, 0.316649,
		35.837822, 32.729908, 50.869740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695679, 32.448273, 51.010498>,  <36.156200, 32.147240, 50.648087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695679, 32.448273, 51.010498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.356632, 32.615040, 51.141788>,  <36.153206, 32.715099, 51.220562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.356632, 32.615040, 51.141788>,  <36.695679, 32.448273, 51.010498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356632, 32.615040, 51.141788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317234, -0.097672, 0.943304,
		0.425337, 0.903682, -0.049472,
		-0.847615, 0.416916, 0.328222,
		36.102348, 32.740116, 51.240253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830379, 32.896523, 51.570793>,  <36.695679, 32.448273, 51.010498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830379, 32.896523, 51.570793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.439346, 32.818439, 51.602379>,  <36.204727, 32.771591, 51.621330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.439346, 32.818439, 51.602379>,  <36.830379, 32.896523, 51.570793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439346, 32.818439, 51.602379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090050, -0.048594, 0.994751,
		-0.190345, 0.979558, 0.065083,
		-0.977579, -0.195207, 0.078959,
		36.146072, 32.759876, 51.626068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460831, 33.380909, 51.981705>,  <36.830379, 32.896523, 51.570793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460831, 33.380909, 51.981705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.263233, 33.033390, 51.995342>,  <36.144676, 32.824879, 52.003525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.263233, 33.033390, 51.995342>,  <36.460831, 33.380909, 51.981705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263233, 33.033390, 51.995342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090728, -0.012513, 0.995797,
		-0.864720, 0.495009, 0.085005,
		-0.493992, -0.868798, 0.034091,
		36.115036, 32.772751, 52.005569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097107, 33.379005, 52.614819>,  <36.460831, 33.380909, 51.981705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097107, 33.379005, 52.614819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.070515, 32.991489, 52.519295>,  <36.054558, 32.758980, 52.461979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.070515, 32.991489, 52.519295>,  <36.097107, 33.379005, 52.614819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070515, 32.991489, 52.519295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155370, -0.246473, 0.956615,
		-0.985617, 0.026492, 0.166906,
		-0.066480, -0.968788, -0.238812,
		36.050571, 32.700851, 52.447651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690334, 33.034607, 53.160023>,  <36.097107, 33.379005, 52.614819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690334, 33.034607, 53.160023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.863811, 32.729996, 52.967361>,  <35.967899, 32.547230, 52.851765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.863811, 32.729996, 52.967361>,  <35.690334, 33.034607, 53.160023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863811, 32.729996, 52.967361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280416, -0.393933, 0.875319,
		-0.856317, -0.514683, 0.042698,
		0.433691, -0.761524, -0.481657,
		35.993919, 32.501537, 52.822865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449139, 32.368263, 53.423252>,  <35.690334, 33.034607, 53.160023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449139, 32.368263, 53.423252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.805134, 32.296616, 53.255524>,  <36.018730, 32.253628, 53.154888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.805134, 32.296616, 53.255524>,  <35.449139, 32.368263, 53.423252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805134, 32.296616, 53.255524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301735, -0.458110, 0.836117,
		-0.341859, -0.870661, -0.353668,
		0.889994, -0.179120, -0.419318,
		36.072132, 32.242878, 53.129726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497955, 31.721252, 53.533829>,  <35.449139, 32.368263, 53.423252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497955, 31.721252, 53.533829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.880001, 31.816387, 53.463177>,  <36.109226, 31.873468, 53.420788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.880001, 31.816387, 53.463177>,  <35.497955, 31.721252, 53.533829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880001, 31.816387, 53.463177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274531, -0.486519, 0.829417,
		0.111334, -0.840675, -0.529973,
		0.955111, 0.237836, -0.176626,
		36.166534, 31.887737, 53.410191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.783257, 34.828861, 38.402023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153103, 34.912697, 38.529243>,  <37.375011, 34.962997, 38.605576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153103, 34.912697, 38.529243>,  <36.783257, 34.828861, 38.402023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153103, 34.912697, 38.529243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376631, 0.378397, 0.845556,
		0.056873, -0.901602, 0.428811,
		0.924616, 0.209593, 0.318051,
		37.430489, 34.975574, 38.624660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931263, 34.437416, 39.004463>,  <36.783257, 34.828861, 38.402023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931263, 34.437416, 39.004463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133217, 34.782452, 38.991665>,  <37.254391, 34.989475, 38.983986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133217, 34.782452, 38.991665>,  <36.931263, 34.437416, 39.004463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133217, 34.782452, 38.991665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317277, 0.219927, 0.922479,
		0.802762, -0.455593, 0.384719,
		0.504885, 0.862593, -0.032000,
		37.284683, 35.041229, 38.982063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241184, 34.504829, 39.627918>,  <36.931263, 34.437416, 39.004463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241184, 34.504829, 39.627918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273499, 34.881004, 39.495823>,  <37.292885, 35.106709, 39.416565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273499, 34.881004, 39.495823>,  <37.241184, 34.504829, 39.627918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273499, 34.881004, 39.495823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163334, 0.339331, 0.926378,
		0.983258, -0.020897, 0.181017,
		0.080783, 0.940435, -0.330237,
		37.297733, 35.163136, 39.396751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670238, 34.844307, 40.107063>,  <37.241184, 34.504829, 39.627918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670238, 34.844307, 40.107063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429630, 35.121540, 39.948166>,  <37.285263, 35.287880, 39.852825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429630, 35.121540, 39.948166>,  <37.670238, 34.844307, 40.107063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429630, 35.121540, 39.948166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240741, 0.316881, 0.917404,
		0.761717, 0.647473, -0.023758,
		-0.601523, 0.693083, -0.397247,
		37.249172, 35.329464, 39.828991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854340, 35.468052, 40.380013>,  <37.670238, 34.844307, 40.107063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854340, 35.468052, 40.380013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482811, 35.546192, 40.254074>,  <37.259895, 35.593075, 40.178513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482811, 35.546192, 40.254074>,  <37.854340, 35.468052, 40.380013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482811, 35.546192, 40.254074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191099, 0.475430, 0.858747,
		0.317444, 0.857790, -0.404259,
		-0.928822, 0.195351, -0.314845,
		37.204163, 35.604797, 40.159622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753361, 36.152534, 40.543610>,  <37.854340, 35.468052, 40.380013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753361, 36.152534, 40.543610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372822, 36.030502, 40.526318>,  <37.144501, 35.957283, 40.515942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372822, 36.030502, 40.526318>,  <37.753361, 36.152534, 40.543610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372822, 36.030502, 40.526318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181231, 0.440538, 0.879250,
		-0.249200, 0.844304, -0.474394,
		-0.951343, -0.305084, -0.043232,
		37.087418, 35.938976, 40.513348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372066, 36.737007, 40.889816>,  <37.753361, 36.152534, 40.543610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372066, 36.737007, 40.889816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129356, 36.419151, 40.882076>,  <36.983730, 36.228439, 40.877434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129356, 36.419151, 40.882076>,  <37.372066, 36.737007, 40.889816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129356, 36.419151, 40.882076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376748, 0.266074, 0.887280,
		-0.699921, 0.545665, -0.460826,
		-0.606772, -0.794641, -0.019348,
		36.947327, 36.180759, 40.876270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690376, 37.035542, 41.120842>,  <37.372066, 36.737007, 40.889816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690376, 37.035542, 41.120842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639893, 36.639927, 41.151489>,  <36.609604, 36.402557, 41.169876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639893, 36.639927, 41.151489>,  <36.690376, 37.035542, 41.120842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639893, 36.639927, 41.151489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567194, 0.135307, 0.812394,
		-0.813857, 0.059073, -0.578054,
		-0.126206, -0.989041, 0.076615,
		36.602032, 36.343216, 41.174473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009647, 36.942657, 41.329613>,  <36.690376, 37.035542, 41.120842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009647, 36.942657, 41.329613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175522, 36.596008, 41.440601>,  <36.275047, 36.388020, 41.507195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175522, 36.596008, 41.440601>,  <36.009647, 36.942657, 41.329613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175522, 36.596008, 41.440601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551757, 0.003006, 0.833999,
		-0.723601, -0.498948, -0.476921,
		0.414688, -0.866627, 0.277473,
		36.299927, 36.336021, 41.523842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451851, 36.444874, 41.502087>,  <36.009647, 36.942657, 41.329613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451851, 36.444874, 41.502087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772320, 36.307980, 41.698448>,  <35.964603, 36.225842, 41.816265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772320, 36.307980, 41.698448>,  <35.451851, 36.444874, 41.502087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772320, 36.307980, 41.698448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531484, -0.029929, 0.846539,
		-0.275030, -0.939135, -0.205875,
		0.801176, -0.342242, 0.490904,
		36.012672, 36.205307, 41.845718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178097, 35.975185, 42.002281>,  <35.451851, 36.444874, 41.502087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178097, 35.975185, 42.002281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549107, 36.058830, 42.126194>,  <35.771713, 36.109016, 42.200542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549107, 36.058830, 42.126194>,  <35.178097, 35.975185, 42.002281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549107, 36.058830, 42.126194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319373, 0.012880, 0.947542,
		0.194151, -0.977807, 0.078731,
		0.927527, 0.209110, 0.309785,
		35.827366, 36.121563, 42.219128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317093, 35.508419, 42.476768>,  <35.178097, 35.975185, 42.002281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317093, 35.508419, 42.476768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580532, 35.802227, 42.542160>,  <35.738598, 35.978512, 42.581394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580532, 35.802227, 42.542160>,  <35.317093, 35.508419, 42.476768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580532, 35.802227, 42.542160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164488, -0.071472, 0.983786,
		0.734295, -0.674812, 0.073748,
		0.658600, 0.734520, 0.163480,
		35.778111, 36.022583, 42.591206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617798, 35.049667, 41.951546>,  <35.317093, 35.508419, 42.476768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617798, 35.049667, 41.951546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504036, 34.666203, 41.955353>,  <35.435780, 34.436123, 41.957638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504036, 34.666203, 41.955353>,  <35.617798, 35.049667, 41.951546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504036, 34.666203, 41.955353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472549, 0.131535, -0.871433,
		0.834155, -0.252334, -0.490421,
		-0.284400, -0.958658, 0.009519,
		35.418716, 34.378605, 41.958210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691498, 34.819679, 41.359123>,  <35.617798, 35.049667, 41.951546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691498, 34.819679, 41.359123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442192, 34.526081, 41.467041>,  <35.292606, 34.349922, 41.531792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442192, 34.526081, 41.467041>,  <35.691498, 34.819679, 41.359123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442192, 34.526081, 41.467041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414672, 0.017701, -0.909799,
		0.663013, -0.678923, -0.315400,
		-0.623266, -0.733996, 0.269795,
		35.255211, 34.305882, 41.547981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709915, 34.387230, 40.795494>,  <35.691498, 34.819679, 41.359123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709915, 34.387230, 40.795494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381584, 34.277817, 40.996067>,  <35.184586, 34.212170, 41.116409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381584, 34.277817, 40.996067>,  <35.709915, 34.387230, 40.795494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381584, 34.277817, 40.996067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473204, -0.165994, -0.865173,
		0.319888, -0.947431, 0.006814,
		-0.820823, -0.273534, 0.501428,
		35.135338, 34.195759, 41.146496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522694, 33.656410, 40.695774>,  <35.709915, 34.387230, 40.795494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522694, 33.656410, 40.695774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185169, 33.847366, 40.793823>,  <34.982655, 33.961941, 40.852654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185169, 33.847366, 40.793823>,  <35.522694, 33.656410, 40.695774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185169, 33.847366, 40.793823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486836, -0.488790, -0.723930,
		-0.225780, -0.730195, 0.644855,
		-0.843809, 0.477388, 0.245126,
		34.932026, 33.990582, 40.867363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961380, 33.169544, 40.751591>,  <35.522694, 33.656410, 40.695774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961380, 33.169544, 40.751591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779560, 33.524052, 40.716022>,  <34.670467, 33.736755, 40.694679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779560, 33.524052, 40.716022>,  <34.961380, 33.169544, 40.751591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779560, 33.524052, 40.716022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699889, -0.417132, -0.579790,
		-0.550945, -0.201306, 0.809898,
		-0.454550, 0.886271, -0.088925,
		34.643196, 33.789932, 40.689346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245869, 32.987251, 40.727989>,  <34.961380, 33.169544, 40.751591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245869, 32.987251, 40.727989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246002, 33.367390, 40.603516>,  <34.246082, 33.595474, 40.528831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246002, 33.367390, 40.603516>,  <34.245869, 32.987251, 40.727989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246002, 33.367390, 40.603516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684862, -0.226535, -0.692565,
		-0.728673, 0.213353, 0.650781,
		0.000336, 0.950348, -0.311188,
		34.246101, 33.652493, 40.510159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478603, 33.266205, 40.623657>,  <34.245869, 32.987251, 40.727989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478603, 33.266205, 40.623657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715702, 33.495598, 40.397465>,  <33.857960, 33.633232, 40.261749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715702, 33.495598, 40.397465>,  <33.478603, 33.266205, 40.623657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715702, 33.495598, 40.397465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502835, -0.284951, -0.816064,
		-0.629132, 0.768063, 0.119463,
		0.592747, 0.573482, -0.565481,
		33.893528, 33.667641, 40.227821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104851, 33.400665, 40.108810>,  <33.478603, 33.266205, 40.623657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104851, 33.400665, 40.108810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443542, 33.527493, 39.937916>,  <33.646755, 33.603588, 39.835381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443542, 33.527493, 39.937916>,  <33.104851, 33.400665, 40.108810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443542, 33.527493, 39.937916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345282, -0.283454, -0.894670,
		-0.404768, 0.905055, -0.130531,
		0.846725, 0.317064, -0.427232,
		33.697559, 33.622612, 39.809746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859016, 33.910839, 39.554768>,  <33.104851, 33.400665, 40.108810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859016, 33.910839, 39.554768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221619, 33.765148, 39.469353>,  <33.439178, 33.677734, 39.418106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221619, 33.765148, 39.469353>,  <32.859016, 33.910839, 39.554768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221619, 33.765148, 39.469353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293593, -0.180341, -0.938766,
		0.303413, 0.913684, -0.270413,
		0.906501, -0.364225, -0.213533,
		33.493568, 33.655880, 39.405293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904945, 34.085125, 38.885708>,  <32.859016, 33.910839, 39.554768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904945, 34.085125, 38.885708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168941, 33.790947, 38.947083>,  <33.327339, 33.614441, 38.983906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168941, 33.790947, 38.947083>,  <32.904945, 34.085125, 38.885708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168941, 33.790947, 38.947083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275138, -0.426653, -0.861549,
		0.699082, 0.526396, -0.483934,
		0.659988, -0.735442, 0.153434,
		33.366940, 33.570316, 38.993114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249126, 33.975182, 38.283138>,  <32.904945, 34.085125, 38.885708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249126, 33.975182, 38.283138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329391, 33.629925, 38.468487>,  <33.377552, 33.422771, 38.579697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329391, 33.629925, 38.468487>,  <33.249126, 33.975182, 38.283138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329391, 33.629925, 38.468487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255251, -0.502720, -0.825905,
		0.945823, 0.047454, -0.321197,
		0.200665, -0.863146, 0.463372,
		33.389591, 33.370979, 38.607498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432571, 33.679661, 37.755634>,  <33.249126, 33.975182, 38.283138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432571, 33.679661, 37.755634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413639, 33.376984, 38.016457>,  <33.402279, 33.195377, 38.172951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413639, 33.376984, 38.016457>,  <33.432571, 33.679661, 37.755634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413639, 33.376984, 38.016457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037632, -0.650971, -0.758170,
		0.998170, -0.060422, 0.002334,
		-0.047330, -0.756695, 0.652053,
		33.399441, 33.149975, 38.212074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920475, 33.173462, 37.610184>,  <33.432571, 33.679661, 37.755634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920475, 33.173462, 37.610184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607777, 32.993561, 37.782974>,  <33.420158, 32.885620, 37.886646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607777, 32.993561, 37.782974>,  <33.920475, 33.173462, 37.610184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607777, 32.993561, 37.782974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036173, -0.724245, -0.688593,
		0.622552, -0.522676, 0.582442,
		-0.781742, -0.449754, 0.431973,
		33.373253, 32.858635, 37.912567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065262, 32.452713, 37.429955>,  <33.920475, 33.173462, 37.610184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065262, 32.452713, 37.429955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676369, 32.478695, 37.519878>,  <33.443031, 32.494286, 37.573833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676369, 32.478695, 37.519878>,  <34.065262, 32.452713, 37.429955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676369, 32.478695, 37.519878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222326, -0.556112, -0.800819,
		0.073004, -0.828565, 0.555112,
		-0.972236, 0.064953, 0.224810,
		33.384697, 32.498180, 37.587322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552063, 31.871225, 37.633064>,  <34.065262, 32.452713, 37.429955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552063, 31.871225, 37.633064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336433, 32.154114, 37.450096>,  <33.207054, 32.323849, 37.340317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336433, 32.154114, 37.450096>,  <33.552063, 31.871225, 37.633064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336433, 32.154114, 37.450096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149776, -0.614927, -0.774230,
		-0.828833, -0.348858, 0.437417,
		-0.539076, 0.707222, -0.457421,
		33.174709, 32.366280, 37.312870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434494, 31.173094, 37.567413>,  <33.552063, 31.871225, 37.633064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434494, 31.173094, 37.567413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066677, 31.059341, 37.458916>,  <32.845989, 30.991091, 37.393818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066677, 31.059341, 37.458916>,  <33.434494, 31.173094, 37.567413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066677, 31.059341, 37.458916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392830, 0.685203, 0.613335,
		0.011440, 0.670541, -0.741785,
		-0.919540, -0.284379, -0.271248,
		32.790813, 30.974028, 37.377541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032829, 31.071615, 37.032104>,  <33.434494, 31.173094, 37.567413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032829, 31.071615, 37.032104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105782, 30.687464, 36.947811>,  <34.149551, 30.456972, 36.897236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105782, 30.687464, 36.947811>,  <34.032829, 31.071615, 37.032104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105782, 30.687464, 36.947811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949732, -0.116603, -0.290541,
		0.254457, 0.253129, -0.933369,
		0.182378, -0.960380, -0.210735,
		34.160496, 30.399349, 36.884590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366066, 30.765320, 37.530025>,  <34.032829, 31.071615, 37.032104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366066, 30.765320, 37.530025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711227, 30.945362, 37.438107>,  <34.918324, 31.053387, 37.382954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711227, 30.945362, 37.438107>,  <34.366066, 30.765320, 37.530025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711227, 30.945362, 37.438107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345218, -0.192890, 0.918487,
		0.369090, -0.871894, -0.321829,
		0.862900, 0.450106, -0.229800,
		34.970097, 31.080393, 37.369167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827164, 30.327808, 37.785900>,  <34.366066, 30.765320, 37.530025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827164, 30.327808, 37.785900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008011, 30.683508, 37.758102>,  <35.116520, 30.896927, 37.741425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008011, 30.683508, 37.758102>,  <34.827164, 30.327808, 37.785900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008011, 30.683508, 37.758102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366179, -0.114001, 0.923535,
		0.813329, -0.442993, -0.377165,
		0.452117, 0.889247, -0.069494,
		35.143646, 30.950283, 37.737255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456432, 30.239637, 38.231247>,  <34.827164, 30.327808, 37.785900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456432, 30.239637, 38.231247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429855, 30.634159, 38.170864>,  <35.413910, 30.870872, 38.134632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429855, 30.634159, 38.170864>,  <35.456432, 30.239637, 38.231247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429855, 30.634159, 38.170864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404393, 0.164933, 0.899591,
		0.912168, -0.001274, -0.409814,
		-0.066446, 0.986304, -0.150962,
		35.409920, 30.930050, 38.125576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090256, 30.387125, 38.237370>,  <35.456432, 30.239637, 38.231247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090256, 30.387125, 38.237370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858059, 30.697611, 38.335777>,  <35.718742, 30.883902, 38.394821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858059, 30.697611, 38.335777>,  <36.090256, 30.387125, 38.237370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858059, 30.697611, 38.335777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315462, -0.064159, 0.946767,
		0.750676, 0.627198, -0.207622,
		-0.580490, 0.776213, 0.246020,
		35.683910, 30.930475, 38.409584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529579, 30.829695, 38.728622>,  <36.090256, 30.387125, 38.237370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529579, 30.829695, 38.728622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156311, 30.952694, 38.803074>,  <35.932350, 31.026493, 38.847744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156311, 30.952694, 38.803074>,  <36.529579, 30.829695, 38.728622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156311, 30.952694, 38.803074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240639, 0.149780, 0.958989,
		0.267007, 0.939687, -0.213765,
		-0.933167, 0.307497, 0.186133,
		35.876362, 31.044943, 38.858913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598732, 31.287264, 39.273342>,  <36.529579, 30.829695, 38.728622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598732, 31.287264, 39.273342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208809, 31.201756, 39.298779>,  <35.974854, 31.150450, 39.314041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208809, 31.201756, 39.298779>,  <36.598732, 31.287264, 39.273342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208809, 31.201756, 39.298779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062032, 0.014013, 0.997976,
		-0.214230, 0.976783, -0.000399,
		-0.974812, -0.213772, 0.063593,
		35.916367, 31.137625, 39.317856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327106, 31.790447, 39.691143>,  <36.598732, 31.287264, 39.273342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327106, 31.790447, 39.691143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067272, 31.486536, 39.702263>,  <35.911369, 31.304190, 39.708935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067272, 31.486536, 39.702263>,  <36.327106, 31.790447, 39.691143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067272, 31.486536, 39.702263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124830, -0.070519, 0.989669,
		-0.749967, 0.646348, 0.140652,
		-0.649589, -0.759777, 0.027797,
		35.872395, 31.258602, 39.710602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952656, 31.819689, 40.250141>,  <36.327106, 31.790447, 39.691143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952656, 31.819689, 40.250141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912247, 31.429111, 40.173878>,  <35.888000, 31.194765, 40.128120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912247, 31.429111, 40.173878>,  <35.952656, 31.819689, 40.250141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912247, 31.429111, 40.173878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182600, -0.206577, 0.961241,
		-0.977984, 0.062291, 0.199167,
		-0.101020, -0.976446, -0.190654,
		35.881939, 31.136177, 40.116680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445278, 31.573166, 40.692997>,  <35.952656, 31.819689, 40.250141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445278, 31.573166, 40.692997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646759, 31.246159, 40.581322>,  <35.767647, 31.049955, 40.514317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646759, 31.246159, 40.581322>,  <35.445278, 31.573166, 40.692997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646759, 31.246159, 40.581322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009151, -0.328215, 0.944559,
		-0.863827, -0.473225, -0.172805,
		0.503706, -0.817516, -0.279190,
		35.797871, 31.000904, 40.497566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110813, 30.975180, 41.102673>,  <35.445278, 31.573166, 40.692997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110813, 30.975180, 41.102673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473549, 30.858541, 40.980938>,  <35.691189, 30.788559, 40.907898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473549, 30.858541, 40.980938>,  <35.110813, 30.975180, 41.102673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473549, 30.858541, 40.980938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197303, -0.344373, 0.917867,
		-0.372461, -0.892398, -0.254754,
		0.906832, -0.291606, -0.304338,
		35.745598, 30.771063, 40.889637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156685, 30.347813, 41.383266>,  <35.110813, 30.975180, 41.102673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156685, 30.347813, 41.383266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540115, 30.423578, 41.298176>,  <35.770172, 30.469038, 41.247120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540115, 30.423578, 41.298176>,  <35.156685, 30.347813, 41.383266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540115, 30.423578, 41.298176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266698, -0.334616, 0.903828,
		0.100015, -0.923122, -0.371272,
		0.958577, 0.189414, -0.212728,
		35.827690, 30.480402, 41.234356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511921, 29.767347, 41.668018>,  <35.156685, 30.347813, 41.383266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511921, 29.767347, 41.668018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798351, 30.041746, 41.616421>,  <35.970211, 30.206385, 41.585461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798351, 30.041746, 41.616421>,  <35.511921, 29.767347, 41.668018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798351, 30.041746, 41.616421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354701, -0.198443, 0.913678,
		0.601180, -0.700022, -0.385424,
		0.716079, 0.685996, -0.128999,
		36.013176, 30.247545, 41.577721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124168, 29.478542, 41.895794>,  <35.511921, 29.767347, 41.668018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124168, 29.478542, 41.895794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168289, 29.875973, 41.905930>,  <36.194759, 30.114431, 41.912010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168289, 29.875973, 41.905930>,  <36.124168, 29.478542, 41.895794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168289, 29.875973, 41.905930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269310, -0.054415, 0.961515,
		0.956716, -0.099231, -0.273582,
		0.110299, 0.993576, 0.025336,
		36.201378, 30.174046, 41.913532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731777, 29.501019, 42.189140>,  <36.124168, 29.478542, 41.895794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731777, 29.501019, 42.189140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558270, 29.855606, 42.253658>,  <36.454166, 30.068359, 42.292370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558270, 29.855606, 42.253658>,  <36.731777, 29.501019, 42.189140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558270, 29.855606, 42.253658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052154, -0.154010, 0.986692,
		0.899515, 0.436406, 0.020572,
		-0.433767, 0.886471, 0.161294,
		36.428139, 30.121548, 42.302048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123539, 29.809492, 42.651455>,  <36.731777, 29.501019, 42.189140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123539, 29.809492, 42.651455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768768, 29.987514, 42.700924>,  <36.555908, 30.094328, 42.730606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768768, 29.987514, 42.700924>,  <37.123539, 29.809492, 42.651455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768768, 29.987514, 42.700924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139995, 0.003843, 0.990145,
		0.440193, 0.895495, -0.065714,
		-0.886923, 0.445054, 0.123673,
		36.502693, 30.121031, 42.738026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278835, 30.333477, 42.992096>,  <37.123539, 29.809492, 42.651455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278835, 30.333477, 42.992096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886765, 30.284531, 43.054432>,  <36.651524, 30.255163, 43.091835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886765, 30.284531, 43.054432>,  <37.278835, 30.333477, 42.992096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886765, 30.284531, 43.054432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150153, 0.054444, 0.987162,
		-0.129279, 0.990991, -0.034991,
		-0.980174, -0.122366, 0.155839,
		36.592712, 30.247822, 43.101185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159061, 30.675457, 43.635311>,  <37.278835, 30.333477, 42.992096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159061, 30.675457, 43.635311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812672, 30.477549, 43.606197>,  <36.604839, 30.358803, 43.588730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812672, 30.477549, 43.606197>,  <37.159061, 30.675457, 43.635311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812672, 30.477549, 43.606197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059623, -0.246650, 0.967269,
		-0.496528, 0.833286, 0.243091,
		-0.865970, -0.494770, -0.072786,
		36.552879, 30.329117, 43.584362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625954, 31.013922, 44.189713>,  <37.159061, 30.675457, 43.635311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625954, 31.013922, 44.189713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539757, 30.634798, 44.095715>,  <36.488037, 30.407324, 44.039318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539757, 30.634798, 44.095715>,  <36.625954, 31.013922, 44.189713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539757, 30.634798, 44.095715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073692, -0.255743, 0.963932,
		-0.973721, 0.190403, 0.124956,
		-0.215492, -0.947809, -0.234991,
		36.475109, 30.350454, 44.025219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019043, 30.832285, 44.509777>,  <36.625954, 31.013922, 44.189713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019043, 30.832285, 44.509777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221306, 30.490011, 44.465748>,  <36.342663, 30.284647, 44.439331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221306, 30.490011, 44.465748>,  <36.019043, 30.832285, 44.509777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221306, 30.490011, 44.465748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287590, -0.287472, 0.913593,
		-0.813388, -0.430312, -0.391448,
		0.505660, -0.855682, -0.110073,
		36.373005, 30.233307, 44.432728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586720, 30.275236, 44.877941>,  <36.019043, 30.832285, 44.509777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586720, 30.275236, 44.877941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938107, 30.096651, 44.809872>,  <36.148941, 29.989500, 44.769028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938107, 30.096651, 44.809872>,  <35.586720, 30.275236, 44.877941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938107, 30.096651, 44.809872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141616, -0.583462, 0.799698,
		-0.456328, -0.678411, -0.575780,
		0.878470, -0.446464, -0.170176,
		36.201649, 29.962711, 44.758820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492931, 29.572325, 45.019276>,  <35.586720, 30.275236, 44.877941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492931, 29.572325, 45.019276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886917, 29.637545, 45.042095>,  <36.123310, 29.676676, 45.055786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886917, 29.637545, 45.042095>,  <35.492931, 29.572325, 45.019276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886917, 29.637545, 45.042095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076225, -0.706595, 0.703501,
		0.155013, -0.688577, -0.708402,
		0.984967, 0.163050, 0.057045,
		36.182407, 29.686460, 45.059208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767036, 28.892107, 45.111916>,  <35.492931, 29.572325, 45.019276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767036, 28.892107, 45.111916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047897, 29.149639, 45.233551>,  <36.216412, 29.304157, 45.306534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047897, 29.149639, 45.233551>,  <35.767036, 28.892107, 45.111916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047897, 29.149639, 45.233551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150170, -0.551373, 0.820632,
		0.696015, -0.530540, -0.483830,
		0.702149, 0.643829, 0.304093,
		36.258541, 29.342787, 45.324780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249706, 28.502348, 45.391384>,  <35.767036, 28.892107, 45.111916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249706, 28.502348, 45.391384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334286, 28.853153, 45.563961>,  <36.385033, 29.063637, 45.667507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334286, 28.853153, 45.563961>,  <36.249706, 28.502348, 45.391384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334286, 28.853153, 45.563961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000781, -0.441270, 0.897374,
		0.977389, -0.190085, -0.092621,
		0.211448, 0.877011, 0.431441,
		36.397720, 29.116257, 45.693394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770149, 28.394125, 45.870285>,  <36.249706, 28.502348, 45.391384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770149, 28.394125, 45.870285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610710, 28.741438, 45.988407>,  <36.515045, 28.949825, 46.059280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610710, 28.741438, 45.988407>,  <36.770149, 28.394125, 45.870285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610710, 28.741438, 45.988407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037458, -0.337136, 0.940710,
		0.916361, 0.363902, 0.166905,
		-0.398596, 0.868283, 0.295308,
		36.491131, 29.001923, 46.077000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154934, 28.564058, 46.436409>,  <36.770149, 28.394125, 45.870285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154934, 28.564058, 46.436409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824085, 28.783346, 46.485916>,  <36.625576, 28.914919, 46.515621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824085, 28.783346, 46.485916>,  <37.154934, 28.564058, 46.436409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824085, 28.783346, 46.485916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075226, -0.326226, 0.942294,
		0.556961, 0.770085, 0.311070,
		-0.827125, 0.548221, 0.123765,
		36.575947, 28.947813, 46.523045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836201, 28.837151, 46.637009>,  <37.154934, 28.564058, 46.436409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836201, 28.837151, 46.637009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188652, 28.783005, 46.818245>,  <38.400124, 28.750517, 46.926987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188652, 28.783005, 46.818245>,  <37.836201, 28.837151, 46.637009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188652, 28.783005, 46.818245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471620, 0.321495, -0.821106,
		-0.034519, 0.937186, 0.347118,
		0.881126, -0.135364, 0.453094,
		38.452991, 28.742395, 46.954174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192783, 29.473694, 46.535446>,  <37.836201, 28.837151, 46.637009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192783, 29.473694, 46.535446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454395, 29.178684, 46.602741>,  <38.611362, 29.001678, 46.643120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454395, 29.178684, 46.602741>,  <38.192783, 29.473694, 46.535446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454395, 29.178684, 46.602741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533575, 0.292111, -0.793706,
		0.536233, 0.608874, 0.584573,
		0.654027, -0.737525, 0.168240,
		38.650604, 28.957426, 46.653214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869545, 29.838808, 46.503265>,  <38.192783, 29.473694, 46.535446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869545, 29.838808, 46.503265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943874, 29.452278, 46.432068>,  <38.988472, 29.220360, 46.389347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943874, 29.452278, 46.432068>,  <38.869545, 29.838808, 46.503265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943874, 29.452278, 46.432068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560845, 0.253054, -0.788300,
		0.806798, 0.046653, 0.588982,
		0.185821, -0.966326, -0.177998,
		38.999622, 29.162380, 46.378670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605724, 29.669649, 46.331726>,  <38.869545, 29.838808, 46.503265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605724, 29.669649, 46.331726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407982, 29.356281, 46.181065>,  <39.289337, 29.168261, 46.090668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407982, 29.356281, 46.181065>,  <39.605724, 29.669649, 46.331726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407982, 29.356281, 46.181065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454692, 0.136246, -0.880166,
		0.740856, -0.606376, 0.288860,
		-0.494355, -0.783419, -0.376653,
		39.259674, 29.121256, 46.068069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059605, 29.352856, 45.819962>,  <39.605724, 29.669649, 46.331726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059605, 29.352856, 45.819962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708500, 29.206293, 45.696495>,  <39.497837, 29.118355, 45.622414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708500, 29.206293, 45.696495>,  <40.059605, 29.352856, 45.819962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708500, 29.206293, 45.696495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321343, 0.027588, -0.946561,
		0.355343, -0.930046, 0.093527,
		-0.877764, -0.366408, -0.308666,
		39.445171, 29.096371, 45.603893>
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
