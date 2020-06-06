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
	<24.471685, 35.043865, 35.310001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.172440, 35.138397, 35.061977>,  <23.992893, 35.195114, 34.913162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.172440, 35.138397, 35.061977>,  <24.471685, 35.043865, 35.310001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.172440, 35.138397, 35.061977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657852, -0.386554, 0.646380,
		-0.086930, 0.891474, 0.444654,
		-0.748113, 0.236327, -0.620061,
		23.948006, 35.209293, 34.875957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.627625, 35.511353, 35.917992>,  <24.471685, 35.043865, 35.310001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.627625, 35.511353, 35.917992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.470596, 35.870213, 35.998993>,  <24.376379, 36.085529, 36.047592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.470596, 35.870213, 35.998993>,  <24.627625, 35.511353, 35.917992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.470596, 35.870213, 35.998993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693905, -0.144408, -0.705437,
		-0.603641, -0.417451, 0.679229,
		-0.392572, 0.897151, 0.202501,
		24.352825, 36.139359, 36.059742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.636930, 34.730026, 36.017860>,  <24.627625, 35.511353, 35.917992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.636930, 34.730026, 36.017860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033806, 34.756134, 36.060383>,  <25.271931, 34.771797, 36.085896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033806, 34.756134, 36.060383>,  <24.636930, 34.730026, 36.017860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.033806, 34.756134, 36.060383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104505, -0.030356, 0.994061,
		0.068111, -0.997406, -0.023298,
		0.992189, 0.065272, 0.106302,
		25.331463, 34.775715, 36.092274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940643, 34.221466, 36.332115>,  <24.636930, 34.730026, 36.017860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940643, 34.221466, 36.332115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140287, 34.564125, 36.384323>,  <25.260075, 34.769722, 36.415649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140287, 34.564125, 36.384323>,  <24.940643, 34.221466, 36.332115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.140287, 34.564125, 36.384323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235510, -0.010850, 0.971811,
		0.833920, -0.515781, 0.196335,
		0.499111, 0.856652, 0.130519,
		25.290020, 34.821121, 36.423477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.368452, 34.134373, 36.884899>,  <24.940643, 34.221466, 36.332115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.368452, 34.134373, 36.884899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318972, 34.531101, 36.872284>,  <25.289284, 34.769138, 36.864716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318972, 34.531101, 36.872284>,  <25.368452, 34.134373, 36.884899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318972, 34.531101, 36.872284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108131, 0.018116, 0.993972,
		0.986411, 0.126364, 0.105006,
		-0.123700, 0.991819, -0.031534,
		25.281862, 34.828648, 36.862823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.894457, 34.613190, 37.333508>,  <25.368452, 34.134373, 36.884899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.894457, 34.613190, 37.333508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522820, 34.752586, 37.283962>,  <25.299837, 34.836224, 37.254234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522820, 34.752586, 37.283962>,  <25.894457, 34.613190, 37.333508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522820, 34.752586, 37.283962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131756, 0.001061, 0.991282,
		0.345583, 0.937312, 0.044930,
		-0.929092, 0.348490, -0.123863,
		25.244091, 34.857132, 37.246803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761587, 35.174057, 37.811390>,  <25.894457, 34.613190, 37.333508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761587, 35.174057, 37.811390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391596, 35.067818, 37.702671>,  <25.169601, 35.004074, 37.637440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391596, 35.067818, 37.702671>,  <25.761587, 35.174057, 37.811390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.391596, 35.067818, 37.702671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291391, 0.036597, 0.955904,
		-0.243939, 0.963389, -0.111244,
		-0.924978, -0.265598, -0.271796,
		25.114101, 34.988140, 37.621132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.290760, 35.685001, 38.168667>,  <25.761587, 35.174057, 37.811390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.290760, 35.685001, 38.168667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.090342, 35.339931, 38.141132>,  <24.970091, 35.132889, 38.124611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.090342, 35.339931, 38.141132>,  <25.290760, 35.685001, 38.168667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.090342, 35.339931, 38.141132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068994, -0.039471, 0.996836,
		-0.862666, 0.504211, -0.039743,
		-0.501047, -0.862678, -0.068837,
		24.940027, 35.081127, 38.120480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.906630, 35.571190, 38.861275>,  <25.290760, 35.685001, 38.168667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.906630, 35.571190, 38.861275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.942934, 35.202686, 38.709991>,  <24.964716, 34.981583, 38.619221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.942934, 35.202686, 38.709991>,  <24.906630, 35.571190, 38.861275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.942934, 35.202686, 38.709991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199676, -0.388902, 0.899380,
		-0.975650, -0.006109, -0.219250,
		0.090761, -0.921259, -0.378213,
		24.970163, 34.926308, 38.596527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.415890, 35.183426, 39.184372>,  <24.906630, 35.571190, 38.861275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.415890, 35.183426, 39.184372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679319, 34.916035, 39.046143>,  <24.837378, 34.755600, 38.963203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679319, 34.916035, 39.046143>,  <24.415890, 35.183426, 39.184372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.679319, 34.916035, 39.046143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057714, -0.413002, 0.908900,
		-0.750299, -0.618522, -0.233412,
		0.658574, -0.668476, -0.345572,
		24.876892, 34.715492, 38.942471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.231470, 34.463367, 39.387894>,  <24.415890, 35.183426, 39.184372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.231470, 34.463367, 39.387894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.623020, 34.442829, 39.308735>,  <24.857950, 34.430508, 39.261238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.623020, 34.442829, 39.308735>,  <24.231470, 34.463367, 39.387894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.623020, 34.442829, 39.308735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172877, -0.308912, 0.935247,
		-0.109151, -0.949704, -0.293511,
		0.978877, -0.051342, -0.197900,
		24.916683, 34.427425, 39.249363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.486309, 33.935722, 39.765675>,  <24.231470, 34.463367, 39.387894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.486309, 33.935722, 39.765675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.768484, 34.213993, 39.711426>,  <24.937790, 34.380955, 39.678879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.768484, 34.213993, 39.711426>,  <24.486309, 33.935722, 39.765675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.768484, 34.213993, 39.711426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252181, -0.067534, 0.965321,
		0.662392, -0.715174, -0.223078,
		0.705437, 0.695676, -0.135619,
		24.980116, 34.422695, 39.670738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.249216, 33.695320, 39.887165>,  <24.486309, 33.935722, 39.765675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.249216, 33.695320, 39.887165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.215212, 34.089745, 39.944378>,  <25.194809, 34.326401, 39.978706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.215212, 34.089745, 39.944378>,  <25.249216, 33.695320, 39.887165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.215212, 34.089745, 39.944378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245269, -0.118424, 0.962195,
		0.965720, 0.116880, -0.231782,
		-0.085012, 0.986060, 0.143032,
		25.189709, 34.385563, 39.987286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765432, 34.110954, 40.186588>,  <25.249216, 33.695320, 39.887165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.765432, 34.110954, 40.186588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444078, 34.328407, 40.283775>,  <25.251266, 34.458881, 40.342087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444078, 34.328407, 40.283775>,  <25.765432, 34.110954, 40.186588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444078, 34.328407, 40.283775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428247, 0.243996, 0.870098,
		0.413734, 0.803073, -0.428833,
		-0.803386, 0.543636, 0.242964,
		25.203062, 34.491497, 40.356663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.981050, 34.694485, 40.328457>,  <25.765432, 34.110954, 40.186588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.981050, 34.694485, 40.328457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651310, 34.627769, 40.544834>,  <25.453465, 34.587738, 40.674660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651310, 34.627769, 40.544834>,  <25.981050, 34.694485, 40.328457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.651310, 34.627769, 40.544834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513918, 0.180145, 0.838711,
		-0.237339, 0.969396, -0.062785,
		-0.824353, -0.166792, 0.540946,
		25.404003, 34.577732, 40.707119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170103, 34.759277, 39.614281>,  <25.981050, 34.694485, 40.328457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170103, 34.759277, 39.614281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.824127, 34.558571, 39.610035>,  <25.616541, 34.438148, 39.607487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.824127, 34.558571, 39.610035>,  <26.170103, 34.759277, 39.614281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.824127, 34.558571, 39.610035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083336, 0.164448, -0.982859,
		0.494909, -0.849229, -0.184052,
		-0.864939, -0.501764, -0.010615,
		25.564646, 34.408043, 39.606850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177586, 34.306934, 39.023251>,  <26.170103, 34.759277, 39.614281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177586, 34.306934, 39.023251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788553, 34.359283, 39.100143>,  <25.555134, 34.390694, 39.146278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788553, 34.359283, 39.100143>,  <26.177586, 34.306934, 39.023251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.788553, 34.359283, 39.100143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179812, 0.101015, -0.978501,
		-0.147481, -0.986239, -0.074713,
		-0.972583, 0.130876, 0.192235,
		25.496778, 34.398544, 39.157814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773417, 33.876602, 38.457592>,  <26.177586, 34.306934, 39.023251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773417, 33.876602, 38.457592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501862, 34.136951, 38.593521>,  <25.338928, 34.293159, 38.675079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501862, 34.136951, 38.593521>,  <25.773417, 33.876602, 38.457592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.501862, 34.136951, 38.593521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304752, 0.171292, -0.936902,
		-0.668012, -0.739612, 0.082066,
		-0.678886, 0.650872, 0.339824,
		25.298195, 34.332214, 38.695469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199211, 33.695679, 38.127064>,  <25.773417, 33.876602, 38.457592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.199211, 33.695679, 38.127064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.127172, 34.065620, 38.261051>,  <25.083950, 34.287586, 38.341442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.127172, 34.065620, 38.261051>,  <25.199211, 33.695679, 38.127064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.127172, 34.065620, 38.261051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475199, 0.216358, -0.852863,
		-0.861250, -0.312773, 0.400526,
		-0.180096, 0.924858, 0.334968,
		25.073143, 34.343079, 38.361542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.429289, 33.880379, 38.057320>,  <25.199211, 33.695679, 38.127064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.429289, 33.880379, 38.057320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.638157, 34.221516, 38.056885>,  <24.763477, 34.426197, 38.056622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.638157, 34.221516, 38.056885>,  <24.429289, 33.880379, 38.057320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.638157, 34.221516, 38.056885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263148, 0.159901, -0.951412,
		-0.811228, 0.497088, 0.307919,
		0.522172, 0.852840, -0.001091,
		24.794809, 34.477367, 38.056557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.052738, 34.427364, 37.862877>,  <24.429289, 33.880379, 38.057320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.052738, 34.427364, 37.862877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429693, 34.543087, 37.795700>,  <24.655867, 34.612522, 37.755394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429693, 34.543087, 37.795700>,  <24.052738, 34.427364, 37.862877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.429693, 34.543087, 37.795700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232076, 0.203867, -0.951093,
		-0.240922, 0.935275, 0.259263,
		0.942389, 0.289308, -0.167939,
		24.712410, 34.629879, 37.745319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.906954, 34.648487, 37.185730>,  <24.052738, 34.427364, 37.862877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.906954, 34.648487, 37.185730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.281279, 34.712017, 37.311607>,  <24.505873, 34.750137, 37.387135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.281279, 34.712017, 37.311607>,  <23.906954, 34.648487, 37.185730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.281279, 34.712017, 37.311607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235437, 0.382795, -0.893329,
		-0.262349, 0.910078, 0.320830,
		0.935811, 0.158829, 0.314692,
		24.562021, 34.759666, 37.406013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.098621, 35.290382, 36.911831>,  <23.906954, 34.648487, 37.185730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.098621, 35.290382, 36.911831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.455235, 35.138966, 37.011330>,  <24.669203, 35.048115, 37.071030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.455235, 35.138966, 37.011330>,  <24.098621, 35.290382, 36.911831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.455235, 35.138966, 37.011330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342087, 0.202752, -0.917533,
		0.296892, 0.903104, 0.310255,
		0.891533, -0.378542, 0.248745,
		24.722694, 35.025402, 37.085953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.615324, 35.756325, 36.690670>,  <24.098621, 35.290382, 36.911831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.615324, 35.756325, 36.690670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.899654, 35.585579, 36.914284>,  <25.070253, 35.483131, 37.048450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.899654, 35.585579, 36.914284>,  <24.615324, 35.756325, 36.690670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.899654, 35.585579, 36.914284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452848, -0.330409, -0.828105,
		0.538194, 0.841796, -0.041561,
		0.710828, -0.426860, 0.559030,
		25.112904, 35.457520, 37.081993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.324089, 36.143013, 36.625679>,  <24.615324, 35.756325, 36.690670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.324089, 36.143013, 36.625679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307331, 35.749775, 36.696964>,  <25.297277, 35.513832, 36.739735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307331, 35.749775, 36.696964>,  <25.324089, 36.143013, 36.625679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.307331, 35.749775, 36.696964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445572, -0.178036, -0.877365,
		0.894265, 0.042652, 0.445500,
		-0.041894, -0.983099, 0.178216,
		25.294764, 35.454845, 36.750427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995657, 35.937786, 36.471107>,  <25.324089, 36.143013, 36.625679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995657, 35.937786, 36.471107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755472, 35.618382, 36.454029>,  <25.611361, 35.426739, 36.443783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755472, 35.618382, 36.454029>,  <25.995657, 35.937786, 36.471107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.755472, 35.618382, 36.454029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476619, -0.314516, -0.820923,
		0.642090, -0.513281, 0.569441,
		-0.600463, -0.798513, -0.042692,
		25.575333, 35.378826, 36.441223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390081, 35.416294, 36.208790>,  <25.995657, 35.937786, 36.471107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390081, 35.416294, 36.208790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023457, 35.272434, 36.138859>,  <25.803482, 35.186119, 36.096901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023457, 35.272434, 36.138859>,  <26.390081, 35.416294, 36.208790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023457, 35.272434, 36.138859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308830, -0.358885, -0.880810,
		0.254042, -0.861308, 0.440012,
		-0.916562, -0.359652, -0.174826,
		25.748487, 35.164539, 36.086411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531496, 34.787788, 36.031078>,  <26.390081, 35.416294, 36.208790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531496, 34.787788, 36.031078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.176342, 34.900425, 35.885551>,  <25.963249, 34.968006, 35.798237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.176342, 34.900425, 35.885551>,  <26.531496, 34.787788, 36.031078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.176342, 34.900425, 35.885551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137507, -0.592216, -0.793960,
		-0.439033, -0.754973, 0.487099,
		-0.887886, 0.281595, -0.363816,
		25.909977, 34.984905, 35.776405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950037, 34.221310, 35.832840>,  <26.531496, 34.787788, 36.031078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.950037, 34.221310, 35.832840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934458, 34.549709, 35.605000>,  <25.925110, 34.746750, 35.468296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934458, 34.549709, 35.605000>,  <25.950037, 34.221310, 35.832840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.934458, 34.549709, 35.605000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202792, -0.551676, -0.809030,
		-0.978447, -0.147022, -0.145004,
		-0.038950, 0.820999, -0.569600,
		25.922773, 34.796009, 35.434120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.568321, 34.068298, 35.194569>,  <25.950037, 34.221310, 35.832840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.568321, 34.068298, 35.194569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.824263, 34.360146, 35.098034>,  <25.977827, 34.535255, 35.040112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.824263, 34.360146, 35.098034>,  <25.568321, 34.068298, 35.194569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.824263, 34.360146, 35.098034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180294, -0.447793, -0.875771,
		-0.747050, 0.516852, -0.418067,
		0.639852, 0.729620, -0.241339,
		26.016218, 34.579033, 35.025631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.411892, 34.314671, 34.568077>,  <25.568321, 34.068298, 35.194569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.411892, 34.314671, 34.568077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796288, 34.410763, 34.622913>,  <26.026924, 34.468418, 34.655815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796288, 34.410763, 34.622913>,  <25.411892, 34.314671, 34.568077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.796288, 34.410763, 34.622913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241027, -0.484191, -0.841110,
		-0.135684, 0.841337, -0.523203,
		0.960987, 0.240231, 0.137088,
		26.084583, 34.482834, 34.664040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.584829, 34.559986, 33.973076>,  <25.411892, 34.314671, 34.568077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.584829, 34.559986, 33.973076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899849, 34.417797, 34.174435>,  <26.088861, 34.332485, 34.295250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899849, 34.417797, 34.174435>,  <25.584829, 34.559986, 33.973076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899849, 34.417797, 34.174435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306696, -0.482427, -0.820488,
		0.534513, 0.800564, -0.270913,
		0.787549, -0.355473, 0.503394,
		26.136114, 34.311153, 34.325451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.267353, 34.792183, 33.743954>,  <25.584829, 34.559986, 33.973076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.267353, 34.792183, 33.743954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326479, 34.433201, 33.910194>,  <26.361954, 34.217812, 34.009937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326479, 34.433201, 33.910194>,  <26.267353, 34.792183, 33.743954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326479, 34.433201, 33.910194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447893, -0.313915, -0.837168,
		0.881785, 0.309889, 0.355563,
		0.147813, -0.897455, 0.415603,
		26.370823, 34.163963, 34.034874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887852, 34.600094, 33.400879>,  <26.267353, 34.792183, 33.743954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887852, 34.600094, 33.400879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762636, 34.258995, 33.568127>,  <26.687508, 34.054337, 33.668476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762636, 34.258995, 33.568127>,  <26.887852, 34.600094, 33.400879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762636, 34.258995, 33.568127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283880, -0.504134, -0.815635,
		0.906322, -0.136629, 0.399891,
		-0.313038, -0.852749, 0.418122,
		26.668724, 34.003170, 33.693562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396498, 34.092594, 33.172588>,  <26.887852, 34.600094, 33.400879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396498, 34.092594, 33.172588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060188, 33.894726, 33.260590>,  <26.858402, 33.776005, 33.313389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060188, 33.894726, 33.260590>,  <27.396498, 34.092594, 33.172588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060188, 33.894726, 33.260590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080658, -0.516287, -0.852609,
		0.535346, -0.699105, 0.473979,
		-0.840773, -0.494671, 0.220003,
		26.807957, 33.746323, 33.326591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527990, 33.349056, 33.190090>,  <27.396498, 34.092594, 33.172588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527990, 33.349056, 33.190090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138744, 33.408894, 33.120045>,  <26.905197, 33.444798, 33.078018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138744, 33.408894, 33.120045>,  <27.527990, 33.349056, 33.190090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138744, 33.408894, 33.120045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019116, -0.705249, -0.708701,
		-0.229520, -0.692996, 0.683430,
		-0.973116, 0.149597, -0.175116,
		26.846809, 33.453773, 33.067509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859581, 32.943596, 33.841434>,  <27.527990, 33.349056, 33.190090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859581, 32.943596, 33.841434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497805, 32.998436, 33.679848>,  <27.280739, 33.031342, 33.582893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497805, 32.998436, 33.679848>,  <27.859581, 32.943596, 33.841434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497805, 32.998436, 33.679848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207384, -0.686225, -0.697200,
		-0.372798, -0.714353, 0.592218,
		-0.904441, 0.137098, -0.403968,
		27.226473, 33.039566, 33.558659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540796, 32.215527, 33.761742>,  <27.859581, 32.943596, 33.841434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540796, 32.215527, 33.761742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387596, 32.470734, 33.494534>,  <27.295677, 32.623856, 33.334209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387596, 32.470734, 33.494534>,  <27.540796, 32.215527, 33.761742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387596, 32.470734, 33.494534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141991, -0.673903, -0.725047,
		-0.912770, -0.372545, 0.167512,
		-0.382999, 0.638016, -0.668017,
		27.272696, 32.662140, 33.294128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265326, 31.791451, 33.215534>,  <27.540796, 32.215527, 33.761742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265326, 31.791451, 33.215534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344637, 32.147800, 33.052059>,  <27.392223, 32.361610, 32.953972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344637, 32.147800, 33.052059>,  <27.265326, 31.791451, 33.215534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344637, 32.147800, 33.052059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349528, -0.453823, -0.819680,
		-0.915706, 0.019675, -0.401368,
		0.198277, 0.890875, -0.408692,
		27.404119, 32.415062, 32.929451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010870, 31.633316, 32.571869>,  <27.265326, 31.791451, 33.215534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010870, 31.633316, 32.571869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278570, 31.925503, 32.626308>,  <27.439190, 32.100815, 32.658970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278570, 31.925503, 32.626308>,  <27.010870, 31.633316, 32.571869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278570, 31.925503, 32.626308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523683, -0.333765, -0.783809,
		-0.527121, 0.595837, -0.605906,
		0.669252, 0.730465, 0.136095,
		27.479345, 32.144642, 32.667137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165445, 32.066586, 31.898935>,  <27.010870, 31.633316, 32.571869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165445, 32.066586, 31.898935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452179, 32.008762, 32.171772>,  <27.624220, 31.974070, 32.335476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452179, 32.008762, 32.171772>,  <27.165445, 32.066586, 31.898935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452179, 32.008762, 32.171772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518525, -0.543483, -0.660119,
		0.466130, 0.826879, -0.314632,
		0.716836, -0.144557, 0.682092,
		27.667231, 31.965395, 32.376400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636925, 32.597237, 32.044785>,  <27.165445, 32.066586, 31.898935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636925, 32.597237, 32.044785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.334030, 32.441540, 32.254578>,  <27.152294, 32.348122, 32.380455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.334030, 32.441540, 32.254578>,  <27.636925, 32.597237, 32.044785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.334030, 32.441540, 32.254578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023831, 0.818950, 0.573369,
		-0.652706, 0.421678, -0.629415,
		-0.757237, -0.389241, 0.524485,
		27.106859, 32.324768, 32.411922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248854, 33.210888, 32.213646>,  <27.636925, 32.597237, 32.044785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.248854, 33.210888, 32.213646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119938, 32.920486, 32.456646>,  <27.042587, 32.746246, 32.602444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119938, 32.920486, 32.456646>,  <27.248854, 33.210888, 32.213646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119938, 32.920486, 32.456646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186552, 0.677865, 0.711124,
		-0.928077, 0.115859, -0.353907,
		-0.322291, -0.726000, 0.607497,
		27.023251, 32.702686, 32.638897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684256, 33.468643, 32.501846>,  <27.248854, 33.210888, 32.213646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.684256, 33.468643, 32.501846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815716, 33.188946, 32.755791>,  <26.894592, 33.021126, 32.908157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815716, 33.188946, 32.755791>,  <26.684256, 33.468643, 32.501846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815716, 33.188946, 32.755791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280969, 0.569375, 0.772572,
		-0.901690, -0.432281, -0.009341,
		0.328650, -0.699245, 0.634858,
		26.914310, 32.979172, 32.946247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124128, 33.334103, 32.938774>,  <26.684256, 33.468643, 32.501846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124128, 33.334103, 32.938774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461033, 33.244999, 33.135132>,  <26.663176, 33.191536, 33.252945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461033, 33.244999, 33.135132>,  <26.124128, 33.334103, 32.938774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461033, 33.244999, 33.135132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299184, 0.564343, 0.769419,
		-0.448429, -0.794918, 0.408676,
		0.842259, -0.222761, 0.490894,
		26.713711, 33.178169, 33.282402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917780, 33.025391, 33.460751>,  <26.124128, 33.334103, 32.938774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917780, 33.025391, 33.460751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262724, 33.224117, 33.499741>,  <26.469690, 33.343353, 33.523136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262724, 33.224117, 33.499741>,  <25.917780, 33.025391, 33.460751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262724, 33.224117, 33.499741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357799, 0.461817, 0.811606,
		0.358207, -0.734775, 0.576015,
		0.862362, 0.496821, 0.097476,
		26.521433, 33.373165, 33.528984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316496, 32.836224, 34.211548>,  <25.917780, 33.025391, 33.460751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.316496, 32.836224, 34.211548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397537, 33.193691, 34.051399>,  <26.446163, 33.408173, 33.955311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397537, 33.193691, 34.051399>,  <26.316496, 32.836224, 34.211548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397537, 33.193691, 34.051399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123134, 0.428859, 0.894940,
		0.971488, -0.132019, 0.196930,
		0.202604, 0.893673, -0.400375,
		26.458319, 33.461792, 33.931286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791523, 33.165344, 34.649437>,  <26.316496, 32.836224, 34.211548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791523, 33.165344, 34.649437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630381, 33.472794, 34.450668>,  <26.533695, 33.657261, 34.331409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630381, 33.472794, 34.450668>,  <26.791523, 33.165344, 34.649437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630381, 33.472794, 34.450668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187415, 0.462146, 0.866773,
		0.895870, 0.442314, -0.042126,
		-0.402855, 0.768622, -0.496920,
		26.509523, 33.703381, 34.301594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191320, 33.677364, 34.921417>,  <26.791523, 33.165344, 34.649437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191320, 33.677364, 34.921417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858437, 33.845909, 34.777260>,  <26.658707, 33.947037, 34.690765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858437, 33.845909, 34.777260>,  <27.191320, 33.677364, 34.921417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858437, 33.845909, 34.777260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074522, 0.559088, 0.825752,
		0.549432, 0.714055, -0.433877,
		-0.832208, 0.421362, -0.360394,
		26.608774, 33.972317, 34.669140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127586, 34.332489, 35.140301>,  <27.191320, 33.677364, 34.921417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127586, 34.332489, 35.140301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746733, 34.308674, 35.020370>,  <26.518221, 34.294384, 34.948414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746733, 34.308674, 35.020370>,  <27.127586, 34.332489, 35.140301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746733, 34.308674, 35.020370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280439, 0.560419, 0.779285,
		0.121627, 0.826066, -0.550292,
		-0.952135, -0.059542, -0.299823,
		26.461092, 34.290810, 34.930424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426237, 34.104702, 35.674042>,  <27.127586, 34.332489, 35.140301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426237, 34.104702, 35.674042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604885, 34.301540, 35.375145>,  <27.712074, 34.419643, 35.195805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604885, 34.301540, 35.375145>,  <27.426237, 34.104702, 35.674042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604885, 34.301540, 35.375145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668987, 0.738245, 0.086323,
		0.594129, 0.461344, 0.658918,
		0.446618, 0.492094, -0.747245,
		27.738871, 34.449169, 35.150970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928703, 34.657597, 35.953896>,  <27.426237, 34.104702, 35.674042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928703, 34.657597, 35.953896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094152, 34.838177, 36.270153>,  <28.193422, 34.946526, 36.459908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094152, 34.838177, 36.270153>,  <27.928703, 34.657597, 35.953896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094152, 34.838177, 36.270153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843704, -0.516428, -0.146511,
		0.342167, 0.727666, -0.594494,
		0.413625, 0.451446, 0.790640,
		28.218241, 34.973610, 36.507343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673330, 34.993927, 35.852383>,  <27.928703, 34.657597, 35.953896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673330, 34.993927, 35.852383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640514, 34.847900, 36.223328>,  <28.620825, 34.760284, 36.445896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640514, 34.847900, 36.223328>,  <28.673330, 34.993927, 35.852383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640514, 34.847900, 36.223328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896267, -0.433965, -0.091544,
		0.435862, 0.823653, 0.362795,
		-0.082040, -0.365062, 0.927361,
		28.615902, 34.738380, 36.501537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138418, 35.308372, 36.407848>,  <28.673330, 34.993927, 35.852383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138418, 35.308372, 36.407848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047190, 34.923435, 36.467026>,  <28.992453, 34.692474, 36.502533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047190, 34.923435, 36.467026>,  <29.138418, 35.308372, 36.407848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047190, 34.923435, 36.467026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920374, -0.262660, -0.289694,
		0.317643, 0.070094, 0.945616,
		-0.228070, -0.962339, 0.147944,
		28.978769, 34.634735, 36.511410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518639, 34.891113, 36.914036>,  <29.138418, 35.308372, 36.407848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518639, 34.891113, 36.914036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397055, 34.627735, 36.638630>,  <29.324104, 34.469707, 36.473385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397055, 34.627735, 36.638630>,  <29.518639, 34.891113, 36.914036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397055, 34.627735, 36.638630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935089, -0.344461, -0.083399,
		-0.182253, -0.669173, 0.720411,
		-0.303961, -0.658448, -0.688515,
		29.305866, 34.430199, 36.432076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622246, 34.218708, 37.126511>,  <29.518639, 34.891113, 36.914036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622246, 34.218708, 37.126511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639828, 34.250256, 36.728146>,  <29.650377, 34.269184, 36.489124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639828, 34.250256, 36.728146>,  <29.622246, 34.218708, 37.126511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639828, 34.250256, 36.728146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959945, -0.279458, 0.020235,
		-0.276720, -0.956913, -0.087992,
		0.043953, 0.078868, -0.995916,
		29.653013, 34.273914, 36.429371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889748, 33.569946, 36.894459>,  <29.622246, 34.218708, 37.126511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889748, 33.569946, 36.894459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957830, 33.865498, 36.633663>,  <29.998680, 34.042828, 36.477184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957830, 33.865498, 36.633663>,  <29.889748, 33.569946, 36.894459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957830, 33.865498, 36.633663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971916, -0.234992, -0.012584,
		-0.162510, -0.631536, -0.758125,
		0.170206, 0.738879, -0.651988,
		30.008892, 34.087162, 36.438068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443514, 33.343933, 36.501804>,  <29.889748, 33.569946, 36.894459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443514, 33.343933, 36.501804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475967, 33.742477, 36.512199>,  <30.495440, 33.981606, 36.518436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475967, 33.742477, 36.512199>,  <30.443514, 33.343933, 36.501804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475967, 33.742477, 36.512199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969902, -0.084934, 0.228203,
		0.229581, 0.006694, -0.973267,
		0.081136, 0.996364, 0.025991,
		30.500309, 34.041386, 36.519997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975924, 33.586037, 35.999039>,  <30.443514, 33.343933, 36.501804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975924, 33.586037, 35.999039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957006, 33.859020, 36.290794>,  <30.945656, 34.022812, 36.465847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957006, 33.859020, 36.290794>,  <30.975924, 33.586037, 35.999039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957006, 33.859020, 36.290794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996054, -0.022680, 0.085805,
		0.075101, 0.730572, -0.678693,
		-0.047294, 0.682459, 0.729392,
		30.942818, 34.063759, 36.509613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352783, 34.213970, 35.775383>,  <30.975924, 33.586037, 35.999039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352783, 34.213970, 35.775383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337936, 34.105389, 36.160076>,  <31.329029, 34.040241, 36.390892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337936, 34.105389, 36.160076>,  <31.352783, 34.213970, 35.775383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337936, 34.105389, 36.160076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989414, -0.145096, -0.002768,
		0.140295, 0.951453, 0.273962,
		-0.037117, -0.271450, 0.961737,
		31.326801, 34.023952, 36.448597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989494, 34.596046, 36.188282>,  <31.352783, 34.213970, 35.775383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989494, 34.596046, 36.188282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878572, 34.264717, 36.383003>,  <31.812019, 34.065918, 36.499836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878572, 34.264717, 36.383003>,  <31.989494, 34.596046, 36.188282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878572, 34.264717, 36.383003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960342, -0.254291, 0.114365,
		0.029058, 0.499212, 0.865992,
		-0.277307, -0.828326, 0.486804,
		31.795380, 34.016220, 36.529045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458565, 34.596375, 36.780560>,  <31.989494, 34.596046, 36.188282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458565, 34.596375, 36.780560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329155, 34.230320, 36.684345>,  <32.251511, 34.010689, 36.626617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329155, 34.230320, 36.684345>,  <32.458565, 34.596375, 36.780560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329155, 34.230320, 36.684345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934343, -0.349118, 0.071549,
		-0.149453, -0.201596, 0.967999,
		-0.323522, -0.915137, -0.240536,
		32.232098, 33.955780, 36.612183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442932, 34.561104, 37.486042>,  <32.458565, 34.596375, 36.780560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442932, 34.561104, 37.486042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082958, 34.461060, 37.343182>,  <31.866974, 34.401031, 37.257465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082958, 34.461060, 37.343182>,  <32.442932, 34.561104, 37.486042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082958, 34.461060, 37.343182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215827, 0.967258, -0.133535,
		0.378856, -0.043090, -0.924452,
		-0.899937, -0.250112, -0.357152,
		31.812977, 34.386024, 37.236034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097496, 34.326088, 37.315800>,  <32.442932, 34.561104, 37.486042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097496, 34.326088, 37.315800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054150, 33.950127, 37.445316>,  <33.028141, 33.724552, 37.523026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054150, 33.950127, 37.445316>,  <33.097496, 34.326088, 37.315800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054150, 33.950127, 37.445316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413371, -0.338823, -0.845176,
		0.904091, 0.042259, 0.425245,
		-0.108366, -0.939901, 0.323796,
		33.021641, 33.668156, 37.542454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785233, 33.952408, 37.447903>,  <33.097496, 34.326088, 37.315800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785233, 33.952408, 37.447903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473305, 33.728886, 37.335041>,  <33.286148, 33.594772, 37.267323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473305, 33.728886, 37.335041>,  <33.785233, 33.952408, 37.447903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473305, 33.728886, 37.335041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492312, -0.269057, -0.827791,
		0.386657, -0.784440, 0.484923,
		-0.779824, -0.558805, -0.282156,
		33.239357, 33.561245, 37.250393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050869, 33.259727, 37.269886>,  <33.785233, 33.952408, 37.447903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050869, 33.259727, 37.269886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725891, 33.343952, 37.052414>,  <33.530903, 33.394485, 36.921932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725891, 33.343952, 37.052414>,  <34.050869, 33.259727, 37.269886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725891, 33.343952, 37.052414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510834, -0.192391, -0.837875,
		-0.281026, -0.958461, 0.048744,
		-0.812448, 0.210565, -0.543682,
		33.482155, 33.407120, 36.889309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804245, 32.660324, 36.827599>,  <34.050869, 33.259727, 37.269886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804245, 32.660324, 36.827599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701176, 33.012653, 36.668720>,  <33.639336, 33.224049, 36.573395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701176, 33.012653, 36.668720>,  <33.804245, 32.660324, 36.827599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701176, 33.012653, 36.668720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229477, -0.343527, -0.910675,
		-0.938587, -0.325803, -0.113610,
		-0.257673, 0.880819, -0.397194,
		33.623875, 33.276897, 36.549561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266460, 32.647476, 36.348492>,  <33.804245, 32.660324, 36.827599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266460, 32.647476, 36.348492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543282, 32.907822, 36.223625>,  <33.709373, 33.064030, 36.148705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543282, 32.907822, 36.223625>,  <33.266460, 32.647476, 36.348492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543282, 32.907822, 36.223625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028825, -0.457021, -0.888989,
		-0.721275, 0.606226, -0.335042,
		0.692049, 0.650863, -0.312163,
		33.750896, 33.103081, 36.129974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087486, 32.915703, 35.652378>,  <33.266460, 32.647476, 36.348492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087486, 32.915703, 35.652378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483524, 32.956715, 35.690727>,  <33.721149, 32.981323, 35.713737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483524, 32.956715, 35.690727>,  <33.087486, 32.915703, 35.652378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483524, 32.956715, 35.690727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138165, -0.591288, -0.794537,
		-0.024778, 0.799916, -0.599600,
		0.990099, 0.102531, 0.095869,
		33.780556, 32.987473, 35.719486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316750, 32.952232, 34.966270>,  <33.087486, 32.915703, 35.652378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316750, 32.952232, 34.966270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666107, 32.888538, 35.150372>,  <33.875721, 32.850323, 35.260834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666107, 32.888538, 35.150372>,  <33.316750, 32.952232, 34.966270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666107, 32.888538, 35.150372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368816, -0.400930, -0.838588,
		0.318066, 0.902163, -0.291438,
		0.873389, -0.159240, 0.460254,
		33.928123, 32.840767, 35.288448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853310, 33.306007, 34.559021>,  <33.316750, 32.952232, 34.966270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853310, 33.306007, 34.559021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995743, 33.000202, 34.773956>,  <34.081203, 32.816719, 34.902916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995743, 33.000202, 34.773956>,  <33.853310, 33.306007, 34.559021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995743, 33.000202, 34.773956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343745, -0.427542, -0.836090,
		0.868935, 0.482420, 0.110559,
		0.356079, -0.764512, 0.537336,
		34.102566, 32.770847, 34.935158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440723, 33.175941, 34.338432>,  <33.853310, 33.306007, 34.559021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440723, 33.175941, 34.338432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381794, 32.816757, 34.504303>,  <34.346436, 32.601246, 34.603825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381794, 32.816757, 34.504303>,  <34.440723, 33.175941, 34.338432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381794, 32.816757, 34.504303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273656, -0.439891, -0.855341,
		0.950477, -0.012536, 0.310541,
		-0.147326, -0.897964, 0.414676,
		34.337597, 32.547367, 34.628704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016380, 32.754360, 34.148956>,  <34.440723, 33.175941, 34.338432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016380, 32.754360, 34.148956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731888, 32.500114, 34.269058>,  <34.561192, 32.347569, 34.341118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731888, 32.500114, 34.269058>,  <35.016380, 32.754360, 34.148956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731888, 32.500114, 34.269058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073182, -0.491753, -0.867654,
		0.699141, -0.595127, 0.396263,
		-0.711228, -0.635612, 0.300252,
		34.518520, 32.309429, 34.359135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245670, 32.090511, 33.945160>,  <35.016380, 32.754360, 34.148956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245670, 32.090511, 33.945160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850468, 32.054398, 33.995258>,  <34.613346, 32.032730, 34.025318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850468, 32.054398, 33.995258>,  <35.245670, 32.090511, 33.945160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850468, 32.054398, 33.995258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079820, -0.395681, -0.914913,
		0.132162, -0.913939, 0.383730,
		-0.988009, -0.090288, 0.125245,
		34.554066, 32.027313, 34.032833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038342, 31.364117, 33.830372>,  <35.245670, 32.090511, 33.945160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038342, 31.364117, 33.830372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709393, 31.577738, 33.751892>,  <34.512024, 31.705912, 33.704803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709393, 31.577738, 33.751892>,  <35.038342, 31.364117, 33.830372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709393, 31.577738, 33.751892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105063, -0.196368, -0.974885,
		-0.559168, -0.822330, 0.105377,
		-0.822370, 0.534054, -0.196199,
		34.462681, 31.737953, 33.693031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687836, 31.073658, 33.251644>,  <35.038342, 31.364117, 33.830372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687836, 31.073658, 33.251644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510910, 31.432379, 33.247433>,  <34.404755, 31.647612, 33.244907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510910, 31.432379, 33.247433>,  <34.687836, 31.073658, 33.251644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510910, 31.432379, 33.247433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053267, 0.014553, -0.998474,
		-0.895278, -0.442197, -0.054207,
		-0.442311, 0.896800, -0.010526,
		34.378216, 31.701418, 33.244274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301487, 31.037800, 32.742992>,  <34.687836, 31.073658, 33.251644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301487, 31.037800, 32.742992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329849, 31.434084, 32.789410>,  <34.346867, 31.671854, 32.817261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329849, 31.434084, 32.789410>,  <34.301487, 31.037800, 32.742992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329849, 31.434084, 32.789410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062776, 0.120541, -0.990722,
		-0.995506, 0.062960, 0.070740,
		0.070903, 0.990710, 0.116047,
		34.351120, 31.731297, 32.824223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871315, 31.260494, 32.365120>,  <34.301487, 31.037800, 32.742992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871315, 31.260494, 32.365120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081062, 31.598978, 32.403000>,  <34.206909, 31.802069, 32.425728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081062, 31.598978, 32.403000>,  <33.871315, 31.260494, 32.365120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081062, 31.598978, 32.403000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080187, 0.159801, -0.983887,
		-0.847707, 0.508326, 0.151649,
		0.524369, 0.846208, 0.094704,
		34.238373, 31.852840, 32.431412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519691, 31.817604, 32.013229>,  <33.871315, 31.260494, 32.365120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519691, 31.817604, 32.013229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905048, 31.924164, 32.025288>,  <34.136261, 31.988100, 32.032520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905048, 31.924164, 32.025288>,  <33.519691, 31.817604, 32.013229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905048, 31.924164, 32.025288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033459, -0.007919, -0.999409,
		-0.266001, 0.963831, -0.016542,
		0.963392, 0.266398, 0.030142,
		34.194065, 32.004082, 32.034328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543110, 32.200775, 31.464996>,  <33.519691, 31.817604, 32.013229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543110, 32.200775, 31.464996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926495, 32.115021, 31.540253>,  <34.156525, 32.063568, 31.585407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926495, 32.115021, 31.540253>,  <33.543110, 32.200775, 31.464996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926495, 32.115021, 31.540253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219863, 0.135082, -0.966133,
		0.181713, 0.967363, 0.176606,
		0.958457, -0.214388, 0.188141,
		34.214031, 32.050705, 31.596695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917213, 32.683685, 31.177784>,  <33.543110, 32.200775, 31.464996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917213, 32.683685, 31.177784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195156, 32.399155, 31.220100>,  <34.361923, 32.228436, 31.245491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195156, 32.399155, 31.220100>,  <33.917213, 32.683685, 31.177784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195156, 32.399155, 31.220100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336995, 0.192113, -0.921698,
		0.635303, 0.676098, 0.373204,
		0.694855, -0.711326, 0.105792,
		34.403614, 32.185757, 31.251839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474636, 32.974319, 30.895956>,  <33.917213, 32.683685, 31.177784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474636, 32.974319, 30.895956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590904, 32.591866, 30.910454>,  <34.660667, 32.362392, 30.919153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590904, 32.591866, 30.910454>,  <34.474636, 32.974319, 30.895956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590904, 32.591866, 30.910454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369016, 0.077073, -0.926222,
		0.882800, 0.282605, 0.375233,
		0.290675, -0.956135, 0.036246,
		34.678108, 32.305023, 30.921328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204151, 32.857635, 30.696030>,  <34.474636, 32.974319, 30.895956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204151, 32.857635, 30.696030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997864, 32.525402, 30.611973>,  <34.874092, 32.326061, 30.561539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997864, 32.525402, 30.611973>,  <35.204151, 32.857635, 30.696030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997864, 32.525402, 30.611973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320624, 0.040353, -0.946347,
		0.794504, -0.555424, 0.245496,
		-0.515717, -0.830588, -0.210143,
		34.843147, 32.276226, 30.548929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582321, 32.667439, 30.147829>,  <35.204151, 32.857635, 30.696030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582321, 32.667439, 30.147829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248379, 32.447361, 30.140888>,  <35.048012, 32.315315, 30.136724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248379, 32.447361, 30.140888>,  <35.582321, 32.667439, 30.147829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248379, 32.447361, 30.140888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004897, 0.038946, -0.999229,
		0.550449, -0.834126, -0.035209,
		-0.834855, -0.550197, -0.017353,
		34.997921, 32.282303, 30.135683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684299, 32.280422, 29.482586>,  <35.582321, 32.667439, 30.147829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684299, 32.280422, 29.482586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296642, 32.273045, 29.580915>,  <35.064049, 32.268620, 29.639914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296642, 32.273045, 29.580915>,  <35.684299, 32.280422, 29.482586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296642, 32.273045, 29.580915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245428, -0.021450, -0.969177,
		0.023155, -0.999600, 0.016260,
		-0.969138, -0.018451, 0.245826,
		35.005901, 32.267509, 29.654663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374664, 31.674950, 29.165184>,  <35.684299, 32.280422, 29.482586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374664, 31.674950, 29.165184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087856, 31.948475, 29.219273>,  <34.915771, 32.112591, 29.251726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087856, 31.948475, 29.219273>,  <35.374664, 31.674950, 29.165184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087856, 31.948475, 29.219273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200705, -0.016755, -0.979508,
		-0.667533, -0.729467, 0.149258,
		-0.717020, 0.683811, 0.135223,
		34.872749, 32.153618, 29.259840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740566, 31.467348, 28.731350>,  <35.374664, 31.674950, 29.165184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740566, 31.467348, 28.731350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682926, 31.857752, 28.796644>,  <34.648342, 32.091995, 28.835821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682926, 31.857752, 28.796644>,  <34.740566, 31.467348, 28.731350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682926, 31.857752, 28.796644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259390, 0.121935, -0.958044,
		-0.954963, -0.180391, 0.235596,
		-0.144095, 0.976007, 0.163235,
		34.639698, 32.150555, 28.845615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044708, 31.645744, 28.502214>,  <34.740566, 31.467348, 28.731350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044708, 31.645744, 28.502214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254368, 31.985956, 28.484928>,  <34.380161, 32.190083, 28.474556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254368, 31.985956, 28.484928>,  <34.044708, 31.645744, 28.502214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254368, 31.985956, 28.484928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252188, 0.106541, -0.961795,
		-0.813432, 0.515021, 0.270337,
		0.524147, 0.850531, -0.043218,
		34.411613, 32.241116, 28.471962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564266, 32.258881, 28.091721>,  <34.044708, 31.645744, 28.502214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564266, 32.258881, 28.091721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940762, 32.392647, 28.110645>,  <34.166656, 32.472908, 28.122000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940762, 32.392647, 28.110645>,  <33.564266, 32.258881, 28.091721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940762, 32.392647, 28.110645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113309, 0.444619, -0.888524,
		-0.318177, 0.830949, 0.456384,
		0.941236, 0.334420, 0.047314,
		34.223133, 32.492973, 28.124840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501923, 32.908905, 27.806492>,  <33.564266, 32.258881, 28.091721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501923, 32.908905, 27.806492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887161, 32.807964, 27.769028>,  <34.118305, 32.747398, 27.746550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887161, 32.807964, 27.769028>,  <33.501923, 32.908905, 27.806492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887161, 32.807964, 27.769028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027806, 0.439372, -0.897875,
		0.267732, 0.862131, 0.430173,
		0.963092, -0.252352, -0.093661,
		34.176090, 32.732258, 27.740929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726646, 33.451065, 27.434698>,  <33.501923, 32.908905, 27.806492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726646, 33.451065, 27.434698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009647, 33.173882, 27.379194>,  <34.179447, 33.007572, 27.345892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009647, 33.173882, 27.379194>,  <33.726646, 33.451065, 27.434698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009647, 33.173882, 27.379194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069415, 0.263537, -0.962148,
		0.703294, 0.671090, 0.234555,
		0.707502, -0.692955, -0.138761,
		34.221897, 32.965996, 27.337566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345226, 33.781902, 27.125528>,  <33.726646, 33.451065, 27.434698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345226, 33.781902, 27.125528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363861, 33.396492, 27.020113>,  <34.375042, 33.165245, 26.956863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363861, 33.396492, 27.020113>,  <34.345226, 33.781902, 27.125528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363861, 33.396492, 27.020113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112356, 0.267204, -0.957068,
		0.992576, 0.014976, 0.120706,
		0.046586, -0.963524, -0.263537,
		34.377838, 33.107433, 26.941051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923901, 33.772797, 26.781376>,  <34.345226, 33.781902, 27.125528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923901, 33.772797, 26.781376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730766, 33.436726, 26.682611>,  <34.614883, 33.235081, 26.623352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730766, 33.436726, 26.682611>,  <34.923901, 33.772797, 26.781376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730766, 33.436726, 26.682611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236585, 0.146319, -0.960530,
		0.843146, -0.522196, 0.128126,
		-0.482837, -0.840180, -0.246912,
		34.585915, 33.184673, 26.608538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396847, 33.453693, 26.314093>,  <34.923901, 33.772797, 26.781376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396847, 33.453693, 26.314093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049225, 33.278088, 26.222872>,  <34.840652, 33.172726, 26.168139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049225, 33.278088, 26.222872>,  <35.396847, 33.453693, 26.314093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049225, 33.278088, 26.222872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303030, -0.108019, -0.946839,
		0.391044, -0.891962, 0.226909,
		-0.869056, -0.439016, -0.228052,
		34.788509, 33.146381, 26.154457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463097, 32.814579, 25.956112>,  <35.396847, 33.453693, 26.314093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463097, 32.814579, 25.956112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089642, 32.905354, 25.845245>,  <34.865570, 32.959816, 25.778725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089642, 32.905354, 25.845245>,  <35.463097, 32.814579, 25.956112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089642, 32.905354, 25.845245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219506, -0.249029, -0.943293,
		-0.283090, -0.941533, 0.182689,
		-0.933637, 0.226936, -0.277169,
		34.809551, 32.973434, 25.762094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423939, 32.405228, 25.507965>,  <35.463097, 32.814579, 25.956112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423939, 32.405228, 25.507965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112919, 32.641220, 25.420940>,  <34.926308, 32.782814, 25.368725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112919, 32.641220, 25.420940>,  <35.423939, 32.405228, 25.507965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112919, 32.641220, 25.420940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134203, -0.182318, -0.974038,
		-0.614329, -0.786564, 0.062585,
		-0.777553, 0.589981, -0.217563,
		34.879654, 32.818214, 25.355671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052258, 31.973536, 25.164440>,  <35.423939, 32.405228, 25.507965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052258, 31.973536, 25.164440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950546, 32.338600, 25.036448>,  <34.889519, 32.557640, 24.959652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950546, 32.338600, 25.036448>,  <35.052258, 31.973536, 25.164440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950546, 32.338600, 25.036448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387651, -0.206932, -0.898280,
		-0.886041, -0.352456, -0.301175,
		-0.254281, 0.912663, -0.319980,
		34.874264, 32.612400, 24.940453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853165, 31.907894, 24.464781>,  <35.052258, 31.973536, 25.164440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853165, 31.907894, 24.464781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914867, 32.302380, 24.488737>,  <34.951889, 32.539070, 24.503111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914867, 32.302380, 24.488737>,  <34.853165, 31.907894, 24.464781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914867, 32.302380, 24.488737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191791, 0.029576, -0.980990,
		-0.969238, 0.162808, -0.184585,
		0.154254, 0.986214, 0.059892,
		34.961143, 32.598244, 24.506704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488514, 32.137135, 23.852154>,  <34.853165, 31.907894, 24.464781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488514, 32.137135, 23.852154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753597, 32.411003, 23.973513>,  <34.912647, 32.575325, 24.046328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753597, 32.411003, 23.973513>,  <34.488514, 32.137135, 23.852154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753597, 32.411003, 23.973513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219682, 0.209579, -0.952794,
		-0.715935, 0.698072, -0.011520,
		0.662705, 0.684669, 0.303399,
		34.952408, 32.616405, 24.064533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417027, 32.684341, 23.282314>,  <34.488514, 32.137135, 23.852154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417027, 32.684341, 23.282314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751030, 32.791550, 23.474531>,  <34.951431, 32.855873, 23.589861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751030, 32.791550, 23.474531>,  <34.417027, 32.684341, 23.282314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751030, 32.791550, 23.474531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393605, 0.319310, -0.862042,
		-0.384487, 0.908959, 0.161132,
		0.835011, 0.268022, 0.480542,
		35.001534, 32.871956, 23.618694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567196, 33.429897, 22.997524>,  <34.417027, 32.684341, 23.282314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567196, 33.429897, 22.997524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901314, 33.268036, 23.146408>,  <35.101784, 33.170921, 23.235739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901314, 33.268036, 23.146408>,  <34.567196, 33.429897, 22.997524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901314, 33.268036, 23.146408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538030, 0.462285, -0.704852,
		0.113152, 0.789019, 0.603859,
		0.835296, -0.404650, 0.372208,
		35.151901, 33.146641, 23.258070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075626, 33.998402, 23.050104>,  <34.567196, 33.429897, 22.997524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075626, 33.998402, 23.050104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264477, 33.645927, 23.040220>,  <35.377789, 33.434444, 23.034290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264477, 33.645927, 23.040220>,  <35.075626, 33.998402, 23.050104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264477, 33.645927, 23.040220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615170, 0.349417, -0.706735,
		0.631397, 0.318469, 0.707047,
		0.472127, -0.881184, -0.024708,
		35.406116, 33.381573, 23.032808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784737, 34.173706, 23.098297>,  <35.075626, 33.998402, 23.050104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784737, 34.173706, 23.098297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767769, 33.802277, 22.950813>,  <35.757587, 33.579418, 22.862324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767769, 33.802277, 22.950813>,  <35.784737, 34.173706, 23.098297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767769, 33.802277, 22.950813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662631, 0.250047, -0.705972,
		0.747744, -0.274268, 0.604695,
		-0.042423, -0.928576, -0.368709,
		35.755043, 33.523705, 22.840200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466106, 34.035248, 22.913332>,  <35.784737, 34.173706, 23.098297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466106, 34.035248, 22.913332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249733, 33.794106, 22.678741>,  <36.119907, 33.649422, 22.537987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249733, 33.794106, 22.678741>,  <36.466106, 34.035248, 22.913332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249733, 33.794106, 22.678741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281846, 0.527055, -0.801733,
		0.792434, -0.598982, -0.115190,
		-0.540935, -0.602855, -0.586477,
		36.087452, 33.613251, 22.502798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883503, 33.632359, 22.510248>,  <36.466106, 34.035248, 22.913332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883503, 33.632359, 22.510248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535522, 33.655586, 22.314363>,  <36.326736, 33.669525, 22.196833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535522, 33.655586, 22.314363>,  <36.883503, 33.632359, 22.510248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535522, 33.655586, 22.314363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483886, 0.292053, -0.824960,
		0.095112, -0.954638, -0.282172,
		-0.869947, 0.058075, -0.489713,
		36.274540, 33.673008, 22.167450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086136, 33.301514, 21.986883>,  <36.883503, 33.632359, 22.510248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086136, 33.301514, 21.986883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747177, 33.482800, 21.876238>,  <36.543800, 33.591572, 21.809851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747177, 33.482800, 21.876238>,  <37.086136, 33.301514, 21.986883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747177, 33.482800, 21.876238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418341, 0.249086, -0.873469,
		-0.326966, -0.855895, -0.400672,
		-0.847399, 0.453212, -0.276613,
		36.492958, 33.618763, 21.793255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905796, 33.065166, 21.259977>,  <37.086136, 33.301514, 21.986883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905796, 33.065166, 21.259977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678013, 33.391666, 21.298876>,  <36.541344, 33.587566, 21.322216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678013, 33.391666, 21.298876>,  <36.905796, 33.065166, 21.259977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678013, 33.391666, 21.298876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272682, 0.299177, -0.914406,
		-0.775479, -0.494194, -0.392944,
		-0.569453, 0.816251, 0.097248,
		36.507175, 33.636543, 21.328051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519688, 33.129093, 20.697979>,  <36.905796, 33.065166, 21.259977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519688, 33.129093, 20.697979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518837, 33.501312, 20.844442>,  <36.518326, 33.724644, 20.932320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518837, 33.501312, 20.844442>,  <36.519688, 33.129093, 20.697979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518837, 33.501312, 20.844442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340204, 0.344990, -0.874782,
		-0.940349, 0.122705, -0.317312,
		-0.002130, 0.930551, 0.366156,
		36.518200, 33.780479, 20.954288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187923, 33.572182, 20.047800>,  <36.519688, 33.129093, 20.697979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187923, 33.572182, 20.047800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383472, 33.799221, 20.312778>,  <36.500801, 33.935444, 20.471766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383472, 33.799221, 20.312778>,  <36.187923, 33.572182, 20.047800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383472, 33.799221, 20.312778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621444, 0.306334, -0.721088,
		-0.612215, 0.764197, -0.202968,
		0.488877, 0.567594, 0.662447,
		36.530136, 33.969498, 20.511513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096741, 34.278229, 19.887035>,  <36.187923, 33.572182, 20.047800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096741, 34.278229, 19.887035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435936, 34.265194, 20.098639>,  <36.639454, 34.257374, 20.225601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435936, 34.265194, 20.098639>,  <36.096741, 34.278229, 19.887035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435936, 34.265194, 20.098639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446378, 0.582044, -0.679685,
		-0.285761, 0.812504, 0.508112,
		0.847991, -0.032582, 0.529009,
		36.690334, 34.255421, 20.257341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466145, 34.822052, 19.625731>,  <36.096741, 34.278229, 19.887035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466145, 34.822052, 19.625731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759949, 34.618973, 19.805834>,  <36.936234, 34.497124, 19.913897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759949, 34.618973, 19.805834>,  <36.466145, 34.822052, 19.625731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759949, 34.618973, 19.805834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655506, 0.359232, -0.664277,
		0.175504, 0.783068, 0.596660,
		0.734514, -0.507697, 0.450259,
		36.980305, 34.466663, 19.940912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860008, 35.281147, 19.994522>,  <36.466145, 34.822052, 19.625731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860008, 35.281147, 19.994522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019135, 35.642029, 20.061171>,  <37.114613, 35.858559, 20.101160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019135, 35.642029, 20.061171>,  <36.860008, 35.281147, 19.994522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019135, 35.642029, 20.061171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533686, -0.079842, -0.841905,
		-0.746269, 0.423850, -0.513258,
		0.397820, 0.902207, 0.166619,
		37.138481, 35.912689, 20.111156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715183, 35.650032, 19.492929>,  <36.860008, 35.281147, 19.994522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715183, 35.650032, 19.492929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037807, 35.817036, 19.660334>,  <37.231380, 35.917240, 19.760777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037807, 35.817036, 19.660334>,  <36.715183, 35.650032, 19.492929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037807, 35.817036, 19.660334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429578, 0.072403, -0.900122,
		-0.406114, 0.905782, -0.120957,
		0.806557, 0.417513, 0.418508,
		37.279774, 35.942291, 19.785887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981541, 36.167423, 19.012239>,  <36.715183, 35.650032, 19.492929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981541, 36.167423, 19.012239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288963, 36.077343, 19.251776>,  <37.473415, 36.023296, 19.395498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288963, 36.077343, 19.251776>,  <36.981541, 36.167423, 19.012239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288963, 36.077343, 19.251776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635893, 0.165771, -0.753764,
		0.070475, 0.960107, 0.270605,
		0.768553, -0.225198, 0.598843,
		37.519527, 36.009785, 19.431429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448349, 36.621250, 18.711950>,  <36.981541, 36.167423, 19.012239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448349, 36.621250, 18.711950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669109, 36.352585, 18.909645>,  <37.801567, 36.191387, 19.028263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669109, 36.352585, 18.909645>,  <37.448349, 36.621250, 18.711950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669109, 36.352585, 18.909645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764726, 0.171282, -0.621174,
		0.332566, 0.720784, 0.608170,
		0.551900, -0.671665, 0.494239,
		37.834679, 36.151085, 19.057917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171799, 36.840294, 18.851900>,  <37.448349, 36.621250, 18.711950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171799, 36.840294, 18.851900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185112, 36.442142, 18.887951>,  <38.193100, 36.203251, 18.909580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185112, 36.442142, 18.887951>,  <38.171799, 36.840294, 18.851900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185112, 36.442142, 18.887951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786396, -0.029574, -0.617015,
		0.616826, 0.091408, 0.781774,
		0.033280, -0.995374, 0.090125,
		38.195095, 36.143532, 18.914988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788563, 36.424210, 19.203705>,  <38.171799, 36.840294, 18.851900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788563, 36.424210, 19.203705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610451, 36.203327, 18.921770>,  <38.503582, 36.070797, 18.752609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610451, 36.203327, 18.921770>,  <38.788563, 36.424210, 19.203705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610451, 36.203327, 18.921770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839422, 0.016496, -0.543230,
		0.311600, -0.833547, 0.456186,
		-0.445282, -0.552203, -0.704837,
		38.476868, 36.037666, 18.710320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742188, 36.152435, 19.937939>,  <38.788563, 36.424210, 19.203705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742188, 36.152435, 19.937939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354931, 36.158905, 19.837992>,  <38.122578, 36.162788, 19.778023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354931, 36.158905, 19.837992>,  <38.742188, 36.152435, 19.937939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354931, 36.158905, 19.837992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249828, 0.004496, 0.968280,
		0.016789, 0.999859, -0.000311,
		-0.968145, 0.016179, -0.249868,
		38.064487, 36.163757, 19.763031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238575, 36.540062, 20.357653>,  <38.742188, 36.152435, 19.937939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238575, 36.540062, 20.357653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938118, 36.349751, 20.174599>,  <37.757843, 36.235565, 20.064766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938118, 36.349751, 20.174599>,  <38.238575, 36.540062, 20.357653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938118, 36.349751, 20.174599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571494, 0.121665, 0.811537,
		-0.330430, 0.871112, -0.363290,
		-0.751139, -0.475775, -0.457634,
		37.712776, 36.207020, 20.037308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769505, 37.008595, 20.380842>,  <38.238575, 36.540062, 20.357653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769505, 37.008595, 20.380842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591423, 36.658413, 20.305607>,  <37.484573, 36.448303, 20.260466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591423, 36.658413, 20.305607>,  <37.769505, 37.008595, 20.380842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591423, 36.658413, 20.305607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573382, 0.117385, 0.810835,
		-0.687767, 0.468837, -0.554228,
		-0.445208, -0.875450, -0.188090,
		37.457859, 36.395779, 20.249180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050888, 37.067104, 20.513334>,  <37.769505, 37.008595, 20.380842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050888, 37.067104, 20.513334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143257, 36.679264, 20.545710>,  <37.198677, 36.446560, 20.565134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143257, 36.679264, 20.545710>,  <37.050888, 37.067104, 20.513334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143257, 36.679264, 20.545710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444991, -0.031271, 0.894989,
		-0.865250, -0.242690, -0.438684,
		0.230923, -0.969600, 0.080938,
		37.212536, 36.388386, 20.569990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506824, 36.818501, 20.829819>,  <37.050888, 37.067104, 20.513334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506824, 36.818501, 20.829819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769176, 36.521263, 20.882929>,  <36.926590, 36.342922, 20.914795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769176, 36.521263, 20.882929>,  <36.506824, 36.818501, 20.829819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769176, 36.521263, 20.882929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331476, -0.125495, 0.935080,
		-0.678189, -0.657315, -0.328628,
		0.655883, -0.743093, 0.132775,
		36.965942, 36.298336, 20.922762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125057, 36.373825, 21.281635>,  <36.506824, 36.818501, 20.829819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125057, 36.373825, 21.281635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506428, 36.258743, 21.317883>,  <36.735249, 36.189693, 21.339632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506428, 36.258743, 21.317883>,  <36.125057, 36.373825, 21.281635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506428, 36.258743, 21.317883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115759, -0.071567, 0.990696,
		-0.278545, -0.955041, -0.101538,
		0.953421, -0.287707, 0.090620,
		36.792454, 36.172432, 21.345068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178288, 35.815655, 21.752672>,  <36.125057, 36.373825, 21.281635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178288, 35.815655, 21.752672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542801, 35.979752, 21.766878>,  <36.761509, 36.078209, 21.775402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542801, 35.979752, 21.766878>,  <36.178288, 35.815655, 21.752672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542801, 35.979752, 21.766878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101913, 0.141131, 0.984731,
		0.398968, -0.900989, 0.170420,
		0.911284, 0.410244, 0.035516,
		36.816185, 36.102825, 21.777533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472874, 35.544987, 22.422964>,  <36.178288, 35.815655, 21.752672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472874, 35.544987, 22.422964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720360, 35.834034, 22.299662>,  <36.868851, 36.007462, 22.225679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720360, 35.834034, 22.299662>,  <36.472874, 35.544987, 22.422964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720360, 35.834034, 22.299662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059720, 0.347980, 0.935598,
		0.783344, -0.597276, 0.172145,
		0.618713, 0.722614, -0.308257,
		36.905975, 36.050819, 22.207184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127747, 35.446243, 22.745113>,  <36.472874, 35.544987, 22.422964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127747, 35.446243, 22.745113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096462, 35.833820, 22.651278>,  <37.077694, 36.066368, 22.594976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096462, 35.833820, 22.651278>,  <37.127747, 35.446243, 22.745113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096462, 35.833820, 22.651278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310738, 0.247282, 0.917766,
		0.947273, -0.001121, -0.320426,
		-0.078207, 0.968943, -0.234592,
		37.073002, 36.124504, 22.580900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710865, 35.867195, 23.089006>,  <37.127747, 35.446243, 22.745113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710865, 35.867195, 23.089006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471066, 36.170670, 22.987026>,  <37.327187, 36.352753, 22.925838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471066, 36.170670, 22.987026>,  <37.710865, 35.867195, 23.089006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471066, 36.170670, 22.987026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239123, 0.473769, 0.847563,
		0.763821, 0.447147, -0.465443,
		-0.599498, 0.758684, -0.254952,
		37.291218, 36.398273, 22.910542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080879, 36.491966, 23.184040>,  <37.710865, 35.867195, 23.089006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080879, 36.491966, 23.184040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689537, 36.564293, 23.224300>,  <37.454731, 36.607689, 23.248457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689537, 36.564293, 23.224300>,  <38.080879, 36.491966, 23.184040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689537, 36.564293, 23.224300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171187, 0.433859, 0.884568,
		0.116275, 0.882650, -0.455421,
		-0.978353, 0.180815, 0.100651,
		37.396030, 36.618538, 23.254496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075138, 36.932045, 23.811218>,  <38.080879, 36.491966, 23.184040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075138, 36.932045, 23.811218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692249, 36.825264, 23.766548>,  <37.462517, 36.761196, 23.739746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692249, 36.825264, 23.766548>,  <38.075138, 36.932045, 23.811218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692249, 36.825264, 23.766548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212505, 0.386557, 0.897449,
		-0.196407, 0.882786, -0.426748,
		-0.957218, -0.266951, -0.111674,
		37.405083, 36.745178, 23.733046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757500, 37.332935, 24.216688>,  <38.075138, 36.932045, 23.811218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757500, 37.332935, 24.216688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493111, 37.036289, 24.170872>,  <37.334476, 36.858303, 24.143383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493111, 37.036289, 24.170872>,  <37.757500, 37.332935, 24.216688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493111, 37.036289, 24.170872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286113, 0.107955, 0.952095,
		-0.693722, 0.662083, -0.283541,
		-0.660975, -0.741614, -0.114540,
		37.294819, 36.813805, 24.136509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203926, 37.522297, 24.412102>,  <37.757500, 37.332935, 24.216688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203926, 37.522297, 24.412102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149067, 37.126972, 24.438740>,  <37.116150, 36.889778, 24.454721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149067, 37.126972, 24.438740>,  <37.203926, 37.522297, 24.412102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149067, 37.126972, 24.438740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275774, 0.102666, 0.955724,
		-0.951388, 0.112711, -0.286631,
		-0.137148, -0.988309, 0.066593,
		37.107922, 36.830479, 24.458717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596394, 37.438354, 24.878994>,  <37.203926, 37.522297, 24.412102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596394, 37.438354, 24.878994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778633, 37.083179, 24.853706>,  <36.887978, 36.870075, 24.838533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778633, 37.083179, 24.853706>,  <36.596394, 37.438354, 24.878994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778633, 37.083179, 24.853706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358223, -0.247889, 0.900126,
		-0.814928, -0.387448, -0.431017,
		0.455597, -0.887938, -0.063219,
		36.915314, 36.816799, 24.834740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062073, 36.824608, 25.014360>,  <36.596394, 37.438354, 24.878994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062073, 36.824608, 25.014360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431133, 36.688171, 25.086330>,  <36.652569, 36.606308, 25.129513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431133, 36.688171, 25.086330>,  <36.062073, 36.824608, 25.014360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431133, 36.688171, 25.086330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278531, -0.266720, 0.922649,
		-0.266720, -0.901396, -0.341095,
		-0.922649, 0.341095, -0.179927,
		36.707928, 36.585842, 25.140308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930252, 36.198803, 25.326017>,  <36.062073, 36.824608, 25.014360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930252, 36.198803, 25.326017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290874, 36.325363, 25.444056>,  <36.507248, 36.401299, 25.514877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290874, 36.325363, 25.444056>,  <35.930252, 36.198803, 25.326017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290874, 36.325363, 25.444056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264878, -0.135653, 0.954693,
		0.342097, -0.938876, -0.038492,
		0.901559, 0.316402, 0.295094,
		36.561344, 36.420284, 25.532583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156693, 35.752068, 25.870813>,  <35.930252, 36.198803, 25.326017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156693, 35.752068, 25.870813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429325, 36.037243, 25.936731>,  <36.592907, 36.208347, 25.976282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429325, 36.037243, 25.936731>,  <36.156693, 35.752068, 25.870813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429325, 36.037243, 25.936731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181236, -0.053718, 0.981971,
		0.708940, -0.699164, 0.092598,
		0.681585, 0.712941, 0.164796,
		36.633801, 36.251125, 25.986170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458477, 35.473713, 26.480141>,  <36.156693, 35.752068, 25.870813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458477, 35.473713, 26.480141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572815, 35.855778, 26.449295>,  <36.641418, 36.085018, 26.430788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572815, 35.855778, 26.449295>,  <36.458477, 35.473713, 26.480141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572815, 35.855778, 26.449295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214441, 0.142191, 0.966332,
		0.933973, -0.259689, 0.245472,
		0.285849, 0.955167, -0.077115,
		36.658569, 36.142326, 26.426161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068829, 35.656662, 26.949938>,  <36.458477, 35.473713, 26.480141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068829, 35.656662, 26.949938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862633, 35.996300, 26.903809>,  <36.738914, 36.200085, 26.876131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862633, 35.996300, 26.903809>,  <37.068829, 35.656662, 26.949938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862633, 35.996300, 26.903809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140413, 0.049063, 0.988876,
		0.845311, 0.525951, 0.093933,
		-0.515492, 0.849098, -0.115324,
		36.707985, 36.251030, 26.869211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315311, 35.969173, 27.549686>,  <37.068829, 35.656662, 26.949938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315311, 35.969173, 27.549686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981335, 36.153984, 27.430086>,  <36.780949, 36.264870, 27.358326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981335, 36.153984, 27.430086>,  <37.315311, 35.969173, 27.549686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981335, 36.153984, 27.430086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274740, 0.120821, 0.953897,
		0.476852, 0.878597, 0.026059,
		-0.834943, 0.462027, -0.299000,
		36.730850, 36.292591, 27.340385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249660, 36.509487, 27.985409>,  <37.315311, 35.969173, 27.549686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249660, 36.509487, 27.985409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888638, 36.455406, 27.821898>,  <36.672024, 36.422958, 27.723791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888638, 36.455406, 27.821898>,  <37.249660, 36.509487, 27.985409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888638, 36.455406, 27.821898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414086, 0.012469, 0.910152,
		-0.117962, 0.990739, -0.067241,
		-0.902562, -0.135207, -0.408780,
		36.617870, 36.414845, 27.699263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824680, 37.008064, 28.204350>,  <37.249660, 36.509487, 27.985409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824680, 37.008064, 28.204350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574734, 36.712219, 28.104340>,  <36.424767, 36.534714, 28.044334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574734, 36.712219, 28.104340>,  <36.824680, 37.008064, 28.204350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574734, 36.712219, 28.104340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381314, 0.009666, 0.924395,
		-0.681279, 0.672962, -0.288065,
		-0.624867, -0.739614, -0.250025,
		36.387272, 36.490334, 28.029333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162067, 37.162952, 28.411671>,  <36.824680, 37.008064, 28.204350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162067, 37.162952, 28.411671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184906, 36.764946, 28.378950>,  <36.198608, 36.526142, 28.359318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184906, 36.764946, 28.378950>,  <36.162067, 37.162952, 28.411671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184906, 36.764946, 28.378950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482086, -0.099224, 0.870487,
		-0.874262, -0.010263, -0.485346,
		0.057092, -0.995012, -0.081800,
		36.202034, 36.466442, 28.354410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530323, 37.020973, 28.707088>,  <36.162067, 37.162952, 28.411671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530323, 37.020973, 28.707088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721329, 36.669872, 28.691404>,  <35.835934, 36.459213, 28.681993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721329, 36.669872, 28.691404>,  <35.530323, 37.020973, 28.707088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721329, 36.669872, 28.691404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303669, -0.206748, 0.930075,
		-0.824479, -0.432217, -0.365270,
		0.477514, -0.877749, -0.039208,
		35.864582, 36.406548, 28.679642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164536, 36.476948, 29.012581>,  <35.530323, 37.020973, 28.707088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164536, 36.476948, 29.012581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491436, 36.246490, 29.007441>,  <35.687576, 36.108215, 29.004356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491436, 36.246490, 29.007441>,  <35.164536, 36.476948, 29.012581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491436, 36.246490, 29.007441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268699, -0.400682, 0.875931,
		-0.509810, -0.712400, -0.482265,
		0.817248, -0.576143, -0.012851,
		35.736610, 36.073647, 29.003586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961723, 35.759308, 29.024208>,  <35.164536, 36.476948, 29.012581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961723, 35.759308, 29.024208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336681, 35.745892, 29.162870>,  <35.561657, 35.737843, 29.246067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336681, 35.745892, 29.162870>,  <34.961723, 35.759308, 29.024208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336681, 35.745892, 29.162870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303325, -0.567719, 0.765303,
		0.171137, -0.822539, -0.542349,
		0.937393, -0.033537, 0.346655,
		35.617901, 35.735832, 29.266867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141644, 35.052525, 29.176878>,  <34.961723, 35.759308, 29.024208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141644, 35.052525, 29.176878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392860, 35.277237, 29.392273>,  <35.543591, 35.412064, 29.521509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392860, 35.277237, 29.392273>,  <35.141644, 35.052525, 29.176878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392860, 35.277237, 29.392273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244472, -0.514512, 0.821895,
		0.738782, -0.647828, -0.185795,
		0.628041, 0.561779, 0.538488,
		35.581272, 35.445770, 29.553820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508301, 34.490803, 29.526814>,  <35.141644, 35.052525, 29.176878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508301, 34.490803, 29.526814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583961, 34.842777, 29.701141>,  <35.629356, 35.053963, 29.805738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583961, 34.842777, 29.701141>,  <35.508301, 34.490803, 29.526814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583961, 34.842777, 29.701141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071835, -0.455043, 0.887568,
		0.979318, -0.136574, -0.149280,
		0.189147, 0.879934, 0.435820,
		35.640705, 35.106758, 29.831888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007229, 34.315422, 29.957428>,  <35.508301, 34.490803, 29.526814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007229, 34.315422, 29.957428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855640, 34.658642, 30.096069>,  <35.764687, 34.864574, 30.179255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855640, 34.658642, 30.096069>,  <36.007229, 34.315422, 29.957428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855640, 34.658642, 30.096069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025900, -0.384230, 0.922874,
		0.925048, 0.340762, 0.167834,
		-0.378967, 0.858050, 0.346605,
		35.741951, 34.916058, 30.200050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371666, 34.500202, 30.541594>,  <36.007229, 34.315422, 29.957428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371666, 34.500202, 30.541594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049309, 34.725559, 30.614395>,  <35.855892, 34.860771, 30.658075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049309, 34.725559, 30.614395>,  <36.371666, 34.500202, 30.541594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049309, 34.725559, 30.614395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033131, -0.264013, 0.963950,
		0.591131, 0.782872, 0.194101,
		-0.805895, 0.563390, 0.182004,
		35.807541, 34.894577, 30.668997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416630, 34.882500, 31.238762>,  <36.371666, 34.500202, 30.541594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416630, 34.882500, 31.238762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020721, 34.900089, 31.184465>,  <35.783176, 34.910641, 31.151888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020721, 34.900089, 31.184465>,  <36.416630, 34.882500, 31.238762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020721, 34.900089, 31.184465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137138, -0.030422, 0.990085,
		0.039404, 0.998570, 0.036141,
		-0.989768, 0.043970, -0.135743,
		35.723789, 34.913280, 31.143742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136635, 35.356472, 31.605511>,  <36.416630, 34.882500, 31.238762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136635, 35.356472, 31.605511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799725, 35.143925, 31.569242>,  <35.597580, 35.016396, 31.547482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799725, 35.143925, 31.569242>,  <36.136635, 35.356472, 31.605511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799725, 35.143925, 31.569242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114703, 0.012317, 0.993323,
		-0.526701, 0.847053, -0.071324,
		-0.842276, -0.531366, -0.090672,
		35.547043, 34.984516, 31.542040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765152, 35.718884, 32.021332>,  <36.136635, 35.356472, 31.605511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765152, 35.718884, 32.021332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538113, 35.392780, 31.975409>,  <35.401890, 35.197117, 31.947855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538113, 35.392780, 31.975409>,  <35.765152, 35.718884, 32.021332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538113, 35.392780, 31.975409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300530, 0.075340, 0.950792,
		-0.766495, 0.574170, -0.287774,
		-0.567597, -0.815262, -0.114807,
		35.367832, 35.148201, 31.940966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127285, 35.804379, 32.392494>,  <35.765152, 35.718884, 32.021332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127285, 35.804379, 32.392494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157394, 35.406532, 32.363979>,  <35.175461, 35.167824, 32.346870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157394, 35.406532, 32.363979>,  <35.127285, 35.804379, 32.392494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157394, 35.406532, 32.363979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233796, -0.087098, 0.968377,
		-0.969368, -0.056223, -0.239092,
		0.075269, -0.994612, -0.071285,
		35.179974, 35.108150, 32.342594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628887, 35.621475, 32.716660>,  <35.127285, 35.804379, 32.392494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628887, 35.621475, 32.716660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839527, 35.281704, 32.703007>,  <34.965912, 35.077843, 32.694817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839527, 35.281704, 32.703007>,  <34.628887, 35.621475, 32.716660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839527, 35.281704, 32.703007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227202, -0.179311, 0.957197,
		-0.819190, -0.496306, -0.287417,
		0.526600, -0.849428, -0.034128,
		34.997509, 35.026875, 32.692768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209965, 35.037189, 32.992508>,  <34.628887, 35.621475, 32.716660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209965, 35.037189, 32.992508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586914, 34.907009, 33.023514>,  <34.813084, 34.828899, 33.042118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586914, 34.907009, 33.023514>,  <34.209965, 35.037189, 32.992508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586914, 34.907009, 33.023514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162942, -0.244127, 0.955956,
		-0.292200, -0.913498, -0.283090,
		0.942374, -0.325458, 0.077513,
		34.869625, 34.809372, 33.046768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248947, 34.398987, 33.403240>,  <34.209965, 35.037189, 32.992508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248947, 34.398987, 33.403240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622707, 34.537743, 33.435661>,  <34.846962, 34.620995, 33.455112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622707, 34.537743, 33.435661>,  <34.248947, 34.398987, 33.403240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622707, 34.537743, 33.435661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026451, -0.294453, 0.955300,
		0.355249, -0.890486, -0.284312,
		0.934398, 0.346890, 0.081050,
		34.903027, 34.641811, 33.459976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583832, 33.898396, 33.873882>,  <34.248947, 34.398987, 33.403240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583832, 33.898396, 33.873882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818539, 34.220932, 33.903622>,  <34.959362, 34.414452, 33.921467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818539, 34.220932, 33.903622>,  <34.583832, 33.898396, 33.873882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818539, 34.220932, 33.903622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118702, -0.005175, 0.992916,
		0.801011, -0.591432, 0.092677,
		0.586763, 0.806338, 0.074350,
		34.994568, 34.462833, 33.925926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980789, 33.811150, 34.416279>,  <34.583832, 33.898396, 33.873882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980789, 33.811150, 34.416279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050224, 34.203529, 34.381393>,  <35.091885, 34.438957, 34.360462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050224, 34.203529, 34.381393>,  <34.980789, 33.811150, 34.416279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050224, 34.203529, 34.381393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103892, 0.106303, 0.988891,
		0.979323, -0.162601, 0.120365,
		0.173590, 0.980949, -0.087212,
		35.102303, 34.497814, 34.355228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665661, 33.885174, 34.713928>,  <34.980789, 33.811150, 34.416279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665661, 33.885174, 34.713928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466045, 34.231640, 34.724689>,  <35.346275, 34.439518, 34.731148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466045, 34.231640, 34.724689>,  <35.665661, 33.885174, 34.713928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466045, 34.231640, 34.724689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167356, 0.065864, 0.983694,
		0.850266, 0.495405, -0.177826,
		-0.499039, 0.866162, 0.026907,
		35.316334, 34.491489, 34.732761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069374, 34.287777, 35.113113>,  <35.665661, 33.885174, 34.713928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069374, 34.287777, 35.113113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699211, 34.439266, 35.107597>,  <35.477112, 34.530159, 35.104286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699211, 34.439266, 35.107597>,  <36.069374, 34.287777, 35.113113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699211, 34.439266, 35.107597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024627, 0.096417, 0.995036,
		0.378176, 0.920473, -0.098552,
		-0.925406, 0.378726, -0.013794,
		35.421589, 34.552883, 35.103458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363686, 34.112499, 34.418121>,  <36.069374, 34.287777, 35.113113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363686, 34.112499, 34.418121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600979, 34.362682, 34.620853>,  <36.743355, 34.512794, 34.742493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600979, 34.362682, 34.620853>,  <36.363686, 34.112499, 34.418121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600979, 34.362682, 34.620853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022500, 0.616448, -0.787075,
		-0.804716, 0.478323, 0.351624,
		0.593234, 0.625460, 0.506828,
		36.778950, 34.550320, 34.772903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089115, 34.802589, 34.508167>,  <36.363686, 34.112499, 34.418121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089115, 34.802589, 34.508167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488918, 34.813026, 34.515060>,  <36.728802, 34.819290, 34.519196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488918, 34.813026, 34.515060>,  <36.089115, 34.802589, 34.508167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488918, 34.813026, 34.515060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006430, 0.710894, -0.703269,
		-0.030603, 0.702814, 0.710715,
		0.999511, 0.026092, 0.017236,
		36.788773, 34.820854, 34.520233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260098, 35.474953, 34.439468>,  <36.089115, 34.802589, 34.508167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260098, 35.474953, 34.439468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607178, 35.299557, 34.345814>,  <36.815426, 35.194317, 34.289619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607178, 35.299557, 34.345814>,  <36.260098, 35.474953, 34.439468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607178, 35.299557, 34.345814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100570, 0.616137, -0.781192,
		0.486807, 0.654294, 0.578721,
		0.867701, -0.438492, -0.234138,
		36.867489, 35.168011, 34.275574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597126, 35.998573, 34.147835>,  <36.260098, 35.474953, 34.439468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597126, 35.998573, 34.147835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817101, 35.683910, 34.035587>,  <36.949085, 35.495113, 33.968239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817101, 35.683910, 34.035587>,  <36.597126, 35.998573, 34.147835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817101, 35.683910, 34.035587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293576, 0.496609, -0.816819,
		0.781910, 0.366817, 0.504046,
		0.549937, -0.786654, -0.280615,
		36.982082, 35.447914, 33.951405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324532, 36.184204, 33.975468>,  <36.597126, 35.998573, 34.147835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324532, 36.184204, 33.975468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272114, 35.829224, 33.798717>,  <37.240662, 35.616234, 33.692669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272114, 35.829224, 33.798717>,  <37.324532, 36.184204, 33.975468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272114, 35.829224, 33.798717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415209, 0.355609, -0.837343,
		0.900237, -0.293201, 0.321878,
		-0.131047, -0.887454, -0.441873,
		37.232800, 35.562988, 33.666157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988636, 35.967457, 33.676399>,  <37.324532, 36.184204, 33.975468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988636, 35.967457, 33.676399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696682, 35.776905, 33.480305>,  <37.521511, 35.662575, 33.362648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696682, 35.776905, 33.480305>,  <37.988636, 35.967457, 33.676399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696682, 35.776905, 33.480305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366887, 0.332116, -0.868961,
		0.576770, -0.814102, -0.067629,
		-0.729883, -0.476379, -0.490238,
		37.477718, 35.633991, 33.333233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381607, 35.589352, 33.220333>,  <37.988636, 35.967457, 33.676399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381607, 35.589352, 33.220333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012547, 35.603428, 33.066727>,  <37.791111, 35.611874, 32.974564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012547, 35.603428, 33.066727>,  <38.381607, 35.589352, 33.220333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012547, 35.603428, 33.066727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382634, 0.207382, -0.900324,
		0.047951, -0.977627, -0.204809,
		-0.922655, 0.035196, -0.384017,
		37.735748, 35.613987, 32.951523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371033, 35.099907, 32.602451>,  <38.381607, 35.589352, 33.220333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371033, 35.099907, 32.602451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051651, 35.333649, 32.544472>,  <37.860023, 35.473892, 32.509686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051651, 35.333649, 32.544472>,  <38.371033, 35.099907, 32.602451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051651, 35.333649, 32.544472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328520, 0.221118, -0.918249,
		-0.504532, -0.780793, -0.368523,
		-0.798450, 0.584353, -0.144945,
		37.812115, 35.508953, 32.500988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149464, 34.883781, 32.071636>,  <38.371033, 35.099907, 32.602451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149464, 34.883781, 32.071636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003223, 35.255363, 32.094917>,  <37.915478, 35.478313, 32.108887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003223, 35.255363, 32.094917>,  <38.149464, 34.883781, 32.071636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003223, 35.255363, 32.094917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311238, 0.180940, -0.932948,
		-0.877193, -0.322971, -0.355277,
		-0.365599, 0.928951, 0.058199,
		37.893543, 35.534050, 32.112377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759411, 35.037205, 31.460709>,  <38.149464, 34.883781, 32.071636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759411, 35.037205, 31.460709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836975, 35.394718, 31.622473>,  <37.883514, 35.609226, 31.719530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836975, 35.394718, 31.622473>,  <37.759411, 35.037205, 31.460709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836975, 35.394718, 31.622473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269942, 0.347708, -0.897903,
		-0.943149, 0.283279, -0.173846,
		0.193910, 0.893785, 0.404409,
		37.895149, 35.662853, 31.743795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437935, 35.543652, 31.011328>,  <37.759411, 35.037205, 31.460709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437935, 35.543652, 31.011328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736534, 35.726353, 31.204874>,  <37.915691, 35.835972, 31.321003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736534, 35.726353, 31.204874>,  <37.437935, 35.543652, 31.011328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736534, 35.726353, 31.204874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289152, 0.432262, -0.854132,
		-0.599282, 0.777515, 0.190610,
		0.746493, 0.456750, 0.483867,
		37.960484, 35.863377, 31.350035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484470, 36.189297, 30.663591>,  <37.437935, 35.543652, 31.011328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484470, 36.189297, 30.663591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830765, 36.184288, 30.863726>,  <38.038544, 36.181282, 30.983807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830765, 36.184288, 30.863726>,  <37.484470, 36.189297, 30.663591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830765, 36.184288, 30.863726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431133, 0.526405, -0.732818,
		-0.254202, 0.850142, 0.461129,
		0.865740, -0.012524, 0.500338,
		38.090488, 36.180531, 31.013826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708889, 36.899551, 30.741693>,  <37.484470, 36.189297, 30.663591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708889, 36.899551, 30.741693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037868, 36.676434, 30.786303>,  <38.235256, 36.542561, 30.813068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037868, 36.676434, 30.786303>,  <37.708889, 36.899551, 30.741693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037868, 36.676434, 30.786303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440747, 0.500946, -0.744846,
		0.359606, 0.661752, 0.657851,
		0.822451, -0.557797, 0.111522,
		38.284603, 36.509094, 30.819759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246902, 37.413475, 30.685335>,  <37.708889, 36.899551, 30.741693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246902, 37.413475, 30.685335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442829, 37.068375, 30.635145>,  <38.560383, 36.861313, 30.605032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442829, 37.068375, 30.635145>,  <38.246902, 37.413475, 30.685335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442829, 37.068375, 30.635145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493894, 0.393191, -0.775545,
		0.718437, 0.317901, 0.618698,
		0.489813, -0.862751, -0.125473,
		38.589771, 36.809547, 30.597504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037350, 37.472214, 30.571415>,  <38.246902, 37.413475, 30.685335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037350, 37.472214, 30.571415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897213, 37.151604, 30.377583>,  <38.813129, 36.959236, 30.261284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897213, 37.151604, 30.377583>,  <39.037350, 37.472214, 30.571415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897213, 37.151604, 30.377583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465746, 0.299785, -0.832592,
		0.812612, -0.517386, 0.268278,
		-0.350346, -0.801524, -0.484579,
		38.792110, 36.911148, 30.232208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553829, 37.303810, 30.128080>,  <39.037350, 37.472214, 30.571415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553829, 37.303810, 30.128080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275185, 37.060825, 29.975391>,  <39.107998, 36.915035, 29.883778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275185, 37.060825, 29.975391>,  <39.553829, 37.303810, 30.128080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275185, 37.060825, 29.975391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503105, -0.034303, -0.863544,
		0.511480, -0.793604, 0.329516,
		-0.696615, -0.607467, -0.381721,
		39.066200, 36.878586, 29.860874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846729, 37.106949, 29.489498>,  <39.553829, 37.303810, 30.128080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846729, 37.106949, 29.489498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483261, 36.948544, 29.436600>,  <39.265179, 36.853500, 29.404860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483261, 36.948544, 29.436600>,  <39.846729, 37.106949, 29.489498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483261, 36.948544, 29.436600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076780, 0.152853, -0.985262,
		0.410388, -0.905435, -0.108488,
		-0.908673, -0.396010, -0.132248,
		39.210659, 36.829742, 29.396925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894096, 36.487999, 29.024973>,  <39.846729, 37.106949, 29.489498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894096, 36.487999, 29.024973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536144, 36.666500, 29.022392>,  <39.321373, 36.773602, 29.020844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536144, 36.666500, 29.022392>,  <39.894096, 36.487999, 29.024973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536144, 36.666500, 29.022392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015966, 0.017567, -0.999718,
		-0.446015, -0.894734, -0.022845,
		-0.894883, 0.446254, -0.006450,
		39.267677, 36.800377, 29.020458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585331, 36.125729, 28.560118>,  <39.894096, 36.487999, 29.024973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585331, 36.125729, 28.560118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386009, 36.471333, 28.588902>,  <39.266415, 36.678696, 28.606171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386009, 36.471333, 28.588902>,  <39.585331, 36.125729, 28.560118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386009, 36.471333, 28.588902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084761, 0.131148, -0.987733,
		-0.862847, -0.486095, -0.138587,
		-0.498307, 0.864009, 0.071959,
		39.236519, 36.730534, 28.610489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057293, 36.038216, 28.204618>,  <39.585331, 36.125729, 28.560118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057293, 36.038216, 28.204618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110817, 36.434422, 28.217152>,  <39.142933, 36.672146, 28.224672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110817, 36.434422, 28.217152>,  <39.057293, 36.038216, 28.204618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110817, 36.434422, 28.217152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071273, 0.021918, -0.997216,
		-0.988440, 0.135675, -0.067663,
		0.133815, 0.990511, 0.031334,
		39.150963, 36.731575, 28.226551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607456, 36.286911, 27.741711>,  <39.057293, 36.038216, 28.204618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607456, 36.286911, 27.741711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882565, 36.572811, 27.792469>,  <39.047630, 36.744350, 27.822924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882565, 36.572811, 27.792469>,  <38.607456, 36.286911, 27.741711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882565, 36.572811, 27.792469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030985, 0.145741, -0.988837,
		-0.725264, 0.684027, 0.078090,
		0.687773, 0.714749, 0.126895,
		39.088898, 36.787235, 27.830538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335220, 36.910824, 27.411795>,  <38.607456, 36.286911, 27.741711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335220, 36.910824, 27.411795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733986, 36.895607, 27.439249>,  <38.973248, 36.886478, 27.455721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733986, 36.895607, 27.439249>,  <38.335220, 36.910824, 27.411795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733986, 36.895607, 27.439249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069415, 0.019568, -0.997396,
		0.036599, 0.999085, 0.022148,
		0.996916, -0.038042, 0.068636,
		39.033062, 36.884193, 27.459839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647533, 37.520748, 27.020033>,  <38.335220, 36.910824, 27.411795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647533, 37.520748, 27.020033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887775, 37.202885, 27.055325>,  <39.031921, 37.012165, 27.076500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887775, 37.202885, 27.055325>,  <38.647533, 37.520748, 27.020033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887775, 37.202885, 27.055325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043558, -0.142702, -0.988807,
		0.798358, 0.590040, -0.120321,
		0.600605, -0.794663, 0.088227,
		39.067959, 36.964485, 27.081793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225330, 37.670765, 26.549294>,  <38.647533, 37.520748, 27.020033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225330, 37.670765, 26.549294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247620, 37.276768, 26.614632>,  <39.260994, 37.040371, 26.653835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247620, 37.276768, 26.614632>,  <39.225330, 37.670765, 26.549294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247620, 37.276768, 26.614632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066630, -0.166903, -0.983719,
		0.996220, 0.043937, -0.074931,
		0.055728, -0.984994, 0.163345,
		39.264339, 36.981270, 26.663635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887138, 37.351631, 26.192080>,  <39.225330, 37.670765, 26.549294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887138, 37.351631, 26.192080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619022, 37.058651, 26.239786>,  <39.458153, 36.882862, 26.268410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619022, 37.058651, 26.239786>,  <39.887138, 37.351631, 26.192080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619022, 37.058651, 26.239786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146979, -0.288565, -0.946111,
		0.727398, -0.616640, 0.301078,
		-0.670291, -0.732452, 0.119268,
		39.417934, 36.838917, 26.275566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263882, 36.680759, 25.905512>,  <39.887138, 37.351631, 26.192080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263882, 36.680759, 25.905512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875645, 36.585091, 25.916433>,  <39.642704, 36.527687, 25.922985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875645, 36.585091, 25.916433>,  <40.263882, 36.680759, 25.905512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875645, 36.585091, 25.916433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054298, -0.328002, -0.943115,
		0.234525, -0.913898, 0.331343,
		-0.970592, -0.239176, 0.027302,
		39.584465, 36.513336, 25.924623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232166, 36.003334, 25.855152>,  <40.263882, 36.680759, 25.905512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232166, 36.003334, 25.855152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874905, 36.140583, 25.738844>,  <39.660549, 36.222935, 25.669060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874905, 36.140583, 25.738844>,  <40.232166, 36.003334, 25.855152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874905, 36.140583, 25.738844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072689, -0.527877, -0.846205,
		-0.443843, -0.776925, 0.446533,
		-0.893151, 0.343124, -0.290768,
		39.606960, 36.243519, 25.651613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882397, 35.377869, 25.736328>,  <40.232166, 36.003334, 25.855152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882397, 35.377869, 25.736328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714203, 35.684086, 25.541540>,  <39.613285, 35.867817, 25.424667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714203, 35.684086, 25.541540>,  <39.882397, 35.377869, 25.736328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714203, 35.684086, 25.541540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005288, -0.534646, -0.845060,
		-0.907284, -0.357911, 0.220763,
		-0.420486, 0.765541, -0.486968,
		39.588058, 35.913750, 25.395451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535759, 35.052677, 25.169329>,  <39.882397, 35.377869, 25.736328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535759, 35.052677, 25.169329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521046, 35.437344, 25.060629>,  <39.512218, 35.668144, 24.995409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521046, 35.437344, 25.060629>,  <39.535759, 35.052677, 25.169329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521046, 35.437344, 25.060629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088783, -0.267712, -0.959400,
		-0.995372, -0.059413, -0.075533,
		-0.036779, 0.961666, -0.271748,
		39.510014, 35.725842, 24.979105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119202, 35.018940, 24.514771>,  <39.535759, 35.052677, 25.169329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119202, 35.018940, 24.514771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287052, 35.381802, 24.527367>,  <39.387764, 35.599518, 24.534925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287052, 35.381802, 24.527367>,  <39.119202, 35.018940, 24.514771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287052, 35.381802, 24.527367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044764, 0.055333, -0.997464,
		-0.906593, 0.417152, 0.063827,
		0.419626, 0.907151, 0.031492,
		39.412941, 35.653946, 24.536814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720417, 35.404858, 24.038263>,  <39.119202, 35.018940, 24.514771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720417, 35.404858, 24.038263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073242, 35.589996, 24.073437>,  <39.284939, 35.701080, 24.094542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073242, 35.589996, 24.073437>,  <38.720417, 35.404858, 24.038263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073242, 35.589996, 24.073437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057643, 0.079221, -0.995189,
		-0.467589, 0.882890, 0.043198,
		0.882065, 0.462849, 0.087935,
		39.337860, 35.728851, 24.099817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673382, 36.008633, 23.577921>,  <38.720417, 35.404858, 24.038263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673382, 36.008633, 23.577921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058155, 35.932800, 23.656649>,  <39.289021, 35.887302, 23.703886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058155, 35.932800, 23.656649>,  <38.673382, 36.008633, 23.577921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058155, 35.932800, 23.656649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207952, 0.040540, -0.977299,
		0.177299, 0.981028, 0.078421,
		0.961936, -0.189582, 0.196819,
		39.346737, 35.875927, 23.715694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067570, 36.550026, 23.370829>,  <38.673382, 36.008633, 23.577921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067570, 36.550026, 23.370829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316380, 36.236866, 23.365961>,  <39.465664, 36.048969, 23.363041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316380, 36.236866, 23.365961>,  <39.067570, 36.550026, 23.370829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316380, 36.236866, 23.365961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252012, 0.214893, -0.943563,
		0.741333, 0.583853, 0.330969,
		0.622025, -0.782903, -0.012169,
		39.502987, 36.001995, 23.362310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588516, 36.756886, 22.952654>,  <39.067570, 36.550026, 23.370829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588516, 36.756886, 22.952654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613033, 36.357689, 22.959082>,  <39.627743, 36.118172, 22.962938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613033, 36.357689, 22.959082>,  <39.588516, 36.756886, 22.952654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613033, 36.357689, 22.959082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386530, 0.008890, -0.922234,
		0.920238, 0.062736, 0.386299,
		0.061292, -0.997990, 0.016069,
		39.631420, 36.058292, 22.963902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121105, 36.631626, 22.387121>,  <39.588516, 36.756886, 22.952654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121105, 36.631626, 22.387121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957237, 36.275852, 22.468197>,  <39.858917, 36.062389, 22.516842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957237, 36.275852, 22.468197>,  <40.121105, 36.631626, 22.387121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957237, 36.275852, 22.468197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174184, -0.294371, -0.939684,
		0.895449, -0.349657, 0.275520,
		-0.409672, -0.889430, 0.202689,
		39.834335, 36.009022, 22.529003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594917, 36.237961, 22.104265>,  <40.121105, 36.631626, 22.387121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594917, 36.237961, 22.104265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255524, 36.027355, 22.125673>,  <40.051888, 35.900993, 22.138519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255524, 36.027355, 22.125673>,  <40.594917, 36.237961, 22.104265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255524, 36.027355, 22.125673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179196, -0.380980, -0.907052,
		0.497967, -0.760024, 0.417602,
		-0.848480, -0.526515, 0.053522,
		40.000980, 35.869400, 22.141729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780762, 35.579327, 21.948246>,  <40.594917, 36.237961, 22.104265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780762, 35.579327, 21.948246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391323, 35.639141, 21.879265>,  <40.157658, 35.675030, 21.837875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391323, 35.639141, 21.879265>,  <40.780762, 35.579327, 21.948246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391323, 35.639141, 21.879265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110913, -0.350411, -0.930006,
		-0.199497, -0.924582, 0.324576,
		-0.973601, 0.149534, -0.172454,
		40.099243, 35.684002, 21.827528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722145, 35.067768, 21.500145>,  <40.780762, 35.579327, 21.948246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722145, 35.067768, 21.500145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401875, 35.301865, 21.448910>,  <40.209713, 35.442322, 21.418169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401875, 35.301865, 21.448910>,  <40.722145, 35.067768, 21.500145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401875, 35.301865, 21.448910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021066, -0.186165, -0.982293,
		-0.598725, -0.789198, 0.136729,
		-0.800678, 0.585243, -0.128087,
		40.161671, 35.477436, 21.410484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311195, 34.777061, 21.998676>,  <40.722145, 35.067768, 21.500145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311195, 34.777061, 21.998676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607864, 34.508900, 21.989977>,  <41.785866, 34.348003, 21.984758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607864, 34.508900, 21.989977>,  <41.311195, 34.777061, 21.998676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607864, 34.508900, 21.989977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185309, -0.235952, 0.953933,
		-0.644654, -0.703478, -0.299232,
		0.741675, -0.670407, -0.021746,
		41.830368, 34.307777, 21.983454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052628, 34.280727, 22.307163>,  <41.311195, 34.777061, 21.998676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052628, 34.280727, 22.307163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442249, 34.195374, 22.337322>,  <41.676022, 34.144161, 22.355417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442249, 34.195374, 22.337322>,  <41.052628, 34.280727, 22.307163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442249, 34.195374, 22.337322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119374, -0.201387, 0.972210,
		-0.192268, -0.955987, -0.221634,
		0.974055, -0.213383, 0.075400,
		41.734467, 34.131359, 22.359941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023010, 33.688934, 22.706459>,  <41.052628, 34.280727, 22.307163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023010, 33.688934, 22.706459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386780, 33.853897, 22.727917>,  <41.605042, 33.952873, 22.740791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386780, 33.853897, 22.727917>,  <41.023010, 33.688934, 22.706459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386780, 33.853897, 22.727917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114682, -0.372671, 0.920849,
		0.399755, -0.831286, -0.386210,
		0.909419, 0.412406, 0.053644,
		41.659607, 33.977619, 22.744009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355576, 33.176994, 23.090014>,  <41.023010, 33.688934, 22.706459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355576, 33.176994, 23.090014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614365, 33.481815, 23.100662>,  <41.769638, 33.664707, 23.107052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614365, 33.481815, 23.100662>,  <41.355576, 33.176994, 23.090014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614365, 33.481815, 23.100662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174742, -0.182159, 0.967617,
		0.742221, -0.621370, -0.251014,
		0.646972, 0.762048, 0.026623,
		41.808456, 33.710430, 23.108648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940865, 32.972729, 23.507860>,  <41.355576, 33.176994, 23.090014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940865, 32.972729, 23.507860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958508, 33.372047, 23.523182>,  <41.969093, 33.611637, 23.532375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958508, 33.372047, 23.523182>,  <41.940865, 32.972729, 23.507860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958508, 33.372047, 23.523182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250090, -0.048151, 0.967025,
		0.967218, -0.033070, -0.251786,
		0.044103, 0.998293, 0.038302,
		41.971737, 33.671535, 23.534672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600811, 33.211346, 23.971254>,  <41.940865, 32.972729, 23.507860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600811, 33.211346, 23.971254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337471, 33.511345, 23.945715>,  <42.179466, 33.691345, 23.930391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337471, 33.511345, 23.945715>,  <42.600811, 33.211346, 23.971254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337471, 33.511345, 23.945715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024114, 0.105797, 0.994095,
		0.752328, 0.652921, -0.087737,
		-0.658348, 0.750001, -0.063849,
		42.139965, 33.736343, 23.926559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896889, 33.666203, 24.262268>,  <42.600811, 33.211346, 23.971254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896889, 33.666203, 24.262268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512371, 33.775993, 24.271854>,  <42.281658, 33.841866, 24.277607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512371, 33.775993, 24.271854>,  <42.896889, 33.666203, 24.262268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512371, 33.775993, 24.271854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083270, 0.206506, 0.974896,
		0.262632, 0.939159, -0.221369,
		-0.961296, 0.274473, 0.023968,
		42.223984, 33.858334, 24.279045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899067, 34.250065, 24.633804>,  <42.896889, 33.666203, 24.262268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899067, 34.250065, 24.633804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516388, 34.133678, 24.637142>,  <42.286781, 34.063847, 24.639145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516388, 34.133678, 24.637142>,  <42.899067, 34.250065, 24.633804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516388, 34.133678, 24.637142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052727, 0.201412, 0.978086,
		-0.286271, 0.935292, -0.208032,
		-0.956697, -0.290966, 0.008343,
		42.229378, 34.046387, 24.639645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532082, 34.785408, 25.014965>,  <42.899067, 34.250065, 24.633804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532082, 34.785408, 25.014965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308556, 34.453693, 25.016603>,  <42.174442, 34.254665, 25.017586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308556, 34.453693, 25.016603>,  <42.532082, 34.785408, 25.014965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308556, 34.453693, 25.016603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164562, 0.115726, 0.979555,
		-0.812803, 0.546712, -0.201138,
		-0.558811, -0.829285, 0.004095,
		42.140911, 34.204906, 25.017832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945503, 34.829002, 25.329451>,  <42.532082, 34.785408, 25.014965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945503, 34.829002, 25.329451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932293, 34.432323, 25.379150>,  <41.924366, 34.194317, 25.408970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932293, 34.432323, 25.379150>,  <41.945503, 34.829002, 25.329451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932293, 34.432323, 25.379150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140672, 0.127693, 0.981787,
		-0.989505, 0.014946, -0.143722,
		-0.033026, -0.991701, 0.124250,
		41.922386, 34.134811, 25.416426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441597, 34.779522, 25.884958>,  <41.945503, 34.829002, 25.329451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441597, 34.779522, 25.884958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606594, 34.417099, 25.847212>,  <41.705593, 34.199646, 25.824564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606594, 34.417099, 25.847212>,  <41.441597, 34.779522, 25.884958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606594, 34.417099, 25.847212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108916, -0.151898, 0.982377,
		-0.904427, -0.394944, -0.161342,
		0.412492, -0.906061, -0.094365,
		41.730343, 34.145279, 25.818903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949322, 34.251266, 25.987600>,  <41.441597, 34.779522, 25.884958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949322, 34.251266, 25.987600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312504, 34.117477, 26.088593>,  <41.530415, 34.037205, 26.149187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312504, 34.117477, 26.088593>,  <40.949322, 34.251266, 25.987600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312504, 34.117477, 26.088593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321758, -0.170388, 0.931364,
		-0.268501, -0.926872, -0.262326,
		0.907953, -0.334478, 0.252479,
		41.584888, 34.017136, 26.164337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821548, 33.846336, 26.516899>,  <40.949322, 34.251266, 25.987600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821548, 33.846336, 26.516899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208065, 33.927319, 26.580509>,  <41.439976, 33.975906, 26.618675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208065, 33.927319, 26.580509>,  <40.821548, 33.846336, 26.516899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208065, 33.927319, 26.580509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164068, 0.008267, 0.986414,
		0.198391, -0.979256, 0.041205,
		0.966293, 0.202456, 0.159025,
		41.497952, 33.988056, 26.628216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044903, 33.516571, 27.115309>,  <40.821548, 33.846336, 26.516899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044903, 33.516571, 27.115309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350445, 33.770889, 27.070984>,  <41.533772, 33.923481, 27.044390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350445, 33.770889, 27.070984>,  <41.044903, 33.516571, 27.115309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350445, 33.770889, 27.070984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069433, 0.251659, 0.965322,
		0.641638, -0.729675, 0.236377,
		0.763858, 0.635800, -0.110811,
		41.579601, 33.961628, 27.037741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472496, 33.447357, 27.714146>,  <41.044903, 33.516571, 27.115309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472496, 33.447357, 27.714146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549911, 33.806011, 27.554855>,  <41.596359, 34.021206, 27.459282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549911, 33.806011, 27.554855>,  <41.472496, 33.447357, 27.714146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549911, 33.806011, 27.554855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081485, 0.419187, 0.904236,
		0.977703, -0.142556, 0.154192,
		0.193539, 0.896638, -0.398224,
		41.607975, 34.075005, 27.435389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988232, 33.839897, 28.213430>,  <41.472496, 33.447357, 27.714146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988232, 33.839897, 28.213430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768536, 34.087303, 27.988655>,  <41.636719, 34.235748, 27.853790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768536, 34.087303, 27.988655>,  <41.988232, 33.839897, 28.213430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768536, 34.087303, 27.988655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090914, 0.624229, 0.775933,
		0.830705, 0.477261, -0.286619,
		-0.549239, 0.618514, -0.561940,
		41.603764, 34.272858, 27.820072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346184, 34.484745, 28.280914>,  <41.988232, 33.839897, 28.213430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346184, 34.484745, 28.280914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981476, 34.577244, 28.145144>,  <41.762653, 34.632744, 28.063681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981476, 34.577244, 28.145144>,  <42.346184, 34.484745, 28.280914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981476, 34.577244, 28.145144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223888, 0.413004, 0.882780,
		0.344321, 0.880883, -0.324791,
		-0.911766, 0.231243, -0.339425,
		41.707947, 34.646618, 28.043316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223763, 35.062992, 28.614811>,  <42.346184, 34.484745, 28.280914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223763, 35.062992, 28.614811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863358, 34.957565, 28.476997>,  <41.647114, 34.894310, 28.394310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863358, 34.957565, 28.476997>,  <42.223763, 35.062992, 28.614811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863358, 34.957565, 28.476997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433356, 0.511509, 0.741998,
		-0.019333, 0.817857, -0.575096,
		-0.901016, -0.263566, -0.344534,
		41.593052, 34.878494, 28.373636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739197, 35.709938, 28.633043>,  <42.223763, 35.062992, 28.614811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739197, 35.709938, 28.633043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532444, 35.368107, 28.653170>,  <41.408394, 35.163010, 28.665245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532444, 35.368107, 28.653170>,  <41.739197, 35.709938, 28.633043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532444, 35.368107, 28.653170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511428, 0.355396, 0.782391,
		-0.686496, 0.378668, -0.620752,
		-0.516879, -0.854578, 0.050316,
		41.377380, 35.111732, 28.668264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004173, 35.902489, 28.731289>,  <41.739197, 35.709938, 28.633043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004173, 35.902489, 28.731289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058678, 35.533741, 28.876390>,  <41.091381, 35.312492, 28.963451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058678, 35.533741, 28.876390>,  <41.004173, 35.902489, 28.731289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058678, 35.533741, 28.876390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575629, 0.224336, 0.786336,
		-0.806277, -0.315961, -0.500085,
		0.136264, -0.921869, 0.362754,
		41.099556, 35.257179, 28.985216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381737, 35.818829, 29.024586>,  <41.004173, 35.902489, 28.731289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381737, 35.818829, 29.024586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640335, 35.565353, 29.194519>,  <40.795494, 35.413269, 29.296478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640335, 35.565353, 29.194519>,  <40.381737, 35.818829, 29.024586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640335, 35.565353, 29.194519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514096, 0.049587, 0.856298,
		-0.563692, -0.771998, -0.293719,
		0.646496, -0.633687, 0.424833,
		40.834286, 35.375248, 29.321968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876621, 35.527550, 29.408361>,  <40.381737, 35.818829, 29.024586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876621, 35.527550, 29.408361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230804, 35.418945, 29.559221>,  <40.443314, 35.353783, 29.649738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230804, 35.418945, 29.559221>,  <39.876621, 35.527550, 29.408361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230804, 35.418945, 29.559221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382653, 0.034547, 0.923246,
		-0.263705, -0.961814, -0.073307,
		0.885458, -0.271516, 0.377151,
		40.496441, 35.337490, 29.672367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860809, 34.874168, 29.808504>,  <39.876621, 35.527550, 29.408361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860809, 34.874168, 29.808504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169609, 35.077438, 29.961229>,  <40.354889, 35.199402, 30.052864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169609, 35.077438, 29.961229>,  <39.860809, 34.874168, 29.808504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169609, 35.077438, 29.961229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335807, -0.183946, 0.923795,
		0.539683, -0.841381, 0.028644,
		0.771995, 0.508176, 0.381814,
		40.401207, 35.229893, 30.075773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991684, 34.605877, 30.532513>,  <39.860809, 34.874168, 29.808504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991684, 34.605877, 30.532513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197903, 34.947639, 30.506577>,  <40.321636, 35.152695, 30.491014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197903, 34.947639, 30.506577>,  <39.991684, 34.605877, 30.532513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197903, 34.947639, 30.506577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079260, 0.122898, 0.989249,
		0.853187, -0.504867, 0.131080,
		0.515548, 0.854403, -0.064839,
		40.352566, 35.203960, 30.487125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426067, 34.560959, 31.043373>,  <39.991684, 34.605877, 30.532513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426067, 34.560959, 31.043373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416115, 34.951622, 30.958029>,  <40.410145, 35.186020, 30.906822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416115, 34.951622, 30.958029>,  <40.426067, 34.560959, 31.043373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416115, 34.951622, 30.958029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104870, 0.209697, 0.972126,
		0.994174, 0.046563, 0.097205,
		-0.024882, 0.976657, -0.213359,
		40.408649, 35.244617, 30.894022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997204, 34.812302, 31.320955>,  <40.426067, 34.560959, 31.043373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997204, 34.812302, 31.320955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767632, 35.139107, 31.298693>,  <40.629890, 35.335190, 31.285336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767632, 35.139107, 31.298693>,  <40.997204, 34.812302, 31.320955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767632, 35.139107, 31.298693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061538, 0.110801, 0.991936,
		0.816590, 0.565875, -0.113870,
		-0.573928, 0.817012, -0.055656,
		40.595451, 35.384209, 31.281996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282780, 35.326160, 31.813944>,  <40.997204, 34.812302, 31.320955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282780, 35.326160, 31.813944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885399, 35.353096, 31.777029>,  <40.646969, 35.369259, 31.754881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885399, 35.353096, 31.777029>,  <41.282780, 35.326160, 31.813944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885399, 35.353096, 31.777029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101547, -0.150422, 0.983393,
		0.052338, 0.986326, 0.156275,
		-0.993453, 0.067338, -0.092286,
		40.587364, 35.373299, 31.749344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965282, 35.826939, 32.349850>,  <41.282780, 35.326160, 31.813944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965282, 35.826939, 32.349850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656384, 35.598045, 32.239452>,  <40.471043, 35.460709, 32.173214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656384, 35.598045, 32.239452>,  <40.965282, 35.826939, 32.349850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656384, 35.598045, 32.239452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268410, -0.099878, 0.958113,
		-0.575832, 0.813984, -0.076463,
		-0.772252, -0.572236, -0.275995,
		40.424709, 35.426376, 32.156654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371613, 36.014744, 32.607113>,  <40.965282, 35.826939, 32.349850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371613, 36.014744, 32.607113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261253, 35.636494, 32.538208>,  <40.195038, 35.409542, 32.496864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261253, 35.636494, 32.538208>,  <40.371613, 36.014744, 32.607113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261253, 35.636494, 32.538208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135990, -0.139010, 0.980909,
		-0.951518, 0.294058, -0.090243,
		-0.275899, -0.945625, -0.172259,
		40.178482, 35.352806, 32.486530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754856, 35.918209, 33.113720>,  <40.371613, 36.014744, 32.607113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754856, 35.918209, 33.113720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833035, 35.540894, 33.006378>,  <39.879940, 35.314507, 32.941975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833035, 35.540894, 33.006378>,  <39.754856, 35.918209, 33.113720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833035, 35.540894, 33.006378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318505, -0.319850, 0.892329,
		-0.927553, -0.088930, -0.362955,
		0.195446, -0.943286, -0.268353,
		39.891670, 35.257908, 32.925873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213776, 35.528381, 33.450863>,  <39.754856, 35.918209, 33.113720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213776, 35.528381, 33.450863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471481, 35.235210, 33.363464>,  <39.626106, 35.059307, 33.311028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471481, 35.235210, 33.363464>,  <39.213776, 35.528381, 33.450863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471481, 35.235210, 33.363464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275360, -0.488818, 0.827788,
		-0.713514, -0.473149, -0.516747,
		0.644263, -0.732930, -0.218492,
		39.664761, 35.015331, 33.297916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830311, 34.930107, 33.571598>,  <39.213776, 35.528381, 33.450863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830311, 34.930107, 33.571598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220173, 34.841507, 33.584198>,  <39.454090, 34.788349, 33.591759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220173, 34.841507, 33.584198>,  <38.830311, 34.930107, 33.571598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220173, 34.841507, 33.584198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115665, -0.378345, 0.918410,
		-0.191504, -0.898774, -0.394375,
		0.974653, -0.221495, 0.031502,
		39.512569, 34.775059, 33.593647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862446, 34.315826, 33.910076>,  <38.830311, 34.930107, 33.571598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862446, 34.315826, 33.910076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242912, 34.438183, 33.926682>,  <39.471191, 34.511597, 33.936646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242912, 34.438183, 33.926682>,  <38.862446, 34.315826, 33.910076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242912, 34.438183, 33.926682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086534, -0.393293, 0.915332,
		0.296314, -0.867037, -0.400555,
		0.951162, 0.305887, 0.041510,
		39.528259, 34.529949, 33.939133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277355, 33.770176, 34.033680>,  <38.862446, 34.315826, 33.910076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277355, 33.770176, 34.033680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484173, 34.089840, 34.156322>,  <39.608265, 34.281639, 34.229908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484173, 34.089840, 34.156322>,  <39.277355, 33.770176, 34.033680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484173, 34.089840, 34.156322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045277, -0.383234, 0.922541,
		0.854760, -0.463113, -0.234333,
		0.517045, 0.799161, 0.306605,
		39.639286, 34.329590, 34.248302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789303, 33.481499, 34.514282>,  <39.277355, 33.770176, 34.033680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789303, 33.481499, 34.514282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771637, 33.866425, 34.621616>,  <39.761036, 34.097378, 34.686016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771637, 33.866425, 34.621616>,  <39.789303, 33.481499, 34.514282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771637, 33.866425, 34.621616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069896, -0.264965, 0.961721,
		0.996576, 0.061231, -0.055559,
		-0.044166, 0.962312, 0.268338,
		39.758389, 34.155117, 34.702118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311771, 33.570709, 34.943886>,  <39.789303, 33.481499, 34.514282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311771, 33.570709, 34.943886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065727, 33.870499, 35.041809>,  <39.918098, 34.050373, 35.100563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065727, 33.870499, 35.041809>,  <40.311771, 33.570709, 34.943886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065727, 33.870499, 35.041809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217965, -0.136748, 0.966329,
		0.757713, 0.647759, -0.079243,
		-0.615112, 0.749471, 0.244805,
		39.881195, 34.095341, 35.115250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699310, 34.002953, 35.486805>,  <40.311771, 33.570709, 34.943886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699310, 34.002953, 35.486805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327511, 34.135422, 35.551735>,  <40.104431, 34.214905, 35.590694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327511, 34.135422, 35.551735>,  <40.699310, 34.002953, 35.486805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327511, 34.135422, 35.551735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158904, -0.037581, 0.986579,
		0.332828, 0.942822, -0.017693,
		-0.929503, 0.331172, 0.162326,
		40.048660, 34.234772, 35.600433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728287, 34.413742, 36.038773>,  <40.699310, 34.002953, 35.486805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728287, 34.413742, 36.038773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343052, 34.306431, 36.029831>,  <40.111912, 34.242046, 36.024467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343052, 34.306431, 36.029831>,  <40.728287, 34.413742, 36.038773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343052, 34.306431, 36.029831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041595, -0.230333, 0.972223,
		-0.265971, 0.935401, 0.232988,
		-0.963083, -0.268274, -0.022354,
		40.054127, 34.225948, 36.023125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479698, 34.692413, 36.710011>,  <40.728287, 34.413742, 36.038773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479698, 34.692413, 36.710011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187263, 34.442978, 36.599270>,  <40.011803, 34.293316, 36.532825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187263, 34.442978, 36.599270>,  <40.479698, 34.692413, 36.710011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187263, 34.442978, 36.599270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269729, -0.108553, 0.956798,
		-0.626704, 0.774177, -0.088839,
		-0.731087, -0.623591, -0.276849,
		39.967937, 34.255901, 36.516216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010609, 34.777264, 37.285759>,  <40.479698, 34.692413, 36.710011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010609, 34.777264, 37.285759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929657, 34.432236, 37.100285>,  <39.881084, 34.225220, 36.988998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929657, 34.432236, 37.100285>,  <40.010609, 34.777264, 37.285759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929657, 34.432236, 37.100285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260557, -0.408993, 0.874548,
		-0.944009, 0.297809, -0.141977,
		-0.202380, -0.862574, -0.463689,
		39.868942, 34.173462, 36.961178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168427, 35.276001, 37.822220>,  <40.010609, 34.777264, 37.285759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168427, 35.276001, 37.822220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350975, 35.189812, 38.167542>,  <40.460506, 35.138100, 38.374733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350975, 35.189812, 38.167542>,  <40.168427, 35.276001, 37.822220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350975, 35.189812, 38.167542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478735, -0.877297, 0.034116,
		0.750023, -0.428864, -0.503529,
		0.456376, -0.215469, 0.863304,
		40.487888, 35.125172, 38.426533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415543, 34.556114, 37.901909>,  <40.168427, 35.276001, 37.822220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415543, 34.556114, 37.901909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349369, 34.646606, 38.285877>,  <40.309666, 34.700901, 38.516258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349369, 34.646606, 38.285877>,  <40.415543, 34.556114, 37.901909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349369, 34.646606, 38.285877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615867, -0.783918, 0.078614,
		0.770285, -0.578179, 0.269017,
		-0.165434, 0.226234, 0.959922,
		40.299740, 34.714478, 38.573853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598595, 34.027500, 38.458748>,  <40.415543, 34.556114, 37.901909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598595, 34.027500, 38.458748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282810, 34.249557, 38.563492>,  <40.093342, 34.382793, 38.626339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282810, 34.249557, 38.563492>,  <40.598595, 34.027500, 38.458748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282810, 34.249557, 38.563492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582193, -0.812384, -0.032932,
		0.194445, -0.178449, 0.964545,
		-0.789457, 0.555148, 0.261855,
		40.045975, 34.416103, 38.642048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524391, 34.028084, 39.240196>,  <40.598595, 34.027500, 38.458748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524391, 34.028084, 39.240196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143478, 34.140030, 39.288902>,  <39.914928, 34.207199, 39.318127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143478, 34.140030, 39.288902>,  <40.524391, 34.028084, 39.240196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143478, 34.140030, 39.288902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305141, -0.864636, -0.399115,
		-0.006419, -0.417227, 0.908780,
		-0.952286, 0.279868, 0.121763,
		39.857792, 34.223991, 39.325432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224579, 33.725368, 39.788063>,  <40.524391, 34.028084, 39.240196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224579, 33.725368, 39.788063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944424, 33.779129, 39.507668>,  <39.776329, 33.811386, 39.339432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944424, 33.779129, 39.507668>,  <40.224579, 33.725368, 39.788063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944424, 33.779129, 39.507668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004674, -0.982953, -0.183798,
		-0.713743, -0.125454, 0.689080,
		-0.700392, 0.134405, -0.700990,
		39.734306, 33.819450, 39.297371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653130, 33.255718, 39.890141>,  <40.224579, 33.725368, 39.788063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653130, 33.255718, 39.890141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638103, 33.380184, 39.510296>,  <39.629089, 33.454865, 39.282391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638103, 33.380184, 39.510296>,  <39.653130, 33.255718, 39.890141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638103, 33.380184, 39.510296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237597, -0.920250, -0.310946,
		-0.970637, -0.237306, -0.039362,
		-0.037567, 0.311168, -0.949612,
		39.626835, 33.473534, 39.225410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902039, 33.465954, 39.807514>,  <39.653130, 33.255718, 39.890141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902039, 33.465954, 39.807514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823502, 33.481163, 39.415596>,  <38.776379, 33.490288, 39.180443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823502, 33.481163, 39.415596>,  <38.902039, 33.465954, 39.807514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823502, 33.481163, 39.415596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233625, -0.972284, 0.009083,
		-0.952297, 0.230689, 0.199785,
		-0.196343, 0.038025, -0.979798,
		38.764599, 33.492569, 39.121658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140591, 33.319416, 39.628910>,  <38.902039, 33.465954, 39.807514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140591, 33.319416, 39.628910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412846, 33.200500, 39.361076>,  <38.576199, 33.129150, 39.200375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412846, 33.200500, 39.361076>,  <38.140591, 33.319416, 39.628910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412846, 33.200500, 39.361076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383155, -0.923456, 0.020529,
		-0.624436, 0.242582, -0.742451,
		0.680641, -0.297293, -0.669585,
		38.617039, 33.111313, 39.160202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813122, 33.242611, 39.010311>,  <38.140591, 33.319416, 39.628910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813122, 33.242611, 39.010311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124790, 33.002254, 39.081661>,  <38.311790, 32.858040, 39.124474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124790, 33.002254, 39.081661>,  <37.813122, 33.242611, 39.010311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124790, 33.002254, 39.081661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581463, -0.799191, -0.152298,
		0.234073, 0.014946, -0.972104,
		0.779173, -0.600892, 0.178379,
		38.358543, 32.821987, 39.135174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855141, 32.624699, 38.526588>,  <37.813122, 33.242611, 39.010311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855141, 32.624699, 38.526588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105320, 32.505310, 38.814957>,  <38.255428, 32.433678, 38.987980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105320, 32.505310, 38.814957>,  <37.855141, 32.624699, 38.526588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105320, 32.505310, 38.814957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437946, -0.898968, 0.007757,
		0.645772, -0.320577, -0.692971,
		0.625446, -0.298475, 0.720923,
		38.292953, 32.415768, 39.031235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136623, 32.030197, 38.317375>,  <37.855141, 32.624699, 38.526588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136623, 32.030197, 38.317375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143204, 32.038937, 38.717224>,  <38.147152, 32.044178, 38.957134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143204, 32.038937, 38.717224>,  <38.136623, 32.030197, 38.317375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143204, 32.038937, 38.717224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507470, -0.861241, 0.027172,
		0.861512, -0.507727, -0.003082,
		0.016450, 0.021845, 0.999626,
		38.148140, 32.045490, 39.017113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118462, 31.326807, 38.532990>,  <38.136623, 32.030197, 38.317375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118462, 31.326807, 38.532990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034042, 31.494089, 38.886387>,  <37.983391, 31.594460, 39.098427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034042, 31.494089, 38.886387>,  <38.118462, 31.326807, 38.532990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034042, 31.494089, 38.886387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526427, -0.810206, 0.257762,
		0.823610, -0.410695, 0.391148,
		-0.211049, 0.418206, 0.883494,
		37.970726, 31.619551, 39.151436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248917, 30.838259, 39.059696>,  <38.118462, 31.326807, 38.532990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248917, 30.838259, 39.059696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976212, 31.099703, 39.191147>,  <37.812588, 31.256569, 39.270020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976212, 31.099703, 39.191147>,  <38.248917, 30.838259, 39.059696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976212, 31.099703, 39.191147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604084, -0.756337, 0.251071,
		0.412657, -0.027349, 0.910476,
		-0.681760, 0.653610, 0.328630,
		37.771683, 31.295786, 39.289734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043354, 30.545959, 39.757595>,  <38.248917, 30.838259, 39.059696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043354, 30.545959, 39.757595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755611, 30.788092, 39.621296>,  <37.582966, 30.933371, 39.539516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755611, 30.788092, 39.621296>,  <38.043354, 30.545959, 39.757595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755611, 30.788092, 39.621296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683711, -0.703685, 0.193305,
		-0.122763, 0.372025, 0.920068,
		-0.719352, 0.605330, -0.340745,
		37.539806, 30.969690, 39.519073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496487, 30.451561, 40.203178>,  <38.043354, 30.545959, 39.757595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496487, 30.451561, 40.203178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308563, 30.648840, 39.910320>,  <37.195808, 30.767206, 39.734604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308563, 30.648840, 39.910320>,  <37.496487, 30.451561, 40.203178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308563, 30.648840, 39.910320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855929, -0.457456, 0.241077,
		-0.216028, 0.739927, 0.637056,
		-0.469805, 0.493195, -0.732149,
		37.167622, 30.796799, 39.690674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972996, 30.798431, 40.557732>,  <37.496487, 30.451561, 40.203178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972996, 30.798431, 40.557732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903198, 30.698969, 40.176632>,  <36.861320, 30.639292, 39.947971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903198, 30.698969, 40.176632>,  <36.972996, 30.798431, 40.557732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903198, 30.698969, 40.176632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678085, -0.671248, 0.299378,
		-0.713970, 0.698280, -0.051485,
		-0.174490, -0.248658, -0.952744,
		36.850853, 30.624371, 39.890808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429672, 30.347242, 40.605770>,  <36.972996, 30.798431, 40.557732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429672, 30.347242, 40.605770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431038, 30.318241, 40.206825>,  <36.431858, 30.300840, 39.967457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431038, 30.318241, 40.206825>,  <36.429672, 30.347242, 40.605770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431038, 30.318241, 40.206825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622721, -0.780536, 0.054608,
		-0.782437, 0.620892, -0.047815,
		0.003416, -0.072503, -0.997362,
		36.432064, 30.296490, 39.907616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763245, 30.327394, 40.435356>,  <36.429672, 30.347242, 40.605770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763245, 30.327394, 40.435356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958626, 30.161633, 40.128193>,  <36.075855, 30.062176, 39.943893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958626, 30.161633, 40.128193>,  <35.763245, 30.327394, 40.435356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958626, 30.161633, 40.128193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566278, -0.820089, 0.082365,
		-0.663885, 0.394618, -0.635243,
		0.488453, -0.414405, -0.767908,
		36.105160, 30.037312, 39.897820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285412, 30.000093, 40.063549>,  <35.763245, 30.327394, 40.435356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285412, 30.000093, 40.063549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627220, 29.819475, 39.960869>,  <35.832306, 29.711103, 39.899261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627220, 29.819475, 39.960869>,  <35.285412, 30.000093, 40.063549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627220, 29.819475, 39.960869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468210, -0.883607, -0.004307,
		-0.224881, 0.123872, -0.966480,
		0.854522, -0.451548, -0.256704,
		35.883575, 29.684011, 39.883858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136356, 29.530128, 39.509323>,  <35.285412, 30.000093, 40.063549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136356, 29.530128, 39.509323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472725, 29.383226, 39.668308>,  <35.674545, 29.295086, 39.763699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472725, 29.383226, 39.668308>,  <35.136356, 29.530128, 39.509323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472725, 29.383226, 39.668308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416703, -0.908044, 0.042604,
		0.345264, -0.201449, -0.916630,
		0.840923, -0.367253, 0.397459,
		35.725002, 29.273050, 39.787544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550442, 29.092434, 39.195210>,  <35.136356, 29.530128, 39.509323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550442, 29.092434, 39.195210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691521, 29.189253, 39.556767>,  <34.776169, 29.247345, 39.773701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691521, 29.189253, 39.556767>,  <34.550442, 29.092434, 39.195210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691521, 29.189253, 39.556767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547915, -0.729631, 0.409178,
		0.758548, -0.639571, -0.124715,
		0.352694, 0.242048, 0.903891,
		34.797329, 29.261868, 39.827934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739002, 28.453239, 39.560349>,  <34.550442, 29.092434, 39.195210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739002, 28.453239, 39.560349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664291, 28.721186, 39.847790>,  <34.619465, 28.881952, 40.020256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664291, 28.721186, 39.847790>,  <34.739002, 28.453239, 39.560349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664291, 28.721186, 39.847790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669352, -0.622191, 0.406013,
		0.719084, -0.405167, 0.564587,
		-0.186778, 0.669865, 0.718606,
		34.608257, 28.922146, 40.063374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085392, 28.037960, 40.141636>,  <34.739002, 28.453239, 39.560349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085392, 28.037960, 40.141636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431896, 27.960869, 39.957268>,  <35.639797, 27.914614, 39.846645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431896, 27.960869, 39.957268>,  <35.085392, 28.037960, 40.141636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431896, 27.960869, 39.957268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207633, 0.978028, -0.018720,
		0.454404, -0.079486, 0.887242,
		0.866259, -0.192727, -0.460924,
		35.691772, 27.903051, 39.818989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646774, 28.230274, 40.503212>,  <35.085392, 28.037960, 40.141636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646774, 28.230274, 40.503212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729862, 28.252399, 40.112564>,  <35.779716, 28.265675, 39.878174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729862, 28.252399, 40.112564>,  <35.646774, 28.230274, 40.503212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729862, 28.252399, 40.112564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278299, 0.953799, 0.113214,
		0.937764, -0.295310, 0.182729,
		0.207720, 0.055315, -0.976623,
		35.792179, 28.268993, 39.819576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377686, 28.513296, 40.330765>,  <35.646774, 28.230274, 40.503212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377686, 28.513296, 40.330765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142628, 28.587870, 40.015827>,  <36.001595, 28.632614, 39.826862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142628, 28.587870, 40.015827>,  <36.377686, 28.513296, 40.330765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142628, 28.587870, 40.015827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323472, 0.946078, -0.017411,
		0.741646, -0.264916, -0.616263,
		-0.587645, 0.186431, -0.787347,
		35.966335, 28.643799, 39.779621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798607, 28.605713, 39.683971>,  <36.377686, 28.513296, 40.330765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798607, 28.605713, 39.683971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451279, 28.804077, 39.688015>,  <36.242882, 28.923096, 39.690441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451279, 28.804077, 39.688015>,  <36.798607, 28.605713, 39.683971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451279, 28.804077, 39.688015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494217, 0.866727, -0.067331,
		-0.042151, -0.053468, -0.997680,
		-0.868316, 0.495908, 0.010109,
		36.190784, 28.952850, 39.691048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933678, 29.112379, 39.220650>,  <36.798607, 28.605713, 39.683971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933678, 29.112379, 39.220650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622540, 29.262373, 39.422382>,  <36.435856, 29.352369, 39.543423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622540, 29.262373, 39.422382>,  <36.933678, 29.112379, 39.220650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622540, 29.262373, 39.422382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310230, 0.927001, -0.210778,
		-0.546553, -0.007494, -0.837391,
		-0.777842, 0.374985, 0.504330,
		36.389187, 29.374868, 39.573681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819176, 29.664196, 38.812836>,  <36.933678, 29.112379, 39.220650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819176, 29.664196, 38.812836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587746, 29.746984, 39.128410>,  <36.448887, 29.796658, 39.317753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587746, 29.746984, 39.128410>,  <36.819176, 29.664196, 38.812836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587746, 29.746984, 39.128410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243696, 0.966951, -0.074955,
		-0.778374, 0.148893, -0.609889,
		-0.578573, 0.206971, 0.788934,
		36.414173, 29.809076, 39.365089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405735, 30.166632, 38.592831>,  <36.819176, 29.664196, 38.812836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405735, 30.166632, 38.592831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428059, 30.190565, 38.991489>,  <36.441452, 30.204926, 39.230686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428059, 30.190565, 38.991489>,  <36.405735, 30.166632, 38.592831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428059, 30.190565, 38.991489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403386, 0.911757, -0.077325,
		-0.913326, 0.406349, 0.026748,
		0.055809, 0.059833, 0.996647,
		36.444801, 30.208515, 39.290485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048573, 30.823248, 38.814098>,  <36.405735, 30.166632, 38.592831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048573, 30.823248, 38.814098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350456, 30.721050, 39.055805>,  <36.531586, 30.659731, 39.200829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350456, 30.721050, 39.055805>,  <36.048573, 30.823248, 38.814098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350456, 30.721050, 39.055805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404272, 0.906515, -0.121633,
		-0.516698, 0.336085, 0.787446,
		0.754710, -0.255495, 0.604264,
		36.576870, 30.644402, 39.237083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389648, 31.373394, 38.751984>,  <36.048573, 30.823248, 38.814098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389648, 31.373394, 38.751984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624077, 31.200956, 39.026409>,  <36.764732, 31.097492, 39.191063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624077, 31.200956, 39.026409>,  <36.389648, 31.373394, 38.751984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624077, 31.200956, 39.026409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675665, 0.727352, -0.120146,
		-0.447213, 0.533961, 0.717556,
		0.586069, -0.431096, 0.686060,
		36.799896, 31.071627, 39.232227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720715, 31.907633, 38.987759>,  <36.389648, 31.373394, 38.751984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720715, 31.907633, 38.987759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953873, 31.631603, 39.159351>,  <37.093769, 31.465984, 39.262306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953873, 31.631603, 39.159351>,  <36.720715, 31.907633, 38.987759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953873, 31.631603, 39.159351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716725, 0.685386, 0.128651,
		-0.382796, 0.232470, 0.894105,
		0.582900, -0.690075, 0.428980,
		37.128742, 31.424582, 39.288044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557735, 32.563019, 39.417160>,  <36.720715, 31.907633, 38.987759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557735, 32.563019, 39.417160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905724, 32.674671, 39.579758>,  <37.114517, 32.741665, 39.677315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905724, 32.674671, 39.579758>,  <36.557735, 32.563019, 39.417160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905724, 32.674671, 39.579758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463628, 0.182283, 0.867077,
		0.167940, -0.942790, 0.287998,
		0.869969, 0.279142, 0.406491,
		37.166714, 32.758411, 39.701706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047379, 32.252052, 39.737850>,  <36.557735, 32.563019, 39.417160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047379, 32.252052, 39.737850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274746, 31.936831, 39.643303>,  <37.411167, 31.747698, 39.586575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274746, 31.936831, 39.643303>,  <37.047379, 32.252052, 39.737850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274746, 31.936831, 39.643303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819471, 0.567875, 0.077368,
		0.073256, -0.237672, 0.968579,
		0.568420, -0.788054, -0.236365,
		37.445271, 31.700415, 39.572392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652096, 32.413692, 40.118267>,  <37.047379, 32.252052, 39.737850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652096, 32.413692, 40.118267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792545, 32.124882, 39.879810>,  <37.876816, 31.951595, 39.736736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792545, 32.124882, 39.879810>,  <37.652096, 32.413692, 40.118267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792545, 32.124882, 39.879810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863404, 0.496014, -0.092215,
		0.362276, -0.482333, 0.797566,
		0.351125, -0.722029, -0.596142,
		37.897884, 31.908274, 39.700966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328102, 32.105904, 40.314678>,  <37.652096, 32.413692, 40.118267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328102, 32.105904, 40.314678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275917, 32.074703, 39.919327>,  <38.244606, 32.055984, 39.682114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275917, 32.074703, 39.919327>,  <38.328102, 32.105904, 40.314678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275917, 32.074703, 39.919327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798510, 0.582638, -0.151379,
		0.587675, -0.808981, -0.013725,
		-0.130459, -0.078002, -0.988380,
		38.236778, 32.051304, 39.622814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024399, 31.989044, 39.999928>,  <38.328102, 32.105904, 40.314678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024399, 31.989044, 39.999928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775356, 32.173344, 39.746925>,  <38.625931, 32.283924, 39.595123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775356, 32.173344, 39.746925>,  <39.024399, 31.989044, 39.999928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775356, 32.173344, 39.746925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756795, 0.560124, -0.336930,
		0.199043, -0.688455, -0.697432,
		-0.622610, 0.460750, -0.632508,
		38.588573, 32.311569, 39.557175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417782, 32.118481, 39.423054>,  <39.024399, 31.989044, 39.999928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417782, 32.118481, 39.423054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103447, 32.364006, 39.392891>,  <38.914845, 32.511322, 39.374794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103447, 32.364006, 39.392891>,  <39.417782, 32.118481, 39.423054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103447, 32.364006, 39.392891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608823, 0.746442, -0.268625,
		-0.108597, -0.257007, -0.960288,
		-0.785838, 0.613817, -0.075410,
		38.867695, 32.548153, 39.370266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466362, 32.342838, 38.765553>,  <39.417782, 32.118481, 39.423054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466362, 32.342838, 38.765553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246361, 32.627674, 38.940109>,  <39.114361, 32.798576, 39.044842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246361, 32.627674, 38.940109>,  <39.466362, 32.342838, 38.765553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246361, 32.627674, 38.940109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651582, 0.692725, -0.309149,
		-0.522437, 0.114310, -0.844981,
		-0.550000, 0.712085, 0.436388,
		39.081360, 32.841301, 39.071026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142082, 32.747852, 38.248581>,  <39.466362, 32.342838, 38.765553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142082, 32.747852, 38.248581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202888, 32.963112, 38.580193>,  <39.239372, 33.092270, 38.779160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202888, 32.963112, 38.580193>,  <39.142082, 32.747852, 38.248581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202888, 32.963112, 38.580193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230144, 0.796445, -0.559203,
		-0.961210, 0.275803, -0.002780,
		0.152016, 0.538152, 0.829026,
		39.248493, 33.124557, 38.828899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451519, 33.409203, 38.106972>,  <39.142082, 32.747852, 38.248581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451519, 33.409203, 38.106972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365505, 33.489777, 38.489216>,  <39.313896, 33.538120, 38.718563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365505, 33.489777, 38.489216>,  <39.451519, 33.409203, 38.106972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365505, 33.489777, 38.489216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235936, 0.960228, -0.149319,
		-0.947679, 0.193353, -0.254008,
		-0.215034, 0.201436, 0.955607,
		39.300995, 33.550209, 38.775898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882965, 34.037487, 38.322479>,  <39.451519, 33.409203, 38.106972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882965, 34.037487, 38.322479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128105, 33.987823, 38.634636>,  <39.275188, 33.958027, 38.821930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128105, 33.987823, 38.634636>,  <38.882965, 34.037487, 38.322479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128105, 33.987823, 38.634636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256761, 0.965279, -0.048064,
		-0.747325, 0.229829, 0.623446,
		0.612845, -0.124158, 0.780388,
		39.311958, 33.950577, 38.868752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760181, 34.571018, 38.639175>,  <38.882965, 34.037487, 38.322479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760181, 34.571018, 38.639175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128429, 34.445930, 38.732700>,  <39.349377, 34.370880, 38.788815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128429, 34.445930, 38.732700>,  <38.760181, 34.571018, 38.639175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128429, 34.445930, 38.732700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327828, 0.944328, -0.027793,
		-0.212103, 0.102236, 0.971885,
		0.920620, -0.312716, 0.233810,
		39.404617, 34.352116, 38.802845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931602, 35.157612, 38.850460>,  <38.760181, 34.571018, 38.639175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931602, 35.157612, 38.850460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260612, 34.938019, 38.791035>,  <39.458019, 34.806263, 38.755379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260612, 34.938019, 38.791035>,  <38.931602, 35.157612, 38.850460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260612, 34.938019, 38.791035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549710, 0.834402, -0.039894,
		0.145862, -0.048853, 0.988098,
		0.822522, -0.548987, -0.148563,
		39.507370, 34.773323, 38.746468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587704, 35.277870, 39.345985>,  <38.931602, 35.157612, 38.850460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587704, 35.277870, 39.345985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733746, 35.148106, 38.996941>,  <39.821373, 35.070248, 38.787514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733746, 35.148106, 38.996941>,  <39.587704, 35.277870, 39.345985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733746, 35.148106, 38.996941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540690, 0.836925, -0.084919,
		0.757860, -0.440808, 0.480976,
		0.365108, -0.324415, -0.872612,
		39.843277, 35.050781, 38.735157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306129, 35.332676, 39.351101>,  <39.587704, 35.277870, 39.345985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306129, 35.332676, 39.351101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195412, 35.339962, 38.966797>,  <40.128979, 35.344334, 38.736214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195412, 35.339962, 38.966797>,  <40.306129, 35.332676, 39.351101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195412, 35.339962, 38.966797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471283, 0.873889, -0.119211,
		0.837422, -0.485784, -0.250473,
		-0.276797, 0.018214, -0.960756,
		40.112373, 35.345425, 38.678570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733204, 35.888138, 39.170353>,  <40.306129, 35.332676, 39.351101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733204, 35.888138, 39.170353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493610, 35.774891, 38.870735>,  <40.349854, 35.706944, 38.690964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493610, 35.774891, 38.870735>,  <40.733204, 35.888138, 39.170353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493610, 35.774891, 38.870735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423455, 0.681930, -0.596371,
		0.679615, -0.674412, -0.288605,
		-0.599008, -0.283091, -0.749032,
		40.313915, 35.689957, 38.646023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105156, 35.518463, 38.523819>,  <40.733204, 35.888138, 39.170353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105156, 35.518463, 38.523819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777737, 35.722370, 38.417900>,  <40.581287, 35.844715, 38.354351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777737, 35.722370, 38.417900>,  <41.105156, 35.518463, 38.523819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777737, 35.722370, 38.417900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571657, 0.677553, -0.462743,
		-0.056480, -0.530148, -0.846022,
		-0.818547, 0.509770, -0.264795,
		40.532173, 35.875301, 38.338463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064224, 35.508350, 37.875366>,  <41.105156, 35.518463, 38.523819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064224, 35.508350, 37.875366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864120, 35.833687, 37.994171>,  <40.744057, 36.028889, 38.065453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864120, 35.833687, 37.994171>,  <41.064224, 35.508350, 37.875366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864120, 35.833687, 37.994171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602416, 0.573321, -0.555336,
		-0.621961, -0.098887, -0.776779,
		-0.500259, 0.813342, 0.297012,
		40.714043, 36.077690, 38.083275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656460, 35.872341, 37.321774>,  <41.064224, 35.508350, 37.875366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656460, 35.872341, 37.321774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814335, 36.125156, 37.588531>,  <40.909058, 36.276848, 37.748585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814335, 36.125156, 37.588531>,  <40.656460, 35.872341, 37.321774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814335, 36.125156, 37.588531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475212, 0.480783, -0.736900,
		-0.786383, 0.607759, -0.110597,
		0.394684, 0.632043, 0.666893,
		40.932739, 36.314770, 37.788601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558895, 36.554382, 36.979874>,  <40.656460, 35.872341, 37.321774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558895, 36.554382, 36.979874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865288, 36.538704, 37.236538>,  <41.049126, 36.529297, 37.390537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865288, 36.538704, 37.236538>,  <40.558895, 36.554382, 36.979874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865288, 36.538704, 37.236538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624071, 0.284891, -0.727580,
		-0.154283, 0.957758, 0.242686,
		0.765984, -0.039200, 0.641663,
		41.095081, 36.526943, 37.429035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889355, 37.186348, 37.063137>,  <40.558895, 36.554382, 36.979874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889355, 37.186348, 37.063137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177471, 36.913692, 37.114613>,  <41.350342, 36.750099, 37.145496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177471, 36.913692, 37.114613>,  <40.889355, 37.186348, 37.063137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177471, 36.913692, 37.114613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425534, 0.287685, -0.857996,
		0.547819, 0.672764, 0.497275,
		0.720288, -0.681635, 0.128685,
		41.393559, 36.709202, 37.153217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645306, 37.463249, 36.945316>,  <40.889355, 37.186348, 37.063137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645306, 37.463249, 36.945316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685070, 37.069424, 36.887703>,  <41.708927, 36.833126, 36.853134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685070, 37.069424, 36.887703>,  <41.645306, 37.463249, 36.945316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685070, 37.069424, 36.887703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665823, 0.173392, -0.725682,
		0.739457, -0.023763, 0.672784,
		0.099411, -0.984566, -0.144038,
		41.714893, 36.774055, 36.844490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361095, 37.319782, 36.942894>,  <41.645306, 37.463249, 36.945316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361095, 37.319782, 36.942894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201660, 37.041077, 36.704350>,  <42.105999, 36.873852, 36.561222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201660, 37.041077, 36.704350>,  <42.361095, 37.319782, 36.942894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201660, 37.041077, 36.704350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637972, 0.256501, -0.726085,
		0.658879, -0.669868, 0.342280,
		-0.398586, -0.696767, -0.596360,
		42.082085, 36.832047, 36.525440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.855221, 36.705666, 36.739845>,  <42.361095, 37.319782, 36.942894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.855221, 36.705666, 36.739845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575027, 36.820763, 36.478607>,  <42.406910, 36.889820, 36.321865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575027, 36.820763, 36.478607>,  <42.855221, 36.705666, 36.739845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575027, 36.820763, 36.478607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713503, 0.262603, -0.649579,
		-0.015408, -0.921001, -0.389255,
		-0.700483, 0.287743, -0.653091,
		42.364883, 36.907085, 36.282681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922020, 36.242397, 36.043880>,  <42.855221, 36.705666, 36.739845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922020, 36.242397, 36.043880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756889, 36.604385, 36.002693>,  <42.657810, 36.821579, 35.977982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756889, 36.604385, 36.002693>,  <42.922020, 36.242397, 36.043880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.756889, 36.604385, 36.002693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662854, 0.220974, -0.715398,
		-0.624662, -0.363587, -0.691088,
		-0.412822, 0.904972, -0.102971,
		42.633041, 36.875877, 35.971802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323174, 36.651283, 35.661747>,  <42.922020, 36.242397, 36.043880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323174, 36.651283, 35.661747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601753, 36.450134, 35.866524>,  <43.768902, 36.329445, 35.989388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601753, 36.450134, 35.866524>,  <43.323174, 36.651283, 35.661747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601753, 36.450134, 35.866524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620128, 0.780742, -0.076709,
		-0.361116, 0.370890, 0.855591,
		0.696446, -0.502875, 0.511937,
		43.810688, 36.299271, 36.020103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.056812, 36.678692, 35.348026>,  <43.323174, 36.651283, 35.661747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.056812, 36.678692, 35.348026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429295, 36.671875, 35.202389>,  <44.652782, 36.667786, 35.115005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429295, 36.671875, 35.202389>,  <44.056812, 36.678692, 35.348026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429295, 36.671875, 35.202389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264848, -0.654662, 0.708007,
		-0.250424, -0.755729, -0.605112,
		0.931205, -0.017040, -0.364096,
		44.708656, 36.666763, 35.093159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252747, 35.992523, 35.263279>,  <44.056812, 36.678692, 35.348026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252747, 35.992523, 35.263279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568489, 36.235363, 35.299816>,  <44.757935, 36.381069, 35.321739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568489, 36.235363, 35.299816>,  <44.252747, 35.992523, 35.263279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568489, 36.235363, 35.299816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331766, -0.547004, 0.768582,
		0.516575, -0.576378, -0.633197,
		0.789355, 0.607104, 0.091346,
		44.805294, 36.417496, 35.327221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877998, 35.548191, 35.295681>,  <44.252747, 35.992523, 35.263279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877998, 35.548191, 35.295681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.867630, 35.894779, 35.495102>,  <44.861408, 36.102734, 35.614754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.867630, 35.894779, 35.495102>,  <44.877998, 35.548191, 35.295681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867630, 35.894779, 35.495102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268256, -0.474397, 0.838443,
		0.962999, 0.155469, -0.220141,
		-0.025918, 0.866474, 0.498549,
		44.859856, 36.154720, 35.644669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.476933, 35.594681, 35.786114>,  <44.877998, 35.548191, 35.295681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.476933, 35.594681, 35.786114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162266, 35.796589, 35.928303>,  <44.973465, 35.917732, 36.013615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162266, 35.796589, 35.928303>,  <45.476933, 35.594681, 35.786114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162266, 35.796589, 35.928303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152542, -0.399005, 0.904171,
		0.598232, 0.765508, 0.236887,
		-0.786669, 0.504769, 0.355470,
		44.926266, 35.948021, 36.034943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.717552, 35.445496, 36.458813>,  <45.476933, 35.594681, 35.786114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.717552, 35.445496, 36.458813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384846, 35.666676, 36.478432>,  <45.185223, 35.799385, 36.490204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384846, 35.666676, 36.478432>,  <45.717552, 35.445496, 36.458813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.384846, 35.666676, 36.478432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136192, -0.288928, 0.947614,
		0.538156, 0.781516, 0.315629,
		-0.831769, 0.552950, 0.049052,
		45.135315, 35.832561, 36.493149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.387535, 35.551434, 36.412926>,  <45.717552, 35.445496, 36.458813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.387535, 35.551434, 36.412926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764885, 35.419930, 36.430649>,  <46.991295, 35.341026, 36.441284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764885, 35.419930, 36.430649>,  <46.387535, 35.551434, 36.412926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.764885, 35.419930, 36.430649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041759, -0.250203, -0.967292,
		0.329097, 0.910666, -0.249764,
		0.943372, -0.328763, 0.044312,
		47.047897, 35.321301, 36.443943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.750763, 35.775082, 35.881130>,  <46.387535, 35.551434, 36.412926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.750763, 35.775082, 35.881130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.986660, 35.469761, 35.986641>,  <47.128197, 35.286568, 36.049946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.986660, 35.469761, 35.986641>,  <46.750763, 35.775082, 35.881130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.986660, 35.469761, 35.986641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191718, -0.184960, -0.963864,
		0.784507, 0.619000, 0.037260,
		0.589740, -0.763301, 0.263776,
		47.163582, 35.240772, 36.065773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.482887, 35.967335, 35.747169>,  <46.750763, 35.775082, 35.881130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.482887, 35.967335, 35.747169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.350079, 35.590736, 35.724014>,  <47.270393, 35.364777, 35.710121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.350079, 35.590736, 35.724014>,  <47.482887, 35.967335, 35.747169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.350079, 35.590736, 35.724014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206517, -0.012669, -0.978361,
		0.920389, -0.336789, 0.198641,
		-0.332017, -0.941495, -0.057892,
		47.250473, 35.308289, 35.706646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.958641, 35.476307, 35.471016>,  <47.482887, 35.967335, 35.747169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.958641, 35.476307, 35.471016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.572468, 35.408298, 35.391991>,  <47.340763, 35.367493, 35.344574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.572468, 35.408298, 35.391991>,  <47.958641, 35.476307, 35.471016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.572468, 35.408298, 35.391991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185892, 0.082173, -0.979128,
		0.182712, -0.982008, -0.047726,
		-0.965433, -0.170027, -0.197562,
		47.282837, 35.357292, 35.332722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.933495, 34.898994, 34.908916>,  <47.958641, 35.476307, 35.471016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.933495, 34.898994, 34.908916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.608410, 35.131577, 34.893925>,  <47.413361, 35.271126, 34.884930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.608410, 35.131577, 34.893925>,  <47.933495, 34.898994, 34.908916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.608410, 35.131577, 34.893925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152369, 0.150002, -0.976874,
		-0.562390, -0.799628, -0.210505,
		-0.812712, 0.581458, -0.037479,
		47.364597, 35.306015, 34.882683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.261982, 31.262545, 27.311285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925262, 31.058668, 27.240191>,  <36.723232, 30.936342, 27.197535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925262, 31.058668, 27.240191>,  <37.261982, 31.262545, 27.311285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925262, 31.058668, 27.240191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168929, -0.063975, 0.983550,
		-0.512675, 0.857977, -0.032247,
		-0.841800, -0.509689, -0.177736,
		36.672722, 30.905762, 27.186871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626301, 31.667824, 27.426291>,  <37.261982, 31.262545, 27.311285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626301, 31.667824, 27.426291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.503845, 31.288557, 27.460361>,  <36.430370, 31.060997, 27.480804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.503845, 31.288557, 27.460361>,  <36.626301, 31.667824, 27.426291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503845, 31.288557, 27.460361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213728, 0.155643, 0.964415,
		-0.927685, 0.277039, -0.250298,
		-0.306138, -0.948169, 0.085177,
		36.412003, 31.004107, 27.485914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080299, 31.664465, 27.928299>,  <36.626301, 31.667824, 27.426291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080299, 31.664465, 27.928299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.189220, 31.280441, 27.902569>,  <36.254574, 31.050028, 27.887131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.189220, 31.280441, 27.902569>,  <36.080299, 31.664465, 27.928299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189220, 31.280441, 27.902569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157763, -0.110495, 0.981275,
		-0.949189, -0.257059, -0.181550,
		0.272306, -0.960058, -0.064326,
		36.270912, 30.992424, 27.883270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578400, 31.278215, 28.309864>,  <36.080299, 31.664465, 27.928299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578400, 31.278215, 28.309864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.890598, 31.028551, 28.295742>,  <36.077919, 30.878752, 28.287270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.890598, 31.028551, 28.295742>,  <35.578400, 31.278215, 28.309864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890598, 31.028551, 28.295742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018690, -0.079743, 0.996640,
		-0.624881, -0.777214, -0.073905,
		0.780497, -0.624163, -0.035304,
		36.124748, 30.841303, 28.285151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363171, 30.720142, 28.763908>,  <35.578400, 31.278215, 28.309864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363171, 30.720142, 28.763908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.759342, 30.697313, 28.713646>,  <35.997047, 30.683615, 28.683489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.759342, 30.697313, 28.713646>,  <35.363171, 30.720142, 28.763908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759342, 30.697313, 28.713646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108276, -0.243192, 0.963916,
		-0.085573, -0.968298, -0.234685,
		0.990431, -0.057074, -0.125654,
		36.056473, 30.680191, 28.675949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440125, 30.150694, 29.022627>,  <35.363171, 30.720142, 28.763908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440125, 30.150694, 29.022627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.786312, 30.351072, 29.024151>,  <35.994026, 30.471300, 29.025066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.786312, 30.351072, 29.024151>,  <35.440125, 30.150694, 29.022627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786312, 30.351072, 29.024151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127890, -0.228294, 0.965156,
		0.484361, -0.834826, -0.261647,
		0.865470, 0.500946, 0.003811,
		36.045952, 30.501356, 29.025293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914600, 29.653204, 29.406891>,  <35.440125, 30.150694, 29.022627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914600, 29.653204, 29.406891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055466, 30.027456, 29.416458>,  <36.139984, 30.252008, 29.422197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055466, 30.027456, 29.416458>,  <35.914600, 29.653204, 29.406891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055466, 30.027456, 29.416458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315801, -0.142843, 0.938011,
		0.881050, -0.322782, -0.345778,
		0.352165, 0.935632, 0.023917,
		36.161114, 30.308146, 29.423634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567928, 29.669806, 29.648314>,  <35.914600, 29.653204, 29.406891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567928, 29.669806, 29.648314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.482681, 30.053522, 29.722435>,  <36.431534, 30.283752, 29.766909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.482681, 30.053522, 29.722435>,  <36.567928, 29.669806, 29.648314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482681, 30.053522, 29.722435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337955, -0.105575, 0.935222,
		0.916716, 0.261934, -0.301699,
		-0.213115, 0.959294, 0.185304,
		36.418747, 30.341311, 29.778027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839916, 29.728394, 30.231468>,  <36.567928, 29.669806, 29.648314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839916, 29.728394, 30.231468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.675770, 30.092630, 30.251171>,  <36.577282, 30.311172, 30.262993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.675770, 30.092630, 30.251171>,  <36.839916, 29.728394, 30.231468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675770, 30.092630, 30.251171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389882, 0.126360, 0.912154,
		0.824376, 0.393518, -0.406876,
		-0.410362, 0.910591, 0.049258,
		36.552662, 30.365808, 30.265949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285660, 30.112652, 30.592340>,  <36.839916, 29.728394, 30.231468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285660, 30.112652, 30.592340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.945301, 30.317430, 30.639475>,  <36.741085, 30.440298, 30.667755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.945301, 30.317430, 30.639475>,  <37.285660, 30.112652, 30.592340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945301, 30.317430, 30.639475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232507, 0.165857, 0.958349,
		0.471078, 0.842855, -0.260158,
		-0.850898, 0.511945, 0.117838,
		36.690033, 30.471014, 30.674826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378487, 30.748671, 30.980703>,  <37.285660, 30.112652, 30.592340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378487, 30.748671, 30.980703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.984894, 30.703873, 31.036173>,  <36.748737, 30.676994, 31.069454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.984894, 30.703873, 31.036173>,  <37.378487, 30.748671, 30.980703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984894, 30.703873, 31.036173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106895, 0.251809, 0.961855,
		-0.142641, 0.961275, -0.235805,
		-0.983985, -0.111993, 0.138674,
		36.689697, 30.670275, 31.077774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138401, 31.405180, 31.290474>,  <37.378487, 30.748671, 30.980703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138401, 31.405180, 31.290474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.879307, 31.111090, 31.370358>,  <36.723850, 30.934635, 31.418287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.879307, 31.111090, 31.370358>,  <37.138401, 31.405180, 31.290474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879307, 31.111090, 31.370358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001409, 0.263289, 0.964716,
		-0.761867, 0.624596, -0.171577,
		-0.647732, -0.735227, 0.199711,
		36.684986, 30.890522, 31.430271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753525, 31.661983, 31.873158>,  <37.138401, 31.405180, 31.290474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753525, 31.661983, 31.873158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700039, 31.265640, 31.880310>,  <36.667946, 31.027834, 31.884602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700039, 31.265640, 31.880310>,  <36.753525, 31.661983, 31.873158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700039, 31.265640, 31.880310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239510, -0.014803, 0.970781,
		-0.961642, 0.134093, 0.239300,
		-0.133717, -0.990858, 0.017881,
		36.659924, 30.968382, 31.885674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384178, 31.487249, 32.419338>,  <36.753525, 31.661983, 31.873158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384178, 31.487249, 32.419338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.586727, 31.156023, 32.323090>,  <36.708256, 30.957287, 32.265339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.586727, 31.156023, 32.323090>,  <36.384178, 31.487249, 32.419338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586727, 31.156023, 32.323090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309699, -0.085790, 0.946957,
		-0.804784, -0.554031, 0.213010,
		0.506369, -0.828064, -0.240625,
		36.738636, 30.907604, 32.250900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221909, 30.970108, 32.973522>,  <36.384178, 31.487249, 32.419338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221909, 30.970108, 32.973522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.529034, 30.778015, 32.803894>,  <36.713310, 30.662760, 32.702118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.529034, 30.778015, 32.803894>,  <36.221909, 30.970108, 32.973522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529034, 30.778015, 32.803894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418890, -0.124530, 0.899457,
		-0.484761, -0.868255, 0.105550,
		0.767814, -0.480235, -0.424071,
		36.759377, 30.633945, 32.676674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228546, 30.409973, 33.283886>,  <36.221909, 30.970108, 32.973522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228546, 30.409973, 33.283886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594135, 30.471827, 33.133823>,  <36.813488, 30.508938, 33.043785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594135, 30.471827, 33.133823>,  <36.228546, 30.409973, 33.283886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594135, 30.471827, 33.133823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401315, -0.207780, 0.892062,
		0.059994, -0.965876, -0.251963,
		0.913973, 0.154635, -0.375155,
		36.868328, 30.518217, 33.021278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773941, 29.857021, 33.525364>,  <36.228546, 30.409973, 33.283886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773941, 29.857021, 33.525364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.011570, 30.166088, 33.435867>,  <37.154148, 30.351528, 33.382168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.011570, 30.166088, 33.435867>,  <36.773941, 29.857021, 33.525364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011570, 30.166088, 33.435867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271767, 0.069004, 0.959886,
		0.757112, -0.631050, -0.168992,
		0.594075, 0.772667, -0.223742,
		37.189793, 30.397888, 33.368744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478779, 29.622087, 33.821438>,  <36.773941, 29.857021, 33.525364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478779, 29.622087, 33.821438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495907, 30.019756, 33.781860>,  <37.506184, 30.258358, 33.758114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495907, 30.019756, 33.781860>,  <37.478779, 29.622087, 33.821438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495907, 30.019756, 33.781860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395948, 0.074041, 0.915283,
		0.917274, -0.078371, -0.390469,
		0.042821, 0.994171, -0.098946,
		37.508755, 30.318008, 33.752178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158749, 29.898422, 34.318363>,  <37.478779, 29.622087, 33.821438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158749, 29.898422, 34.318363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.961967, 30.237885, 34.240631>,  <37.843899, 30.441563, 34.193993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.961967, 30.237885, 34.240631>,  <38.158749, 29.898422, 34.318363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961967, 30.237885, 34.240631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268269, 0.360111, 0.893505,
		0.828261, 0.387427, -0.404826,
		-0.491951, 0.848658, -0.194331,
		37.814381, 30.492481, 34.182331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591434, 30.354887, 34.470840>,  <38.158749, 29.898422, 34.318363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591434, 30.354887, 34.470840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.233524, 30.533157, 34.481747>,  <38.018776, 30.640120, 34.488293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.233524, 30.533157, 34.481747>,  <38.591434, 30.354887, 34.470840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233524, 30.533157, 34.481747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276763, 0.505659, 0.817136,
		0.350388, 0.738704, -0.575800,
		-0.894780, 0.445675, 0.027269,
		37.965092, 30.666861, 34.489929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693821, 31.101051, 34.748772>,  <38.591434, 30.354887, 34.470840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693821, 31.101051, 34.748772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.321888, 30.972658, 34.820755>,  <38.098728, 30.895622, 34.863945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.321888, 30.972658, 34.820755>,  <38.693821, 31.101051, 34.748772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321888, 30.972658, 34.820755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050809, 0.372360, 0.926696,
		-0.364463, 0.870814, -0.329923,
		-0.929831, -0.320984, 0.179956,
		38.042938, 30.876364, 34.874741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404495, 31.685036, 34.957901>,  <38.693821, 31.101051, 34.748772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404495, 31.685036, 34.957901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.222260, 31.354818, 35.091118>,  <38.112919, 31.156689, 35.171047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.222260, 31.354818, 35.091118>,  <38.404495, 31.685036, 34.957901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222260, 31.354818, 35.091118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030025, 0.359664, 0.932598,
		-0.889685, 0.434878, -0.139071,
		-0.455586, -0.825544, 0.333045,
		38.085583, 31.107155, 35.191032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764542, 31.966125, 35.516434>,  <38.404495, 31.685036, 34.957901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764542, 31.966125, 35.516434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.152172, 31.947163, 35.613304>,  <39.384750, 31.935785, 35.671429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.152172, 31.947163, 35.613304>,  <38.764542, 31.966125, 35.516434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152172, 31.947163, 35.613304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246660, 0.216011, -0.944721,
		-0.007527, 0.975239, 0.221024,
		0.969073, -0.047406, 0.242178,
		39.442894, 31.932941, 35.685959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072788, 32.450310, 35.125954>,  <38.764542, 31.966125, 35.516434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072788, 32.450310, 35.125954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.401539, 32.240952, 35.215904>,  <39.598789, 32.115337, 35.269875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.401539, 32.240952, 35.215904>,  <39.072788, 32.450310, 35.125954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401539, 32.240952, 35.215904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323218, 0.103383, -0.940661,
		0.469088, 0.845795, 0.254139,
		0.821880, -0.523395, 0.224881,
		39.648102, 32.083935, 35.283367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543304, 32.731216, 34.605682>,  <39.072788, 32.450310, 35.125954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543304, 32.731216, 34.605682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.717026, 32.396904, 34.740055>,  <39.821259, 32.196316, 34.820679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.717026, 32.396904, 34.740055>,  <39.543304, 32.731216, 34.605682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717026, 32.396904, 34.740055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467737, -0.109468, -0.877062,
		0.769805, 0.538041, 0.343383,
		0.434306, -0.835780, 0.335931,
		39.847317, 32.146172, 34.840836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287151, 32.838493, 34.472000>,  <39.543304, 32.731216, 34.605682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287151, 32.838493, 34.472000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.228859, 32.443810, 34.500763>,  <40.193886, 32.207001, 34.518021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.228859, 32.443810, 34.500763>,  <40.287151, 32.838493, 34.472000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228859, 32.443810, 34.500763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593725, -0.145365, -0.791429,
		0.791362, -0.072639, 0.607017,
		-0.145727, -0.986708, 0.071909,
		40.185143, 32.147797, 34.522335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963684, 32.517593, 34.207672>,  <40.287151, 32.838493, 34.472000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963684, 32.517593, 34.207672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.674366, 32.242287, 34.185299>,  <40.500774, 32.077103, 34.171875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.674366, 32.242287, 34.185299>,  <40.963684, 32.517593, 34.207672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674366, 32.242287, 34.185299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351213, -0.296929, -0.887965,
		0.594554, -0.661904, 0.456497,
		-0.723295, -0.688271, -0.055929,
		40.457378, 32.035805, 34.168522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272118, 31.898630, 34.034229>,  <40.963684, 32.517593, 34.207672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272118, 31.898630, 34.034229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.886200, 31.891579, 33.929260>,  <40.654652, 31.887348, 33.866280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.886200, 31.891579, 33.929260>,  <41.272118, 31.898630, 34.034229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886200, 31.891579, 33.929260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255497, -0.299652, -0.919201,
		-0.062430, -0.953886, 0.293606,
		-0.964792, -0.017630, -0.262422,
		40.596764, 31.886290, 33.850533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345173, 31.430637, 33.526173>,  <41.272118, 31.898630, 34.034229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345173, 31.430637, 33.526173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.977058, 31.580084, 33.479706>,  <40.756191, 31.669752, 33.451828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.977058, 31.580084, 33.479706>,  <41.345173, 31.430637, 33.526173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977058, 31.580084, 33.479706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030561, -0.227351, -0.973333,
		-0.390062, -0.899291, 0.197808,
		-0.920281, 0.373615, -0.116165,
		40.700974, 31.692167, 33.444855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010551, 30.997873, 33.095978>,  <41.345173, 31.430637, 33.526173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010551, 30.997873, 33.095978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.790810, 31.330206, 33.060368>,  <40.658962, 31.529606, 33.039001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.790810, 31.330206, 33.060368>,  <41.010551, 30.997873, 33.095978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790810, 31.330206, 33.060368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183391, -0.223832, -0.957218,
		-0.815213, -0.509529, 0.275331,
		-0.549359, 0.830830, -0.089028,
		40.626003, 31.579454, 33.033661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352913, 30.796219, 32.751598>,  <41.010551, 30.997873, 33.095978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352913, 30.796219, 32.751598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.373806, 31.188074, 32.674053>,  <40.386341, 31.423187, 32.627525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.373806, 31.188074, 32.674053>,  <40.352913, 30.796219, 32.751598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373806, 31.188074, 32.674053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252139, -0.174904, -0.951753,
		-0.966280, 0.098592, 0.237869,
		0.052231, 0.979636, -0.193866,
		40.389477, 31.481966, 32.615894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732059, 30.978121, 32.317482>,  <40.352913, 30.796219, 32.751598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732059, 30.978121, 32.317482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.992107, 31.274109, 32.248447>,  <40.148136, 31.451702, 32.207027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.992107, 31.274109, 32.248447>,  <39.732059, 30.978121, 32.317482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992107, 31.274109, 32.248447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290048, 0.031746, -0.956485,
		-0.702294, 0.671888, 0.235266,
		0.650120, 0.739972, -0.172585,
		40.187141, 31.496101, 32.196671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417114, 31.401861, 31.936419>,  <39.732059, 30.978121, 32.317482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417114, 31.401861, 31.936419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.782104, 31.552048, 31.871401>,  <40.001099, 31.642160, 31.832390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.782104, 31.552048, 31.871401>,  <39.417114, 31.401861, 31.936419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782104, 31.552048, 31.871401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237900, 0.163686, -0.957398,
		-0.332866, 0.912267, 0.238682,
		0.912471, 0.375468, -0.162543,
		40.055847, 31.664688, 31.822638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388393, 32.162598, 31.655357>,  <39.417114, 31.401861, 31.936419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388393, 32.162598, 31.655357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.729984, 32.009289, 31.514599>,  <39.934937, 31.917305, 31.430143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.729984, 32.009289, 31.514599>,  <39.388393, 32.162598, 31.655357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729984, 32.009289, 31.514599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279576, 0.232389, -0.931575,
		0.438822, 0.893924, 0.091301,
		0.853975, -0.383270, -0.351897,
		39.986176, 31.894308, 31.409029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719639, 32.765297, 31.258821>,  <39.388393, 32.162598, 31.655357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719639, 32.765297, 31.258821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.864853, 32.410393, 31.144995>,  <39.951981, 32.197449, 31.076698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.864853, 32.410393, 31.144995>,  <39.719639, 32.765297, 31.258821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864853, 32.410393, 31.144995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065828, 0.280216, -0.957677,
		0.929449, 0.366399, 0.043321,
		0.363031, -0.887260, -0.284566,
		39.973763, 32.144215, 31.059626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158154, 32.946808, 30.684973>,  <39.719639, 32.765297, 31.258821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158154, 32.946808, 30.684973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.095051, 32.552193, 30.667776>,  <40.057190, 32.315422, 30.657457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.095051, 32.552193, 30.667776>,  <40.158154, 32.946808, 30.684973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095051, 32.552193, 30.667776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058190, 0.052748, -0.996911,
		0.985763, -0.154764, -0.065728,
		-0.157753, -0.986542, -0.042991,
		40.047726, 32.256229, 30.654879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490139, 32.692108, 30.094076>,  <40.158154, 32.946808, 30.684973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490139, 32.692108, 30.094076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.244850, 32.385906, 30.172010>,  <40.097675, 32.202187, 30.218771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.244850, 32.385906, 30.172010>,  <40.490139, 32.692108, 30.094076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244850, 32.385906, 30.172010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156137, -0.124325, -0.979880,
		0.774324, -0.631308, -0.043284,
		-0.613225, -0.765502, 0.194838,
		40.060883, 32.156254, 30.230461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660164, 32.151035, 29.642332>,  <40.490139, 32.692108, 30.094076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660164, 32.151035, 29.642332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.284569, 32.056965, 29.742729>,  <40.059212, 32.000523, 29.802967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.284569, 32.056965, 29.742729>,  <40.660164, 32.151035, 29.642332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284569, 32.056965, 29.742729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229283, -0.115960, -0.966428,
		0.256383, -0.965011, 0.054964,
		-0.938988, -0.235173, 0.250991,
		40.002872, 31.986414, 29.818026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581104, 31.562241, 29.407135>,  <40.660164, 32.151035, 29.642332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581104, 31.562241, 29.407135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.200516, 31.682333, 29.434160>,  <39.972164, 31.754389, 29.450377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.200516, 31.682333, 29.434160>,  <40.581104, 31.562241, 29.407135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200516, 31.682333, 29.434160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149780, -0.259997, -0.953922,
		-0.268851, -0.917742, 0.292350,
		-0.951464, 0.300251, 0.067558,
		39.915073, 31.772402, 29.454430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057510, 30.988268, 29.084450>,  <40.581104, 31.562241, 29.407135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057510, 30.988268, 29.084450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.863598, 31.338112, 29.087023>,  <39.747250, 31.548019, 29.088566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.863598, 31.338112, 29.087023>,  <40.057510, 30.988268, 29.084450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863598, 31.338112, 29.087023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304595, -0.161930, -0.938616,
		-0.819883, -0.456983, 0.344903,
		-0.484782, 0.874612, 0.006431,
		39.718163, 31.600494, 29.088953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.176929, 30.759502, 28.845312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.279526, 31.139042, 28.771667>,  <39.341084, 31.366766, 28.727480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.279526, 31.139042, 28.771667>,  <39.176929, 30.759502, 28.845312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279526, 31.139042, 28.771667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335377, -0.091281, -0.937651,
		-0.906495, 0.302248, 0.294809,
		0.256493, 0.948849, -0.184113,
		39.356472, 31.423697, 28.716434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586689, 30.986908, 28.418394>,  <39.176929, 30.759502, 28.845312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586689, 30.986908, 28.418394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.806023, 31.318636, 28.375401>,  <38.937622, 31.517673, 28.349604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.806023, 31.318636, 28.375401>,  <38.586689, 30.986908, 28.418394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806023, 31.318636, 28.375401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432989, 0.171598, -0.884915,
		-0.715435, 0.531771, 0.453181,
		0.548337, 0.829321, -0.107484,
		38.970524, 31.567432, 28.343155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142048, 31.599619, 28.359407>,  <38.586689, 30.986908, 28.418394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142048, 31.599619, 28.359407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499100, 31.659388, 28.189281>,  <38.713329, 31.695250, 28.087206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499100, 31.659388, 28.189281>,  <38.142048, 31.599619, 28.359407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499100, 31.659388, 28.189281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443487, 0.121849, -0.887960,
		-0.080857, 0.981237, 0.175032,
		0.892626, 0.149422, -0.425313,
		38.766888, 31.704214, 28.061687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053905, 32.099373, 27.839249>,  <38.142048, 31.599619, 28.359407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053905, 32.099373, 27.839249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.409180, 31.950851, 27.730982>,  <38.622345, 31.861740, 27.666021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.409180, 31.950851, 27.730982>,  <38.053905, 32.099373, 27.839249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409180, 31.950851, 27.730982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167494, 0.286902, -0.943204,
		0.427865, 0.883077, 0.192632,
		0.888188, -0.371299, -0.270665,
		38.675636, 31.839462, 27.649782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426907, 32.650402, 27.569044>,  <38.053905, 32.099373, 27.839249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426907, 32.650402, 27.569044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.559414, 32.304863, 27.417242>,  <38.638920, 32.097538, 27.326160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.559414, 32.304863, 27.417242>,  <38.426907, 32.650402, 27.569044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559414, 32.304863, 27.417242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182115, 0.336111, -0.924047,
		0.925793, 0.375224, -0.045976,
		0.331272, -0.863849, -0.379504,
		38.658794, 32.045708, 27.303391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817806, 32.815613, 26.861559>,  <38.426907, 32.650402, 27.569044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817806, 32.815613, 26.861559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.788330, 32.416737, 26.856129>,  <38.770645, 32.177410, 26.852871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.788330, 32.416737, 26.856129>,  <38.817806, 32.815613, 26.861559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788330, 32.416737, 26.856129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048070, 0.010043, -0.998793,
		0.996122, -0.074252, 0.047195,
		-0.073689, -0.997189, -0.013574,
		38.766224, 32.117580, 26.852057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344688, 32.556210, 26.467768>,  <38.817806, 32.815613, 26.861559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344688, 32.556210, 26.467768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.052509, 32.283833, 26.446743>,  <38.877201, 32.120407, 26.434128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.052509, 32.283833, 26.446743>,  <39.344688, 32.556210, 26.467768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052509, 32.283833, 26.446743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121822, -0.054180, -0.991072,
		0.672012, -0.730333, 0.122529,
		-0.730452, -0.680939, -0.052561,
		38.833374, 32.079552, 26.430975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646065, 32.119999, 26.082598>,  <39.344688, 32.556210, 26.467768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646065, 32.119999, 26.082598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.253922, 32.045086, 26.057837>,  <39.018635, 32.000137, 26.042980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.253922, 32.045086, 26.057837>,  <39.646065, 32.119999, 26.082598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253922, 32.045086, 26.057837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083806, -0.111398, -0.990236,
		0.178558, -0.975969, 0.124905,
		-0.980354, -0.187283, -0.061901,
		38.959816, 31.988901, 26.039267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580322, 31.555498, 25.686203>,  <39.646065, 32.119999, 26.082598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580322, 31.555498, 25.686203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.227646, 31.744205, 25.683378>,  <39.016041, 31.857430, 25.681684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.227646, 31.744205, 25.683378>,  <39.580322, 31.555498, 25.686203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227646, 31.744205, 25.683378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011023, 0.005636, -0.999923,
		-0.471691, -0.881706, -0.010169,
		-0.881695, 0.471767, -0.007061,
		38.963139, 31.885735, 25.681259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172195, 31.092293, 25.289711>,  <39.580322, 31.555498, 25.686203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172195, 31.092293, 25.289711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.033436, 31.467276, 25.301311>,  <38.950180, 31.692265, 25.308271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.033436, 31.467276, 25.301311>,  <39.172195, 31.092293, 25.289711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033436, 31.467276, 25.301311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108663, 0.070882, -0.991548,
		-0.931588, -0.340812, -0.126455,
		-0.346895, 0.937455, 0.028999,
		38.929367, 31.748512, 25.310011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831844, 31.158640, 24.644539>,  <39.172195, 31.092293, 25.289711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831844, 31.158640, 24.644539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.854008, 31.536467, 24.773981>,  <38.867306, 31.763163, 24.851646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.854008, 31.536467, 24.773981>,  <38.831844, 31.158640, 24.644539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854008, 31.536467, 24.773981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130196, 0.314503, -0.940286,
		-0.989939, 0.094228, -0.105555,
		0.055404, 0.944568, 0.323607,
		38.870628, 31.819838, 24.871063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556282, 31.486353, 24.091150>,  <38.831844, 31.158640, 24.644539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556282, 31.486353, 24.091150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.742504, 31.780123, 24.288687>,  <38.854237, 31.956385, 24.407209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.742504, 31.780123, 24.288687>,  <38.556282, 31.486353, 24.091150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742504, 31.780123, 24.288687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266326, 0.415880, -0.869548,
		-0.843996, 0.536345, -0.001981,
		0.465554, 0.734423, 0.493843,
		38.882172, 32.000450, 24.436840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450031, 32.033413, 23.618959>,  <38.556282, 31.486353, 24.091150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450031, 32.033413, 23.618959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.766781, 32.126511, 23.844795>,  <38.956829, 32.182369, 23.980297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.766781, 32.126511, 23.844795>,  <38.450031, 32.033413, 23.618959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766781, 32.126511, 23.844795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502857, 0.276073, -0.819096,
		-0.346509, 0.932531, 0.101577,
		0.791875, 0.232745, 0.564591,
		39.004345, 32.196335, 24.014172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612762, 32.705479, 23.385481>,  <38.450031, 32.033413, 23.618959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612762, 32.705479, 23.385481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.929310, 32.524605, 23.550051>,  <39.119236, 32.416080, 23.648792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.929310, 32.524605, 23.550051>,  <38.612762, 32.705479, 23.385481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929310, 32.524605, 23.550051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479284, 0.041120, -0.876696,
		0.379513, 0.890975, 0.249267,
		0.791364, -0.452187, 0.411424,
		39.166718, 32.388950, 23.673477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171131, 33.100246, 23.222692>,  <38.612762, 32.705479, 23.385481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171131, 33.100246, 23.222692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.343601, 32.746078, 23.292112>,  <39.447083, 32.533577, 23.333765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.343601, 32.746078, 23.292112>,  <39.171131, 33.100246, 23.222692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343601, 32.746078, 23.292112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533899, 0.095315, -0.840159,
		0.727352, 0.454912, 0.513823,
		0.431173, -0.885421, 0.173549,
		39.472954, 32.480453, 23.344177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792809, 33.219280, 23.025629>,  <39.171131, 33.100246, 23.222692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792809, 33.219280, 23.025629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.796246, 32.819298, 23.024769>,  <39.798309, 32.579308, 23.024252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.796246, 32.819298, 23.024769>,  <39.792809, 33.219280, 23.025629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796246, 32.819298, 23.024769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434101, 0.005669, -0.900846,
		0.900823, 0.006811, 0.434133,
		0.008597, -0.999961, -0.002150,
		39.798824, 32.519310, 23.024124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316948, 33.091255, 22.662224>,  <39.792809, 33.219280, 23.025629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316948, 33.091255, 22.662224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.149300, 32.728310, 22.649370>,  <40.048710, 32.510544, 22.641659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.149300, 32.728310, 22.649370>,  <40.316948, 33.091255, 22.662224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149300, 32.728310, 22.649370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401122, -0.153303, -0.903106,
		0.814516, -0.391401, 0.428215,
		-0.419123, -0.907361, -0.032132,
		40.023563, 32.456100, 22.639730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849190, 32.653267, 22.619522>,  <40.316948, 33.091255, 22.662224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849190, 32.653267, 22.619522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.544174, 32.454281, 22.454084>,  <40.361164, 32.334888, 22.354822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.544174, 32.454281, 22.454084>,  <40.849190, 32.653267, 22.619522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544174, 32.454281, 22.454084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529885, -0.113490, -0.840442,
		0.371149, -0.860030, 0.350139,
		-0.762542, -0.497463, -0.413595,
		40.315411, 32.305042, 22.330006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130913, 32.037247, 22.310350>,  <40.849190, 32.653267, 22.619522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130913, 32.037247, 22.310350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.771542, 32.063698, 22.136705>,  <40.555920, 32.079567, 22.032518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.771542, 32.063698, 22.136705>,  <41.130913, 32.037247, 22.310350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771542, 32.063698, 22.136705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432806, -0.033697, -0.900857,
		-0.074206, -0.997241, 0.001651,
		-0.898428, 0.066135, -0.434112,
		40.502014, 32.083534, 22.006472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027081, 31.353758, 21.810148>,  <41.130913, 32.037247, 22.310350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027081, 31.353758, 21.810148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.756824, 31.619860, 21.683064>,  <40.594669, 31.779522, 21.606812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.756824, 31.619860, 21.683064>,  <41.027081, 31.353758, 21.810148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756824, 31.619860, 21.683064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271570, -0.176066, -0.946177,
		-0.685388, -0.725559, -0.061706,
		-0.675643, 0.665256, -0.317713,
		40.554131, 31.819437, 21.587749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711536, 31.036331, 21.342173>,  <41.027081, 31.353758, 21.810148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711536, 31.036331, 21.342173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.620960, 31.415169, 21.251190>,  <40.566616, 31.642471, 21.196600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.620960, 31.415169, 21.251190>,  <40.711536, 31.036331, 21.342173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620960, 31.415169, 21.251190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188746, -0.186431, -0.964167,
		-0.955563, -0.261256, -0.136545,
		-0.226438, 0.947095, -0.227458,
		40.553028, 31.699297, 21.182953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263119, 31.002655, 20.721607>,  <40.711536, 31.036331, 21.342173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263119, 31.002655, 20.721607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.424137, 31.368160, 20.743488>,  <40.520748, 31.587463, 20.756617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.424137, 31.368160, 20.743488>,  <40.263119, 31.002655, 20.721607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424137, 31.368160, 20.743488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191132, -0.025457, -0.981234,
		-0.895222, 0.405451, -0.184897,
		0.402550, 0.913762, 0.054705,
		40.544903, 31.642288, 20.759899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978653, 31.293106, 20.157967>,  <40.263119, 31.002655, 20.721607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978653, 31.293106, 20.157967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.313339, 31.492168, 20.249388>,  <40.514153, 31.611607, 20.304241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.313339, 31.492168, 20.249388>,  <39.978653, 31.293106, 20.157967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313339, 31.492168, 20.249388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195768, 0.117956, -0.973530,
		-0.511444, 0.859316, 0.001271,
		0.836720, 0.497658, 0.228555,
		40.564354, 31.641466, 20.317955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315956, 31.423697, 19.608738>,  <39.978653, 31.293106, 20.157967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315956, 31.423697, 19.608738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.016151, 31.418957, 19.873493>,  <38.836269, 31.416113, 20.032347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.016151, 31.418957, 19.873493>,  <39.315956, 31.423697, 19.608738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016151, 31.418957, 19.873493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351079, -0.854766, 0.382255,
		0.561230, 0.518878, 0.644815,
		-0.749510, -0.011848, 0.661887,
		38.791298, 31.415401, 20.072060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668694, 31.773317, 19.658304>,  <39.315956, 31.423697, 19.608738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668694, 31.773317, 19.658304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.356506, 31.537430, 19.575264>,  <38.169193, 31.395897, 19.525440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.356506, 31.537430, 19.575264>,  <38.668694, 31.773317, 19.658304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356506, 31.537430, 19.575264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435275, 0.274192, 0.857529,
		-0.448779, 0.759638, -0.470688,
		-0.780470, -0.589719, -0.207600,
		38.122364, 31.360514, 19.512983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070984, 32.150433, 19.901690>,  <38.668694, 31.773317, 19.658304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070984, 32.150433, 19.901690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.939831, 31.773867, 19.870098>,  <37.861141, 31.547928, 19.851143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.939831, 31.773867, 19.870098>,  <38.070984, 32.150433, 19.901690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939831, 31.773867, 19.870098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602540, 0.143997, 0.784991,
		-0.727627, 0.304970, -0.614452,
		-0.327878, -0.941413, -0.078981,
		37.841469, 31.491444, 19.846403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400955, 32.185268, 20.045948>,  <38.070984, 32.150433, 19.901690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400955, 32.185268, 20.045948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.498432, 31.801031, 20.099432>,  <37.556919, 31.570490, 20.131523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.498432, 31.801031, 20.099432>,  <37.400955, 32.185268, 20.045948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498432, 31.801031, 20.099432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373124, 0.034398, 0.927144,
		-0.895206, -0.275826, -0.350037,
		0.243690, -0.960592, 0.133711,
		37.571541, 31.512854, 20.139545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740547, 31.758436, 20.286076>,  <37.400955, 32.185268, 20.045948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740547, 31.758436, 20.286076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.077667, 31.575991, 20.400372>,  <37.279938, 31.466524, 20.468948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.077667, 31.575991, 20.400372>,  <36.740547, 31.758436, 20.286076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077667, 31.575991, 20.400372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347836, -0.056450, 0.935854,
		-0.410727, -0.888129, -0.206229,
		0.842801, -0.456115, 0.285738,
		37.330509, 31.439156, 20.486094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536507, 31.149958, 20.639267>,  <36.740547, 31.758436, 20.286076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536507, 31.149958, 20.639267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.913048, 31.222075, 20.753351>,  <37.138973, 31.265345, 20.821802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.913048, 31.222075, 20.753351>,  <36.536507, 31.149958, 20.639267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913048, 31.222075, 20.753351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279233, -0.058271, 0.958454,
		0.189422, -0.981885, -0.004510,
		0.941354, 0.180293, 0.285213,
		37.195454, 31.276161, 20.838915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676083, 30.676537, 21.240080>,  <36.536507, 31.149958, 20.639267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676083, 30.676537, 21.240080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.990208, 30.922623, 21.267750>,  <37.178684, 31.070274, 21.284351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.990208, 30.922623, 21.267750>,  <36.676083, 30.676537, 21.240080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990208, 30.922623, 21.267750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064331, -0.030039, 0.997476,
		0.615743, -0.787785, 0.015987,
		0.785317, 0.615217, 0.069175,
		37.225803, 31.107187, 21.288502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185619, 30.437473, 21.802065>,  <36.676083, 30.676537, 21.240080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185619, 30.437473, 21.802065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.212517, 30.829941, 21.729633>,  <37.228657, 31.065420, 21.686174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.212517, 30.829941, 21.729633>,  <37.185619, 30.437473, 21.802065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212517, 30.829941, 21.729633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012032, 0.182274, 0.983174,
		0.997664, -0.063935, 0.024063,
		0.067245, 0.981167, -0.181079,
		37.232689, 31.124290, 21.675310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600773, 30.588064, 22.213488>,  <37.185619, 30.437473, 21.802065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600773, 30.588064, 22.213488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.447453, 30.947939, 22.129927>,  <37.355461, 31.163864, 22.079790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.447453, 30.947939, 22.129927>,  <37.600773, 30.588064, 22.213488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447453, 30.947939, 22.129927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025421, 0.215815, 0.976103,
		0.923272, 0.379456, -0.059852,
		-0.383305, 0.899687, -0.208902,
		37.332462, 31.217846, 22.067257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995098, 31.062281, 22.661541>,  <37.600773, 30.588064, 22.213488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995098, 31.062281, 22.661541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656178, 31.242502, 22.549051>,  <37.452827, 31.350636, 22.481558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656178, 31.242502, 22.549051>,  <37.995098, 31.062281, 22.661541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656178, 31.242502, 22.549051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138674, 0.323457, 0.936026,
		0.512693, 0.832093, -0.211584,
		-0.847299, 0.450553, -0.281224,
		37.401989, 31.377668, 22.464684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039616, 31.716133, 22.942778>,  <37.995098, 31.062281, 22.661541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039616, 31.716133, 22.942778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657051, 31.604774, 22.907528>,  <37.427513, 31.537960, 22.886377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657051, 31.604774, 22.907528>,  <38.039616, 31.716133, 22.942778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657051, 31.604774, 22.907528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176802, 0.311892, 0.933522,
		-0.232404, 0.908415, -0.347519,
		-0.956415, -0.278396, -0.088125,
		37.370125, 31.521255, 22.881090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658272, 32.134872, 23.426935>,  <38.039616, 31.716133, 22.942778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658272, 32.134872, 23.426935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.381264, 31.857845, 23.346163>,  <37.215061, 31.691629, 23.297699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.381264, 31.857845, 23.346163>,  <37.658272, 32.134872, 23.426935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381264, 31.857845, 23.346163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315933, 0.039517, 0.947958,
		-0.648543, 0.720272, -0.246170,
		-0.692516, -0.692565, -0.201930,
		37.173508, 31.650076, 23.285583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072132, 32.381081, 23.844713>,  <37.658272, 32.134872, 23.426935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072132, 32.381081, 23.844713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051003, 31.992920, 23.750462>,  <37.038322, 31.760023, 23.693911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051003, 31.992920, 23.750462>,  <37.072132, 32.381081, 23.844713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051003, 31.992920, 23.750462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029805, -0.234320, 0.971702,
		-0.998159, 0.058355, -0.016545,
		-0.052827, -0.970407, -0.235628,
		37.035156, 31.701797, 23.679773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627926, 32.292210, 24.277462>,  <37.072132, 32.381081, 23.844713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627926, 32.292210, 24.277462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.764877, 31.926889, 24.189220>,  <36.847050, 31.707699, 24.136276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.764877, 31.926889, 24.189220>,  <36.627926, 32.292210, 24.277462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764877, 31.926889, 24.189220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218142, -0.305648, 0.926819,
		-0.913887, -0.269201, -0.303876,
		0.342380, -0.913296, -0.220604,
		36.867592, 31.652901, 24.123039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105877, 31.867569, 24.485529>,  <36.627926, 32.292210, 24.277462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105877, 31.867569, 24.485529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.439087, 31.646505, 24.475378>,  <36.639011, 31.513868, 24.469288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.439087, 31.646505, 24.475378>,  <36.105877, 31.867569, 24.485529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439087, 31.646505, 24.475378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238975, -0.400822, 0.884439,
		-0.498965, -0.730692, -0.465965,
		0.833022, -0.552659, -0.025379,
		36.688995, 31.480709, 24.467764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822876, 31.231417, 24.698179>,  <36.105877, 31.867569, 24.485529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822876, 31.231417, 24.698179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220139, 31.231106, 24.744881>,  <36.458496, 31.230919, 24.772902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220139, 31.231106, 24.744881>,  <35.822876, 31.231417, 24.698179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220139, 31.231106, 24.744881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099889, -0.523357, 0.846239,
		0.060448, -0.852113, -0.519855,
		0.993161, -0.000775, 0.116753,
		36.518085, 31.230873, 24.779907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059338, 30.514227, 24.803495>,  <35.822876, 31.231417, 24.698179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059338, 30.514227, 24.803495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.292877, 30.781397, 24.988100>,  <36.433002, 30.941700, 25.098862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.292877, 30.781397, 24.988100>,  <36.059338, 30.514227, 24.803495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292877, 30.781397, 24.988100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123617, -0.488692, 0.863654,
		0.802394, -0.561296, -0.202756,
		0.583851, 0.667927, 0.461510,
		36.468033, 30.981775, 25.126553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322594, 30.160341, 25.347895>,  <36.059338, 30.514227, 24.803495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322594, 30.160341, 25.347895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.451241, 30.523140, 25.456648>,  <36.528431, 30.740818, 25.521900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.451241, 30.523140, 25.456648>,  <36.322594, 30.160341, 25.347895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451241, 30.523140, 25.456648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072905, -0.310005, 0.947935,
		0.944058, -0.285053, -0.165829,
		0.321620, 0.906996, 0.271881,
		36.547726, 30.795238, 25.538212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963284, 30.020714, 25.690237>,  <36.322594, 30.160341, 25.347895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963284, 30.020714, 25.690237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.790943, 30.368826, 25.785715>,  <36.687538, 30.577694, 25.843002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.790943, 30.368826, 25.785715>,  <36.963284, 30.020714, 25.690237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790943, 30.368826, 25.785715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006200, -0.261642, 0.965145,
		0.902400, 0.417317, 0.107334,
		-0.430854, 0.870282, 0.238693,
		36.661686, 30.629910, 25.857323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313389, 30.260080, 26.254723>,  <36.963284, 30.020714, 25.690237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313389, 30.260080, 26.254723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982559, 30.484016, 26.274858>,  <36.784061, 30.618378, 26.286940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982559, 30.484016, 26.274858>,  <37.313389, 30.260080, 26.254723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982559, 30.484016, 26.274858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065612, -0.185100, 0.980527,
		0.558257, 0.807661, 0.189822,
		-0.827070, 0.559840, 0.050341,
		36.734440, 30.651968, 26.289961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374573, 30.702482, 26.890085>,  <37.313389, 30.260080, 26.254723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374573, 30.702482, 26.890085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981979, 30.691978, 26.814198>,  <36.746422, 30.685677, 26.768665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981979, 30.691978, 26.814198>,  <37.374573, 30.702482, 26.890085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981979, 30.691978, 26.814198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187944, -0.058683, 0.980425,
		-0.036878, 0.997931, 0.052661,
		-0.981487, -0.026258, -0.189719,
		36.687534, 30.684101, 26.757282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.160553, 31.446760, 30.974058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.809853, 31.576269, 31.116316>,  <40.599434, 31.653975, 31.201670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.809853, 31.576269, 31.116316>,  <41.160553, 31.446760, 30.974058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809853, 31.576269, 31.116316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356785, -0.058020, 0.932383,
		0.322513, 0.944355, -0.064648,
		-0.876750, 0.323771, 0.355644,
		40.546829, 31.673401, 31.223009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296120, 31.795563, 31.537052>,  <41.160553, 31.446760, 30.974058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296120, 31.795563, 31.537052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.905205, 31.795116, 31.621820>,  <40.670654, 31.794849, 31.672682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.905205, 31.795116, 31.621820>,  <41.296120, 31.795563, 31.537052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905205, 31.795116, 31.621820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204386, 0.259327, 0.943915,
		-0.056008, 0.965789, -0.253209,
		-0.977287, -0.001114, 0.211919,
		40.612019, 31.794783, 31.685396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093464, 32.414078, 31.955557>,  <41.296120, 31.795563, 31.537052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093464, 32.414078, 31.955557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.820152, 32.133812, 32.037727>,  <40.656166, 31.965652, 32.087029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.820152, 32.133812, 32.037727>,  <41.093464, 32.414078, 31.955557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820152, 32.133812, 32.037727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081382, 0.206513, 0.975053,
		-0.725610, 0.682950, -0.084084,
		-0.683277, -0.700665, 0.205428,
		40.615170, 31.923613, 32.099358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631264, 32.748711, 32.448814>,  <41.093464, 32.414078, 31.955557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631264, 32.748711, 32.448814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.568989, 32.356258, 32.494663>,  <40.531624, 32.120785, 32.522171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.568989, 32.356258, 32.494663>,  <40.631264, 32.748711, 32.448814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568989, 32.356258, 32.494663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201764, 0.145176, 0.968615,
		-0.966981, 0.127679, -0.220560,
		-0.155691, -0.981133, 0.114621,
		40.522282, 32.061920, 32.529049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035286, 32.701412, 32.842773>,  <40.631264, 32.748711, 32.448814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035286, 32.701412, 32.842773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.216038, 32.350597, 32.908028>,  <40.324490, 32.140110, 32.947178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.216038, 32.350597, 32.908028>,  <40.035286, 32.701412, 32.842773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216038, 32.350597, 32.908028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197048, 0.080220, 0.977106,
		-0.870042, -0.473683, -0.136568,
		0.451883, -0.877034, 0.163134,
		40.351604, 32.087486, 32.956966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547329, 32.251137, 33.170609>,  <40.035286, 32.701412, 32.842773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547329, 32.251137, 33.170609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.908928, 32.106697, 33.262173>,  <40.125889, 32.020035, 33.317112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.908928, 32.106697, 33.262173>,  <39.547329, 32.251137, 33.170609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908928, 32.106697, 33.262173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299931, -0.154064, 0.941438,
		-0.304685, -0.919713, -0.247578,
		0.903996, -0.361098, 0.228910,
		40.180126, 31.998369, 33.330845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350353, 31.752886, 33.594643>,  <39.547329, 32.251137, 33.170609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350353, 31.752886, 33.594643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.738476, 31.825138, 33.658993>,  <39.971348, 31.868490, 33.697601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.738476, 31.825138, 33.658993>,  <39.350353, 31.752886, 33.594643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738476, 31.825138, 33.658993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161500, -0.011346, 0.986808,
		0.180074, -0.983485, 0.018162,
		0.970305, 0.180631, 0.160876,
		40.029568, 31.879328, 33.707256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428452, 31.261841, 34.083515>,  <39.350353, 31.752886, 33.594643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428452, 31.261841, 34.083515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.736668, 31.514177, 34.119976>,  <39.921597, 31.665579, 34.141853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.736668, 31.514177, 34.119976>,  <39.428452, 31.261841, 34.083515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736668, 31.514177, 34.119976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042434, -0.091917, 0.994862,
		0.635977, -0.770450, -0.044057,
		0.770541, 0.630840, 0.091150,
		39.967831, 31.703428, 34.147320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901737, 30.910854, 34.614071>,  <39.428452, 31.261841, 34.083515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901737, 30.910854, 34.614071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.003311, 31.296734, 34.586132>,  <40.064255, 31.528261, 34.569370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.003311, 31.296734, 34.586132>,  <39.901737, 30.910854, 34.614071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003311, 31.296734, 34.586132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073112, 0.091150, 0.993150,
		0.964455, -0.247086, 0.093677,
		0.253932, 0.964697, -0.069845,
		40.079491, 31.586143, 34.565178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302891, 31.009109, 35.195293>,  <39.901737, 30.910854, 34.614071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302891, 31.009109, 35.195293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.201450, 31.383217, 35.096535>,  <40.140587, 31.607681, 35.037277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.201450, 31.383217, 35.096535>,  <40.302891, 31.009109, 35.195293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201450, 31.383217, 35.096535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142840, 0.216239, 0.965835,
		0.956704, 0.280207, 0.078754,
		-0.253604, 0.935267, -0.246901,
		40.125370, 31.663797, 35.022465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657543, 31.405581, 35.600704>,  <40.302891, 31.009109, 35.195293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657543, 31.405581, 35.600704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.357460, 31.650702, 35.501385>,  <40.177410, 31.797773, 35.441792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.357460, 31.650702, 35.501385>,  <40.657543, 31.405581, 35.600704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357460, 31.650702, 35.501385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189274, 0.160783, 0.968671,
		0.633528, 0.773706, -0.004633,
		-0.750212, 0.612803, -0.248303,
		40.132397, 31.834543, 35.426895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744030, 31.964972, 35.927929>,  <40.657543, 31.405581, 35.600704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744030, 31.964972, 35.927929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.349346, 31.928598, 35.874077>,  <40.112534, 31.906775, 35.841766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.349346, 31.928598, 35.874077>,  <40.744030, 31.964972, 35.927929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349346, 31.928598, 35.874077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130999, -0.044842, 0.990368,
		-0.096096, 0.994847, 0.032334,
		-0.986714, -0.090934, -0.134633,
		40.053333, 31.901318, 35.833687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331158, 32.481846, 36.246918>,  <40.744030, 31.964972, 35.927929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331158, 32.481846, 36.246918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.113541, 32.146248, 36.242897>,  <39.982971, 31.944889, 36.240486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.113541, 32.146248, 36.242897>,  <40.331158, 32.481846, 36.246918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113541, 32.146248, 36.242897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071950, 0.034717, 0.996804,
		-0.835967, 0.543026, -0.079254,
		-0.544042, -0.838998, -0.010048,
		39.950329, 31.894548, 36.239883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413113, 33.051929, 36.663555>,  <40.331158, 32.481846, 36.246918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413113, 33.051929, 36.663555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.117870, 33.249763, 36.847115>,  <39.940723, 33.368462, 36.957253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.117870, 33.249763, 36.847115>,  <40.413113, 33.051929, 36.663555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117870, 33.249763, 36.847115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241992, 0.440845, -0.864347,
		-0.629793, -0.749029, -0.205706,
		-0.738106, 0.494581, 0.458901,
		39.896439, 33.398136, 36.984783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634800, 33.001160, 36.435772>,  <40.413113, 33.051929, 36.663555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634800, 33.001160, 36.435772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.720818, 33.362217, 36.584904>,  <39.772427, 33.578850, 36.674381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.720818, 33.362217, 36.584904>,  <39.634800, 33.001160, 36.435772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720818, 33.362217, 36.584904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274206, 0.422206, -0.864033,
		-0.937319, 0.083574, 0.338302,
		0.215044, 0.902639, 0.372825,
		39.785332, 33.633007, 36.696751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117771, 33.369991, 36.134296>,  <39.634800, 33.001160, 36.435772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117771, 33.369991, 36.134296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.380001, 33.642200, 36.265209>,  <39.537338, 33.805527, 36.343758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.380001, 33.642200, 36.265209>,  <39.117771, 33.369991, 36.134296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380001, 33.642200, 36.265209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087884, 0.499223, -0.862005,
		-0.750000, 0.536344, 0.387085,
		0.655573, 0.680523, 0.327281,
		39.576672, 33.846355, 36.363392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776752, 33.987431, 35.992020>,  <39.117771, 33.369991, 36.134296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776752, 33.987431, 35.992020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.173649, 34.037159, 35.993160>,  <39.411785, 34.066998, 35.993843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.173649, 34.037159, 35.993160>,  <38.776752, 33.987431, 35.992020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173649, 34.037159, 35.993160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033677, 0.290687, -0.956225,
		-0.119706, 0.948707, 0.292617,
		0.992238, 0.124320, 0.002847,
		39.471321, 34.074455, 35.994015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801022, 34.513947, 35.550018>,  <38.776752, 33.987431, 35.992020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801022, 34.513947, 35.550018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.190228, 34.425056, 35.574867>,  <39.423752, 34.371723, 35.589779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.190228, 34.425056, 35.574867>,  <38.801022, 34.513947, 35.550018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190228, 34.425056, 35.574867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128971, 0.300504, -0.945021,
		0.191343, 0.927530, 0.321056,
		0.973013, -0.222230, 0.062125,
		39.482132, 34.358387, 35.593506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092419, 35.136368, 35.371872>,  <38.801022, 34.513947, 35.550018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092419, 35.136368, 35.371872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.346931, 34.831882, 35.321758>,  <39.499638, 34.649189, 35.291691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.346931, 34.831882, 35.321758>,  <39.092419, 35.136368, 35.371872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346931, 34.831882, 35.321758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179604, 0.304103, -0.935555,
		0.750260, 0.572773, 0.330212,
		0.636280, -0.761217, -0.125284,
		39.537815, 34.603516, 35.284172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786091, 35.427032, 35.140816>,  <39.092419, 35.136368, 35.371872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786091, 35.427032, 35.140816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.755421, 35.056171, 34.994114>,  <39.737019, 34.833656, 34.906094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.755421, 35.056171, 34.994114>,  <39.786091, 35.427032, 35.140816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755421, 35.056171, 34.994114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321066, 0.325283, -0.889442,
		0.943948, -0.185951, 0.272736,
		-0.076676, -0.927153, -0.366753,
		39.732418, 34.778027, 34.884087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314503, 35.335953, 34.629585>,  <39.786091, 35.427032, 35.140816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314503, 35.335953, 34.629585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.107658, 35.006779, 34.535465>,  <39.983551, 34.809273, 34.478992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.107658, 35.006779, 34.535465>,  <40.314503, 35.335953, 34.629585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107658, 35.006779, 34.535465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123122, 0.200535, -0.971919,
		0.847016, -0.531562, -0.002377,
		-0.517112, -0.822938, -0.235303,
		39.952526, 34.759899, 34.464874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660950, 35.101242, 34.106956>,  <40.314503, 35.335953, 34.629585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660950, 35.101242, 34.106956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.320560, 34.899776, 34.047394>,  <40.116329, 34.778896, 34.011654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.320560, 34.899776, 34.047394>,  <40.660950, 35.101242, 34.106956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320560, 34.899776, 34.047394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077479, 0.160036, -0.984066,
		0.519466, -0.848949, -0.097163,
		-0.850971, -0.503661, -0.148909,
		40.065269, 34.748680, 34.002720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783440, 34.560535, 33.625957>,  <40.660950, 35.101242, 34.106956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783440, 34.560535, 33.625957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.391506, 34.639015, 33.610863>,  <40.156345, 34.686104, 33.601807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.391506, 34.639015, 33.610863>,  <40.783440, 34.560535, 33.625957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391506, 34.639015, 33.610863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055286, 0.084742, -0.994868,
		-0.191992, -0.976896, -0.093880,
		-0.979838, 0.196197, -0.037739,
		40.097553, 34.697876, 33.599541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536636, 34.123093, 33.173969>,  <40.783440, 34.560535, 33.625957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536636, 34.123093, 33.173969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.309082, 34.451973, 33.181503>,  <40.172550, 34.649300, 33.186024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.309082, 34.451973, 33.181503>,  <40.536636, 34.123093, 33.173969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309082, 34.451973, 33.181503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119460, -0.059954, -0.991027,
		-0.813693, -0.566033, 0.132328,
		-0.568888, 0.822199, 0.018834,
		40.138416, 34.698631, 33.187153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245934, 34.062061, 32.489914>,  <40.536636, 34.123093, 33.173969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245934, 34.062061, 32.489914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.151150, 34.419735, 32.641853>,  <40.094280, 34.634338, 32.733017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.151150, 34.419735, 32.641853>,  <40.245934, 34.062061, 32.489914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151150, 34.419735, 32.641853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138109, 0.356005, -0.924222,
		-0.961652, -0.271467, 0.039134,
		-0.236964, 0.894184, 0.379845,
		40.080059, 34.687992, 32.755806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666008, 34.215458, 32.259296>,  <40.245934, 34.062061, 32.489914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666008, 34.215458, 32.259296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.842850, 34.566250, 32.334610>,  <39.948956, 34.776726, 32.379799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.842850, 34.566250, 32.334610>,  <39.666008, 34.215458, 32.259296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842850, 34.566250, 32.334610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021732, 0.199374, -0.979682,
		-0.896700, 0.437215, 0.069086,
		0.442105, 0.876980, 0.188281,
		39.975483, 34.829342, 32.391094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445377, 34.669796, 31.765713>,  <39.666008, 34.215458, 32.259296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445377, 34.669796, 31.765713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.744167, 34.906296, 31.887339>,  <39.923443, 35.048195, 31.960314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.744167, 34.906296, 31.887339>,  <39.445377, 34.669796, 31.765713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744167, 34.906296, 31.887339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105448, 0.346196, -0.932217,
		-0.656436, 0.728407, 0.196255,
		0.746976, 0.591246, 0.304065,
		39.968262, 35.083668, 31.978558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267929, 35.333664, 31.534912>,  <39.445377, 34.669796, 31.765713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267929, 35.333664, 31.534912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.661942, 35.345398, 31.602861>,  <39.898350, 35.352436, 31.643631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.661942, 35.345398, 31.602861>,  <39.267929, 35.333664, 31.534912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661942, 35.345398, 31.602861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157625, 0.245762, -0.956429,
		-0.069801, 0.968886, 0.237459,
		0.985029, 0.029331, 0.169875,
		39.957451, 35.354198, 31.653824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213196, 36.120224, 31.730927>,  <39.267929, 35.333664, 31.534912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213196, 36.120224, 31.730927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.875469, 36.118977, 31.516590>,  <38.672832, 36.118229, 31.387989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.875469, 36.118977, 31.516590>,  <39.213196, 36.120224, 31.730927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875469, 36.118977, 31.516590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535637, -0.023097, 0.844132,
		-0.015008, 0.999728, 0.017831,
		-0.844315, -0.003117, -0.535839,
		38.622173, 36.118042, 31.355839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774529, 36.573124, 32.065678>,  <39.213196, 36.120224, 31.730927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774529, 36.573124, 32.065678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.548817, 36.321079, 31.852306>,  <38.413391, 36.169853, 31.724283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.548817, 36.321079, 31.852306>,  <38.774529, 36.573124, 32.065678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548817, 36.321079, 31.852306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601882, -0.128277, 0.788215,
		-0.565089, 0.765837, -0.306867,
		-0.564281, -0.630109, -0.533432,
		38.379532, 36.132046, 31.692276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131710, 36.846107, 32.221321>,  <38.774529, 36.573124, 32.065678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131710, 36.846107, 32.221321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068577, 36.477303, 32.079910>,  <38.030697, 36.256020, 31.995064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068577, 36.477303, 32.079910>,  <38.131710, 36.846107, 32.221321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068577, 36.477303, 32.079910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659988, -0.167810, 0.732295,
		-0.734511, 0.348904, -0.582031,
		-0.157830, -0.922012, -0.353530,
		38.021229, 36.200699, 31.973852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368664, 36.718651, 32.153954>,  <38.131710, 36.846107, 32.221321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368664, 36.718651, 32.153954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.527824, 36.351807, 32.144325>,  <37.623322, 36.131699, 32.138546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.527824, 36.351807, 32.144325>,  <37.368664, 36.718651, 32.153954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527824, 36.351807, 32.144325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600919, -0.280362, 0.748527,
		-0.693235, -0.283370, -0.662667,
		0.397897, -0.917114, -0.024075,
		37.647194, 36.076672, 32.137104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761948, 36.252861, 32.442646>,  <37.368664, 36.718651, 32.153954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761948, 36.252861, 32.442646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.095417, 36.032436, 32.457157>,  <37.295498, 35.900181, 32.465862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.095417, 36.032436, 32.457157>,  <36.761948, 36.252861, 32.442646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095417, 36.032436, 32.457157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413680, -0.579618, 0.702077,
		-0.365866, -0.600309, -0.711176,
		0.833674, -0.551065, 0.036273,
		37.345520, 35.867115, 32.468040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508247, 35.639874, 32.532425>,  <36.761948, 36.252861, 32.442646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508247, 35.639874, 32.532425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.894924, 35.600250, 32.626827>,  <37.126930, 35.576477, 32.683468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.894924, 35.600250, 32.626827>,  <36.508247, 35.639874, 32.532425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894924, 35.600250, 32.626827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237059, -0.694183, 0.679642,
		0.096503, -0.712950, -0.694543,
		0.966690, -0.099061, 0.236002,
		37.184933, 35.570534, 32.697628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631104, 34.908459, 32.651260>,  <36.508247, 35.639874, 32.532425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631104, 34.908459, 32.651260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.897335, 35.134197, 32.846611>,  <37.057076, 35.269642, 32.963821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.897335, 35.134197, 32.846611>,  <36.631104, 34.908459, 32.651260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897335, 35.134197, 32.846611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233177, -0.464374, 0.854392,
		0.708963, -0.682546, -0.177487,
		0.665582, 0.564346, 0.488378,
		37.097012, 35.303501, 32.993126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982330, 34.398098, 33.164230>,  <36.631104, 34.908459, 32.651260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982330, 34.398098, 33.164230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.081635, 34.760788, 33.300594>,  <37.141216, 34.978401, 33.382412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.081635, 34.760788, 33.300594>,  <36.982330, 34.398098, 33.164230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081635, 34.760788, 33.300594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002581, -0.351305, 0.936257,
		0.968690, -0.233315, -0.084875,
		0.248260, 0.906724, 0.340908,
		37.156113, 35.032806, 33.402866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614098, 34.343975, 33.637054>,  <36.982330, 34.398098, 33.164230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614098, 34.343975, 33.637054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.443527, 34.695320, 33.723438>,  <37.341187, 34.906128, 33.775269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.443527, 34.695320, 33.723438>,  <37.614098, 34.343975, 33.637054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443527, 34.695320, 33.723438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099399, -0.191809, 0.976386,
		0.899046, 0.437820, -0.005517,
		-0.426423, 0.878364, 0.215964,
		37.315601, 34.958828, 33.788227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053242, 34.686306, 34.052010>,  <37.614098, 34.343975, 33.637054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053242, 34.686306, 34.052010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.686131, 34.830616, 34.118366>,  <37.465862, 34.917202, 34.158180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.686131, 34.830616, 34.118366>,  <38.053242, 34.686306, 34.052010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686131, 34.830616, 34.118366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090803, -0.216018, 0.972158,
		0.386565, 0.907291, 0.165498,
		-0.917781, 0.360775, 0.165890,
		37.410797, 34.938847, 34.168133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032219, 34.934967, 34.685177>,  <38.053242, 34.686306, 34.052010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032219, 34.934967, 34.685177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.638458, 34.889027, 34.631878>,  <37.402203, 34.861462, 34.599899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.638458, 34.889027, 34.631878>,  <38.032219, 34.934967, 34.685177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638458, 34.889027, 34.631878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091626, -0.311839, 0.945707,
		-0.150169, 0.943168, 0.296453,
		-0.984405, -0.114853, -0.133248,
		37.343136, 34.854572, 34.591904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743137, 35.316898, 35.287514>,  <38.032219, 34.934967, 34.685177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743137, 35.316898, 35.287514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.470581, 35.060234, 35.146671>,  <37.307049, 34.906235, 35.062164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.470581, 35.060234, 35.146671>,  <37.743137, 35.316898, 35.287514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470581, 35.060234, 35.146671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025269, -0.501407, 0.864843,
		-0.731486, 0.580396, 0.357867,
		-0.681388, -0.641663, -0.352106,
		37.266163, 34.867737, 35.041039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.991871, 37.825020, 28.256313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714237, 37.596252, 28.081430>,  <39.547657, 37.458992, 27.976501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714237, 37.596252, 28.081430>,  <39.991871, 37.825020, 28.256313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714237, 37.596252, 28.081430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443876, -0.138138, 0.885377,
		-0.566758, 0.808596, -0.157981,
		-0.694089, -0.571918, -0.437207,
		39.506012, 37.424679, 27.950268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306759, 38.034088, 28.371462>,  <39.991871, 37.825020, 28.256313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306759, 38.034088, 28.371462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258427, 37.639332, 28.328684>,  <39.229427, 37.402477, 28.303017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258427, 37.639332, 28.328684>,  <39.306759, 38.034088, 28.371462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258427, 37.639332, 28.328684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368624, -0.055422, 0.927925,
		-0.921692, 0.151546, -0.357096,
		-0.120833, -0.986895, -0.106945,
		39.222176, 37.343262, 28.296600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631462, 37.908978, 28.641987>,  <39.306759, 38.034088, 28.371462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631462, 37.908978, 28.641987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834652, 37.564514, 28.649611>,  <38.956566, 37.357834, 28.654184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834652, 37.564514, 28.649611>,  <38.631462, 37.908978, 28.641987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834652, 37.564514, 28.649611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377694, -0.202797, 0.903449,
		-0.774150, -0.466129, -0.428271,
		0.507976, -0.861160, 0.019059,
		38.987045, 37.306168, 28.655329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178001, 37.478359, 28.961721>,  <38.631462, 37.908978, 28.641987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178001, 37.478359, 28.961721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523903, 37.279068, 28.986933>,  <38.731441, 37.159492, 29.002060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523903, 37.279068, 28.986933>,  <38.178001, 37.478359, 28.961721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523903, 37.279068, 28.986933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326593, -0.462577, 0.824233,
		-0.381499, -0.733342, -0.562732,
		0.864752, -0.498228, 0.063032,
		38.783329, 37.129601, 29.005842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102177, 36.686337, 28.828630>,  <38.178001, 37.478359, 28.961721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102177, 36.686337, 28.828630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437912, 36.740463, 29.039230>,  <38.639355, 36.772938, 29.165590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437912, 36.740463, 29.039230>,  <38.102177, 36.686337, 28.828630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437912, 36.740463, 29.039230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359484, -0.588359, 0.724296,
		0.407781, -0.797197, -0.445187,
		0.839337, 0.135316, 0.526501,
		38.689713, 36.781059, 29.197180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191158, 36.016594, 29.370686>,  <38.102177, 36.686337, 28.828630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191158, 36.016594, 29.370686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432808, 36.299404, 29.517735>,  <38.577797, 36.469090, 29.605963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432808, 36.299404, 29.517735>,  <38.191158, 36.016594, 29.370686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432808, 36.299404, 29.517735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186339, -0.323195, 0.927805,
		0.774799, -0.629010, -0.063502,
		0.604122, 0.707029, 0.367621,
		38.614044, 36.511513, 29.628021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771832, 35.697178, 29.712482>,  <38.191158, 36.016594, 29.370686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771832, 35.697178, 29.712482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738148, 36.069820, 29.853912>,  <38.717937, 36.293407, 29.938770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738148, 36.069820, 29.853912>,  <38.771832, 35.697178, 29.712482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738148, 36.069820, 29.853912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159103, -0.362852, 0.918164,
		0.983664, 0.021062, 0.178777,
		-0.084208, 0.931609, 0.353574,
		38.712887, 36.349304, 29.959984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212395, 35.694332, 30.349327>,  <38.771832, 35.697178, 29.712482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212395, 35.694332, 30.349327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000633, 36.024837, 30.426291>,  <38.873577, 36.223141, 30.472469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000633, 36.024837, 30.426291>,  <39.212395, 35.694332, 30.349327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000633, 36.024837, 30.426291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275617, -0.382007, 0.882104,
		0.802351, 0.413958, 0.429968,
		-0.529404, 0.826263, 0.192409,
		38.841812, 36.272717, 30.484013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364944, 35.828720, 31.039482>,  <39.212395, 35.694332, 30.349327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364944, 35.828720, 31.039482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024158, 36.026352, 30.970144>,  <38.819687, 36.144932, 30.928541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024158, 36.026352, 30.970144>,  <39.364944, 35.828720, 31.039482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024158, 36.026352, 30.970144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312640, -0.214447, 0.925348,
		0.420022, 0.842554, 0.337169,
		-0.851961, 0.494079, -0.173344,
		38.768570, 36.174576, 30.918140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934540, 36.466908, 31.064213>,  <39.364944, 35.828720, 31.039482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934540, 36.466908, 31.064213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136108, 36.129326, 31.137764>,  <40.257050, 35.926777, 31.181894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136108, 36.129326, 31.137764>,  <39.934540, 36.466908, 31.064213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136108, 36.129326, 31.137764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159104, -0.118547, -0.980119,
		0.848969, 0.523160, 0.074537,
		0.503922, -0.843949, 0.183879,
		40.287285, 35.876141, 31.192928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451855, 36.562813, 30.610226>,  <39.934540, 36.466908, 31.064213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451855, 36.562813, 30.610226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437870, 36.173470, 30.700874>,  <40.429478, 35.939865, 30.755264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437870, 36.173470, 30.700874>,  <40.451855, 36.562813, 30.610226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437870, 36.173470, 30.700874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137730, -0.229291, -0.963564,
		0.989853, -0.002476, 0.142077,
		-0.034962, -0.973355, 0.226623,
		40.427380, 35.881462, 30.768862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979744, 36.315109, 30.262028>,  <40.451855, 36.562813, 30.610226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979744, 36.315109, 30.262028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788830, 35.977222, 30.358906>,  <40.674282, 35.774490, 30.417032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788830, 35.977222, 30.358906>,  <40.979744, 36.315109, 30.262028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788830, 35.977222, 30.358906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327948, -0.426922, -0.842726,
		0.815261, -0.322793, 0.480786,
		-0.477284, -0.844714, 0.242193,
		40.645645, 35.723808, 30.431564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515247, 35.766113, 30.216677>,  <40.979744, 36.315109, 30.262028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515247, 35.766113, 30.216677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144081, 35.626591, 30.164045>,  <40.921383, 35.542877, 30.132465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144081, 35.626591, 30.164045>,  <41.515247, 35.766113, 30.216677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144081, 35.626591, 30.164045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331525, -0.610651, -0.719164,
		0.170499, -0.710943, 0.682269,
		-0.927912, -0.348806, -0.131580,
		40.865707, 35.521950, 30.124571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695896, 35.055912, 30.107838>,  <41.515247, 35.766113, 30.216677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695896, 35.055912, 30.107838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328430, 35.148830, 29.980032>,  <41.107952, 35.204582, 29.903349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328430, 35.148830, 29.980032>,  <41.695896, 35.055912, 30.107838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328430, 35.148830, 29.980032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161939, -0.516293, -0.840962,
		-0.360316, -0.824306, 0.436683,
		-0.918667, 0.232296, -0.319516,
		41.052830, 35.218521, 29.884176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394779, 34.360355, 29.853802>,  <41.695896, 35.055912, 30.107838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394779, 34.360355, 29.853802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224102, 34.678894, 29.682335>,  <41.121696, 34.870018, 29.579454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224102, 34.678894, 29.682335>,  <41.394779, 34.360355, 29.853802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224102, 34.678894, 29.682335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219208, -0.368783, -0.903298,
		-0.877426, -0.479403, -0.017208,
		-0.426697, 0.796349, -0.428669,
		41.096092, 34.917797, 29.553734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994682, 34.043968, 29.336363>,  <41.394779, 34.360355, 29.853802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994682, 34.043968, 29.336363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066032, 34.422806, 29.229637>,  <41.108841, 34.650108, 29.165602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066032, 34.422806, 29.229637>,  <40.994682, 34.043968, 29.336363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066032, 34.422806, 29.229637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207754, -0.301303, -0.930621,
		-0.961780, 0.110568, -0.250508,
		0.178375, 0.947096, -0.266817,
		41.119545, 34.706936, 29.149591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598537, 34.058151, 28.640682>,  <40.994682, 34.043968, 29.336363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598537, 34.058151, 28.640682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844444, 34.373562, 28.633888>,  <40.991989, 34.562809, 28.629812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844444, 34.373562, 28.633888>,  <40.598537, 34.058151, 28.640682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844444, 34.373562, 28.633888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125149, -0.118790, -0.985001,
		-0.778716, 0.603420, -0.171711,
		0.614767, 0.788526, -0.016987,
		41.028873, 34.610119, 28.628792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506386, 34.329651, 28.060776>,  <40.598537, 34.058151, 28.640682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506386, 34.329651, 28.060776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832024, 34.537487, 28.164524>,  <41.027405, 34.662189, 28.226774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832024, 34.537487, 28.164524>,  <40.506386, 34.329651, 28.060776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832024, 34.537487, 28.164524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365715, -0.111758, -0.923993,
		-0.451111, 0.847075, -0.281003,
		0.814096, 0.519590, 0.259373,
		41.076252, 34.693363, 28.242336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557549, 34.821598, 27.557806>,  <40.506386, 34.329651, 28.060776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557549, 34.821598, 27.557806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915222, 34.743233, 27.718828>,  <41.129826, 34.696213, 27.815441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915222, 34.743233, 27.718828>,  <40.557549, 34.821598, 27.557806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915222, 34.743233, 27.718828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328624, -0.323415, -0.887361,
		0.304038, 0.925754, -0.224811,
		0.894185, -0.195913, 0.402555,
		41.183479, 34.684460, 27.839594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091824, 35.214542, 27.111712>,  <40.557549, 34.821598, 27.557806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091824, 35.214542, 27.111712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237087, 34.892857, 27.299906>,  <41.324245, 34.699844, 27.412823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237087, 34.892857, 27.299906>,  <41.091824, 35.214542, 27.111712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237087, 34.892857, 27.299906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385224, -0.330178, -0.861734,
		0.848362, 0.494188, 0.189895,
		0.363159, -0.804214, 0.470484,
		41.346035, 34.651592, 27.441051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849133, 35.243053, 26.871656>,  <41.091824, 35.214542, 27.111712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849133, 35.243053, 26.871656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769196, 34.894691, 27.051252>,  <41.721233, 34.685677, 27.159010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769196, 34.894691, 27.051252>,  <41.849133, 35.243053, 26.871656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769196, 34.894691, 27.051252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487296, -0.485886, -0.725573,
		0.850062, 0.073790, 0.521488,
		-0.199844, -0.870902, 0.448991,
		41.709244, 34.633423, 27.185949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430340, 34.889339, 26.866285>,  <41.849133, 35.243053, 26.871656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430340, 34.889339, 26.866285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160736, 34.597832, 26.914631>,  <41.998974, 34.422928, 26.943638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160736, 34.597832, 26.914631>,  <42.430340, 34.889339, 26.866285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160736, 34.597832, 26.914631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374940, -0.478455, -0.794041,
		0.636499, -0.489875, 0.595728,
		-0.674010, -0.728768, 0.120863,
		41.958534, 34.379200, 26.950890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797993, 34.214394, 26.711258>,  <42.430340, 34.889339, 26.866285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797993, 34.214394, 26.711258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406078, 34.145260, 26.670967>,  <42.170929, 34.103779, 26.646791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406078, 34.145260, 26.670967>,  <42.797993, 34.214394, 26.711258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406078, 34.145260, 26.670967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170070, -0.454547, -0.874336,
		0.105330, -0.873793, 0.474753,
		-0.979787, -0.172835, -0.100728,
		42.112141, 34.093410, 26.640749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.569736, 33.183044, 25.411301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.946934, 33.103310, 25.517902>,  <34.173252, 33.055470, 25.581863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.946934, 33.103310, 25.517902>,  <33.569736, 33.183044, 25.411301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946934, 33.103310, 25.517902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317093, -0.294987, 0.901352,
		-0.101059, -0.934477, -0.341380,
		0.942995, -0.199339, 0.266504,
		34.229832, 33.043507, 25.597853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550602, 32.672474, 25.852522>,  <33.569736, 33.183044, 25.411301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550602, 32.672474, 25.852522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.919731, 32.800102, 25.938860>,  <34.141209, 32.876678, 25.990662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.919731, 32.800102, 25.938860>,  <33.550602, 32.672474, 25.852522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919731, 32.800102, 25.938860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114798, -0.307066, 0.944739,
		0.367720, -0.896606, -0.246739,
		0.922823, 0.319074, 0.215843,
		34.196579, 32.895824, 26.003613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933300, 32.148048, 26.166222>,  <33.550602, 32.672474, 25.852522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933300, 32.148048, 26.166222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.142632, 32.466434, 26.287922>,  <34.268230, 32.657467, 26.360941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.142632, 32.466434, 26.287922>,  <33.933300, 32.148048, 26.166222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142632, 32.466434, 26.287922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072539, -0.397362, 0.914790,
		0.849037, -0.456668, -0.265690,
		0.523331, 0.795964, 0.304249,
		34.299629, 32.705223, 26.379196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572472, 31.882555, 26.612553>,  <33.933300, 32.148048, 26.166222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572472, 31.882555, 26.612553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.514034, 32.268276, 26.700893>,  <34.478970, 32.499710, 26.753899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.514034, 32.268276, 26.700893>,  <34.572472, 31.882555, 26.612553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514034, 32.268276, 26.700893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098660, -0.207931, 0.973155,
		0.984338, 0.163964, -0.064760,
		-0.146097, 0.964303, 0.220851,
		34.470203, 32.557568, 26.767149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133614, 32.070293, 27.101984>,  <34.572472, 31.882555, 26.612553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133614, 32.070293, 27.101984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.827400, 32.314438, 27.183384>,  <34.643673, 32.460926, 27.232224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.827400, 32.314438, 27.183384>,  <35.133614, 32.070293, 27.101984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827400, 32.314438, 27.183384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219572, -0.049456, 0.974342,
		0.604765, 0.790578, -0.096158,
		-0.765537, 0.610361, 0.203498,
		34.597740, 32.497547, 27.244434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462791, 32.615501, 27.478735>,  <35.133614, 32.070293, 27.101984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462791, 32.615501, 27.478735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.071579, 32.622169, 27.561859>,  <34.836853, 32.626171, 27.611732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.071579, 32.622169, 27.561859>,  <35.462791, 32.615501, 27.478735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071579, 32.622169, 27.561859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203786, -0.133819, 0.969827,
		0.043979, 0.990865, 0.127481,
		-0.978027, 0.016673, 0.207809,
		34.778172, 32.627171, 27.624203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448967, 32.859821, 28.192596>,  <35.462791, 32.615501, 27.478735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448967, 32.859821, 28.192596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.061432, 32.761993, 28.176922>,  <34.828911, 32.703297, 28.167517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.061432, 32.761993, 28.176922>,  <35.448967, 32.859821, 28.192596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061432, 32.761993, 28.176922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011734, -0.203346, 0.979037,
		-0.247407, 0.948071, 0.199880,
		-0.968841, -0.244566, -0.039184,
		34.770779, 32.688625, 28.165167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025002, 33.374474, 28.650152>,  <35.448967, 32.859821, 28.192596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025002, 33.374474, 28.650152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.842003, 33.023800, 28.590666>,  <34.732204, 32.813396, 28.554974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.842003, 33.023800, 28.590666>,  <35.025002, 33.374474, 28.650152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842003, 33.023800, 28.590666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066972, -0.200741, 0.977353,
		-0.886685, 0.437177, 0.150552,
		-0.457499, -0.876686, -0.148715,
		34.704754, 32.760796, 28.546051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446270, 33.380596, 29.135435>,  <35.025002, 33.374474, 28.650152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446270, 33.380596, 29.135435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.492031, 32.999912, 29.021479>,  <34.519485, 32.771503, 28.953104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.492031, 32.999912, 29.021479>,  <34.446270, 33.380596, 29.135435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492031, 32.999912, 29.021479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109593, -0.297116, 0.948531,
		-0.987371, -0.077290, -0.138290,
		0.114400, -0.951708, -0.284893,
		34.526352, 32.714401, 28.936010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833103, 32.967327, 29.379871>,  <34.446270, 33.380596, 29.135435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833103, 32.967327, 29.379871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.153545, 32.729244, 29.354704>,  <34.345810, 32.586395, 29.339603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.153545, 32.729244, 29.354704>,  <33.833103, 32.967327, 29.379871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153545, 32.729244, 29.354704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185962, -0.347445, 0.919076,
		-0.568899, -0.724578, -0.389026,
		0.801107, -0.595205, -0.062917,
		34.393879, 32.550682, 29.335829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716362, 32.296391, 29.770319>,  <33.833103, 32.967327, 29.379871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716362, 32.296391, 29.770319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.115768, 32.286423, 29.750942>,  <34.355412, 32.280441, 29.739315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.115768, 32.286423, 29.750942>,  <33.716362, 32.296391, 29.770319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115768, 32.286423, 29.750942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036228, -0.360359, 0.932110,
		-0.040684, -0.932481, -0.358921,
		0.998515, -0.024919, -0.048443,
		34.415321, 32.278946, 29.736410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917507, 31.600586, 29.947620>,  <33.716362, 32.296391, 29.770319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917507, 31.600586, 29.947620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.239258, 31.829071, 30.012978>,  <34.432308, 31.966162, 30.052193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.239258, 31.829071, 30.012978>,  <33.917507, 31.600586, 29.947620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239258, 31.829071, 30.012978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038700, -0.324806, 0.944988,
		0.592860, -0.753802, -0.283372,
		0.804375, 0.571212, 0.163393,
		34.480572, 32.000435, 30.061995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333313, 31.144804, 30.337059>,  <33.917507, 31.600586, 29.947620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333313, 31.144804, 30.337059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.472900, 31.515129, 30.395157>,  <34.556652, 31.737324, 30.430016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.472900, 31.515129, 30.395157>,  <34.333313, 31.144804, 30.337059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472900, 31.515129, 30.395157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107410, -0.193479, 0.975207,
		0.930959, -0.324714, -0.166959,
		0.348967, 0.925811, 0.145244,
		34.577591, 31.792873, 30.438730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829613, 30.987104, 30.768929>,  <34.333313, 31.144804, 30.337059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829613, 30.987104, 30.768929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.759907, 31.380112, 30.795134>,  <34.718082, 31.615915, 30.810856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.759907, 31.380112, 30.795134>,  <34.829613, 30.987104, 30.768929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759907, 31.380112, 30.795134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021739, -0.070353, 0.997285,
		0.984460, 0.172363, 0.033619,
		-0.174261, 0.982518, 0.065513,
		34.707630, 31.674868, 30.814787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479900, 30.986008, 30.764919>,  <34.829613, 30.987104, 30.768929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479900, 30.986008, 30.764919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.866264, 30.885483, 30.740053>,  <36.098083, 30.825169, 30.725134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.866264, 30.885483, 30.740053>,  <35.479900, 30.986008, 30.764919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866264, 30.885483, 30.740053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001368, 0.245068, -0.969505,
		0.258882, 0.936368, 0.237057,
		0.965908, -0.251311, -0.062163,
		36.156036, 30.810089, 30.721405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689713, 31.370914, 30.338322>,  <35.479900, 30.986008, 30.764919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689713, 31.370914, 30.338322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.979069, 31.096052, 30.311422>,  <36.152683, 30.931135, 30.295282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.979069, 31.096052, 30.311422>,  <35.689713, 31.370914, 30.338322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979069, 31.096052, 30.311422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015215, 0.113239, -0.993451,
		0.690272, 0.717629, 0.092371,
		0.723390, -0.687157, -0.067247,
		36.196087, 30.889904, 30.291248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197361, 31.613451, 29.804626>,  <35.689713, 31.370914, 30.338322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197361, 31.613451, 29.804626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.259281, 31.219259, 29.832529>,  <36.296432, 30.982744, 29.849270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.259281, 31.219259, 29.832529>,  <36.197361, 31.613451, 29.804626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259281, 31.219259, 29.832529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086940, -0.083920, -0.992673,
		0.984113, 0.147599, -0.098669,
		0.154798, -0.985481, 0.069755,
		36.305721, 30.923615, 29.853455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637806, 31.521381, 29.226103>,  <36.197361, 31.613451, 29.804626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637806, 31.521381, 29.226103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.537045, 31.139317, 29.288334>,  <36.476585, 30.910078, 29.325672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.537045, 31.139317, 29.288334>,  <36.637806, 31.521381, 29.226103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537045, 31.139317, 29.288334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056650, -0.175038, -0.982930,
		0.966092, -0.238794, 0.098204,
		-0.251907, -0.955164, 0.155575,
		36.461472, 30.852768, 29.335007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221901, 31.023655, 28.943945>,  <36.637806, 31.521381, 29.226103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221901, 31.023655, 28.943945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.877857, 30.821810, 28.973812>,  <36.671432, 30.700703, 28.991732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.877857, 30.821810, 28.973812>,  <37.221901, 31.023655, 28.943945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877857, 30.821810, 28.973812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120065, -0.342531, -0.931803,
		0.495776, -0.792488, 0.355201,
		-0.860111, -0.504613, 0.074668,
		36.619823, 30.670425, 28.996212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279610, 30.426783, 28.538483>,  <37.221901, 31.023655, 28.943945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279610, 30.426783, 28.538483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.888592, 30.502108, 28.576332>,  <36.653980, 30.547302, 28.599041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.888592, 30.502108, 28.576332>,  <37.279610, 30.426783, 28.538483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888592, 30.502108, 28.576332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123197, -0.146316, -0.981537,
		-0.171004, -0.971146, 0.166230,
		-0.977538, 0.188326, 0.094622,
		36.595329, 30.558601, 28.604719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019978, 29.882328, 28.195484>,  <37.279610, 30.426783, 28.538483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019978, 29.882328, 28.195484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.746758, 30.173492, 28.219465>,  <36.582825, 30.348190, 28.233854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.746758, 30.173492, 28.219465>,  <37.019978, 29.882328, 28.195484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746758, 30.173492, 28.219465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131263, -0.041592, -0.990475,
		-0.718483, -0.684409, 0.123957,
		-0.683046, 0.727911, 0.059954,
		36.541843, 30.391865, 28.237452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562782, 29.755421, 27.684494>,  <37.019978, 29.882328, 28.195484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562782, 29.755421, 27.684494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.456985, 30.132555, 27.765594>,  <36.393509, 30.358835, 27.814255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.456985, 30.132555, 27.765594>,  <36.562782, 29.755421, 27.684494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456985, 30.132555, 27.765594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260113, 0.132704, -0.956416,
		-0.928648, -0.305699, 0.210145,
		-0.264488, 0.942835, 0.202752,
		36.377640, 30.415405, 27.826420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852909, 29.849960, 27.424021>,  <36.562782, 29.755421, 27.684494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852909, 29.849960, 27.424021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.032383, 30.207243, 27.435749>,  <36.140068, 30.421614, 27.442785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.032383, 30.207243, 27.435749>,  <35.852909, 29.849960, 27.424021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032383, 30.207243, 27.435749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125351, 0.095385, -0.987517,
		-0.884855, 0.439410, 0.154763,
		0.448686, 0.893208, 0.029321,
		36.166988, 30.475206, 27.444546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585052, 30.185032, 26.892929>,  <35.852909, 29.849960, 27.424021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585052, 30.185032, 26.892929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.916756, 30.388115, 26.986372>,  <36.115776, 30.509964, 27.042439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.916756, 30.388115, 26.986372>,  <35.585052, 30.185032, 26.892929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916756, 30.388115, 26.986372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027337, 0.380650, -0.924315,
		-0.558203, 0.772878, 0.301777,
		0.829254, 0.507706, 0.233608,
		36.165531, 30.540426, 27.056454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478680, 30.833002, 26.560308>,  <35.585052, 30.185032, 26.892929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478680, 30.833002, 26.560308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.870659, 30.773226, 26.613029>,  <36.105846, 30.737360, 26.644663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.870659, 30.773226, 26.613029>,  <35.478680, 30.833002, 26.560308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870659, 30.773226, 26.613029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172955, 0.309454, -0.935053,
		0.098946, 0.939099, 0.329095,
		0.979947, -0.149439, 0.131803,
		36.164642, 30.728394, 26.652571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720657, 31.423939, 26.291796>,  <35.478680, 30.833002, 26.560308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720657, 31.423939, 26.291796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.054733, 31.204136, 26.300711>,  <36.255180, 31.072254, 26.306059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.054733, 31.204136, 26.300711>,  <35.720657, 31.423939, 26.291796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054733, 31.204136, 26.300711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254405, 0.350107, -0.901501,
		0.487578, 0.758596, 0.432204,
		0.835192, -0.549506, 0.022287,
		36.305290, 31.039284, 26.307396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324738, 31.802782, 26.239155>,  <35.720657, 31.423939, 26.291796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324738, 31.802782, 26.239155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.436466, 31.440742, 26.110918>,  <36.503502, 31.223518, 26.033976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.436466, 31.440742, 26.110918>,  <36.324738, 31.802782, 26.239155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436466, 31.440742, 26.110918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344985, 0.406181, -0.846169,
		0.896084, 0.125751, 0.425699,
		0.279317, -0.905099, -0.320590,
		36.520260, 31.169212, 26.014742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987911, 32.008190, 25.898296>,  <36.324738, 31.802782, 26.239155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987911, 32.008190, 25.898296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.873779, 31.637712, 25.799707>,  <36.805302, 31.415426, 25.740555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.873779, 31.637712, 25.799707>,  <36.987911, 32.008190, 25.898296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873779, 31.637712, 25.799707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201983, 0.193276, -0.960129,
		0.936904, -0.323736, 0.131929,
		-0.285329, -0.926196, -0.246470,
		36.788181, 31.359854, 25.725767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720295, 31.715725, 25.972708>,  <36.987911, 32.008190, 25.898296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720295, 31.715725, 25.972708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.110645, 31.801443, 25.989405>,  <38.344856, 31.852875, 25.999422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.110645, 31.801443, 25.989405>,  <37.720295, 31.715725, 25.972708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110645, 31.801443, 25.989405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043746, -0.379237, 0.924265,
		0.213897, -0.900142, -0.379463,
		0.975876, 0.214298, 0.041740,
		38.403408, 31.865732, 26.001926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905003, 31.253864, 26.524582>,  <37.720295, 31.715725, 25.972708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905003, 31.253864, 26.524582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.233372, 31.476683, 26.474327>,  <38.430393, 31.610373, 26.444174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.233372, 31.476683, 26.474327>,  <37.905003, 31.253864, 26.524582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233372, 31.476683, 26.474327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265213, -0.177080, 0.947789,
		0.505712, -0.811384, -0.293105,
		0.820925, 0.557044, -0.125638,
		38.479649, 31.643795, 26.436636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542084, 30.890781, 26.871437>,  <37.905003, 31.253864, 26.524582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542084, 30.890781, 26.871437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633343, 31.278318, 26.832884>,  <38.688099, 31.510841, 26.809752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633343, 31.278318, 26.832884>,  <38.542084, 30.890781, 26.871437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633343, 31.278318, 26.832884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320010, 0.018875, 0.947226,
		0.919534, -0.246949, -0.305734,
		0.228146, 0.968845, -0.096383,
		38.701786, 31.568972, 26.803968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166725, 30.867050, 26.938862>,  <38.542084, 30.890781, 26.871437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166725, 30.867050, 26.938862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.027824, 31.229631, 27.034996>,  <38.944485, 31.447180, 27.092676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.027824, 31.229631, 27.034996>,  <39.166725, 30.867050, 26.938862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027824, 31.229631, 27.034996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445421, -0.066099, 0.892878,
		0.825236, 0.417106, -0.380799,
		-0.347254, 0.906451, 0.240335,
		38.923649, 31.501566, 27.107096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757359, 31.321579, 27.158489>,  <39.166725, 30.867050, 26.938862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757359, 31.321579, 27.158489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.421303, 31.465149, 27.321135>,  <39.219669, 31.551291, 27.418722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.421303, 31.465149, 27.321135>,  <39.757359, 31.321579, 27.158489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421303, 31.465149, 27.321135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468557, 0.102733, 0.877440,
		0.273162, 0.927696, -0.254487,
		-0.840141, 0.358924, 0.406615,
		39.169262, 31.572826, 27.443119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958866, 31.907351, 27.584888>,  <39.757359, 31.321579, 27.158489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958866, 31.907351, 27.584888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.594406, 31.850660, 27.739660>,  <39.375729, 31.816647, 27.832523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.594406, 31.850660, 27.739660>,  <39.958866, 31.907351, 27.584888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594406, 31.850660, 27.739660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339341, 0.274625, 0.899683,
		-0.233769, 0.951049, -0.202132,
		-0.911153, -0.141727, 0.386929,
		39.321060, 31.808142, 27.855740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041603, 32.324909, 28.155373>,  <39.958866, 31.907351, 27.584888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041603, 32.324909, 28.155373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725521, 32.084904, 28.205271>,  <39.535873, 31.940901, 28.235210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725521, 32.084904, 28.205271>,  <40.041603, 32.324909, 28.155373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725521, 32.084904, 28.205271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088468, 0.089737, 0.992029,
		-0.606423, 0.794942, -0.017829,
		-0.790205, -0.600012, 0.124746,
		39.488461, 31.904900, 28.242695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601143, 32.652332, 28.604372>,  <40.041603, 32.324909, 28.155373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601143, 32.652332, 28.604372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.521866, 32.261009, 28.628475>,  <39.474300, 32.026215, 28.642937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.521866, 32.261009, 28.628475>,  <39.601143, 32.652332, 28.604372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521866, 32.261009, 28.628475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000282, 0.061537, 0.998105,
		-0.980163, 0.197802, -0.012472,
		-0.198195, -0.978308, 0.060260,
		39.462406, 31.967516, 28.646553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964100, 32.627018, 28.996479>,  <39.601143, 32.652332, 28.604372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964100, 32.627018, 28.996479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.185120, 32.296371, 29.039186>,  <39.317730, 32.097984, 29.064812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.185120, 32.296371, 29.039186>,  <38.964100, 32.627018, 28.996479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185120, 32.296371, 29.039186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068115, 0.172454, 0.982660,
		-0.830695, -0.535691, 0.151594,
		0.552545, -0.826616, 0.106768,
		39.350883, 32.048386, 29.071217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768616, 32.323490, 29.501711>,  <38.964100, 32.627018, 28.996479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768616, 32.323490, 29.501711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.121048, 32.134666, 29.490013>,  <39.332508, 32.021374, 29.482994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.121048, 32.134666, 29.490013>,  <38.768616, 32.323490, 29.501711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121048, 32.134666, 29.490013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026061, -0.013282, 0.999572,
		-0.472245, -0.881467, 0.000600,
		0.881082, -0.472058, -0.029244,
		39.385372, 31.993050, 29.481239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743214, 31.713783, 29.980921>,  <38.768616, 32.323490, 29.501711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743214, 31.713783, 29.980921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.129833, 31.814112, 29.959501>,  <39.361805, 31.874310, 29.946650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.129833, 31.814112, 29.959501>,  <38.743214, 31.713783, 29.980921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129833, 31.814112, 29.959501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106262, -0.201608, 0.973685,
		0.233427, -0.946806, -0.221517,
		0.966551, 0.250824, -0.053549,
		39.419800, 31.889359, 29.943436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122467, 31.241854, 30.339058>,  <38.743214, 31.713783, 29.980921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122467, 31.241854, 30.339058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.391891, 31.536839, 30.319197>,  <39.553547, 31.713829, 30.307280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.391891, 31.536839, 30.319197>,  <39.122467, 31.241854, 30.339058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391891, 31.536839, 30.319197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258346, -0.171953, 0.950626,
		0.692513, -0.653131, -0.306341,
		0.673559, 0.737463, -0.049655,
		39.593960, 31.758078, 30.304300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732079, 30.982069, 30.567713>,  <39.122467, 31.241854, 30.339058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732079, 30.982069, 30.567713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.831535, 31.367172, 30.610184>,  <39.891209, 31.598234, 30.635666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.831535, 31.367172, 30.610184>,  <39.732079, 30.982069, 30.567713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831535, 31.367172, 30.610184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446718, -0.211248, 0.869378,
		0.859431, -0.168730, -0.482606,
		0.248640, 0.962759, 0.106179,
		39.906128, 31.656000, 30.642036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336452, 30.960325, 30.882343>,  <39.732079, 30.982069, 30.567713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336452, 30.960325, 30.882343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.234325, 31.344395, 30.927742>,  <40.173050, 31.574837, 30.954981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.234325, 31.344395, 30.927742>,  <40.336452, 30.960325, 30.882343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234325, 31.344395, 30.927742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437055, 0.009906, 0.899380,
		0.862435, 0.279236, -0.422177,
		-0.255321, 0.960172, 0.113498,
		40.157730, 31.632446, 30.961792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.679443, 33.422817, 26.415562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.331539, 33.610527, 26.354511>,  <42.122795, 33.723152, 26.317881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.331539, 33.610527, 26.354511>,  <42.679443, 33.422817, 26.415562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331539, 33.610527, 26.354511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104678, -0.126801, -0.986390,
		-0.482243, -0.873900, 0.061164,
		-0.869761, 0.469277, -0.152627,
		42.070610, 33.751308, 26.308723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271252, 32.904423, 26.021561>,  <42.679443, 33.422817, 26.415562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271252, 32.904423, 26.021561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.139210, 33.274696, 25.947659>,  <42.059986, 33.496861, 25.903316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.139210, 33.274696, 25.947659>,  <42.271252, 32.904423, 26.021561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139210, 33.274696, 25.947659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150223, -0.141714, -0.978443,
		-0.931915, -0.350740, -0.092280,
		-0.330101, 0.925689, -0.184755,
		42.040180, 33.552402, 25.892233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818729, 32.828644, 25.501667>,  <42.271252, 32.904423, 26.021561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818729, 32.828644, 25.501667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.861881, 33.224873, 25.467911>,  <41.887772, 33.462612, 25.447657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.861881, 33.224873, 25.467911>,  <41.818729, 32.828644, 25.501667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861881, 33.224873, 25.467911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022666, -0.082414, -0.996340,
		-0.993906, 0.109397, 0.013562,
		0.107879, 0.990576, -0.084391,
		41.894245, 33.522045, 25.442593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402824, 33.066631, 24.962370>,  <41.818729, 32.828644, 25.501667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402824, 33.066631, 24.962370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.646858, 33.382996, 24.981386>,  <41.793278, 33.572815, 24.992796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.646858, 33.382996, 24.981386>,  <41.402824, 33.066631, 24.962370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646858, 33.382996, 24.981386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071923, 0.115031, -0.990755,
		-0.789063, 0.601028, 0.127064,
		0.610087, 0.790907, 0.047539,
		41.829884, 33.620266, 24.995647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962372, 33.618710, 24.632732>,  <41.402824, 33.066631, 24.962370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962372, 33.618710, 24.632732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.345951, 33.730747, 24.650475>,  <41.576099, 33.797970, 24.661119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.345951, 33.730747, 24.650475>,  <40.962372, 33.618710, 24.632732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345951, 33.730747, 24.650475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032909, 0.265254, -0.963617,
		-0.281673, 0.922597, 0.263582,
		0.958946, 0.280099, 0.044353,
		41.633636, 33.814777, 24.663780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968384, 34.165382, 24.238258>,  <40.962372, 33.618710, 24.632732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968384, 34.165382, 24.238258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.354462, 34.064220, 24.264912>,  <41.586109, 34.003525, 24.280903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.354462, 34.064220, 24.264912>,  <40.968384, 34.165382, 24.238258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354462, 34.064220, 24.264912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099536, 0.119619, -0.987818,
		0.241854, 0.960068, 0.140628,
		0.965194, -0.252906, 0.066631,
		41.644020, 33.988350, 24.284901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321640, 34.733131, 23.904854>,  <40.968384, 34.165382, 24.238258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321640, 34.733131, 23.904854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.573235, 34.422256, 23.912363>,  <41.724190, 34.235729, 23.916868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.573235, 34.422256, 23.912363>,  <41.321640, 34.733131, 23.904854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573235, 34.422256, 23.912363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249720, 0.179112, -0.951609,
		0.736217, 0.603238, 0.306739,
		0.628987, -0.777189, 0.018775,
		41.761932, 34.189098, 23.917995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894245, 34.960999, 23.585546>,  <41.321640, 34.733131, 23.904854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894245, 34.960999, 23.585546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.915134, 34.562031, 23.565802>,  <41.927666, 34.322651, 23.553955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.915134, 34.562031, 23.565802>,  <41.894245, 34.960999, 23.585546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915134, 34.562031, 23.565802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208107, 0.059215, -0.976312,
		0.976711, 0.040710, 0.210661,
		0.052220, -0.997415, -0.049364,
		41.930801, 34.262806, 23.550993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539028, 34.833836, 23.323225>,  <41.894245, 34.960999, 23.585546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539028, 34.833836, 23.323225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.313419, 34.514385, 23.239244>,  <42.178055, 34.322716, 23.188856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.313419, 34.514385, 23.239244>,  <42.539028, 34.833836, 23.323225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313419, 34.514385, 23.239244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254545, 0.073723, -0.964247,
		0.785551, -0.597294, 0.161705,
		-0.564018, -0.798627, -0.209951,
		42.144215, 34.274796, 23.176260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949051, 34.330780, 22.955406>,  <42.539028, 34.833836, 23.323225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949051, 34.330780, 22.955406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.567898, 34.240814, 22.873985>,  <42.339207, 34.186832, 22.825132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.567898, 34.240814, 22.873985>,  <42.949051, 34.330780, 22.955406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567898, 34.240814, 22.873985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205529, 0.014855, -0.978538,
		0.223116, -0.974264, 0.032072,
		-0.952878, -0.224920, -0.203554,
		42.282036, 34.173340, 22.812920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028328, 33.948120, 22.332016>,  <42.949051, 34.330780, 22.955406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028328, 33.948120, 22.332016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.634441, 34.008873, 22.366087>,  <42.398109, 34.045326, 22.386530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.634441, 34.008873, 22.366087>,  <43.028328, 33.948120, 22.332016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634441, 34.008873, 22.366087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076502, 0.062094, -0.995134,
		-0.156434, -0.986446, -0.049525,
		-0.984721, 0.151884, 0.085179,
		42.339024, 34.054440, 22.391642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683376, 33.366440, 21.983181>,  <43.028328, 33.948120, 22.332016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683376, 33.366440, 21.983181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.442688, 33.685890, 21.978762>,  <42.298275, 33.877560, 21.976110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.442688, 33.685890, 21.978762>,  <42.683376, 33.366440, 21.983181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442688, 33.685890, 21.978762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076150, -0.071133, -0.994556,
		-0.795066, -0.597606, 0.103618,
		-0.601724, 0.798628, -0.011048,
		42.262173, 33.925480, 21.975447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979336, 33.301014, 21.586433>,  <42.683376, 33.366440, 21.983181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979336, 33.301014, 21.586433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.092636, 33.684513, 21.596066>,  <42.160618, 33.914612, 21.601845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.092636, 33.684513, 21.596066>,  <41.979336, 33.301014, 21.586433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092636, 33.684513, 21.596066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204693, 0.084968, -0.975132,
		-0.936947, 0.271277, 0.220315,
		0.283251, 0.958743, 0.024082,
		42.177612, 33.972137, 21.603291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559174, 33.265686, 21.038431>,  <41.979336, 33.301014, 21.586433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559174, 33.265686, 21.038431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.796066, 32.948425, 20.981619>,  <41.938202, 32.758068, 20.947531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.796066, 32.948425, 20.981619>,  <41.559174, 33.265686, 21.038431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796066, 32.948425, 20.981619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805186, -0.589223, -0.067021,
		-0.030530, 0.154054, -0.987591,
		0.592236, -0.793148, -0.142032,
		41.973736, 32.710480, 20.939009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995834, 32.873856, 20.794365>,  <41.559174, 33.265686, 21.038431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995834, 32.873856, 20.794365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.811356, 32.519802, 20.769602>,  <40.700668, 32.307369, 20.754744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.811356, 32.519802, 20.769602>,  <40.995834, 32.873856, 20.794365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811356, 32.519802, 20.769602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446223, 0.171064, 0.878420,
		-0.766931, 0.432749, -0.473862,
		-0.461196, -0.885136, -0.061908,
		40.672997, 32.254261, 20.751030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396736, 32.999352, 21.049845>,  <40.995834, 32.873856, 20.794365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396736, 32.999352, 21.049845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.419521, 32.600590, 21.071510>,  <40.433193, 32.361332, 21.084509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.419521, 32.600590, 21.071510>,  <40.396736, 32.999352, 21.049845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419521, 32.600590, 21.071510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448781, 0.022894, 0.893349,
		-0.891825, -0.075191, -0.446089,
		0.056959, -0.996906, 0.054162,
		40.436607, 32.301517, 21.087759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729027, 32.728840, 21.257908>,  <40.396736, 32.999352, 21.049845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729027, 32.728840, 21.257908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.993332, 32.444569, 21.354513>,  <40.151913, 32.274006, 21.412476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.993332, 32.444569, 21.354513>,  <39.729027, 32.728840, 21.257908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993332, 32.444569, 21.354513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442284, -0.108672, 0.890267,
		-0.606450, -0.695070, -0.386129,
		0.660760, -0.710681, 0.241514,
		40.191559, 32.231365, 21.426968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362858, 32.126152, 21.369642>,  <39.729027, 32.728840, 21.257908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362858, 32.126152, 21.369642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.705570, 32.088684, 21.572485>,  <39.911198, 32.066204, 21.694191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.705570, 32.088684, 21.572485>,  <39.362858, 32.126152, 21.369642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705570, 32.088684, 21.572485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515628, -0.170494, 0.839678,
		0.007803, -0.980896, -0.194376,
		0.856777, -0.093673, 0.507108,
		39.962605, 32.060581, 21.724617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220493, 31.655479, 21.916199>,  <39.362858, 32.126152, 21.369642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220493, 31.655479, 21.916199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.550228, 31.847952, 22.035486>,  <39.748070, 31.963436, 22.107058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.550228, 31.847952, 22.035486>,  <39.220493, 31.655479, 21.916199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550228, 31.847952, 22.035486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291991, -0.089902, 0.952187,
		0.484986, -0.871998, 0.066391,
		0.824337, 0.481182, 0.298216,
		39.797527, 31.992306, 22.124950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378998, 31.318211, 22.534048>,  <39.220493, 31.655479, 21.916199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378998, 31.318211, 22.534048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.585236, 31.658669, 22.573473>,  <39.708977, 31.862944, 22.597128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.585236, 31.658669, 22.573473>,  <39.378998, 31.318211, 22.534048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585236, 31.658669, 22.573473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130067, -0.035949, 0.990853,
		0.846904, -0.523696, 0.092171,
		0.515593, 0.851146, 0.098561,
		39.739914, 31.914013, 22.603041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681095, 31.203508, 23.150518>,  <39.378998, 31.318211, 22.534048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681095, 31.203508, 23.150518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.713413, 31.599211, 23.101782>,  <39.732803, 31.836632, 23.072540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.713413, 31.599211, 23.101782>,  <39.681095, 31.203508, 23.150518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713413, 31.599211, 23.101782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182914, 0.134882, 0.973832,
		0.979803, -0.056397, 0.191847,
		0.080798, 0.989255, -0.121842,
		39.737652, 31.895987, 23.065229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152397, 31.409172, 23.656012>,  <39.681095, 31.203508, 23.150518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152397, 31.409172, 23.656012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.930447, 31.727243, 23.558197>,  <39.797276, 31.918087, 23.499508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.930447, 31.727243, 23.558197>,  <40.152397, 31.409172, 23.656012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930447, 31.727243, 23.558197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199262, 0.158353, 0.967067,
		0.807716, 0.585332, 0.070582,
		-0.554878, 0.795180, -0.244539,
		39.763985, 31.965797, 23.484835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226437, 31.866280, 24.270330>,  <40.152397, 31.409172, 23.656012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226437, 31.866280, 24.270330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.916935, 32.015175, 24.065298>,  <39.731232, 32.104511, 23.942278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.916935, 32.015175, 24.065298>,  <40.226437, 31.866280, 24.270330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916935, 32.015175, 24.065298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450700, 0.245128, 0.858360,
		0.445164, 0.895181, -0.021901,
		-0.773756, 0.372240, -0.512581,
		39.684807, 32.126846, 23.911524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076775, 32.593552, 24.556477>,  <40.226437, 31.866280, 24.270330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076775, 32.593552, 24.556477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.730427, 32.467899, 24.400734>,  <39.522617, 32.392509, 24.307289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.730427, 32.467899, 24.400734>,  <40.076775, 32.593552, 24.556477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730427, 32.467899, 24.400734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418635, 0.028866, 0.907696,
		-0.273892, 0.948942, -0.156498,
		-0.865868, -0.314126, -0.389355,
		39.470665, 32.373661, 24.283928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519356, 33.048107, 24.931440>,  <40.076775, 32.593552, 24.556477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519356, 33.048107, 24.931440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.319042, 32.728127, 24.799204>,  <39.198853, 32.536137, 24.719862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.319042, 32.728127, 24.799204>,  <39.519356, 33.048107, 24.931440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319042, 32.728127, 24.799204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451582, -0.084378, 0.888231,
		-0.738438, 0.594100, -0.318990,
		-0.500783, -0.799953, -0.330593,
		39.168808, 32.488140, 24.700026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913124, 33.056828, 25.309223>,  <39.519356, 33.048107, 24.931440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913124, 33.056828, 25.309223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.896965, 32.686543, 25.158798>,  <38.887272, 32.464371, 25.068542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.896965, 32.686543, 25.158798>,  <38.913124, 33.056828, 25.309223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896965, 32.686543, 25.158798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382821, -0.333311, 0.861599,
		-0.922939, 0.178768, -0.340919,
		-0.040395, -0.925714, -0.376062,
		38.884846, 32.408829, 25.045980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205238, 32.820091, 25.348267>,  <38.913124, 33.056828, 25.309223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205238, 32.820091, 25.348267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.434685, 32.492584, 25.338646>,  <38.572353, 32.296078, 25.332874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.434685, 32.492584, 25.338646>,  <38.205238, 32.820091, 25.348267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434685, 32.492584, 25.338646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375975, -0.289262, 0.880324,
		-0.727740, -0.495927, -0.473763,
		0.573618, -0.818770, -0.024052,
		38.606770, 32.246952, 25.331430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770195, 32.374744, 25.664312>,  <38.205238, 32.820091, 25.348267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770195, 32.374744, 25.664312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.139385, 32.221512, 25.679096>,  <38.360901, 32.129574, 25.687965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.139385, 32.221512, 25.679096>,  <37.770195, 32.374744, 25.664312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139385, 32.221512, 25.679096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243528, -0.506975, 0.826844,
		-0.298010, -0.772157, -0.561217,
		0.922976, -0.383079, 0.036958,
		38.416279, 32.106586, 25.690184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353737, 31.927002, 25.185682>,  <37.770195, 32.374744, 25.664312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353737, 31.927002, 25.185682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.158199, 31.583397, 25.246511>,  <37.040874, 31.377234, 25.283009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.158199, 31.583397, 25.246511>,  <37.353737, 31.927002, 25.185682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158199, 31.583397, 25.246511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068138, -0.136190, -0.988337,
		0.869705, -0.493507, 0.008045,
		-0.488846, -0.859013, 0.152072,
		37.011547, 31.325693, 25.292133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758015, 31.285023, 24.974314>,  <37.353737, 31.927002, 25.185682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758015, 31.285023, 24.974314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.361614, 31.284082, 24.920769>,  <37.123775, 31.283518, 24.888641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.361614, 31.284082, 24.920769>,  <37.758015, 31.285023, 24.974314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361614, 31.284082, 24.920769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133193, 0.083951, -0.987528,
		0.013557, -0.996467, -0.082882,
		-0.990997, -0.002349, -0.133861,
		37.064316, 31.283377, 24.880611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766762, 30.744081, 24.307316>,  <37.758015, 31.285023, 24.974314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766762, 30.744081, 24.307316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429810, 30.956144, 24.345949>,  <37.227638, 31.083382, 24.369129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429810, 30.956144, 24.345949>,  <37.766762, 30.744081, 24.307316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429810, 30.956144, 24.345949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071083, 0.068346, -0.995126,
		-0.534175, -0.845140, -0.019888,
		-0.842380, 0.530158, 0.096583,
		37.177097, 31.115192, 24.374924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256279, 30.441938, 23.753275>,  <37.766762, 30.744081, 24.307316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256279, 30.441938, 23.753275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.119091, 30.802443, 23.859180>,  <37.036777, 31.018745, 23.922724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.119091, 30.802443, 23.859180>,  <37.256279, 30.441938, 23.753275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119091, 30.802443, 23.859180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162661, 0.220619, -0.961701,
		-0.925156, -0.372900, 0.070935,
		-0.342969, 0.901262, 0.264763,
		37.016201, 31.072821, 23.938610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670467, 30.494019, 23.364782>,  <37.256279, 30.441938, 23.753275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670467, 30.494019, 23.364782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.769367, 30.867764, 23.467419>,  <36.828705, 31.092010, 23.529001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.769367, 30.867764, 23.467419>,  <36.670467, 30.494019, 23.364782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769367, 30.867764, 23.467419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104615, 0.289005, -0.951594,
		-0.963289, 0.208434, 0.169204,
		0.247245, 0.934361, 0.256590,
		36.843540, 31.148071, 23.544395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244972, 30.866102, 23.011280>,  <36.670467, 30.494019, 23.364782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244972, 30.866102, 23.011280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.543694, 31.123859, 23.077057>,  <36.722927, 31.278513, 23.116524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.543694, 31.123859, 23.077057>,  <36.244972, 30.866102, 23.011280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543694, 31.123859, 23.077057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017960, 0.266718, -0.963607,
		-0.664800, 0.716674, 0.210760,
		0.746806, 0.644391, 0.164443,
		36.767735, 31.317177, 23.126390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074303, 31.435270, 22.642828>,  <36.244972, 30.866102, 23.011280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074303, 31.435270, 22.642828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.468056, 31.478109, 22.698725>,  <36.704308, 31.503813, 22.732262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.468056, 31.478109, 22.698725>,  <36.074303, 31.435270, 22.642828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468056, 31.478109, 22.698725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118341, 0.185178, -0.975553,
		-0.130354, 0.976852, 0.169612,
		0.984380, 0.107096, 0.139741,
		36.763371, 31.510239, 22.740646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046856, 32.208138, 22.877102>,  <36.074303, 31.435270, 22.642828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046856, 32.208138, 22.877102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.859364, 32.556896, 22.933796>,  <35.746868, 32.766151, 22.967812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.859364, 32.556896, 22.933796>,  <36.046856, 32.208138, 22.877102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859364, 32.556896, 22.933796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273806, -0.295957, 0.915117,
		0.839836, 0.390134, 0.377454,
		-0.468728, 0.871898, 0.141734,
		35.718746, 32.818466, 22.976316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265285, 32.489178, 23.529825>,  <36.046856, 32.208138, 22.877102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265285, 32.489178, 23.529825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.918793, 32.666702, 23.438026>,  <35.710896, 32.773216, 23.382948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.918793, 32.666702, 23.438026>,  <36.265285, 32.489178, 23.529825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918793, 32.666702, 23.438026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306345, -0.108917, 0.945669,
		0.394707, 0.889475, 0.230308,
		-0.866233, 0.443815, -0.229496,
		35.658924, 32.799847, 23.369177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181568, 32.840450, 24.187279>,  <36.265285, 32.489178, 23.529825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181568, 32.840450, 24.187279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.821693, 32.864738, 24.014362>,  <35.605770, 32.879311, 23.910612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.821693, 32.864738, 24.014362>,  <36.181568, 32.840450, 24.187279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821693, 32.864738, 24.014362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431102, 0.032173, 0.901729,
		0.068662, 0.997636, -0.002769,
		-0.899687, 0.060721, -0.432292,
		35.551788, 32.882954, 23.884674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843189, 33.421951, 24.497141>,  <36.181568, 32.840450, 24.187279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843189, 33.421951, 24.497141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552376, 33.184502, 24.359137>,  <35.377888, 33.042030, 24.276335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552376, 33.184502, 24.359137>,  <35.843189, 33.421951, 24.497141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552376, 33.184502, 24.359137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476839, 0.074999, 0.875785,
		-0.494016, 0.801237, -0.337591,
		-0.727030, -0.593628, -0.345011,
		35.334267, 33.006413, 24.255634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279064, 33.806232, 24.599859>,  <35.843189, 33.421951, 24.497141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279064, 33.806232, 24.599859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.171455, 33.421673, 24.576763>,  <35.106888, 33.190937, 24.562906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.171455, 33.421673, 24.576763>,  <35.279064, 33.806232, 24.599859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171455, 33.421673, 24.576763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590666, 0.117338, 0.798339,
		-0.760748, 0.248879, -0.599434,
		-0.269026, -0.961400, -0.057740,
		35.090748, 33.133251, 24.559441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535233, 33.779671, 24.505955>,  <35.279064, 33.806232, 24.599859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535233, 33.779671, 24.505955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.647930, 33.425938, 24.654860>,  <34.715549, 33.213699, 24.744202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.647930, 33.425938, 24.654860>,  <34.535233, 33.779671, 24.505955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647930, 33.425938, 24.654860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536324, 0.176558, 0.825339,
		-0.795599, -0.432186, -0.424544,
		0.281743, -0.884332, 0.372260,
		34.732452, 33.160637, 24.766539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043175, 33.674488, 24.954788>,  <34.535233, 33.779671, 24.505955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043175, 33.674488, 24.954788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.316978, 33.416332, 25.090382>,  <34.481262, 33.261436, 25.171738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.316978, 33.416332, 25.090382>,  <34.043175, 33.674488, 24.954788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316978, 33.416332, 25.090382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462229, -0.024665, 0.886417,
		-0.563726, -0.763453, -0.315203,
		0.684513, -0.645392, 0.338986,
		34.522331, 33.222713, 25.192078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.271713, 36.117943, 21.324654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.502930, 35.793762, 21.362682>,  <39.641659, 35.599255, 21.385500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.502930, 35.793762, 21.362682>,  <39.271713, 36.117943, 21.324654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502930, 35.793762, 21.362682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019226, 0.102947, 0.994501,
		-0.815780, -0.576691, 0.043927,
		0.578042, -0.810450, 0.095070,
		39.676342, 35.550629, 21.391203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813133, 35.548710, 21.635141>,  <39.271713, 36.117943, 21.324654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813133, 35.548710, 21.635141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.206020, 35.587166, 21.699656>,  <39.441753, 35.610241, 21.738363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.206020, 35.587166, 21.699656>,  <38.813133, 35.548710, 21.635141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206020, 35.587166, 21.699656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164712, 0.028790, 0.985921,
		0.090150, -0.994951, 0.044115,
		0.982213, 0.096147, 0.161285,
		39.500683, 35.616009, 21.748041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926094, 34.965527, 22.086294>,  <38.813133, 35.548710, 21.635141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926094, 34.965527, 22.086294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.216148, 35.238960, 22.119499>,  <39.390182, 35.403019, 22.139421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.216148, 35.238960, 22.119499>,  <38.926094, 34.965527, 22.086294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216148, 35.238960, 22.119499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092173, -0.023113, 0.995475,
		0.682407, -0.729508, 0.046248,
		0.725137, 0.683582, 0.083013,
		39.433689, 35.444035, 22.144403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302734, 34.820793, 22.621361>,  <38.926094, 34.965527, 22.086294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302734, 34.820793, 22.621361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.467396, 35.185116, 22.608877>,  <39.566193, 35.403709, 22.601387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.467396, 35.185116, 22.608877>,  <39.302734, 34.820793, 22.621361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467396, 35.185116, 22.608877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129245, -0.024446, 0.991311,
		0.902130, -0.412108, -0.127780,
		0.411651, 0.910807, -0.031209,
		39.590893, 35.458359, 22.599514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953239, 34.827530, 22.897253>,  <39.302734, 34.820793, 22.621361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953239, 34.827530, 22.897253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.811218, 35.198788, 22.941948>,  <39.726006, 35.421543, 22.968765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.811218, 35.198788, 22.941948>,  <39.953239, 34.827530, 22.897253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811218, 35.198788, 22.941948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215588, -0.035009, 0.975857,
		0.909647, 0.370573, -0.187667,
		-0.355056, 0.928143, 0.111737,
		39.704700, 35.477230, 22.975470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460686, 35.133347, 23.441393>,  <39.953239, 34.827530, 22.897253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460686, 35.133347, 23.441393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.160831, 35.396263, 23.410391>,  <39.980919, 35.554012, 23.391788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.160831, 35.396263, 23.410391>,  <40.460686, 35.133347, 23.441393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160831, 35.396263, 23.410391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126300, -0.027115, 0.991621,
		0.649683, 0.753149, 0.103343,
		-0.749640, 0.657292, -0.077507,
		39.935940, 35.593452, 23.387138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592400, 35.494453, 24.060394>,  <40.460686, 35.133347, 23.441393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592400, 35.494453, 24.060394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.239220, 35.628181, 23.928558>,  <40.027313, 35.708420, 23.849457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.239220, 35.628181, 23.928558>,  <40.592400, 35.494453, 24.060394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239220, 35.628181, 23.928558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254454, 0.249181, 0.934431,
		0.394530, 0.908920, -0.134944,
		-0.882949, 0.334324, -0.329588,
		39.974335, 35.728477, 23.829681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528320, 36.239712, 24.131163>,  <40.592400, 35.494453, 24.060394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528320, 36.239712, 24.131163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.155033, 36.096100, 24.125614>,  <39.931061, 36.009933, 24.122284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.155033, 36.096100, 24.125614>,  <40.528320, 36.239712, 24.131163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155033, 36.096100, 24.125614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151580, 0.358401, 0.921180,
		-0.325763, 0.861768, -0.388890,
		-0.933221, -0.359034, -0.013873,
		39.875065, 35.988388, 24.121452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023815, 36.773346, 24.475294>,  <40.528320, 36.239712, 24.131163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023815, 36.773346, 24.475294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.849113, 36.414692, 24.504377>,  <39.744293, 36.199497, 24.521828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.849113, 36.414692, 24.504377>,  <40.023815, 36.773346, 24.475294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849113, 36.414692, 24.504377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408352, 0.269626, 0.872095,
		-0.801557, 0.351201, -0.483904,
		-0.436754, -0.896638, 0.072707,
		39.718086, 36.145702, 24.526190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444027, 36.962162, 24.651659>,  <40.023815, 36.773346, 24.475294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444027, 36.962162, 24.651659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.445305, 36.574139, 24.748800>,  <39.446072, 36.341324, 24.807085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.445305, 36.574139, 24.748800>,  <39.444027, 36.962162, 24.651659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445305, 36.574139, 24.748800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471755, 0.212667, 0.855698,
		-0.881724, -0.117304, -0.456950,
		0.003199, -0.970058, 0.242852,
		39.446266, 36.283123, 24.821655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822235, 36.805420, 24.811226>,  <39.444027, 36.962162, 24.651659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822235, 36.805420, 24.811226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.055023, 36.539486, 24.998545>,  <39.194698, 36.379925, 25.110937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.055023, 36.539486, 24.998545>,  <38.822235, 36.805420, 24.811226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055023, 36.539486, 24.998545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416273, 0.251146, 0.873866,
		-0.698587, -0.703507, -0.130592,
		0.581973, -0.664834, 0.468299,
		39.229614, 36.340034, 25.139034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406605, 36.464909, 25.243858>,  <38.822235, 36.805420, 24.811226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406605, 36.464909, 25.243858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.775909, 36.392715, 25.379509>,  <38.997494, 36.349400, 25.460899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.775909, 36.392715, 25.379509>,  <38.406605, 36.464909, 25.243858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775909, 36.392715, 25.379509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270508, 0.321391, 0.907488,
		-0.272776, -0.929589, 0.247908,
		0.923266, -0.180479, 0.339128,
		39.052891, 36.338573, 25.481247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813923, 36.028431, 25.343512>,  <38.406605, 36.464909, 25.243858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813923, 36.028431, 25.343512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.477329, 36.236687, 25.285765>,  <37.275375, 36.361641, 25.251116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.477329, 36.236687, 25.285765>,  <37.813923, 36.028431, 25.343512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477329, 36.236687, 25.285765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129602, -0.064892, -0.989440,
		-0.524514, -0.851304, -0.012872,
		-0.841479, 0.520644, -0.144368,
		37.224884, 36.392879, 25.242455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661968, 35.765541, 24.654711>,  <37.813923, 36.028431, 25.343512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661968, 35.765541, 24.654711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.404533, 36.063843, 24.723581>,  <37.250072, 36.242825, 24.764904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.404533, 36.063843, 24.723581>,  <37.661968, 35.765541, 24.654711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404533, 36.063843, 24.723581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189457, 0.062729, -0.979883,
		-0.741550, -0.663265, 0.100916,
		-0.643591, 0.745751, 0.172177,
		37.211456, 36.287567, 24.775234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028805, 35.544731, 24.328772>,  <37.661968, 35.765541, 24.654711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028805, 35.544731, 24.328772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.049862, 35.942581, 24.364428>,  <37.062496, 36.181293, 24.385820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.049862, 35.942581, 24.364428>,  <37.028805, 35.544731, 24.328772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049862, 35.942581, 24.364428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295082, 0.100770, -0.950143,
		-0.954021, 0.023717, 0.298801,
		0.052645, 0.994627, 0.089138,
		37.065655, 36.240971, 24.391169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519978, 35.810730, 24.003654>,  <37.028805, 35.544731, 24.328772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519978, 35.810730, 24.003654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.741352, 36.142086, 24.038261>,  <36.874176, 36.340900, 24.059027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.741352, 36.142086, 24.038261>,  <36.519978, 35.810730, 24.003654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741352, 36.142086, 24.038261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144320, 0.197684, -0.969584,
		-0.820293, 0.524115, 0.228958,
		0.553435, 0.828387, 0.086519,
		36.907383, 36.390602, 24.064217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197651, 36.329926, 23.599791>,  <36.519978, 35.810730, 24.003654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197651, 36.329926, 23.599791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.570854, 36.469658, 23.634365>,  <36.794777, 36.553497, 23.655109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.570854, 36.469658, 23.634365>,  <36.197651, 36.329926, 23.599791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570854, 36.469658, 23.634365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015287, 0.278451, -0.960329,
		-0.359540, 0.894670, 0.265137,
		0.933005, 0.349330, 0.086437,
		36.850754, 36.574455, 23.660295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177906, 36.963032, 23.294802>,  <36.197651, 36.329926, 23.599791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177906, 36.963032, 23.294802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.560493, 36.846428, 23.289410>,  <36.790047, 36.776466, 23.286175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.560493, 36.846428, 23.289410>,  <36.177906, 36.963032, 23.294802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560493, 36.846428, 23.289410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061420, 0.246259, -0.967256,
		0.285288, 0.924325, 0.253444,
		0.956472, -0.291513, -0.013483,
		36.847435, 36.758972, 23.285364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555943, 37.427242, 22.824602>,  <36.177906, 36.963032, 23.294802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555943, 37.427242, 22.824602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.736198, 37.071323, 22.853388>,  <36.844353, 36.857773, 22.870659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.736198, 37.071323, 22.853388>,  <36.555943, 37.427242, 22.824602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736198, 37.071323, 22.853388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154858, -0.001471, -0.987936,
		0.879171, 0.456349, 0.137130,
		0.450642, -0.889800, 0.071963,
		36.871391, 36.804382, 22.874977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077263, 37.337830, 22.161409>,  <36.555943, 37.427242, 22.824602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077263, 37.337830, 22.161409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.068878, 36.962139, 22.298473>,  <37.063847, 36.736725, 22.380713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.068878, 36.962139, 22.298473>,  <37.077263, 37.337830, 22.161409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068878, 36.962139, 22.298473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256395, -0.336325, -0.906172,
		0.966345, 0.068859, 0.247863,
		-0.020965, -0.939225, 0.342661,
		37.062588, 36.680370, 22.401272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618256, 37.096661, 21.882507>,  <37.077263, 37.337830, 22.161409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618256, 37.096661, 21.882507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.410728, 36.773544, 21.994438>,  <37.286213, 36.579674, 22.061598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.410728, 36.773544, 21.994438>,  <37.618256, 37.096661, 21.882507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410728, 36.773544, 21.994438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184226, -0.425282, -0.886112,
		0.834799, -0.408178, 0.369460,
		-0.518816, -0.807791, 0.279828,
		37.255085, 36.531208, 22.078386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005562, 36.419079, 21.883883>,  <37.618256, 37.096661, 21.882507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005562, 36.419079, 21.883883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.615532, 36.358265, 21.819250>,  <37.381512, 36.321777, 21.780470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.615532, 36.358265, 21.819250>,  <38.005562, 36.419079, 21.883883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615532, 36.358265, 21.819250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212401, -0.429265, -0.877848,
		0.064103, -0.890290, 0.450859,
		-0.975078, -0.152036, -0.161582,
		37.323009, 36.312653, 21.770775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050674, 35.801186, 21.569302>,  <38.005562, 36.419079, 21.883883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050674, 35.801186, 21.569302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.675781, 35.918606, 21.494026>,  <37.450844, 35.989059, 21.448860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.675781, 35.918606, 21.494026>,  <38.050674, 35.801186, 21.569302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675781, 35.918606, 21.494026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075901, -0.355011, -0.931776,
		-0.340322, -0.887582, 0.310450,
		-0.937240, 0.293540, -0.188186,
		37.394611, 36.006672, 21.437569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759716, 35.295567, 21.046833>,  <38.050674, 35.801186, 21.569302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759716, 35.295567, 21.046833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.508472, 35.605740, 21.020926>,  <37.357727, 35.791843, 21.005381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.508472, 35.605740, 21.020926>,  <37.759716, 35.295567, 21.046833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508472, 35.605740, 21.020926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062883, -0.133545, -0.989046,
		-0.775584, -0.617152, 0.132641,
		-0.628105, 0.775429, -0.064768,
		37.320042, 35.838367, 21.001495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314259, 35.093861, 20.543165>,  <37.759716, 35.295567, 21.046833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314259, 35.093861, 20.543165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.293221, 35.492775, 20.563787>,  <37.280598, 35.732124, 20.576160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.293221, 35.492775, 20.563787>,  <37.314259, 35.093861, 20.543165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293221, 35.492775, 20.563787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024797, 0.050309, -0.998426,
		-0.998308, -0.053795, 0.022083,
		-0.052600, 0.997284, 0.051558,
		37.277439, 35.791962, 20.579254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675697, 34.499477, 21.037117>,  <37.314259, 35.093861, 20.543165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675697, 34.499477, 21.037117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.359894, 34.433044, 20.800783>,  <37.170410, 34.393185, 20.658983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.359894, 34.433044, 20.800783>,  <37.675697, 34.499477, 21.037117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359894, 34.433044, 20.800783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489652, -0.409936, 0.769541,
		-0.370013, 0.896865, 0.242327,
		-0.789513, -0.166084, -0.590834,
		37.123039, 34.383221, 20.623533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197029, 34.721989, 21.397516>,  <37.675697, 34.499477, 21.037117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197029, 34.721989, 21.397516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.991276, 34.499065, 21.136805>,  <36.867825, 34.365311, 20.980377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.991276, 34.499065, 21.136805>,  <37.197029, 34.721989, 21.397516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991276, 34.499065, 21.136805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617027, -0.287306, 0.732621,
		-0.595554, 0.779016, -0.196086,
		-0.514386, -0.557306, -0.651780,
		36.836960, 34.331875, 20.941271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457745, 34.887432, 21.558990>,  <37.197029, 34.721989, 21.397516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457745, 34.887432, 21.558990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.476303, 34.555050, 21.337231>,  <36.487438, 34.355621, 21.204176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.476303, 34.555050, 21.337231>,  <36.457745, 34.887432, 21.558990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476303, 34.555050, 21.337231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721690, -0.411611, 0.556542,
		-0.690659, 0.374281, -0.618792,
		0.046399, -0.830958, -0.554398,
		36.490223, 34.305763, 21.170912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724392, 34.658123, 21.353207>,  <36.457745, 34.887432, 21.558990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724392, 34.658123, 21.353207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.981209, 34.351715, 21.365849>,  <36.135300, 34.167870, 21.373434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.981209, 34.351715, 21.365849>,  <35.724392, 34.658123, 21.353207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981209, 34.351715, 21.365849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631215, -0.504764, 0.588881,
		-0.435138, -0.398039, -0.807601,
		0.642046, -0.766015, 0.031606,
		36.173820, 34.121910, 21.375330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309097, 34.180416, 21.495878>,  <35.724392, 34.658123, 21.353207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309097, 34.180416, 21.495878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.663445, 34.007370, 21.562916>,  <35.876053, 33.903542, 21.603138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.663445, 34.007370, 21.562916>,  <35.309097, 34.180416, 21.495878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663445, 34.007370, 21.562916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408102, -0.554812, 0.725007,
		-0.220664, -0.710655, -0.668040,
		0.885867, -0.432611, 0.167593,
		35.929203, 33.877586, 21.613194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215439, 33.450150, 21.482016>,  <35.309097, 34.180416, 21.495878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215439, 33.450150, 21.482016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.546833, 33.510723, 21.697672>,  <35.745670, 33.547066, 21.827066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.546833, 33.510723, 21.697672>,  <35.215439, 33.450150, 21.482016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546833, 33.510723, 21.697672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342803, -0.624148, 0.702087,
		0.442821, -0.766491, -0.465190,
		0.828490, 0.151430, 0.539140,
		35.795380, 33.556152, 21.859413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429237, 32.798912, 21.709522>,  <35.215439, 33.450150, 21.482016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429237, 32.798912, 21.709522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.614300, 33.057655, 21.952017>,  <35.725338, 33.212902, 22.097513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.614300, 33.057655, 21.952017>,  <35.429237, 32.798912, 21.709522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614300, 33.057655, 21.952017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355228, -0.491264, 0.795282,
		0.812260, -0.583290, 0.002500,
		0.462652, 0.646863, 0.606235,
		35.753094, 33.251713, 22.133888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715816, 32.361355, 22.237963>,  <35.429237, 32.798912, 21.709522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715816, 32.361355, 22.237963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.730122, 32.712574, 22.428858>,  <35.738705, 32.923306, 22.543394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.730122, 32.712574, 22.428858>,  <35.715816, 32.361355, 22.237963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730122, 32.712574, 22.428858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354919, -0.435255, 0.827397,
		0.934213, -0.198968, 0.296071,
		0.035759, 0.878046, 0.477238,
		35.740849, 32.975986, 22.572029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403770, 32.010475, 22.093325>,  <35.715816, 32.361355, 22.237963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403770, 32.010475, 22.093325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.739277, 31.831585, 22.217556>,  <36.940582, 31.724251, 22.292095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.739277, 31.831585, 22.217556>,  <36.403770, 32.010475, 22.093325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739277, 31.831585, 22.217556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324714, -0.047014, -0.944643,
		0.437071, 0.893184, 0.105787,
		0.838767, -0.447227, 0.310578,
		36.990906, 31.697416, 22.310730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915302, 32.373680, 21.777203>,  <36.403770, 32.010475, 22.093325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915302, 32.373680, 21.777203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.070133, 32.015900, 21.866753>,  <37.163033, 31.801229, 21.920483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.070133, 32.015900, 21.866753>,  <36.915302, 32.373680, 21.777203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070133, 32.015900, 21.866753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326262, -0.094228, -0.940571,
		0.862395, 0.437115, 0.255354,
		0.387077, -0.894456, 0.223876,
		37.186256, 31.747562, 21.933916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599545, 32.414085, 21.533756>,  <36.915302, 32.373680, 21.777203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599545, 32.414085, 21.533756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.463646, 32.038200, 21.549318>,  <37.382107, 31.812670, 21.558657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.463646, 32.038200, 21.549318>,  <37.599545, 32.414085, 21.533756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463646, 32.038200, 21.549318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428147, -0.191359, -0.883217,
		0.837416, -0.283409, 0.467349,
		-0.339743, -0.939713, 0.038906,
		37.361725, 31.756287, 21.560989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178844, 32.027706, 21.305038>,  <37.599545, 32.414085, 21.533756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178844, 32.027706, 21.305038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.877823, 31.764704, 21.319733>,  <37.697208, 31.606903, 21.328548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.877823, 31.764704, 21.319733>,  <38.178844, 32.027706, 21.305038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877823, 31.764704, 21.319733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369638, -0.467924, -0.802754,
		0.545004, -0.590538, 0.595177,
		-0.752555, -0.657504, 0.036735,
		37.652058, 31.567453, 21.330753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429268, 31.412760, 21.115660>,  <38.178844, 32.027706, 21.305038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429268, 31.412760, 21.115660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.039997, 31.386890, 21.027351>,  <37.806435, 31.371368, 20.974367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.039997, 31.386890, 21.027351>,  <38.429268, 31.412760, 21.115660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039997, 31.386890, 21.027351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229255, -0.352222, -0.907404,
		-0.019077, -0.933679, 0.357602,
		-0.973179, -0.064672, -0.220770,
		37.748043, 31.367489, 20.961121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372402, 30.701588, 20.857468>,  <38.429268, 31.412760, 21.115660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372402, 30.701588, 20.857468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.062496, 30.924450, 20.737925>,  <37.876553, 31.058167, 20.666199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.062496, 30.924450, 20.737925>,  <38.372402, 30.701588, 20.857468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062496, 30.924450, 20.737925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222137, -0.202672, -0.953719,
		-0.591939, -0.805296, 0.033259,
		-0.774767, 0.557155, -0.298855,
		37.830067, 31.091597, 20.648268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009220, 30.296381, 20.364349>,  <38.372402, 30.701588, 20.857468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009220, 30.296381, 20.364349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.872192, 30.667252, 20.303701>,  <37.789974, 30.889774, 20.267313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.872192, 30.667252, 20.303701>,  <38.009220, 30.296381, 20.364349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872192, 30.667252, 20.303701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119094, -0.117227, -0.985938,
		-0.931914, -0.355807, -0.070263,
		-0.342568, 0.927178, -0.151620,
		37.769421, 30.945404, 20.258215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478558, 30.230209, 19.765852>,  <38.009220, 30.296381, 20.364349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478558, 30.230209, 19.765852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.583443, 30.614613, 19.800976>,  <37.646374, 30.845255, 19.822050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.583443, 30.614613, 19.800976>,  <37.478558, 30.230209, 19.765852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583443, 30.614613, 19.800976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166007, 0.044715, -0.985110,
		-0.950625, 0.272883, -0.147810,
		0.262210, 0.961008, 0.087808,
		37.662106, 30.902914, 19.827318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082542, 30.685673, 19.295582>,  <37.478558, 30.230209, 19.765852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082542, 30.685673, 19.295582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.436031, 30.856615, 19.371893>,  <37.648125, 30.959181, 19.417679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.436031, 30.856615, 19.371893>,  <37.082542, 30.685673, 19.295582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436031, 30.856615, 19.371893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242133, -0.068664, -0.967810,
		-0.400501, 0.901472, -0.164157,
		0.883725, 0.427357, 0.190776,
		37.701149, 30.984821, 19.429127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.196976, 30.099318, 35.434944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.438778, 30.412292, 35.375114>,  <37.583858, 30.600077, 35.339218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.438778, 30.412292, 35.375114>,  <37.196976, 30.099318, 35.434944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438778, 30.412292, 35.375114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226140, -0.011483, -0.974027,
		-0.763831, 0.622625, 0.169999,
		0.604502, 0.782436, -0.149571,
		37.620129, 30.647024, 35.330242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807007, 30.553057, 35.065372>,  <37.196976, 30.099318, 35.434944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807007, 30.553057, 35.065372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187511, 30.664425, 35.012333>,  <37.415813, 30.731245, 34.980511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187511, 30.664425, 35.012333>,  <36.807007, 30.553057, 35.065372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187511, 30.664425, 35.012333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179745, 0.151206, -0.972023,
		-0.250582, 0.948482, 0.193882,
		0.951263, 0.278421, -0.132595,
		37.472889, 30.747952, 34.972553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825710, 31.178513, 34.639282>,  <36.807007, 30.553057, 35.065372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825710, 31.178513, 34.639282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202171, 31.049311, 34.599480>,  <37.428047, 30.971790, 34.575600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202171, 31.049311, 34.599480>,  <36.825710, 31.178513, 34.639282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202171, 31.049311, 34.599480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084024, 0.061564, -0.994560,
		0.327374, 0.944393, 0.030801,
		0.941151, -0.323005, -0.099506,
		37.484516, 30.952410, 34.569626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110657, 31.592766, 34.102829>,  <36.825710, 31.178513, 34.639282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110657, 31.592766, 34.102829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.304550, 31.242947, 34.097237>,  <37.420887, 31.033054, 34.093880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.304550, 31.242947, 34.097237>,  <37.110657, 31.592766, 34.102829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304550, 31.242947, 34.097237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022869, 0.003312, -0.999733,
		0.874361, 0.484928, -0.018395,
		0.484738, -0.874548, -0.013985,
		37.449970, 30.980583, 34.093040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607754, 31.613327, 33.542419>,  <37.110657, 31.592766, 34.102829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607754, 31.613327, 33.542419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.565704, 31.221327, 33.610001>,  <37.540474, 30.986126, 33.650551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.565704, 31.221327, 33.610001>,  <37.607754, 31.613327, 33.542419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565704, 31.221327, 33.610001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118571, -0.156333, -0.980562,
		0.987365, -0.123117, -0.099765,
		-0.105128, -0.980001, 0.168955,
		37.534164, 30.927326, 33.660686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137772, 31.239548, 33.123631>,  <37.607754, 31.613327, 33.542419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137772, 31.239548, 33.123631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.817547, 31.015503, 33.208843>,  <37.625412, 30.881077, 33.259972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.817547, 31.015503, 33.208843>,  <38.137772, 31.239548, 33.123631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817547, 31.015503, 33.208843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102871, -0.221769, -0.969658,
		0.590359, -0.798183, 0.119920,
		-0.800558, -0.560110, 0.213033,
		37.577381, 30.847469, 33.272755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089981, 30.794489, 32.511234>,  <38.137772, 31.239548, 33.123631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089981, 30.794489, 32.511234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.751659, 30.667276, 32.682571>,  <37.548668, 30.590948, 32.785374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.751659, 30.667276, 32.682571>,  <38.089981, 30.794489, 32.511234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751659, 30.667276, 32.682571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407059, -0.134278, -0.903478,
		0.344854, -0.938522, -0.015886,
		-0.845800, -0.318034, 0.428340,
		37.497921, 30.571867, 32.811073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842499, 30.274160, 32.095570>,  <38.089981, 30.794489, 32.511234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842499, 30.274160, 32.095570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.496498, 30.362778, 32.275654>,  <37.288898, 30.415947, 32.383705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.496498, 30.362778, 32.275654>,  <37.842499, 30.274160, 32.095570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496498, 30.362778, 32.275654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494315, -0.222140, -0.840420,
		-0.086175, -0.949513, 0.301661,
		-0.865001, 0.221539, 0.450216,
		37.237000, 30.429239, 32.410717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271957, 29.826046, 31.846235>,  <37.842499, 30.274160, 32.095570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271957, 29.826046, 31.846235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.093842, 30.154387, 31.989300>,  <36.986973, 30.351391, 32.075138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.093842, 30.154387, 31.989300>,  <37.271957, 29.826046, 31.846235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093842, 30.154387, 31.989300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610816, 0.013586, -0.791656,
		-0.654690, -0.570983, 0.495338,
		-0.445292, 0.820850, 0.357660,
		36.960255, 30.400640, 32.096600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573868, 29.645388, 31.758209>,  <37.271957, 29.826046, 31.846235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573868, 29.645388, 31.758209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.588039, 30.042873, 31.800694>,  <36.596542, 30.281364, 31.826185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.588039, 30.042873, 31.800694>,  <36.573868, 29.645388, 31.758209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588039, 30.042873, 31.800694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584832, 0.106796, -0.804093,
		-0.810380, -0.033629, 0.584938,
		0.035429, 0.993712, 0.106212,
		36.598667, 30.340986, 31.832558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912567, 29.864122, 31.580383>,  <36.573868, 29.645388, 31.758209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912567, 29.864122, 31.580383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.124634, 30.203259, 31.584288>,  <36.251873, 30.406740, 31.586630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.124634, 30.203259, 31.584288>,  <35.912567, 29.864122, 31.580383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124634, 30.203259, 31.584288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319238, 0.210262, -0.924055,
		-0.785502, 0.486784, 0.382136,
		0.530163, 0.847839, 0.009761,
		36.283684, 30.457611, 31.587215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466431, 30.496656, 31.311659>,  <35.912567, 29.864122, 31.580383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466431, 30.496656, 31.311659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855782, 30.530115, 31.226305>,  <36.089394, 30.550190, 31.175093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855782, 30.530115, 31.226305>,  <35.466431, 30.496656, 31.311659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855782, 30.530115, 31.226305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219629, 0.074240, -0.972755,
		-0.065526, 0.993726, 0.090635,
		0.973380, 0.083647, -0.213387,
		36.147797, 30.555210, 31.162289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117516, 31.110668, 31.463690>,  <35.466431, 30.496656, 31.311659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117516, 31.110668, 31.463690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.921318, 31.451193, 31.389198>,  <34.803600, 31.655508, 31.344503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.921318, 31.451193, 31.389198>,  <35.117516, 31.110668, 31.463690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921318, 31.451193, 31.389198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098951, 0.157911, 0.982483,
		0.865807, 0.500332, 0.006784,
		-0.490496, 0.851312, -0.186229,
		34.774170, 31.706587, 31.333330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436119, 31.698971, 31.809849>,  <35.117516, 31.110668, 31.463690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436119, 31.698971, 31.809849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.056103, 31.809532, 31.751848>,  <34.828094, 31.875870, 31.717049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.056103, 31.809532, 31.751848>,  <35.436119, 31.698971, 31.809849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056103, 31.809532, 31.751848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072774, 0.255596, 0.964041,
		0.303526, 0.926430, -0.222711,
		-0.950040, 0.276403, -0.145000,
		34.771091, 31.892452, 31.708347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437157, 32.341465, 32.096310>,  <35.436119, 31.698971, 31.809849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437157, 32.341465, 32.096310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.052135, 32.235138, 32.075008>,  <34.821125, 32.171341, 32.062225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.052135, 32.235138, 32.075008>,  <35.437157, 32.341465, 32.096310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052135, 32.235138, 32.075008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092382, 0.136928, 0.986264,
		-0.254877, 0.954248, -0.156357,
		-0.962550, -0.265821, -0.053255,
		34.763371, 32.155392, 32.059032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072441, 32.837765, 32.539356>,  <35.437157, 32.341465, 32.096310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072441, 32.837765, 32.539356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799442, 32.548531, 32.496750>,  <34.635643, 32.374992, 32.471184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799442, 32.548531, 32.496750>,  <35.072441, 32.837765, 32.539356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799442, 32.548531, 32.496750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135571, -0.017965, 0.990605,
		-0.718202, 0.690528, -0.085768,
		-0.682500, -0.723082, -0.106518,
		34.594692, 32.331604, 32.464794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394009, 33.040649, 32.852940>,  <35.072441, 32.837765, 32.539356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394009, 33.040649, 32.852940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.400490, 32.640865, 32.841503>,  <34.404377, 32.400993, 32.834641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.400490, 32.640865, 32.841503>,  <34.394009, 33.040649, 32.852940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400490, 32.640865, 32.841503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366091, -0.032541, 0.930010,
		-0.930438, -0.004601, -0.366421,
		0.016203, -0.999460, -0.028593,
		34.405350, 32.341026, 32.832924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843235, 32.872818, 33.275570>,  <34.394009, 33.040649, 32.852940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843235, 32.872818, 33.275570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.025784, 32.516907, 33.277390>,  <34.135315, 32.303360, 33.278481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.025784, 32.516907, 33.277390>,  <33.843235, 32.872818, 33.275570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025784, 32.516907, 33.277390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239441, -0.117880, 0.963728,
		-0.856965, -0.440912, -0.266847,
		0.456375, -0.889776, 0.004553,
		34.162697, 32.249973, 33.278755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406025, 32.413399, 33.740196>,  <33.843235, 32.872818, 33.275570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406025, 32.413399, 33.740196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.756546, 32.223877, 33.705307>,  <33.966858, 32.110165, 33.684372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.756546, 32.223877, 33.705307>,  <33.406025, 32.413399, 33.740196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756546, 32.223877, 33.705307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007400, -0.167793, 0.985795,
		-0.481706, -0.864499, -0.143531,
		0.876302, -0.473801, -0.087224,
		34.019436, 32.081738, 33.679138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310677, 31.843126, 34.172371>,  <33.406025, 32.413399, 33.740196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310677, 31.843126, 34.172371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.702057, 31.915461, 34.132504>,  <33.936886, 31.958862, 34.108582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.702057, 31.915461, 34.132504>,  <33.310677, 31.843126, 34.172371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702057, 31.915461, 34.132504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112708, -0.063300, 0.991610,
		0.173012, -0.981474, -0.082318,
		0.978450, 0.180838, -0.099669,
		33.995590, 31.969711, 34.102604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593105, 31.468267, 34.641823>,  <33.310677, 31.843126, 34.172371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593105, 31.468267, 34.641823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.909538, 31.696552, 34.553757>,  <34.099400, 31.833523, 34.500916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.909538, 31.696552, 34.553757>,  <33.593105, 31.468267, 34.641823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909538, 31.696552, 34.553757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103439, 0.229933, 0.967694,
		0.602898, -0.788301, 0.122862,
		0.791084, 0.570712, -0.220167,
		34.146862, 31.867765, 34.487705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093784, 31.461796, 35.259956>,  <33.593105, 31.468267, 34.641823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093784, 31.461796, 35.259956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.166367, 31.803217, 35.064602>,  <34.209915, 32.008068, 34.947388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.166367, 31.803217, 35.064602>,  <34.093784, 31.461796, 35.259956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166367, 31.803217, 35.064602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207109, 0.452325, 0.867472,
		0.961343, -0.258556, -0.094703,
		0.181454, 0.853552, -0.488388,
		34.220802, 32.059284, 34.918087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657726, 31.750486, 35.574127>,  <34.093784, 31.461796, 35.259956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657726, 31.750486, 35.574127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497189, 32.066811, 35.389286>,  <34.400864, 32.256603, 35.278381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497189, 32.066811, 35.389286>,  <34.657726, 31.750486, 35.574127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497189, 32.066811, 35.389286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108149, 0.541910, 0.833449,
		0.909519, 0.284526, -0.303019,
		-0.401347, 0.790809, -0.462106,
		34.376785, 32.304054, 35.250656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022964, 32.380920, 35.795433>,  <34.657726, 31.750486, 35.574127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022964, 32.380920, 35.795433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.689041, 32.544189, 35.647652>,  <34.488686, 32.642151, 35.558983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.689041, 32.544189, 35.647652>,  <35.022964, 32.380920, 35.795433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689041, 32.544189, 35.647652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143886, 0.485991, 0.862038,
		0.531408, 0.772795, -0.346979,
		-0.834807, 0.408168, -0.369454,
		34.438599, 32.666641, 35.536816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071514, 33.074570, 35.858635>,  <35.022964, 32.380920, 35.795433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071514, 33.074570, 35.858635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.673763, 33.041782, 35.831844>,  <34.435112, 33.022110, 35.815769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.673763, 33.041782, 35.831844>,  <35.071514, 33.074570, 35.858635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673763, 33.041782, 35.831844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105832, 0.757143, 0.644619,
		-0.002123, 0.648086, -0.761564,
		-0.994382, -0.081967, -0.066981,
		34.375450, 33.017193, 35.811749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749020, 33.716709, 35.638733>,  <35.071514, 33.074570, 35.858635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749020, 33.716709, 35.638733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.550404, 33.485760, 35.897987>,  <34.431232, 33.347191, 36.053539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.550404, 33.485760, 35.897987>,  <34.749020, 33.716709, 35.638733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550404, 33.485760, 35.897987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127056, 0.786997, 0.603732,
		-0.858664, 0.217428, -0.464135,
		-0.496541, -0.577374, 0.648140,
		34.401440, 33.312546, 36.092430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236172, 34.113285, 35.913918>,  <34.749020, 33.716709, 35.638733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236172, 34.113285, 35.913918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.302357, 33.817322, 36.174732>,  <34.342068, 33.639744, 36.331223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.302357, 33.817322, 36.174732>,  <34.236172, 34.113285, 35.913918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302357, 33.817322, 36.174732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025226, 0.664114, 0.747206,
		-0.985893, -0.107188, 0.128553,
		0.165465, -0.739908, 0.652041,
		34.351997, 33.595348, 36.370346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294132, 34.208801, 35.131832>,  <34.236172, 34.113285, 35.913918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294132, 34.208801, 35.131832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.498852, 34.512825, 35.292015>,  <34.621685, 34.695240, 35.388126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.498852, 34.512825, 35.292015>,  <34.294132, 34.208801, 35.131832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498852, 34.512825, 35.292015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223001, 0.332620, -0.916316,
		-0.829658, 0.558271, 0.000740,
		0.511799, 0.760064, 0.400456,
		34.652390, 34.740845, 35.412151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212479, 35.061859, 34.921379>,  <34.294132, 34.208801, 35.131832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212479, 35.061859, 34.921379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.582569, 34.928761, 34.994312>,  <34.804623, 34.848900, 35.038071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.582569, 34.928761, 34.994312>,  <34.212479, 35.061859, 34.921379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582569, 34.928761, 34.994312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287428, 0.300967, -0.909288,
		0.247686, 0.893700, 0.374102,
		0.925223, -0.332745, 0.182329,
		34.860134, 34.828938, 35.049011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553307, 35.531116, 34.717983>,  <34.212479, 35.061859, 34.921379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553307, 35.531116, 34.717983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.801586, 35.217587, 34.725441>,  <34.950554, 35.029469, 34.729916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.801586, 35.217587, 34.725441>,  <34.553307, 35.531116, 34.717983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801586, 35.217587, 34.725441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336509, 0.244849, -0.909291,
		0.708162, 0.570670, 0.415743,
		0.620699, -0.783827, 0.018643,
		34.987797, 34.982437, 34.731033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079475, 35.757744, 34.354206>,  <34.553307, 35.531116, 34.717983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079475, 35.757744, 34.354206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129547, 35.362358, 34.320122>,  <35.159588, 35.125126, 34.299671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129547, 35.362358, 34.320122>,  <35.079475, 35.757744, 34.354206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129547, 35.362358, 34.320122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280948, 0.117687, -0.952480,
		0.951525, 0.095287, 0.292440,
		0.125175, -0.988468, -0.085212,
		35.167099, 35.065819, 34.294559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675541, 35.594196, 33.938877>,  <35.079475, 35.757744, 34.354206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675541, 35.594196, 33.938877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.464329, 35.255489, 33.913048>,  <35.337601, 35.052265, 33.897549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.464329, 35.255489, 33.913048>,  <35.675541, 35.594196, 33.938877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464329, 35.255489, 33.913048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292319, -0.109842, -0.949992,
		0.797328, -0.520501, 0.305526,
		-0.528031, -0.846767, -0.064572,
		35.305920, 35.001461, 33.893677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096210, 35.106354, 33.481228>,  <35.675541, 35.594196, 33.938877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096210, 35.106354, 33.481228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723835, 34.960396, 33.486874>,  <35.500408, 34.872822, 33.490261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723835, 34.960396, 33.486874>,  <36.096210, 35.106354, 33.481228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723835, 34.960396, 33.486874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058811, -0.187967, -0.980413,
		0.360406, -0.911876, 0.196446,
		-0.930940, -0.364899, 0.014116,
		35.444553, 34.850925, 33.491108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098122, 34.366436, 33.098743>,  <36.096210, 35.106354, 33.481228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098122, 34.366436, 33.098743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.719746, 34.496136, 33.095730>,  <35.492718, 34.573956, 33.093922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.719746, 34.496136, 33.095730>,  <36.098122, 34.366436, 33.098743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719746, 34.496136, 33.095730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024036, -0.093240, -0.995354,
		-0.323441, -0.941367, 0.095993,
		-0.945943, 0.324246, -0.007531,
		35.435963, 34.593410, 33.093472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633915, 33.939934, 32.694633>,  <36.098122, 34.366436, 33.098743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633915, 33.939934, 32.694633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.450241, 34.295250, 32.690891>,  <35.340038, 34.508442, 32.688648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.450241, 34.295250, 32.690891>,  <35.633915, 33.939934, 32.694633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450241, 34.295250, 32.690891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086124, -0.054991, -0.994766,
		-0.884158, -0.455972, 0.101754,
		-0.459181, 0.888293, -0.009351,
		35.312489, 34.561737, 32.688087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189808, 33.790627, 32.133343>,  <35.633915, 33.939934, 32.694633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189808, 33.790627, 32.133343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.184566, 34.186226, 32.192272>,  <35.181423, 34.423588, 32.227631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.184566, 34.186226, 32.192272>,  <35.189808, 33.790627, 32.133343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184566, 34.186226, 32.192272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158709, 0.143412, -0.976854,
		-0.987238, -0.036181, 0.155085,
		-0.013102, 0.989001, 0.147324,
		35.180637, 34.482925, 32.236469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746708, 34.050095, 31.646994>,  <35.189808, 33.790627, 32.133343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746708, 34.050095, 31.646994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.941448, 34.385342, 31.745407>,  <35.058292, 34.586491, 31.804455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.941448, 34.385342, 31.745407>,  <34.746708, 34.050095, 31.646994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941448, 34.385342, 31.745407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177143, 0.370549, -0.911764,
		-0.855334, 0.400310, 0.328869,
		0.486851, 0.838120, 0.246031,
		35.087505, 34.636776, 31.819216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351643, 34.620846, 31.429688>,  <34.746708, 34.050095, 31.646994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351643, 34.620846, 31.429688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.747444, 34.676815, 31.444153>,  <34.984924, 34.710396, 31.452831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.747444, 34.676815, 31.444153>,  <34.351643, 34.620846, 31.429688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747444, 34.676815, 31.444153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013468, 0.338408, -0.940903,
		-0.143893, 0.930538, 0.336739,
		0.989502, 0.139925, 0.036162,
		35.044296, 34.718792, 31.455002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457069, 35.040482, 30.834236>,  <34.351643, 34.620846, 31.429688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457069, 35.040482, 30.834236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.839241, 35.006947, 30.947466>,  <35.068542, 34.986828, 31.015404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.839241, 35.006947, 30.947466>,  <34.457069, 35.040482, 30.834236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839241, 35.006947, 30.947466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291451, 0.420675, -0.859121,
		-0.047059, 0.903330, 0.426357,
		0.955428, -0.083833, 0.283073,
		35.125870, 34.981796, 31.032387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725388, 35.694382, 30.793226>,  <34.457069, 35.040482, 30.834236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725388, 35.694382, 30.793226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044521, 35.455013, 30.763956>,  <35.236000, 35.311394, 30.746393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044521, 35.455013, 30.763956>,  <34.725388, 35.694382, 30.793226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044521, 35.455013, 30.763956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201124, 0.378617, -0.903437,
		0.568341, 0.706075, 0.422430,
		0.797833, -0.598421, -0.073175,
		35.283871, 35.275486, 30.742004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329407, 36.049034, 30.740602>,  <34.725388, 35.694382, 30.793226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329407, 36.049034, 30.740602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404552, 35.695263, 30.569727>,  <35.449638, 35.483002, 30.467201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404552, 35.695263, 30.569727>,  <35.329407, 36.049034, 30.740602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404552, 35.695263, 30.569727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179395, 0.458517, -0.870391,
		0.965673, 0.086880, 0.244802,
		0.187865, -0.884429, -0.427191,
		35.460911, 35.429935, 30.441570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793980, 36.287525, 30.391912>,  <35.329407, 36.049034, 30.740602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793980, 36.287525, 30.391912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.752083, 35.929661, 30.218191>,  <35.726944, 35.714943, 30.113958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.752083, 35.929661, 30.218191>,  <35.793980, 36.287525, 30.391912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752083, 35.929661, 30.218191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366495, 0.371243, -0.853147,
		0.924505, -0.248532, 0.289002,
		-0.104745, -0.894657, -0.434302,
		35.720661, 35.661263, 30.087900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450443, 36.113586, 30.249672>,  <35.793980, 36.287525, 30.391912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450443, 36.113586, 30.249672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.193993, 35.911907, 30.018242>,  <36.040123, 35.790901, 29.879385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.193993, 35.911907, 30.018242>,  <36.450443, 36.113586, 30.249672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193993, 35.911907, 30.018242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417578, 0.403341, -0.814214,
		0.643885, -0.763612, -0.048051,
		-0.641125, -0.504195, -0.578573,
		36.001656, 35.760651, 29.844669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841724, 35.794182, 29.754202>,  <36.450443, 36.113586, 30.249672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841724, 35.794182, 29.754202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.471813, 35.783516, 29.602373>,  <36.249866, 35.777119, 29.511276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.471813, 35.783516, 29.602373>,  <36.841724, 35.794182, 29.754202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471813, 35.783516, 29.602373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364481, 0.224392, -0.903771,
		0.109267, -0.974134, -0.197796,
		-0.924778, -0.026660, -0.379572,
		36.194378, 35.775517, 29.488501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885448, 35.560745, 29.083244>,  <36.841724, 35.794182, 29.754202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885448, 35.560745, 29.083244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514832, 35.709732, 29.062120>,  <36.292461, 35.799126, 29.049446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514832, 35.709732, 29.062120>,  <36.885448, 35.560745, 29.083244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514832, 35.709732, 29.062120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101548, 0.112467, -0.988453,
		-0.362229, -0.921205, -0.142028,
		-0.926541, 0.372468, -0.052808,
		36.236870, 35.821472, 29.046278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488483, 35.283600, 28.566273>,  <36.885448, 35.560745, 29.083244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488483, 35.283600, 28.566273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.313618, 35.638836, 28.623095>,  <36.208698, 35.851978, 28.657188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.313618, 35.638836, 28.623095>,  <36.488483, 35.283600, 28.566273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313618, 35.638836, 28.623095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088707, 0.199756, -0.975822,
		-0.894995, -0.413996, -0.166106,
		-0.437167, 0.888090, 0.142056,
		36.182468, 35.905262, 28.665710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052910, 35.228661, 28.082703>,  <36.488483, 35.283600, 28.566273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052910, 35.228661, 28.082703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095707, 35.614971, 28.177208>,  <36.121384, 35.846760, 28.233912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095707, 35.614971, 28.177208>,  <36.052910, 35.228661, 28.082703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095707, 35.614971, 28.177208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143238, 0.220177, -0.964886,
		-0.983888, 0.137077, -0.114780,
		0.106992, 0.965781, 0.236264,
		36.127804, 35.904705, 28.248087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603760, 35.551712, 27.586039>,  <36.052910, 35.228661, 28.082703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603760, 35.551712, 27.586039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.865810, 35.824097, 27.716944>,  <36.023041, 35.987526, 27.795486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.865810, 35.824097, 27.716944>,  <35.603760, 35.551712, 27.586039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865810, 35.824097, 27.716944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164842, 0.293896, -0.941516,
		-0.737317, 0.670758, 0.080288,
		0.655126, 0.680961, 0.327264,
		36.062347, 36.028385, 27.815123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480164, 36.090630, 27.103994>,  <35.603760, 35.551712, 27.586039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480164, 36.090630, 27.103994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825123, 36.179676, 27.285858>,  <36.032097, 36.233105, 27.394976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825123, 36.179676, 27.285858>,  <35.480164, 36.090630, 27.103994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825123, 36.179676, 27.285858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374874, 0.322736, -0.869086,
		-0.340210, 0.919936, 0.194872,
		0.862396, 0.222619, 0.454658,
		36.083843, 36.246460, 27.422256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640930, 36.868099, 26.876553>,  <35.480164, 36.090630, 27.103994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640930, 36.868099, 26.876553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980892, 36.715729, 27.022182>,  <36.184872, 36.624306, 27.109560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980892, 36.715729, 27.022182>,  <35.640930, 36.868099, 26.876553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980892, 36.715729, 27.022182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475356, 0.256150, -0.841679,
		0.227360, 0.888416, 0.398779,
		0.849908, -0.380927, 0.364076,
		36.235867, 36.601452, 27.131405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169022, 37.373508, 26.701275>,  <35.640930, 36.868099, 26.876553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169022, 37.373508, 26.701275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.326252, 37.009094, 26.751070>,  <36.420589, 36.790443, 26.780947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.326252, 37.009094, 26.751070>,  <36.169022, 37.373508, 26.701275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326252, 37.009094, 26.751070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367321, 0.031465, -0.929562,
		0.842950, 0.411117, 0.347013,
		0.393077, -0.911040, 0.124488,
		36.444176, 36.735783, 26.788416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913555, 37.391090, 26.515715>,  <36.169022, 37.373508, 26.701275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913555, 37.391090, 26.515715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.806671, 37.008316, 26.470348>,  <36.742538, 36.778652, 26.443129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.806671, 37.008316, 26.470348>,  <36.913555, 37.391090, 26.515715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806671, 37.008316, 26.470348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441354, -0.016912, -0.897174,
		0.856624, -0.289792, 0.426868,
		-0.267212, -0.956940, -0.113414,
		36.726509, 36.721233, 26.436325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464817, 37.194618, 26.229858>,  <36.913555, 37.391090, 26.515715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464817, 37.194618, 26.229858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214367, 36.891720, 26.155506>,  <37.064098, 36.709980, 26.110895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214367, 36.891720, 26.155506>,  <37.464817, 37.194618, 26.229858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214367, 36.891720, 26.155506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409098, -0.116092, -0.905076,
		0.663785, -0.642731, 0.382475,
		-0.626122, -0.757245, -0.185880,
		37.026531, 36.664547, 26.099743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798210, 36.590729, 25.986286>,  <37.464817, 37.194618, 26.229858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798210, 36.590729, 25.986286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.424206, 36.569210, 25.846085>,  <37.199802, 36.556297, 25.761963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.424206, 36.569210, 25.846085>,  <37.798210, 36.590729, 25.986286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424206, 36.569210, 25.846085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354413, -0.174673, -0.918630,
		-0.011803, -0.983156, 0.182389,
		-0.935014, -0.053798, -0.350505,
		37.143700, 36.553070, 25.740932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374859, 36.032234, 25.964403>,  <37.798210, 36.590729, 25.986286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374859, 36.032234, 25.964403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.734715, 36.206367, 25.950953>,  <38.950630, 36.310848, 25.942883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.734715, 36.206367, 25.950953>,  <38.374859, 36.032234, 25.964403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734715, 36.206367, 25.950953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065522, 0.210743, 0.975343,
		0.431688, -0.875255, 0.218117,
		0.899640, 0.435335, -0.033627,
		39.004608, 36.336967, 25.940865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645844, 35.791122, 26.562246>,  <38.374859, 36.032234, 25.964403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645844, 35.791122, 26.562246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.882355, 36.095810, 26.456278>,  <39.024261, 36.278622, 26.392696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.882355, 36.095810, 26.456278>,  <38.645844, 35.791122, 26.562246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882355, 36.095810, 26.456278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136299, 0.229387, 0.963745,
		0.794868, -0.605948, 0.031810,
		0.591276, 0.761714, -0.264923,
		39.059738, 36.324326, 26.376801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345310, 35.683067, 26.774450>,  <38.645844, 35.791122, 26.562246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345310, 35.683067, 26.774450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.318836, 36.081825, 26.757362>,  <39.302952, 36.321079, 26.747110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.318836, 36.081825, 26.757362>,  <39.345310, 35.683067, 26.774450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318836, 36.081825, 26.757362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066959, 0.047154, 0.996641,
		0.995558, 0.063105, -0.069872,
		-0.066188, 0.996892, -0.042719,
		39.298981, 36.380894, 26.744547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926456, 36.046352, 27.266338>,  <39.345310, 35.683067, 26.774450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926456, 36.046352, 27.266338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.658245, 36.336502, 27.204077>,  <39.497318, 36.510593, 27.166719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.658245, 36.336502, 27.204077>,  <39.926456, 36.046352, 27.266338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658245, 36.336502, 27.204077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176964, 0.360132, 0.915963,
		0.720471, 0.586632, -0.369843,
		-0.670526, 0.725374, -0.155652,
		39.457088, 36.554115, 27.157381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331100, 36.651726, 27.456051>,  <39.926456, 36.046352, 27.266338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331100, 36.651726, 27.456051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.933678, 36.694683, 27.470581>,  <39.695225, 36.720459, 27.479300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.933678, 36.694683, 27.470581>,  <40.331100, 36.651726, 27.456051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933678, 36.694683, 27.470581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076874, 0.402706, 0.912096,
		0.083324, 0.909008, -0.408365,
		-0.993553, 0.107392, 0.036324,
		39.635612, 36.726902, 27.481478>
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
