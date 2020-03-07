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
	<-0.148742, 2.933982, 1.468894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.129292, 3.248718, 1.714989>,  <-0.117621, 3.437560, 1.862646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.129292, 3.248718, 1.714989>,  <-0.148742, 2.933982, 1.468894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.129292, 3.248718, 1.714989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964019, 0.124200, -0.235035,
		-0.261347, 0.604530, -0.752490,
		0.048626, 0.786840, 0.615238,
		-0.114704, 3.484770, 1.899560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.101258, 3.550521, 1.167539>,  <-0.148742, 2.933982, 1.468894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.101258, 3.550521, 1.167539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.114994, 3.522514, 1.502876>,  <0.244745, 3.505710, 1.704078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.114994, 3.522514, 1.502876>,  <-0.101258, 3.550521, 1.167539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.114994, 3.522514, 1.502876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815747, -0.199929, -0.542756,
		0.205611, 0.977305, -0.050972,
		0.540630, -0.070016, 0.838342,
		0.277183, 3.501509, 1.754379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.484588, 4.027567, 1.168604>,  <-0.101258, 3.550521, 1.167539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.484588, 4.027567, 1.168604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.571136, 3.724205, 1.414532>,  <0.623066, 3.542187, 1.562088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.571136, 3.724205, 1.414532>,  <0.484588, 4.027567, 1.168604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.571136, 3.724205, 1.414532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919735, -0.052918, -0.388957,
		0.327522, 0.649630, 0.686082,
		0.216372, -0.758406, 0.614820,
		0.636048, 3.496683, 1.598978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.005077, 4.173615, 1.626867>,  <0.484588, 4.027567, 1.168604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.005077, 4.173615, 1.626867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.995338, 3.799767, 1.484943>,  <0.989495, 3.575457, 1.399789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.995338, 3.799767, 1.484943>,  <1.005077, 4.173615, 1.626867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.995338, 3.799767, 1.484943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886728, 0.143705, -0.439388,
		0.461650, -0.325317, 0.825256,
		-0.024347, -0.934621, -0.354810,
		0.988034, 3.519380, 1.378500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.591820, 3.677974, 1.828864>,  <1.005077, 4.173615, 1.626867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.591820, 3.677974, 1.828864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.451195, 3.646278, 1.455742>,  <1.366820, 3.627261, 1.231869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.451195, 3.646278, 1.455742>,  <1.591820, 3.677974, 1.828864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.451195, 3.646278, 1.455742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889239, 0.283242, -0.359204,
		0.292674, -0.955769, -0.029111,
		-0.351562, -0.079243, -0.932805,
		1.345726, 3.622506, 1.175900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.098830, 3.333582, 1.315921>,  <1.591820, 3.677974, 1.828864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.098830, 3.333582, 1.315921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.837379, 3.574303, 1.132355>,  <1.680509, 3.718735, 1.022215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.837379, 3.574303, 1.132355>,  <2.098830, 3.333582, 1.315921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.837379, 3.574303, 1.132355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735087, 0.360567, -0.574142,
		-0.180050, -0.712619, -0.678053,
		-0.653628, 0.601803, -0.458917,
		1.641291, 3.754843, 0.994680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.186875, 3.276978, 0.612347>,  <2.098830, 3.333582, 1.315921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.186875, 3.276978, 0.612347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.023327, 3.636162, 0.677456>,  <1.925198, 3.851672, 0.716521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.023327, 3.636162, 0.677456>,  <2.186875, 3.276978, 0.612347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.023327, 3.636162, 0.677456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664353, 0.415162, -0.621511,
		-0.625668, -0.145979, -0.766309,
		-0.408870, 0.897959, 0.162772,
		1.900666, 3.905550, 0.726287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.137855, 3.612079, -0.028968>,  <2.186875, 3.276978, 0.612347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.137855, 3.612079, -0.028968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.136211, 3.899635, 0.249077>,  <2.135226, 4.072169, 0.415904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.136211, 3.899635, 0.249077>,  <2.137855, 3.612079, -0.028968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.136211, 3.899635, 0.249077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677347, 0.513369, -0.526928,
		-0.735652, 0.468667, -0.489047,
		-0.004108, 0.718890, 0.695112,
		2.134979, 4.115303, 0.457610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.558776, 6.024579, 0.277529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.607414, 5.998016, 0.673672>,  <2.636597, 5.982079, 0.911357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.607414, 5.998016, 0.673672>,  <2.558776, 6.024579, 0.277529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.607414, 5.998016, 0.673672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571615, -0.820382, 0.015173,
		0.811462, -0.567947, -0.137715,
		0.121597, -0.066407, 0.990356,
		2.643893, 5.978094, 0.970778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.922266, 5.401160, 0.438803>,  <2.558776, 6.024579, 0.277529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.922266, 5.401160, 0.438803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.651953, 5.535858, 0.701077>,  <2.489765, 5.616677, 0.858441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.651953, 5.535858, 0.701077>,  <2.922266, 5.401160, 0.438803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.651953, 5.535858, 0.701077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540165, -0.831508, -0.129676,
		0.501538, -0.441811, 0.743817,
		-0.675782, 0.336746, 0.655684,
		2.449218, 5.636882, 0.897782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.876092, 4.954412, 1.012567>,  <2.922266, 5.401160, 0.438803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.876092, 4.954412, 1.012567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.531789, 5.147354, 0.947540>,  <2.325207, 5.263119, 0.908524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.531789, 5.147354, 0.947540>,  <2.876092, 4.954412, 1.012567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.531789, 5.147354, 0.947540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461942, -0.874387, -0.148517,
		-0.213783, -0.052741, 0.975456,
		-0.860759, 0.482355, -0.162566,
		2.273561, 5.292060, 0.898770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.356128, 4.674871, 1.490565>,  <2.876092, 4.954412, 1.012567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.356128, 4.674871, 1.490565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.236431, 4.824890, 1.139614>,  <2.164613, 4.914902, 0.929043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.236431, 4.824890, 1.139614>,  <2.356128, 4.674871, 1.490565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.236431, 4.824890, 1.139614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508390, -0.840796, -0.186017,
		-0.807461, 0.390385, 0.442274,
		-0.299244, 0.375049, -0.877378,
		2.146658, 4.937405, 0.876401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.640412, 4.780067, 1.507923>,  <2.356128, 4.674871, 1.490565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.640412, 4.780067, 1.507923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.741375, 4.704636, 1.128296>,  <1.801953, 4.659377, 0.900520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.741375, 4.704636, 1.128296>,  <1.640412, 4.780067, 1.507923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.741375, 4.704636, 1.128296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731527, -0.679203, -0.059596,
		-0.633371, 0.709310, -0.309387,
		0.252408, -0.188579, -0.949067,
		1.817097, 4.648062, 0.843576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.188820, 4.997686, 0.963401>,  <1.640412, 4.780067, 1.507923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.188820, 4.997686, 0.963401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.389364, 4.672028, 0.846233>,  <1.509691, 4.476632, 0.775933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.389364, 4.672028, 0.846233>,  <1.188820, 4.997686, 0.963401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.389364, 4.672028, 0.846233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826732, -0.550632, 0.115407,
		-0.255249, 0.184305, -0.949147,
		0.501361, -0.814147, -0.292919,
		1.539773, 4.427783, 0.758358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.774846, 4.604080, 0.485754>,  <1.188820, 4.997686, 0.963401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.774846, 4.604080, 0.485754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.045273, 4.346466, 0.628948>,  <1.207529, 4.191898, 0.714865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.045273, 4.346466, 0.628948>,  <0.774846, 4.604080, 0.485754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.045273, 4.346466, 0.628948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727848, -0.659374, 0.188318,
		0.114763, -0.387875, -0.914540,
		0.676067, -0.644034, 0.357986,
		1.248093, 4.153256, 0.736344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.716353, 3.966850, 0.128434>,  <0.774846, 4.604080, 0.485754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.716353, 3.966850, 0.128434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.881023, 3.882202, 0.483002>,  <0.979826, 3.831413, 0.695742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.881023, 3.882202, 0.483002>,  <0.716353, 3.966850, 0.128434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.881023, 3.882202, 0.483002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767790, -0.604520, 0.212260,
		0.490940, -0.767966, -0.411346,
		0.411676, -0.211621, 0.886420,
		1.004526, 3.818716, 0.748928>
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
